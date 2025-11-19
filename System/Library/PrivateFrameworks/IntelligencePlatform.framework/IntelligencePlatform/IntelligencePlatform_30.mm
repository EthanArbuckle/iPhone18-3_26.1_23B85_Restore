void CustomGraphGamingActivityEvent.init(typedId:all_name:all_date:all_attendees:all_locations:all_startLocation:all_endLocation:all_activityTypeObject:all_activityType:all_confidence:all_software:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7E2A8();
  v27 = v26;
  sub_1ABA88F38();
  v29 = v28;
  sub_1ABD1B3D0();
  v30 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v30);
  v32 = *(v31 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v33);
  sub_1ABA9F7AC();
  sub_1ABD1BD64();
  v34 = sub_1ABB2B834(v29);
  v23[1] = v29;
  v23[2] = v34;
  v23[3] = v35;
  v36 = sub_1ABA8B2DC();
  v37 = type metadata accessor for CustomGraphGamingActivityEvent(v36);
  sub_1ABAB1F84(v37);
  sub_1ABD1BA68();
  if (v38)
  {
    v39 = *(v25 + 32);
  }

  sub_1ABA897F0();
  v40 = v37[9];
  sub_1ABD1AE28();
  if (v41)
  {
    v42 = *(v24 + 32);
  }

  sub_1ABAB5FE0();
  v43 = v37[10];
  sub_1ABA89D74();
  if (*(v27 + 16))
  {
    v44 = *(v27 + 32);
  }

  sub_1ABAA2490();
  v45 = v37[11];
  sub_1ABD1BEFC(v46);
  if (v48)
  {
    v49 = *(v47 + 32);
  }

  v50 = v37[12];
  sub_1ABD1B190(v47);
  if (v52)
  {
    v53 = *(v51 + 32);
  }

  sub_1ABAAFB28();
  v54 = v37[13];
  sub_1ABAA2B08(v55);
  if (*(a23 + 16))
  {
    v60 = *(a23 + 32);
    v56 = *(a23 + 48);
    v27 = *(a23 + 56);
    LOBYTE(v25) = *(a23 + 64);

    v58 = v60;
  }

  else
  {
    *&v58 = sub_1ABD1BFDC();
  }

  v59 = v23 + v37[14];
  *v59 = a23;
  *(v59 + 8) = v58;
  *(v59 + 3) = v57;
  *(v59 + 4) = v27;
  v59[40] = v25;
  sub_1ABA7BC1C();
}

uint64_t sub_1ABCB0C28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496465707974 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1702125924 && a2 == 0xE400000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6565646E65747461 && a2 == 0xE900000000000073;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE900000000000073;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x636F4C7472617473 && a2 == 0xED00006E6F697461;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7461636F4C646E65 && a2 == 0xEB000000006E6F69;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x80000001ABF8D5E0 == a2;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7974697669746361 && a2 == 0xEC00000065707954;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
                    if (v14 || (sub_1ABF25054() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x6572617774666F73 && a2 == 0xE800000000000000)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1ABF25054();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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
}

unint64_t sub_1ABCB0FA8(char a1)
{
  result = 0x64496465707974;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 1702125924;
      break;
    case 3:
      result = 0x6565646E65747461;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0x636F4C7472617473;
      break;
    case 6:
      result = 0x7461636F4C646E65;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x7974697669746361;
      break;
    case 9:
      result = 0x6E656469666E6F63;
      break;
    case 10:
      result = 0x6572617774666F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABCB10F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABCB0C28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABCB1118(uint64_t a1)
{
  v2 = sub_1ABD0B744();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCB1154(uint64_t a1)
{
  v2 = sub_1ABD0B744();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphGamingActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  v2 = sub_1ABAD219C(&qword_1EB4D6A70, &dword_1ABF50D40);
  sub_1ABA96D00(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABD0B744();
  sub_1ABA8D27C();
  v26 = *v1;
  v6 = sub_1ABA8C744();
  sub_1ABAD219C(v6, v7);
  sub_1ABA7D99C();
  sub_1ABD1044C(v8);
  sub_1ABD1AC30();
  sub_1ABF24F84();
  if (!v0)
  {
    v9 = v1[1];
    v30 = v1[2];
    v33 = v1[3];
    sub_1ABA8B6EC();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABA8B6C8();
    if (!v9)
    {

      v10 = type metadata accessor for CustomGraphGamingActivityEvent(0);
      v11 = v10[6];
      sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
      sub_1ABA80C14();
      sub_1ABD0A358(v12);
      sub_1ABA88D68();
      v27 = *(v1 + v10[7]);
      sub_1ABD1AF94();
      sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
      sub_1ABD09F00();
      sub_1ABA8B6C8();
      v28 = *(v1 + v10[8]);
      sub_1ABA8B908();
      sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
      sub_1ABD0A060();
      sub_1ABA8B6C8();
      v15 = sub_1ABA8AF58(v10[9]);
      sub_1ABD1BF70(v15, v16);
      sub_1ABD1AFDC();

      sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
      sub_1ABD0A110();
      sub_1ABD1AC08();
      sub_1ABF24F84();

      v17 = sub_1ABA8AF58(v10[10]);
      sub_1ABD1BF70(v17, v18);
      sub_1ABD1AFD0();

      sub_1ABD1AC08();
      sub_1ABF24F84();

      v19 = sub_1ABA8AF58(v10[11]);
      sub_1ABD1BF70(v19, v20);
      sub_1ABD1AFC4();

      sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
      sub_1ABD0A808();
      sub_1ABA8B6C8();

      v21 = v1 + v10[12];
      v29 = *v21;
      v31 = v21[8];
      sub_1ABD1AFB8();

      sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
      sub_1ABD0A8F4();
      sub_1ABA8B6C8();

      v22 = sub_1ABA8AF58(v10[13]);
      sub_1ABD1BF70(v22, v23);
      sub_1ABD1AFE8();

      sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
      sub_1ABD0AA28();
      sub_1ABA8B6C8();

      v24 = v1 + v10[14];
      v25 = *v24;
      v32 = *(v24 + 8);
      v34 = *(v24 + 24);
      v35 = v24[40];
      sub_1ABAB6330();

      sub_1ABAD219C(&qword_1EB4D6A90, &unk_1ABF50D50);
      sub_1ABD0B798();
      sub_1ABA8B6C8();
    }
  }

  v13 = sub_1ABA89DE4();
  v14(v13);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphGamingActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  v6 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04(v6);
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA9F7AC();
  v37 = sub_1ABAD219C(&qword_1EB4D6AB0, &dword_1ABF50D60);
  sub_1ABA7BB64(v37);
  v11 = *(v10 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1ABAB67BC();
  v39 = type metadata accessor for CustomGraphGamingActivityEvent(v13);
  v14 = sub_1ABA7BBB0(v39);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C21C();
  v38 = v17;
  sub_1ABA90D04();
  sub_1ABD0B744();
  sub_1ABA9F458();
  if (v1)
  {
    sub_1ABA82840();
    sub_1ABA84B54(v0);
    if (v1)
    {
      sub_1ABD1B370();
      if ((v5 & 1) == 0)
      {
LABEL_11:
        if (v4)
        {
LABEL_12:
          sub_1ABA88814();
          if ((v3 & 1) == 0)
          {
LABEL_13:
            if (!v2)
            {
              goto LABEL_15;
            }

LABEL_14:
            sub_1ABAA1044();
            goto LABEL_15;
          }

LABEL_7:
          sub_1ABD1B2FC();
          if ((v2 & 1) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

LABEL_6:
        if (!v3)
        {
          goto LABEL_13;
        }

        goto LABEL_7;
      }
    }

    else if (!v5)
    {
      goto LABEL_11;
    }

    sub_1ABD1B314();
    if (v4)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  v18 = sub_1ABA7ABE4();
  sub_1ABAD219C(v18, v19);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v20);
  sub_1ABAA212C();
  *v38 = v40;
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA9756C();
  sub_1ABF24E64();
  *(v38 + 8) = v40;
  *(v38 + 16) = v41;
  LOBYTE(v40) = 2;
  sub_1ABA7F460();
  sub_1ABD0A358(v21);
  sub_1ABF24E64();
  v22 = v39[6];
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA9756C();
  sub_1ABF24E64();
  *(v38 + v39[7]) = v40;
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA9756C();
  sub_1ABF24E64();
  *(v38 + v39[8]) = v40;
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABAA3934();
  sub_1ABF24E64();
  sub_1ABD1BF44();
  v23 = v39[9];
  sub_1ABA8A644(v24);
  sub_1ABD1AFD0();
  sub_1ABAA3934();
  sub_1ABF24E64();
  sub_1ABD1BF44();
  v25 = v39[10];
  sub_1ABA8A644(v26);
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA9756C();
  sub_1ABF24E64();
  sub_1ABD1BF44();
  v27 = v39[11];
  sub_1ABA8A644(v28);
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA9756C();
  sub_1ABF24E64();
  v29 = v39[12];
  sub_1ABA89678(v40);
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA9756C();
  sub_1ABF24E64();
  sub_1ABD1BF44();
  v30 = v39[13];
  sub_1ABD1AEEC(v31);
  sub_1ABAD219C(&qword_1EB4D6A90, &unk_1ABF50D50);
  sub_1ABAB6330();
  sub_1ABD0B884();
  sub_1ABA89228();
  sub_1ABF24E64();
  v32 = sub_1ABA8150C();
  v33(v32);
  v34 = v38 + v39[14];
  sub_1ABD1B634(v40);
  sub_1ABD0AD58();
  sub_1ABA84B54(v0);
  v35 = sub_1ABA7D000();
  sub_1ABD0ADB0(v35, v36);
LABEL_15:
  sub_1ABA9EFCC();
  sub_1ABA7BC90();
}

void static CustomGraphSocializingActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x798), *(_Records_GDEntityClass_records + 0x7A0), *(_Records_GDEntityClass_records + 0x7A8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphSocializingActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphSocializingActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v7 = *(v6 + 8);
  v8 = sub_1ABA7EDF8();
  v9(v8);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCB211C(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphSocializingActivityEvent init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x798), *(_Records_GDEntityClass_records + 0x7A0), *(_Records_GDEntityClass_records + 0x7A8), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x798), *(_Records_GDEntityClass_records + 0x7A0), *(_Records_GDEntityClass_records + 0x7A8), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCB23E8(uint64_t a1)
{
  v2 = sub_1ABD0B970();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCB2424(uint64_t a1)
{
  v2 = sub_1ABD0B970();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphSocializingActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  v1 = sub_1ABAD219C(&qword_1EB4D6AC8, &qword_1ABF50D68);
  sub_1ABA96D00(v1);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABD0B970();
  sub_1ABA8D27C();
  sub_1ABA9F0C4();
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  sub_1ABAA19EC();
  sub_1ABAA6564();
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA1210();

    v8 = type metadata accessor for CustomGraphSocializingActivityEvent(0);
    sub_1ABA8CB28(v8);
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v9);
    sub_1ABA82E78();
    sub_1ABAA6564();
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348516);
    sub_1ABD1AFD0();

    sub_1ABD1ABF4();
    sub_1ABD1AF60();

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABA98014(348522);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    sub_1ABAA2D10();
    sub_1ABAA6564();
  }

  v10 = sub_1ABA89DE4();
  v11(v10);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphSocializingActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  v7 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA9F7AC();
  v11 = sub_1ABAD219C(&qword_1EB4D6AE8, &qword_1ABF50D78);
  sub_1ABA960BC(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1ABAB67BC();
  v18 = type metadata accessor for CustomGraphSocializingActivityEvent(v17);
  v19 = sub_1ABAB6924(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C21C();
  v30 = v22;
  sub_1ABA90D04();
  sub_1ABD0B970();
  sub_1ABA9F458();
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v30 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v13)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v23 = sub_1ABA7ABE4();
  sub_1ABAD219C(v23, v24);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v25);
  sub_1ABA841C4();
  sub_1ABAA212C();
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  sub_1ABD0A358(v27);
  sub_1ABAB54E0();
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v28 = sub_1ABA9F94C();
  v29(v28);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphWakingUpActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7B0), *(_Records_GDEntityClass_records + 0x7B8), *(_Records_GDEntityClass_records + 0x7C0), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphWakingUpActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphWakingUpActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v7 = *(v6 + 8);
  v8 = sub_1ABA7EDF8();
  v9(v8);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCB308C(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphWakingUpActivityEvent init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7B0), *(_Records_GDEntityClass_records + 0x7B8), *(_Records_GDEntityClass_records + 0x7C0), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7B0), *(_Records_GDEntityClass_records + 0x7B8), *(_Records_GDEntityClass_records + 0x7C0), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCB3358(uint64_t a1)
{
  v2 = sub_1ABD0B9C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCB3394(uint64_t a1)
{
  v2 = sub_1ABD0B9C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphWakingUpActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  v1 = sub_1ABAD219C(&qword_1EB4D6AF8, &qword_1ABF50D80);
  sub_1ABA96D00(v1);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABD0B9C4();
  sub_1ABA8D27C();
  sub_1ABA9F0C4();
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  sub_1ABAA19EC();
  sub_1ABAA6564();
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA1210();

    v8 = type metadata accessor for CustomGraphWakingUpActivityEvent(0);
    sub_1ABA8CB28(v8);
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v9);
    sub_1ABA82E78();
    sub_1ABAA6564();
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348534);
    sub_1ABD1AFD0();

    sub_1ABD1ABF4();
    sub_1ABD1AF60();

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABA98014(348540);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    sub_1ABAA2D10();
    sub_1ABAA6564();
  }

  v10 = sub_1ABA89DE4();
  v11(v10);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphWakingUpActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  v7 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA9F7AC();
  v11 = sub_1ABAD219C(&qword_1EB4D6B18, &unk_1ABF50D90);
  sub_1ABA960BC(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1ABAB67BC();
  v18 = type metadata accessor for CustomGraphWakingUpActivityEvent(v17);
  v19 = sub_1ABAB6924(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C21C();
  v30 = v22;
  sub_1ABA90D04();
  sub_1ABD0B9C4();
  sub_1ABA9F458();
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v30 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v13)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v23 = sub_1ABA7ABE4();
  sub_1ABAD219C(v23, v24);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v25);
  sub_1ABA841C4();
  sub_1ABAA212C();
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  sub_1ABD0A358(v27);
  sub_1ABAB54E0();
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v28 = sub_1ABA9F94C();
  v29(v28);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphGoingToBedActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7C8), *(_Records_GDEntityClass_records + 0x7D0), *(_Records_GDEntityClass_records + 0x7D8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphGoingToBedActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphGoingToBedActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v7 = *(v6 + 8);
  v8 = sub_1ABA7EDF8();
  v9(v8);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCB3FFC(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphGoingToBedActivityEvent init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7C8), *(_Records_GDEntityClass_records + 0x7D0), *(_Records_GDEntityClass_records + 0x7D8), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7C8), *(_Records_GDEntityClass_records + 0x7D0), *(_Records_GDEntityClass_records + 0x7D8), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCB42C8(uint64_t a1)
{
  v2 = sub_1ABD0BA18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCB4304(uint64_t a1)
{
  v2 = sub_1ABD0BA18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphGoingToBedActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  v1 = sub_1ABAD219C(&qword_1EB4D6B28, &dword_1ABF50D98);
  sub_1ABA96D00(v1);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABD0BA18();
  sub_1ABA8D27C();
  sub_1ABA9F0C4();
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  sub_1ABAA19EC();
  sub_1ABAA6564();
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA1210();

    v8 = type metadata accessor for CustomGraphGoingToBedActivityEvent(0);
    sub_1ABA8CB28(v8);
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v9);
    sub_1ABA82E78();
    sub_1ABAA6564();
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348552);
    sub_1ABD1AFD0();

    sub_1ABD1ABF4();
    sub_1ABD1AF60();

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABA98014(348558);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    sub_1ABAA2D10();
    sub_1ABAA6564();
  }

  v10 = sub_1ABA89DE4();
  v11(v10);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphGoingToBedActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  v7 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA9F7AC();
  v11 = sub_1ABAD219C(&qword_1EB4D6B48, &unk_1ABF50DA8);
  sub_1ABA960BC(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1ABAB67BC();
  v18 = type metadata accessor for CustomGraphGoingToBedActivityEvent(v17);
  v19 = sub_1ABAB6924(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C21C();
  v30 = v22;
  sub_1ABA90D04();
  sub_1ABD0BA18();
  sub_1ABA9F458();
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v30 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v13)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v23 = sub_1ABA7ABE4();
  sub_1ABAD219C(v23, v24);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v25);
  sub_1ABA841C4();
  sub_1ABAA212C();
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  sub_1ABD0A358(v27);
  sub_1ABAB54E0();
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v28 = sub_1ABA9F94C();
  v29(v28);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphExercisingActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7F8), *(_Records_GDEntityClass_records + 0x800), *(_Records_GDEntityClass_records + 0x808), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphExercisingActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphExercisingActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v7 = *(v6 + 8);
  v8 = sub_1ABA7EDF8();
  v9(v8);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCB4F6C(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphExercisingActivityEvent init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7F8), *(_Records_GDEntityClass_records + 0x800), *(_Records_GDEntityClass_records + 0x808), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7F8), *(_Records_GDEntityClass_records + 0x800), *(_Records_GDEntityClass_records + 0x808), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCB5238(uint64_t a1)
{
  v2 = sub_1ABD0BA6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCB5274(uint64_t a1)
{
  v2 = sub_1ABD0BA6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphExercisingActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  v1 = sub_1ABAD219C(&qword_1EB4D6B58, &dword_1ABF50DB0);
  sub_1ABA96D00(v1);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABD0BA6C();
  sub_1ABA8D27C();
  sub_1ABA9F0C4();
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  sub_1ABAA19EC();
  sub_1ABAA6564();
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA1210();

    v8 = type metadata accessor for CustomGraphExercisingActivityEvent(0);
    sub_1ABA8CB28(v8);
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v9);
    sub_1ABA82E78();
    sub_1ABAA6564();
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348570);
    sub_1ABD1AFD0();

    sub_1ABD1ABF4();
    sub_1ABD1AF60();

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABA98014(348576);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    sub_1ABAA2D10();
    sub_1ABAA6564();
  }

  v10 = sub_1ABA89DE4();
  v11(v10);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphExercisingActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  v7 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA9F7AC();
  v11 = sub_1ABAD219C(&qword_1EB4D6B78, &unk_1ABF50DC0);
  sub_1ABA960BC(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1ABAB67BC();
  v18 = type metadata accessor for CustomGraphExercisingActivityEvent(v17);
  v19 = sub_1ABAB6924(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C21C();
  v30 = v22;
  sub_1ABA90D04();
  sub_1ABD0BA6C();
  sub_1ABA9F458();
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v30 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v13)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v23 = sub_1ABA7ABE4();
  sub_1ABAD219C(v23, v24);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v25);
  sub_1ABA841C4();
  sub_1ABAA212C();
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  sub_1ABD0A358(v27);
  sub_1ABAB54E0();
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v28 = sub_1ABA9F94C();
  v29(v28);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphCommuteActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB28), *(_Records_GDEntityClass_records + 0xB30), *(_Records_GDEntityClass_records + 0xB38), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphCommuteActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphCommuteActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v7 = *(v6 + 8);
  v8 = sub_1ABA7EDF8();
  v9(v8);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCB5EDC(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphCommuteActivityEvent init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB28), *(_Records_GDEntityClass_records + 0xB30), *(_Records_GDEntityClass_records + 0xB38), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB28), *(_Records_GDEntityClass_records + 0xB30), *(_Records_GDEntityClass_records + 0xB38), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCB61A8(uint64_t a1)
{
  v2 = sub_1ABD0BAC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCB61E4(uint64_t a1)
{
  v2 = sub_1ABD0BAC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphCommuteActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  v1 = sub_1ABAD219C(&qword_1EB4D6B88, &dword_1ABF50DC8);
  sub_1ABA96D00(v1);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABD0BAC0();
  sub_1ABA8D27C();
  sub_1ABA9F0C4();
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  sub_1ABAA19EC();
  sub_1ABAA6564();
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA1210();

    v8 = type metadata accessor for CustomGraphCommuteActivityEvent(0);
    sub_1ABA8CB28(v8);
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v9);
    sub_1ABA82E78();
    sub_1ABAA6564();
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348588);
    sub_1ABD1AFD0();

    sub_1ABD1ABF4();
    sub_1ABD1AF60();

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABA98014(348594);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    sub_1ABAA2D10();
    sub_1ABAA6564();
  }

  v10 = sub_1ABA89DE4();
  v11(v10);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphCommuteActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  v7 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA9F7AC();
  v11 = sub_1ABAD219C(&qword_1EB4D6BA8, &unk_1ABF50DD8);
  sub_1ABA960BC(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1ABAB67BC();
  v18 = type metadata accessor for CustomGraphCommuteActivityEvent(v17);
  v19 = sub_1ABAB6924(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C21C();
  v30 = v22;
  sub_1ABA90D04();
  sub_1ABD0BAC0();
  sub_1ABA9F458();
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v30 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v13)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v23 = sub_1ABA7ABE4();
  sub_1ABAD219C(v23, v24);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v25);
  sub_1ABA841C4();
  sub_1ABAA212C();
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  sub_1ABD0A358(v27);
  sub_1ABAB54E0();
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v28 = sub_1ABA9F94C();
  v29(v28);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphDiningActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB40), *(_Records_GDEntityClass_records + 0xB48), *(_Records_GDEntityClass_records + 0xB50), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphDiningActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphDiningActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v7 = *(v6 + 8);
  v8 = sub_1ABA7EDF8();
  v9(v8);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCB6E4C(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphDiningActivityEvent init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB40), *(_Records_GDEntityClass_records + 0xB48), *(_Records_GDEntityClass_records + 0xB50), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB40), *(_Records_GDEntityClass_records + 0xB48), *(_Records_GDEntityClass_records + 0xB50), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCB7118(uint64_t a1)
{
  v2 = sub_1ABD0BB14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCB7154(uint64_t a1)
{
  v2 = sub_1ABD0BB14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphDiningActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  v1 = sub_1ABAD219C(&qword_1EB4D6BB8, &dword_1ABF50DE0);
  sub_1ABA96D00(v1);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABD0BB14();
  sub_1ABA8D27C();
  sub_1ABA9F0C4();
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  sub_1ABAA19EC();
  sub_1ABAA6564();
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA1210();

    v8 = type metadata accessor for CustomGraphDiningActivityEvent(0);
    sub_1ABA8CB28(v8);
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v9);
    sub_1ABA82E78();
    sub_1ABAA6564();
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348606);
    sub_1ABD1AFD0();

    sub_1ABD1ABF4();
    sub_1ABD1AF60();

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABA98014(348612);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    sub_1ABAA2D10();
    sub_1ABAA6564();
  }

  v10 = sub_1ABA89DE4();
  v11(v10);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphDiningActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  v7 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA9F7AC();
  v11 = sub_1ABAD219C(&qword_1EB4D6BD8, &unk_1ABF50DF0);
  sub_1ABA960BC(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1ABAB67BC();
  v18 = type metadata accessor for CustomGraphDiningActivityEvent(v17);
  v19 = sub_1ABAB6924(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C21C();
  v30 = v22;
  sub_1ABA90D04();
  sub_1ABD0BB14();
  sub_1ABA9F458();
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v30 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v13)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v23 = sub_1ABA7ABE4();
  sub_1ABAD219C(v23, v24);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v25);
  sub_1ABA841C4();
  sub_1ABAA212C();
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  sub_1ABD0A358(v27);
  sub_1ABAB54E0();
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v28 = sub_1ABA9F94C();
  v29(v28);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphAttendingAPerformanceActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB58), *(_Records_GDEntityClass_records + 0xB60), *(_Records_GDEntityClass_records + 0xB68), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphAttendingAPerformanceActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphAttendingAPerformanceActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v7 = *(v6 + 8);
  v8 = sub_1ABA7EDF8();
  v9(v8);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCB7DBC(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphAttendingAPerformanceActivityEvent init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB58), *(_Records_GDEntityClass_records + 0xB60), *(_Records_GDEntityClass_records + 0xB68), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB58), *(_Records_GDEntityClass_records + 0xB60), *(_Records_GDEntityClass_records + 0xB68), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCB8088(uint64_t a1)
{
  v2 = sub_1ABD0BB68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCB80C4(uint64_t a1)
{
  v2 = sub_1ABD0BB68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphAttendingAPerformanceActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  v1 = sub_1ABAD219C(&qword_1EB4D6BE8, &dword_1ABF50DF8);
  sub_1ABA96D00(v1);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABD0BB68();
  sub_1ABA8D27C();
  sub_1ABA9F0C4();
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  sub_1ABAA19EC();
  sub_1ABAA6564();
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA1210();

    v8 = type metadata accessor for CustomGraphAttendingAPerformanceActivityEvent(0);
    sub_1ABA8CB28(v8);
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v9);
    sub_1ABA82E78();
    sub_1ABAA6564();
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348624);
    sub_1ABD1AFD0();

    sub_1ABD1ABF4();
    sub_1ABD1AF60();

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABA98014(348630);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    sub_1ABAA2D10();
    sub_1ABAA6564();
  }

  v10 = sub_1ABA89DE4();
  v11(v10);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphAttendingAPerformanceActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  v7 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA9F7AC();
  v11 = sub_1ABAD219C(&qword_1EB4D6C08, &unk_1ABF50E08);
  sub_1ABA960BC(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1ABAB67BC();
  v18 = type metadata accessor for CustomGraphAttendingAPerformanceActivityEvent(v17);
  v19 = sub_1ABAB6924(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C21C();
  v30 = v22;
  sub_1ABA90D04();
  sub_1ABD0BB68();
  sub_1ABA9F458();
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v30 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v13)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v23 = sub_1ABA7ABE4();
  sub_1ABAD219C(v23, v24);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v25);
  sub_1ABA841C4();
  sub_1ABAA212C();
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  sub_1ABD0A358(v27);
  sub_1ABAB54E0();
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v28 = sub_1ABA9F94C();
  v29(v28);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphStationaryActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB70), *(_Records_GDEntityClass_records + 0xB78), *(_Records_GDEntityClass_records + 0xB80), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphStationaryActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphStationaryActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v7 = *(v6 + 8);
  v8 = sub_1ABA7EDF8();
  v9(v8);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCB8D2C(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphStationaryActivityEvent init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB70), *(_Records_GDEntityClass_records + 0xB78), *(_Records_GDEntityClass_records + 0xB80), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB70), *(_Records_GDEntityClass_records + 0xB78), *(_Records_GDEntityClass_records + 0xB80), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCB8FF8(uint64_t a1)
{
  v2 = sub_1ABD0BBBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCB9034(uint64_t a1)
{
  v2 = sub_1ABD0BBBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphStationaryActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  v1 = sub_1ABAD219C(&qword_1EB4D6C18, &dword_1ABF50E10);
  sub_1ABA96D00(v1);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABD0BBBC();
  sub_1ABA8D27C();
  sub_1ABA9F0C4();
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  sub_1ABAA19EC();
  sub_1ABAA6564();
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA1210();

    v8 = type metadata accessor for CustomGraphStationaryActivityEvent(0);
    sub_1ABA8CB28(v8);
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v9);
    sub_1ABA82E78();
    sub_1ABAA6564();
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348642);
    sub_1ABD1AFD0();

    sub_1ABD1ABF4();
    sub_1ABD1AF60();

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABA98014(348648);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    sub_1ABAA2D10();
    sub_1ABAA6564();
  }

  v10 = sub_1ABA89DE4();
  v11(v10);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphStationaryActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  v7 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA9F7AC();
  v11 = sub_1ABAD219C(&qword_1EB4D6C38, &unk_1ABF50E20);
  sub_1ABA960BC(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1ABAB67BC();
  v18 = type metadata accessor for CustomGraphStationaryActivityEvent(v17);
  v19 = sub_1ABAB6924(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C21C();
  v30 = v22;
  sub_1ABA90D04();
  sub_1ABD0BBBC();
  sub_1ABA9F458();
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v30 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v13)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v23 = sub_1ABA7ABE4();
  sub_1ABAD219C(v23, v24);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v25);
  sub_1ABA841C4();
  sub_1ABAA212C();
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  sub_1ABD0A358(v27);
  sub_1ABAB54E0();
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v28 = sub_1ABA9F94C();
  v29(v28);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphLocationVisitActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xBE8), *(_Records_GDEntityClass_records + 0xBF0), *(_Records_GDEntityClass_records + 0xBF8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphLocationVisitActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphLocationVisitActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v7 = *(v6 + 8);
  v8 = sub_1ABA7EDF8();
  v9(v8);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCB9C9C(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphLocationVisitActivityEvent init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xBE8), *(_Records_GDEntityClass_records + 0xBF0), *(_Records_GDEntityClass_records + 0xBF8), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xBE8), *(_Records_GDEntityClass_records + 0xBF0), *(_Records_GDEntityClass_records + 0xBF8), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCB9F68(uint64_t a1)
{
  v2 = sub_1ABD0BC10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCB9FA4(uint64_t a1)
{
  v2 = sub_1ABD0BC10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphLocationVisitActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  v1 = sub_1ABAD219C(&qword_1EB4D6C48, &dword_1ABF50E28);
  sub_1ABA96D00(v1);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABD0BC10();
  sub_1ABA8D27C();
  sub_1ABA9F0C4();
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  sub_1ABAA19EC();
  sub_1ABAA6564();
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA1210();

    v8 = type metadata accessor for CustomGraphLocationVisitActivityEvent(0);
    sub_1ABA8CB28(v8);
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v9);
    sub_1ABA82E78();
    sub_1ABAA6564();
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348660);
    sub_1ABD1AFD0();

    sub_1ABD1ABF4();
    sub_1ABD1AF60();

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABA98014(348666);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    sub_1ABAA2D10();
    sub_1ABAA6564();
  }

  v10 = sub_1ABA89DE4();
  v11(v10);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphLocationVisitActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  v7 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA9F7AC();
  v11 = sub_1ABAD219C(&qword_1EB4D6C68, &unk_1ABF50E38);
  sub_1ABA960BC(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1ABAB67BC();
  v18 = type metadata accessor for CustomGraphLocationVisitActivityEvent(v17);
  v19 = sub_1ABAB6924(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C21C();
  v30 = v22;
  sub_1ABA90D04();
  sub_1ABD0BC10();
  sub_1ABA9F458();
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v30 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v13)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v23 = sub_1ABA7ABE4();
  sub_1ABAD219C(v23, v24);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v25);
  sub_1ABA841C4();
  sub_1ABAA212C();
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  sub_1ABD0A358(v27);
  sub_1ABAB54E0();
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v28 = sub_1ABA9F94C();
  v29(v28);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphWalkingActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x858), *(_Records_GDEntityClass_records + 0x860), *(_Records_GDEntityClass_records + 0x868), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphWalkingActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphWalkingActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v7 = *(v6 + 8);
  v8 = sub_1ABA7EDF8();
  v9(v8);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCBAC0C(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphWalkingActivityEvent init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x858), *(_Records_GDEntityClass_records + 0x860), *(_Records_GDEntityClass_records + 0x868), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x858), *(_Records_GDEntityClass_records + 0x860), *(_Records_GDEntityClass_records + 0x868), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCBAED8(uint64_t a1)
{
  v2 = sub_1ABD0BC64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCBAF14(uint64_t a1)
{
  v2 = sub_1ABD0BC64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphWalkingActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  v1 = sub_1ABAD219C(&qword_1EB4D6C78, &dword_1ABF50E40);
  sub_1ABA96D00(v1);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABD0BC64();
  sub_1ABA8D27C();
  sub_1ABA9F0C4();
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  sub_1ABAA19EC();
  sub_1ABAA6564();
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA1210();

    v8 = type metadata accessor for CustomGraphWalkingActivityEvent(0);
    sub_1ABA8CB28(v8);
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v9);
    sub_1ABA82E78();
    sub_1ABAA6564();
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348678);
    sub_1ABD1AFD0();

    sub_1ABD1ABF4();
    sub_1ABD1AF60();

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABA98014(348684);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    sub_1ABAA2D10();
    sub_1ABAA6564();
  }

  v10 = sub_1ABA89DE4();
  v11(v10);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphWalkingActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  v7 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA9F7AC();
  v11 = sub_1ABAD219C(&qword_1EB4D6C98, &unk_1ABF50E50);
  sub_1ABA960BC(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1ABAB67BC();
  v18 = type metadata accessor for CustomGraphWalkingActivityEvent(v17);
  v19 = sub_1ABAB6924(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C21C();
  v30 = v22;
  sub_1ABA90D04();
  sub_1ABD0BC64();
  sub_1ABA9F458();
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v30 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v13)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v23 = sub_1ABA7ABE4();
  sub_1ABAD219C(v23, v24);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v25);
  sub_1ABA841C4();
  sub_1ABAA212C();
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  sub_1ABD0A358(v27);
  sub_1ABAB54E0();
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v28 = sub_1ABA9F94C();
  v29(v28);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphRunningActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x870), *(_Records_GDEntityClass_records + 0x878), *(_Records_GDEntityClass_records + 0x880), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphRunningActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphRunningActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v7 = *(v6 + 8);
  v8 = sub_1ABA7EDF8();
  v9(v8);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCBBB7C(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphRunningActivityEvent init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x870), *(_Records_GDEntityClass_records + 0x878), *(_Records_GDEntityClass_records + 0x880), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x870), *(_Records_GDEntityClass_records + 0x878), *(_Records_GDEntityClass_records + 0x880), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCBBE48(uint64_t a1)
{
  v2 = sub_1ABD0BCB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCBBE84(uint64_t a1)
{
  v2 = sub_1ABD0BCB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphRunningActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  v1 = sub_1ABAD219C(&qword_1EB4D6CA8, &dword_1ABF50E58);
  sub_1ABA96D00(v1);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABD0BCB8();
  sub_1ABA8D27C();
  sub_1ABA9F0C4();
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  sub_1ABAA19EC();
  sub_1ABAA6564();
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA1210();

    v8 = type metadata accessor for CustomGraphRunningActivityEvent(0);
    sub_1ABA8CB28(v8);
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v9);
    sub_1ABA82E78();
    sub_1ABAA6564();
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348696);
    sub_1ABD1AFD0();

    sub_1ABD1ABF4();
    sub_1ABD1AF60();

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABA98014(348702);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    sub_1ABAA2D10();
    sub_1ABAA6564();
  }

  v10 = sub_1ABA89DE4();
  v11(v10);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphRunningActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  v7 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA9F7AC();
  v11 = sub_1ABAD219C(&qword_1EB4D6CC8, &unk_1ABF50E68);
  sub_1ABA960BC(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1ABAB67BC();
  v18 = type metadata accessor for CustomGraphRunningActivityEvent(v17);
  v19 = sub_1ABAB6924(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C21C();
  v30 = v22;
  sub_1ABA90D04();
  sub_1ABD0BCB8();
  sub_1ABA9F458();
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v30 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v13)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v23 = sub_1ABA7ABE4();
  sub_1ABAD219C(v23, v24);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v25);
  sub_1ABA841C4();
  sub_1ABAA212C();
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  sub_1ABD0A358(v27);
  sub_1ABAB54E0();
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v28 = sub_1ABA9F94C();
  v29(v28);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphBicyclingActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x888), *(_Records_GDEntityClass_records + 0x890), *(_Records_GDEntityClass_records + 0x898), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphBicyclingActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphBicyclingActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v7 = *(v6 + 8);
  v8 = sub_1ABA7EDF8();
  v9(v8);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCBCAEC(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphBicyclingActivityEvent init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x888), *(_Records_GDEntityClass_records + 0x890), *(_Records_GDEntityClass_records + 0x898), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x888), *(_Records_GDEntityClass_records + 0x890), *(_Records_GDEntityClass_records + 0x898), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCBCDB8(uint64_t a1)
{
  v2 = sub_1ABD0BD0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCBCDF4(uint64_t a1)
{
  v2 = sub_1ABD0BD0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphBicyclingActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  v1 = sub_1ABAD219C(&qword_1EB4D6CD8, &dword_1ABF50E70);
  sub_1ABA96D00(v1);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABD0BD0C();
  sub_1ABA8D27C();
  sub_1ABA9F0C4();
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  sub_1ABAA19EC();
  sub_1ABAA6564();
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA1210();

    v8 = type metadata accessor for CustomGraphBicyclingActivityEvent(0);
    sub_1ABA8CB28(v8);
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v9);
    sub_1ABA82E78();
    sub_1ABAA6564();
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348714);
    sub_1ABD1AFD0();

    sub_1ABD1ABF4();
    sub_1ABD1AF60();

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABA98014(348720);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    sub_1ABAA2D10();
    sub_1ABAA6564();
  }

  v10 = sub_1ABA89DE4();
  v11(v10);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphBicyclingActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  v7 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA9F7AC();
  v11 = sub_1ABAD219C(&qword_1EB4D6CF8, &unk_1ABF50E80);
  sub_1ABA960BC(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1ABAB67BC();
  v18 = type metadata accessor for CustomGraphBicyclingActivityEvent(v17);
  v19 = sub_1ABAB6924(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C21C();
  v30 = v22;
  sub_1ABA90D04();
  sub_1ABD0BD0C();
  sub_1ABA9F458();
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v30 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v13)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v23 = sub_1ABA7ABE4();
  sub_1ABAD219C(v23, v24);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v25);
  sub_1ABA841C4();
  sub_1ABAA212C();
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  sub_1ABD0A358(v27);
  sub_1ABAB54E0();
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v28 = sub_1ABA9F94C();
  v29(v28);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphHikingActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x8A0), *(_Records_GDEntityClass_records + 0x8A8), *(_Records_GDEntityClass_records + 0x8B0), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphHikingActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphHikingActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v7 = *(v6 + 8);
  v8 = sub_1ABA7EDF8();
  v9(v8);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCBDA5C(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphHikingActivityEvent init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x8A0), *(_Records_GDEntityClass_records + 0x8A8), *(_Records_GDEntityClass_records + 0x8B0), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x8A0), *(_Records_GDEntityClass_records + 0x8A8), *(_Records_GDEntityClass_records + 0x8B0), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCBDD28(uint64_t a1)
{
  v2 = sub_1ABD0BD60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCBDD64(uint64_t a1)
{
  v2 = sub_1ABD0BD60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphHikingActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  v1 = sub_1ABAD219C(&qword_1EB4D6D08, &dword_1ABF50E88);
  sub_1ABA96D00(v1);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABD0BD60();
  sub_1ABA8D27C();
  sub_1ABA9F0C4();
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  sub_1ABAA19EC();
  sub_1ABAA6564();
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA1210();

    v8 = type metadata accessor for CustomGraphHikingActivityEvent(0);
    sub_1ABA8CB28(v8);
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v9);
    sub_1ABA82E78();
    sub_1ABAA6564();
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348732);
    sub_1ABD1AFD0();

    sub_1ABD1ABF4();
    sub_1ABD1AF60();

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABA98014(348738);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    sub_1ABAA2D10();
    sub_1ABAA6564();
  }

  v10 = sub_1ABA89DE4();
  v11(v10);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphHikingActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  v7 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA9F7AC();
  v11 = sub_1ABAD219C(&qword_1EB4D6D28, &unk_1ABF50E98);
  sub_1ABA960BC(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1ABAB67BC();
  v18 = type metadata accessor for CustomGraphHikingActivityEvent(v17);
  v19 = sub_1ABAB6924(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C21C();
  v30 = v22;
  sub_1ABA90D04();
  sub_1ABD0BD60();
  sub_1ABA9F458();
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v30 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v13)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v23 = sub_1ABA7ABE4();
  sub_1ABAD219C(v23, v24);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v25);
  sub_1ABA841C4();
  sub_1ABAA212C();
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  sub_1ABD0A358(v27);
  sub_1ABAB54E0();
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v28 = sub_1ABA9F94C();
  v29(v28);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphOnThePhoneActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x828), *(_Records_GDEntityClass_records + 0x830), *(_Records_GDEntityClass_records + 0x838), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphOnThePhoneActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphOnThePhoneActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v7 = *(v6 + 8);
  v8 = sub_1ABA7EDF8();
  v9(v8);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCBE9CC(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphOnThePhoneActivityEvent init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x828), *(_Records_GDEntityClass_records + 0x830), *(_Records_GDEntityClass_records + 0x838), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x828), *(_Records_GDEntityClass_records + 0x830), *(_Records_GDEntityClass_records + 0x838), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCBEC98(uint64_t a1)
{
  v2 = sub_1ABD0BDB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCBECD4(uint64_t a1)
{
  v2 = sub_1ABD0BDB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphOnThePhoneActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  v1 = sub_1ABAD219C(&qword_1EB4D6D38, &dword_1ABF50EA0);
  sub_1ABA96D00(v1);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABD0BDB4();
  sub_1ABA8D27C();
  sub_1ABA9F0C4();
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  sub_1ABAA19EC();
  sub_1ABAA6564();
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA1210();

    v8 = type metadata accessor for CustomGraphOnThePhoneActivityEvent(0);
    sub_1ABA8CB28(v8);
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v9);
    sub_1ABA82E78();
    sub_1ABAA6564();
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348750);
    sub_1ABD1AFD0();

    sub_1ABD1ABF4();
    sub_1ABD1AF60();

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABA98014(348756);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    sub_1ABAA2D10();
    sub_1ABAA6564();
  }

  v10 = sub_1ABA89DE4();
  v11(v10);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphOnThePhoneActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  v7 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA9F7AC();
  v11 = sub_1ABAD219C(&qword_1EB4D6D58, &unk_1ABF50EB0);
  sub_1ABA960BC(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1ABAB67BC();
  v18 = type metadata accessor for CustomGraphOnThePhoneActivityEvent(v17);
  v19 = sub_1ABAB6924(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C21C();
  v30 = v22;
  sub_1ABA90D04();
  sub_1ABD0BDB4();
  sub_1ABA9F458();
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v30 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v13)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v23 = sub_1ABA7ABE4();
  sub_1ABAD219C(v23, v24);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v25);
  sub_1ABA841C4();
  sub_1ABAA212C();
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  sub_1ABD0A358(v27);
  sub_1ABAB54E0();
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v28 = sub_1ABA9F94C();
  v29(v28);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphFacetimeActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x840), *(_Records_GDEntityClass_records + 0x848), *(_Records_GDEntityClass_records + 0x850), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphFacetimeActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphFacetimeActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v7 = *(v6 + 8);
  v8 = sub_1ABA7EDF8();
  v9(v8);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCBF93C(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphFacetimeActivityEvent init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x840), *(_Records_GDEntityClass_records + 0x848), *(_Records_GDEntityClass_records + 0x850), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x840), *(_Records_GDEntityClass_records + 0x848), *(_Records_GDEntityClass_records + 0x850), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCBFC08(uint64_t a1)
{
  v2 = sub_1ABD0BE08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCBFC44(uint64_t a1)
{
  v2 = sub_1ABD0BE08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphFacetimeActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  v1 = sub_1ABAD219C(&qword_1EB4D6D68, &dword_1ABF50EB8);
  sub_1ABA96D00(v1);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABD0BE08();
  sub_1ABA8D27C();
  sub_1ABA9F0C4();
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  sub_1ABAA19EC();
  sub_1ABAA6564();
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA1210();

    v8 = type metadata accessor for CustomGraphFacetimeActivityEvent(0);
    sub_1ABA8CB28(v8);
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v9);
    sub_1ABA82E78();
    sub_1ABAA6564();
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348768);
    sub_1ABD1AFD0();

    sub_1ABD1ABF4();
    sub_1ABD1AF60();

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABA98014(348774);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    sub_1ABAA2D10();
    sub_1ABAA6564();
  }

  v10 = sub_1ABA89DE4();
  v11(v10);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphFacetimeActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  v7 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA9F7AC();
  v11 = sub_1ABAD219C(&qword_1EB4D6D88, &unk_1ABF50EC8);
  sub_1ABA960BC(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1ABAB67BC();
  v18 = type metadata accessor for CustomGraphFacetimeActivityEvent(v17);
  v19 = sub_1ABAB6924(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C21C();
  v30 = v22;
  sub_1ABA90D04();
  sub_1ABD0BE08();
  sub_1ABA9F458();
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v30 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v13)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v23 = sub_1ABA7ABE4();
  sub_1ABAD219C(v23, v24);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v25);
  sub_1ABA841C4();
  sub_1ABAA212C();
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  sub_1ABD0A358(v27);
  sub_1ABAB54E0();
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v28 = sub_1ABA9F94C();
  v29(v28);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphDrivingActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xCA8), *(_Records_GDEntityClass_records + 0xCB0), *(_Records_GDEntityClass_records + 0xCB8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphDrivingActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphDrivingActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v7 = *(v6 + 8);
  v8 = sub_1ABA7EDF8();
  v9(v8);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCC08AC(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphDrivingActivityEvent init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xCA8), *(_Records_GDEntityClass_records + 0xCB0), *(_Records_GDEntityClass_records + 0xCB8), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xCA8), *(_Records_GDEntityClass_records + 0xCB0), *(_Records_GDEntityClass_records + 0xCB8), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABCC0B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1ABA7BCA8();
  v25 = v24;
  v154 = v26;
  v28 = v27;
  v156 = v29;
  v159 = v31;
  v160 = v30;
  v33 = v32;
  v35 = v34;
  v36 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v36);
  v38 = *(v37 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v39);
  v40 = sub_1ABAB67BC();
  v41 = type metadata accessor for CustomGraphDateRelationship(v40);
  v42 = sub_1ABA7BB64(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v157 = v46;
  v158 = &v151 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = v28;
  v153 = v25;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    __break(1u);
    goto LABEL_122;
  }

  v161 = v22;
  v47 = *v35;
  v48 = *(v35 + 8);
  a10 = v35;
  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), &v180);
  v49 = v180 == v47 && v181 == v48;
  if (v49)
  {

LABEL_51:
    v50 = v35;
    if (!*(v35 + 97))
    {
      v69 = *(v35 + 40);
      v68 = a10[6];
      sub_1ABA7C32C();

      sub_1ABB4DC20();
      v70 = *(*(v33 + 16) + 16);
      sub_1ABB4E024(v70);
      v71 = *(v33 + 16);
      *(v71 + 16) = v70 + 1;
      v72 = v71 + 16 * v70;
      *(v72 + 32) = v69;
      *(v72 + 40) = v68;
      *(v33 + 16) = v71;
      swift_endAccess();
      goto LABEL_92;
    }

    goto LABEL_52;
  }

  v152 = v47;
  sub_1ABF25054();
  sub_1ABA7C014();

  if (v35)
  {
    goto LABEL_51;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), &v180);
  v50 = v182;
  if (v180 == v152 && v181 == v48)
  {

    goto LABEL_59;
  }

  sub_1ABF25054();
  sub_1ABA7C014();

  if (v35)
  {
LABEL_59:
    v50 = v35;
    *(v179 + 10) = *(v35 + 82);
    v73 = *(v35 + 56);
    v178[0] = *(v35 + 40);
    v178[1] = v73;
    v179[0] = *(v35 + 72);
    if (BYTE9(v179[1]) == 1)
    {
      v74 = *(v35 + 56);
      v183[0] = *(v35 + 40);
      v183[1] = v74;
      v184[0] = *(v35 + 72);
      *(v184 + 9) = *(v35 + 81);
      sub_1ABD1C0E4();
      sub_1ABD1C0E4();
      v75 = v160;

      v76 = v75;
      v77 = v161;
      sub_1ABC8A96C(v183, v76, v23);
      if (v77)
      {
        v78 = &qword_1EB4D7E60;
        v79 = &unk_1ABF5E780;
        v80 = v178;
      }

      else
      {
        if (sub_1ABA7E1E0(v23, 1, v41) != 1)
        {
          v96 = v158;
          sub_1ABCF9424();
          v97 = v159;
          sub_1ABA7C32C();
          sub_1ABB4DE30();
          v98 = sub_1ABD1BD90();
          sub_1ABB4E234(v98);
          v99 = *(v97 + 16);
          *(v99 + 16) = v41 + 1;
          v100 = *(v157 + 80);
          sub_1ABD1B7FC();
          v102 = *(v101 + 72);
          sub_1ABA8AA88();
          sub_1ABD0AD58();
          *(v97 + 16) = v99;
          swift_endAccess();
          sub_1ABAB480C(v178, &qword_1EB4D7E60, &unk_1ABF5E780);
          sub_1ABD0ADB0(v96, (v97 + 16));
          goto LABEL_92;
        }

        sub_1ABAB480C(v178, &qword_1EB4D7E60, &unk_1ABF5E780);
        v78 = &qword_1EB4D5F20;
        v79 = &qword_1ABF4F358;
        v80 = v23;
      }

      sub_1ABAB480C(v80, v78, v79);
      goto LABEL_92;
    }

    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7D178();
    }

    v81 = sub_1ABF237F4();
    sub_1ABAA2318(v81, qword_1ED871B40);
    sub_1ABAE2EC4();
    v60 = sub_1ABF237D4();
    v82 = sub_1ABF24664();
    if (!sub_1ABAA5E74(v82))
    {
      goto LABEL_66;
    }

    sub_1ABA8E2E8();
    v62 = sub_1ABAB5B88();
    v165 = v62;
    v83 = sub_1ABD1BDA4(4.9654e-34);
    v84 = v35;
LABEL_90:
    memcpy(v83, v84, 0x62uLL);
    sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
    v65 = sub_1ABF23C94();
    v67 = &v165;
    goto LABEL_91;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_123:
    __break(1u);
LABEL_124:
    sub_1ABA7D178();
LABEL_117:
    v146 = sub_1ABF237F4();
    sub_1ABAA2318(v146, qword_1ED871B40);
    sub_1ABAE2EC4();
    v60 = sub_1ABF237D4();
    v147 = sub_1ABF24664();
    if (sub_1ABAA5E74(v147))
    {
      sub_1ABA8E2E8();
      v62 = sub_1ABAB5B88();
      *&v178[0] = v62;
      v63 = sub_1ABD1BDA4(4.9654e-34);
      v64 = a10;
      goto LABEL_56;
    }

    v85 = a10;
    goto LABEL_67;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1392], *(_Records_GDEntityPredicate_records + 349), *(_Records_GDEntityPredicate_records + 350), &v180);
  sub_1ABD1AEC0();
  if (v49 && v41 == v48)
  {

LABEL_72:
    sub_1ABAA6314();
    if (!v49)
    {
LABEL_86:
      if (qword_1ED871B38 != -1)
      {
        sub_1ABA7D178();
      }

      v119 = sub_1ABF237F4();
      sub_1ABAA2318(v119, qword_1ED871B40);
      sub_1ABAE2EC4();
      v60 = sub_1ABF237D4();
      v120 = sub_1ABF24664();
      if (!sub_1ABAA5E74(v120))
      {

        v85 = v48;
        goto LABEL_67;
      }

      sub_1ABA8E2E8();
      v62 = sub_1ABAB5B88();
      v165 = v62;
      v83 = sub_1ABD1BDA4(4.9654e-34);
      v84 = v48;
      goto LABEL_90;
    }

    sub_1ABAB5BBC();
    MEMORY[0x1EEE9AC00](v86);
    sub_1ABA9F9B8();
    sub_1ABAE2EC4();
    sub_1ABD191AC(&v180, &v165);
    v87 = sub_1ABA7ABE4();
    v88 = v161;
    sub_1ABCFC2DC(v87, v89, v90, v91, v92, v93, v94, v95, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, *(&v173 + 1));
    if (!v88)
    {
      v103 = v174;
      if (v174)
      {
        sub_1ABD1AE84();
        v104 = v156;
        sub_1ABA7C32C();
        sub_1ABB4DEA8();
        v105 = sub_1ABAA6450();
        sub_1ABB4E2AC(v105);
LABEL_79:
        v106 = *(v104 + 16);
        *(v106 + 16) = v41 + 1;
        v107 = v106 + (v41 << 6);
        *(v107 + 32) = v173;
        *(v107 + 48) = v103;
        *(v107 + 56) = v175;
        *(v107 + 72) = v176;
        *(v107 + 88) = v177;
        *(v104 + 16) = v106;
        swift_endAccess();
LABEL_95:
        sub_1ABAB480C(v178, &qword_1EB4D7E60, &unk_1ABF5E780);
        goto LABEL_92;
      }

LABEL_94:
      sub_1ABD1AE84();
      goto LABEL_95;
    }

LABEL_75:
    sub_1ABD1AE84();
    sub_1ABAB480C(v178, &qword_1EB4D7E60, &unk_1ABF5E780);
    goto LABEL_92;
  }

  sub_1ABAA36FC();
  sub_1ABA7C014();

  if (v35)
  {
    goto LABEL_72;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_126;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1080], *(_Records_GDEntityPredicate_records + 271), *(_Records_GDEntityPredicate_records + 272), &v180);
  sub_1ABD1AEC0();
  if (v49 && v41 == v48)
  {

LABEL_81:
    sub_1ABAA6314();
    if (!v49)
    {
      goto LABEL_86;
    }

    sub_1ABAB5BBC();
    MEMORY[0x1EEE9AC00](v108);
    sub_1ABA9F9B8();
    sub_1ABAE2EC4();
    sub_1ABD191AC(&v180, &v165);
    v109 = sub_1ABA7ABE4();
    v110 = v161;
    sub_1ABCFC2DC(v109, v111, v112, v113, v114, v115, v116, v117, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, *(&v173 + 1));
    if (!v110)
    {
      v103 = v174;
      if (v174)
      {
        sub_1ABD1AE84();
        v104 = v155;
        sub_1ABA7C32C();
        sub_1ABB4DD28();
        v118 = sub_1ABAA6450();
        sub_1ABB4E12C(v118);
        goto LABEL_79;
      }

      goto LABEL_94;
    }

    goto LABEL_75;
  }

  sub_1ABAA36FC();
  sub_1ABA7C014();

  if (v35)
  {
    goto LABEL_81;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1920], *(_Records_GDEntityPredicate_records + 481), *(_Records_GDEntityPredicate_records + 482), &v180);
  sub_1ABD1AEC0();
  if (v49 && v41 == v48)
  {

    goto LABEL_98;
  }

  sub_1ABAA36FC();
  sub_1ABA7C014();

  if (v35)
  {
LABEL_98:
    sub_1ABD1B82C();
    if (!v49)
    {
      goto LABEL_52;
    }

    v122 = sub_1ABD1B7EC();
    sub_1ABC4A630(v123, v122);
    if (v22)
    {
      goto LABEL_92;
    }

    v124 = *&v178[0];
    v125 = v154;
    goto LABEL_102;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1932], *(_Records_GDEntityPredicate_records + 484), *(_Records_GDEntityPredicate_records + 485), &v180);
  sub_1ABD1AEC0();
  if (v49 && v41 == v48)
  {

    goto LABEL_104;
  }

  sub_1ABAA36FC();
  sub_1ABA7C014();

  if (v35)
  {
LABEL_104:
    sub_1ABD1B82C();
    if (!v49)
    {
      goto LABEL_52;
    }

    v128 = sub_1ABD1B7EC();
    sub_1ABC4A630(v129, v128);
    if (v22)
    {
      goto LABEL_92;
    }

    v124 = *&v178[0];
    v125 = v153;
LABEL_102:
    sub_1ABA8C160();
    sub_1ABB4DD40();
    v126 = sub_1ABD1BD90();
    sub_1ABB4E144(v126);
    v127 = *(v125 + 16);
    *(v127 + 16) = v41 + 1;
    *(v127 + 8 * v41 + 32) = v124;
    *(v125 + 16) = v127;
    goto LABEL_92;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[240], *(_Records_GDEntityPredicate_records + 61), *(_Records_GDEntityPredicate_records + 62), &v180);
  sub_1ABD1AEC0();
  if (v49 && v41 == v48)
  {

LABEL_109:
    sub_1ABD1B82C();
    if (v49)
    {
      v130 = sub_1ABD1B7EC();
      sub_1ABC4CBC0(v130, v131, v132, v133, v134, v135, v136, v137, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, *(&v173 + 1), v174, v175, *(&v175 + 1), v176);
      if (!v22)
      {
        v138 = *&v178[0];
        sub_1ABA8C160();
        sub_1ABB4DE48();
        v139 = sub_1ABAB5F24();
        sub_1ABB4E24C(v139);
        sub_1ABAA33C0();
        *(v140 + 32) = v138;
        *(a21 + 16) = v141;
      }

      goto LABEL_92;
    }

LABEL_52:
    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7D178();
    }

    v59 = sub_1ABF237F4();
    sub_1ABAA2318(v59, qword_1ED871B40);
    sub_1ABAE2EC4();
    v60 = sub_1ABF237D4();
    v61 = sub_1ABF24664();
    if (sub_1ABAA5E74(v61))
    {
      sub_1ABA8E2E8();
      v62 = sub_1ABAB5B88();
      *&v178[0] = v62;
      v63 = sub_1ABD1BDA4(4.9654e-34);
      v64 = v50;
LABEL_56:
      memcpy(v63, v64, 0x62uLL);
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v65 = sub_1ABF23C94();
      v67 = v178;
LABEL_91:
      v121 = sub_1ABADD6D8(v65, v66, v67);

      *(v41 + 4) = v121;
      _os_log_impl(&dword_1ABA78000, v60, v35, "Failed to parse %{sensitive}s.", v41, 0xCu);
      sub_1ABA84B54(v62);
      sub_1ABA7BC34();
      sub_1ABA90C1C();

      goto LABEL_92;
    }

LABEL_66:

    v85 = v50;
LABEL_67:
    sub_1ABAB480C(v85, &qword_1EB4D1148, &qword_1ABF332D0);
    goto LABEL_92;
  }

  sub_1ABAA36FC();
  sub_1ABA7C014();

  if (v35)
  {
    goto LABEL_109;
  }

  if (_Records_GDEntityPredicate_records)
  {
    sub_1ABA91D48(_Records_GDEntityPredicate_records[1200], *(_Records_GDEntityPredicate_records + 301), *(_Records_GDEntityPredicate_records + 302), &v180);
    v41 = v181;
    if (v180 == v152 && v181 == v48)
    {

LABEL_114:
      if (!*(v35 + 97))
      {
        v142 = *(v35 + 40);
        v143 = *(v35 + 48);

        v144 = sub_1ABB24D04(v142, v143);
        if ((v145 & 1) == 0)
        {
          v148 = v144;
          sub_1ABA8C160();
          sub_1ABB4DCB0();
          v149 = *(*(a22 + 16) + 16);
          sub_1ABB4E0CC(v149);
          v150 = *(a22 + 16);
          *(v150 + 16) = v149 + 1;
          *(v150 + 8 * v149 + 32) = v148;
          *(a22 + 16) = v150;
          goto LABEL_92;
        }
      }

      if (qword_1ED871B38 == -1)
      {
        goto LABEL_117;
      }

      goto LABEL_124;
    }

    v58 = sub_1ABF25054();

    if (v58)
    {
      goto LABEL_114;
    }

LABEL_92:
    sub_1ABA8869C();
    sub_1ABA7BC90();
    return;
  }

LABEL_129:
  __break(1u);
}

void sub_1ABCC1840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int16 **a23, uint64_t a24)
{
  sub_1ABA7BCA8();
  a19 = v25;
  a20 = v26;
  v300 = v27;
  v303 = v28;
  v305 = v29;
  v308 = v30;
  v316 = v31;
  v323 = v32;
  v331 = v33;
  v35 = v34;
  v36 = a23;
  v95 = a24;
  v37 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v37);
  v39 = *(v38 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v40);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v41);
  v320 = type metadata accessor for CustomGraphDateRelationship(0);
  v42 = sub_1ABA7BB64(v320);
  v314 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  sub_1ABA7C21C();
  sub_1ABA8147C(v46);
  v47 = *(v95 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1ABA82858();
  v326 = sub_1ABF247E4();
  v48 = sub_1ABA7BB64(v326);
  v325 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  sub_1ABA7C068();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v52);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v53);
  sub_1ABA8147C(&v294 - v54);
  v330 = v95;
  v327 = *(v95 - 8);
  v55 = *(v327 + 64);
  MEMORY[0x1EEE9AC00](v56);
  sub_1ABA7C068();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v57);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v58);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v59);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v60);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v61);
  sub_1ABA8147C(&v294 - v62);
  v332 = *(v36 - 1);
  v63 = *(v332 + 64);
  MEMORY[0x1EEE9AC00](v64);
  sub_1ABA7C068();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v65);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v66);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v67);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v68);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v69);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v70);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v71);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v72);
  v74 = (&v294 - v73);
  v335 = swift_checkMetadataState();
  v75 = sub_1ABA7BB64(v335);
  v77 = v76;
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v75);
  sub_1ABA7C068();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v80);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v81);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v82);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v83);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v294 - v85;
  MEMORY[0x1EEE9AC00](v87);
  v89 = (&v294 - v88);
  v91 = MEMORY[0x1EEE9AC00](v90);
  v93 = &v294 - v92;
  v94 = *(v47 + 24);
  v336 = v35;
  v337 = v36;
  LODWORD(v95) = v35;
  v334 = v47;
  v94(v344, v36, v47, v91);
  v333 = v77;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_129;
  }

  v97 = v344[0];
  v96 = v344[1];
  v98 = v345;
  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), &v339);
  v99 = v97;
  v95 = v340;
  v100 = v339 == v99 && v340 == v96;
  if (v100)
  {

LABEL_9:
    v102 = v336;

    v103 = *(v334 + 32);
    v104 = v337;
    v105 = sub_1ABD1BE94();
    v106(v105);
    v107 = v335;
    v108 = swift_getAssociatedConformanceWitness();
    v109 = (*(v108 + 24))(v107, v108);
    v111 = v110;
    v112 = sub_1ABAA1B2C();
    v113(v112, v107);
    if (v111)
    {
      v114 = v331;
      sub_1ABA7C32C();
      sub_1ABB4DC20();
      v115 = *(*(v114 + 16) + 16);
      sub_1ABB4E024(v115);
      v116 = *(v114 + 16);
      *(v116 + 16) = v115 + 1;
      v117 = v116 + 16 * v115;
      *(v117 + 32) = v109;
      *(v117 + 40) = v111;
      *(v114 + 16) = v116;
      swift_endAccess();
      goto LABEL_55;
    }

    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7D178();
    }

    v118 = sub_1ABF237F4();
    sub_1ABAA2318(v118, qword_1ED871B40);
    sub_1ABD1BA08();
    sub_1ABD1B578();
    v119 = sub_1ABA8BBFC();
    v107(v119);
    v120 = sub_1ABF237D4();
    v121 = sub_1ABF24664();
    if (sub_1ABA9E624(v121))
    {
      sub_1ABA8E2E8();
      v336 = sub_1ABAB5B88();
      v339 = v336;
      v122 = sub_1ABD1BDB0(4.9654e-34);
      (v107)(v122, v74, v104);
      sub_1ABF23C94();
      sub_1ABD1B6A8();
      v123 = sub_1ABAA4810();
      v124(v123);
      sub_1ABD1B55C();
      sub_1ABD1BA80();

      *(v102 + 4) = v93;
      sub_1ABA8D1E0();
      _os_log_impl(v125, v126, v127, v128, v129, 0xCu);
      sub_1ABA84B54(v336);
      sub_1ABA7BC34();
LABEL_31:
      sub_1ABA7BC34();

LABEL_55:
      sub_1ABA7BC90();
      return;
    }

    v131 = sub_1ABAA4810();
LABEL_54:
    v133(v131, v132);
    goto LABEL_55;
  }

  v296 = v98;
  v295 = v99;
  sub_1ABA89938();
  v101 = sub_1ABF25054();

  if (v101)
  {
    goto LABEL_9;
  }

  v74 = &_Records_GDEntityPredicate_records;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_131;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), &v339);
  sub_1ABA88FC8();
  if (v100 && v95 == v96)
  {
    sub_1ABD1B964();

    goto LABEL_25;
  }

  sub_1ABA89938();
  v93 = sub_1ABF25054();

  if (v93)
  {
    sub_1ABAA0C8C();
LABEL_25:

    sub_1ABD1B7BC();
    v134 = sub_1ABAB5978();
    v135(v134);
    v136 = AssociatedConformanceWitness;
    v137 = *(AssociatedConformanceWitness + 40);
    sub_1ABD1BA50(&a13);
    v138(v335, v136);
    v95 = v86;
    v139 = *(v333 + 8);
    v140 = sub_1ABA7AC64();
    v141(v140);
    v93 = v330;
    v142 = sub_1ABA7E1E0(v86, 1, v330);
    v86 = v332;
    if (v142 == 1)
    {
      (*(v325 + 8))(v95, v326);
      if (qword_1ED871B38 != -1)
      {
        sub_1ABA7D178();
      }

      v143 = sub_1ABF237F4();
      sub_1ABAA2318(v143, qword_1ED871B40);
      sub_1ABD1B578();
      v144 = &v345;
      goto LABEL_29;
    }

    sub_1ABD1BA50(&a12);
    (*(v152 + 32))(v322, v95, v93);
    v153 = *(v86 + 16);
    v154 = sub_1ABA894A0();
    v155(v154);
    swift_getAssociatedConformanceWitness();

    v156 = v324;
    CustomGraphDateRelationship.init<A>(from:initializationResources:)();
    if (!v24)
    {
      if (sub_1ABA7E1E0(v156, 1, v320) == 1)
      {
        v157 = sub_1ABD1B148();
        v158(v157);
        sub_1ABAB480C(v156, &qword_1EB4D5F20, &qword_1ABF4F358);
        goto LABEL_55;
      }

      v183 = v315;
      sub_1ABCF9424();
      v184 = v316;
      sub_1ABA7C32C();
      sub_1ABB4DE30();
      v185 = sub_1ABD1BCE4();
      sub_1ABB4E234(v185);
      v186 = *(v184 + 16);
      *(v186 + 16) = v156 + 1;
      v187 = v186 + ((*(v314 + 80) + 32) & ~*(v314 + 80));
      v188 = *(v314 + 72);
      sub_1ABD0AD58();
      *(v184 + 16) = v186;
      swift_endAccess();
      sub_1ABD0ADB0(v183, type metadata accessor for CustomGraphDateRelationship);
    }

LABEL_53:
    v131 = sub_1ABD1B148();
    goto LABEL_54;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_133:
    sub_1ABA7D178();
LABEL_108:
    v244 = sub_1ABF237F4();
    sub_1ABAA2318(v244, qword_1ED871B40);
    v245 = v332;
    v246 = v332 + 16;
    v247 = *(v332 + 16);
    v248 = v299;
    v247(v299, v96, v74);
    v249 = sub_1ABF237D4();
    v250 = sub_1ABF24664();
    if (!sub_1ABA9E624(v250))
    {

      v265 = *(v245 + 8);
      v266 = sub_1ABA8B1A8();
      v267(v266);
      goto LABEL_55;
    }

    sub_1ABA8E2E8();
    v336 = sub_1ABAB5B88();
    v339 = v336;
    *v101 = 136642819;
    v247(v328, v248, v74);
    sub_1ABA97F40();
    sub_1ABF23C94();
    sub_1ABD1B6A8();
    v251 = *(v245 + 8);
    v252 = sub_1ABA8B1A8();
    v253(v252);
    sub_1ABD1B55C();
    sub_1ABD1BA80();

    *(v101 + 4) = v246;
    sub_1ABA8D1E0();
    _os_log_impl(v254, v255, v256, v257, v258, 0xCu);
    sub_1ABA84B54(v336);
    goto LABEL_110;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1392], *(_Records_GDEntityPredicate_records + 349), *(_Records_GDEntityPredicate_records + 350), &v339);
  sub_1ABA88FC8();
  if (v100 && v95 == v96)
  {
    sub_1ABD1B964();

    goto LABEL_44;
  }

  sub_1ABA89938();
  v93 = sub_1ABF25054();

  if (v93)
  {
    sub_1ABAA0C8C();
LABEL_44:

    sub_1ABD1B7BC();
    v160 = sub_1ABAB5978();
    v161(v160);
    sub_1ABD1BF10();
    v162 = v321;
    LODWORD(v95) = v86;
    v163(v335, v89);
    v164 = sub_1ABAA0C6C();
    v165(v164);
    v86 = v330;
    if (sub_1ABA7E1E0(v162, 1, v330) != 1)
    {
      sub_1ABD1BE88(&a12);
      v170 = *(v169 + 32);
      v171 = v319;
      v172 = sub_1ABAA4810();
      v173(v172);
      v174 = *(v93 + 16);
      v175 = sub_1ABA97F40();
      v176(v175);
      type metadata accessor for CustomGraphPerson(0);
      v177 = sub_1ABD09EBC(&unk_1EB4D7E80);
      sub_1ABA7AC64();
      swift_getAssociatedConformanceWitness();
      v178 = sub_1ABD1BE94();
      CustomGraphAttendeeRelationship.init<A>(from:initializationResources:)(v181, v178, v179, v86, v177, v180);
      if (!v24 && v341)
      {
        sub_1ABA7C32C();
        sub_1ABB4DEA8();
        v182 = sub_1ABD1BD7C();
        sub_1ABB4E2AC(v182);
        sub_1ABA8A43C();
      }

      (*(v93 + 8))(v171, v86);
      goto LABEL_55;
    }

    v166 = sub_1ABD1B650();
    v167(v166);
    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7D178();
    }

    v168 = sub_1ABF237F4();
    sub_1ABAA2318(v168, qword_1ED871B40);
    sub_1ABD1BA08();
    sub_1ABD1B578();
    v144 = &v343;
    goto LABEL_29;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_135:
    sub_1ABA7D178();
LABEL_124:
    v275 = sub_1ABF237F4();
    sub_1ABAA2318(v275, qword_1ED871B40);
    sub_1ABD1BD18();
    v278 = *(v93 + 16);
    v276 = v93 + 16;
    v277 = v278;
    v278(v298, v336, v337);
    v249 = sub_1ABF237D4();
    v279 = sub_1ABF24664();
    if (!sub_1ABA9E624(v279))
    {

      (*(v332 + 8))(v298, v337);
      goto LABEL_55;
    }

    sub_1ABA8E2E8();
    v280 = sub_1ABAB5B88();
    v339 = v280;
    v281 = sub_1ABD1BDB0(4.9654e-34);
    v277(v281, v298, v337);
    sub_1ABF23C94();
    sub_1ABD1B6A8();
    v282 = *(v332 + 8);
    v283 = sub_1ABA97F40();
    v284(v283);
    sub_1ABD1B55C();
    sub_1ABD1BA80();

    *(v101 + 4) = v276;
    sub_1ABA8D1E0();
    _os_log_impl(v285, v286, v287, v288, v289, 0xCu);
    sub_1ABA84B54(v280);
LABEL_110:
    sub_1ABA7BC34();
    sub_1ABA90C1C();

    goto LABEL_55;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1080], *(_Records_GDEntityPredicate_records + 271), *(_Records_GDEntityPredicate_records + 272), &v339);
  sub_1ABA88FC8();
  if (v100 && v95 == v96)
  {
    sub_1ABD1B964();

    goto LABEL_64;
  }

  sub_1ABA89938();
  sub_1ABF25054();
  sub_1ABA7F240();

  if (v86)
  {
    sub_1ABAA0C8C();
LABEL_64:
    sub_1ABD1BA08();

    sub_1ABD1B7BC();
    sub_1ABD1BE88(&v339);
    v190 = sub_1ABAB5978();
    v191(v190);
    sub_1ABD1BF10();
    v192 = v313;
    LODWORD(v95) = v93;
    v193 = v335;
    v194(v335, v89);
    v195 = sub_1ABAA1B2C();
    v196(v195, v193);
    v93 = v330;
    if (sub_1ABA7E1E0(v192, 1, v330) == 1)
    {
      v197 = sub_1ABD1B650();
      v198(v197);
      if (qword_1ED871B38 != -1)
      {
        sub_1ABA7D178();
      }

      v199 = sub_1ABF237F4();
      sub_1ABAA2318(v199, qword_1ED871B40);
      sub_1ABD1B578();
      v144 = v338;
      goto LABEL_29;
    }

    sub_1ABD1BA50(&a12);
    v201 = *(v200 + 32);
    v202 = sub_1ABAA4810();
    v203(v202);
    v204 = *(v86 + 16);
    v205 = v310;
    v206 = sub_1ABAA1DFC();
    v207(v206);
    v208 = sub_1ABD19740();
    sub_1ABA7AC64();
    v209 = swift_getAssociatedConformanceWitness();
    CustomGraphLocationRelationship.init<A>(from:initializationResources:)(&v339, v205, &type metadata for CustomGraphLocation, v93, v208, v209);
    if (!v24 && v341)
    {
      sub_1ABA7C32C();
      sub_1ABB4DD28();
      v210 = sub_1ABD1BD7C();
      sub_1ABB4E12C(v210);
      sub_1ABA8A43C();
    }

    goto LABEL_53;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1920], *(_Records_GDEntityPredicate_records + 481), *(_Records_GDEntityPredicate_records + 482), &v339);
  sub_1ABA88FC8();
  if (v100 && v95 == v96)
  {
    sub_1ABD1B964();

    goto LABEL_79;
  }

  sub_1ABA89938();
  sub_1ABF25054();
  sub_1ABA7F240();

  if (v86)
  {
    sub_1ABAA0C8C();
LABEL_79:
    sub_1ABD1BA08();

    sub_1ABAA5634();
    sub_1ABD1BE88(&v336);
    v74 = v337;
    v212 = sub_1ABA8BBFC();
    v213(v212);
    v214 = sub_1ABD1B4FC();
    sub_1ABAA6720(v214);
    LODWORD(v95) = v93;
    v215(v101);
    v216 = sub_1ABAA1B2C();
    v217(v216, v101);
    if (v340)
    {
      if (qword_1ED871B38 == -1)
      {
LABEL_81:
        v218 = sub_1ABF237F4();
        sub_1ABAA2318(v218, qword_1ED871B40);
        sub_1ABD1B578();
        v144 = &v335;
LABEL_29:
        v145 = *(v144 - 32);
        v146 = sub_1ABA7D0EC();
        v89(v146);
        v120 = sub_1ABF237D4();
        v147 = sub_1ABF24664();
        if (!sub_1ABA9E624(v147))
        {

          (*(v86 + 8))(v145, v74);
          goto LABEL_55;
        }

        v148 = sub_1ABA8E2E8();
        LODWORD(v336) = v95;
        v149 = v148;
        v150 = v86;
        v151 = swift_slowAlloc();
        v339 = v151;
        *v149 = 136642819;
        (v89)(v328, v145, v74);
        sub_1ABA97F40();
        sub_1ABF23C94();
        sub_1ABD1B6A8();
        (*(v150 + 8))(v145, v74);
        sub_1ABD1B55C();
        sub_1ABD1BA80();

        *(v149 + 4) = v93;
        _os_log_impl(&dword_1ABA78000, v120, v336, "Failed to parse %{sensitive}s.", v149, 0xCu);
        sub_1ABA84B54(v151);
        sub_1ABA7BC34();
        goto LABEL_31;
      }

LABEL_129:
      sub_1ABA7D178();
      goto LABEL_81;
    }

    sub_1ABC4A630(v338, v339);
    if (v24)
    {
      goto LABEL_55;
    }

    p_AssociatedConformanceWitness = &v332;
LABEL_84:
    v220 = *(p_AssociatedConformanceWitness - 32);
    sub_1ABA8C160();
    sub_1ABB4DD40();
    v221 = sub_1ABD1BD44();
    sub_1ABB4E144(v221);
    sub_1ABD1B540();
    goto LABEL_55;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_137;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1932], *(_Records_GDEntityPredicate_records + 484), *(_Records_GDEntityPredicate_records + 485), &v339);
  sub_1ABA88FC8();
  v222 = v100 && v95 == v96;
  v74 = v337;
  if (v222)
  {
    sub_1ABD1B964();

LABEL_93:
    sub_1ABD1BA08();

    sub_1ABAA5634();
    sub_1ABD1BE88(&v333);
    v223 = sub_1ABA8BBFC();
    v224(v223);
    v225 = sub_1ABD1B4FC();
    sub_1ABAA6720(v225);
    LODWORD(v95) = v93;
    v226(v101);
    v227 = sub_1ABAA1B2C();
    v228(v227, v101);
    if ((v340 & 1) == 0)
    {
      sub_1ABC4A630(v338, v339);
      if (v24)
      {
        goto LABEL_55;
      }

      p_AssociatedConformanceWitness = &AssociatedConformanceWitness;
      goto LABEL_84;
    }

    if (qword_1ED871B38 == -1)
    {
LABEL_95:
      v229 = sub_1ABF237F4();
      sub_1ABAA2318(v229, qword_1ED871B40);
      sub_1ABD1B578();
      v144 = &v331;
      goto LABEL_29;
    }

LABEL_131:
    sub_1ABA7D178();
    goto LABEL_95;
  }

  sub_1ABA89938();
  sub_1ABF25054();
  sub_1ABA7F240();

  if (v86)
  {
    sub_1ABAA0C8C();
    goto LABEL_93;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_138;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[240], *(_Records_GDEntityPredicate_records + 61), *(_Records_GDEntityPredicate_records + 62), &v339);
  sub_1ABA88FC8();
  if (v100 && v95 == v96)
  {
    sub_1ABD1B964();

LABEL_106:

    sub_1ABAA5634();
    sub_1ABD1BA50(&v330);
    v96 = v336;
    v231 = sub_1ABA8BBFC();
    v232(v231);
    v233 = sub_1ABD1B4FC();
    sub_1ABAA6720(v233);
    v234(v101);
    v235 = sub_1ABAA0C6C();
    v236(v235);
    if ((v340 & 1) == 0)
    {
      sub_1ABC4CBC0(v339, v237, v238, v239, v240, v241, v242, v243, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321);
      if (!v24)
      {
        v259 = a21;
        v260 = v338[0];
        sub_1ABA8C160();
        sub_1ABB4DE48();
        v261 = sub_1ABD1BCE4();
        sub_1ABB4E24C(v261);
        v262 = *(v259 + 16);
        *(v262 + 16) = v96 + 1;
        *(v262 + 8 * v96 + 32) = v260;
        *(v259 + 16) = v262;
      }

      goto LABEL_55;
    }

    if (qword_1ED871B38 == -1)
    {
      goto LABEL_108;
    }

    goto LABEL_133;
  }

  sub_1ABA89938();
  sub_1ABF25054();
  sub_1ABA7F240();

  if (v86)
  {
    sub_1ABAA0C8C();
    goto LABEL_106;
  }

  if (_Records_GDEntityPredicate_records)
  {
    sub_1ABA91D48(_Records_GDEntityPredicate_records[1200], *(_Records_GDEntityPredicate_records + 301), *(_Records_GDEntityPredicate_records + 302), &v339);
    v263 = v342;
    if (v339 == v295 && v340 == v96)
    {

      sub_1ABD1B964();
    }

    else
    {
      sub_1ABA89938();
      sub_1ABF25054();
      sub_1ABA7F240();

      sub_1ABD1B964();

      if ((v86 & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    sub_1ABAA5634();
    sub_1ABD1BA50(&v327);
    v268(v337, v263);
    sub_1ABA7D0EC();
    v101 = v335;
    v269 = swift_getAssociatedConformanceWitness();
    v270 = BaseEntityFactObjectProtocol.asDouble.getter(v101, v269);
    v272 = v271;
    v273 = sub_1ABAA0C6C();
    v274(v273);
    if ((v272 & 1) == 0)
    {
      v290 = a22;
      sub_1ABA8C160();
      sub_1ABB4DCB0();
      v291 = sub_1ABAB5F24();
      sub_1ABB4E0CC(v291);
      sub_1ABAA33C0();
      *(v292 + 32) = v270;
      *(v290 + 16) = v293;
      goto LABEL_55;
    }

    if (qword_1ED871B38 == -1)
    {
      goto LABEL_124;
    }

    goto LABEL_135;
  }

LABEL_139:
  __break(1u);
}

uint64_t sub_1ABCC3164()
{
  sub_1ABA81488();
  v3 = v1 == 0x64496465707974 && v2 == 0xE700000000000000;
  if (v3 || (sub_1ABA89938(), (sub_1ABF25054() & 1) != 0))
  {

    return 0;
  }

  else
  {
    v5 = v1 == 1701667182 && v0 == 0xE400000000000000;
    if (v5 || (sub_1ABA89938(), (sub_1ABF25054() & 1) != 0))
    {

      return 1;
    }

    else
    {
      v6 = v1 == 1702125924 && v0 == 0xE400000000000000;
      if (v6 || (sub_1ABA89938(), (sub_1ABF25054() & 1) != 0))
      {

        return 2;
      }

      else
      {
        v7 = v1 == 0x6565646E65747461 && v0 == 0xE900000000000073;
        if (v7 || (sub_1ABA89938(), (sub_1ABF25054() & 1) != 0))
        {

          return 3;
        }

        else
        {
          v8 = v1 == 0x6E6F697461636F6CLL && v0 == 0xE900000000000073;
          if (v8 || (sub_1ABA89938(), (sub_1ABF25054() & 1) != 0))
          {

            return 4;
          }

          else
          {
            v10 = v1 == sub_1ABD1BB7C() && v0 == v9;
            if (v10 || (sub_1ABA89938(), (sub_1ABF25054() & 1) != 0))
            {

              return 5;
            }

            else
            {
              v12 = v1 == sub_1ABD1BC94() && v0 == v11;
              if (v12 || (sub_1ABA89938(), (sub_1ABF25054() & 1) != 0))
              {

                return 6;
              }

              else
              {
                v13 = v1 == 0xD000000000000012 && 0x80000001ABF8D5E0 == v0;
                if (v13 || (sub_1ABA89938(), (sub_1ABF25054() & 1) != 0))
                {

                  return 7;
                }

                else
                {
                  v15 = v1 == sub_1ABD1BC74() && v0 == v14;
                  if (v15 || (sub_1ABA89938(), (sub_1ABF25054() & 1) != 0))
                  {

                    return 8;
                  }

                  else if (v1 == 0x6E656469666E6F63 && v0 == 0xEA00000000006563)
                  {

                    return 9;
                  }

                  else
                  {
                    sub_1ABA89938();
                    v17 = sub_1ABF25054();

                    if (v17)
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

uint64_t sub_1ABCC3424(char a1)
{
  result = 0x64496465707974;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 1702125924;
      break;
    case 3:
      result = 0x6565646E65747461;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = sub_1ABD1BB7C();
      break;
    case 6:
      result = sub_1ABD1BC94();
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = sub_1ABD1BC74();
      break;
    case 9:
      result = 0x6E656469666E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABCC3530(uint64_t a1)
{
  v2 = sub_1ABD0BE5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCC356C(uint64_t a1)
{
  v2 = sub_1ABD0BE5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphDrivingActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  v1 = sub_1ABAD219C(&qword_1EB4D6D98, &dword_1ABF50ED0);
  sub_1ABA96D00(v1);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  sub_1ABD0BE5C();
  sub_1ABA8D27C();
  sub_1ABA9F0C4();
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  sub_1ABAA19EC();
  sub_1ABAA6564();
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA1210();

    v8 = type metadata accessor for CustomGraphDrivingActivityEvent(0);
    sub_1ABA8CB28(v8);
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v9);
    sub_1ABA82E78();
    sub_1ABAA6564();
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348786);
    sub_1ABD1AFD0();

    sub_1ABD1ABF4();
    sub_1ABD1AF60();

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABA98014(348792);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    sub_1ABAA2D10();
    sub_1ABAA6564();
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    sub_1ABAA2D10();
    sub_1ABAA6564();
  }

  v10 = sub_1ABA89DE4();
  v11(v10);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphDrivingActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  v7 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA9F7AC();
  v11 = sub_1ABAD219C(&qword_1EB4D6DB8, &unk_1ABF50EE0);
  sub_1ABA960BC(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1ABAB67BC();
  v18 = type metadata accessor for CustomGraphDrivingActivityEvent(v17);
  v19 = sub_1ABAB6924(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C21C();
  v30 = v22;
  sub_1ABA90D04();
  sub_1ABD0BE5C();
  sub_1ABA9F458();
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v30 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v13)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v23 = sub_1ABA7ABE4();
  sub_1ABAD219C(v23, v24);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v25);
  sub_1ABA841C4();
  sub_1ABAA212C();
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  sub_1ABD0A358(v27);
  sub_1ABAB54E0();
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v28 = sub_1ABA9F94C();
  v29(v28);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphBehaviorActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xCD8), *(_Records_GDEntityClass_records + 0xCE0), *(_Records_GDEntityClass_records + 0xCE8), v10);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v9, v8, v10[0], v10[1], v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABCC3F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v101 = a2;
  v102 = a1;
  v100 = a4;
  v5 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v96 = &v85 - v7;
  v8 = swift_allocObject();
  v115 = v8;
  v9 = MEMORY[0x1E69E7CC0];
  *(v8 + 16) = MEMORY[0x1E69E7CC0];
  v90 = (v8 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v91 = (v10 + 16);
  v11 = swift_allocObject();
  v106 = v11;
  *(v11 + 16) = v9;
  v92 = (v11 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  v93 = (v12 + 16);
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  v94 = v13 + 16;
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  v95 = (v14 + 16);
  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  v99 = v15 + 16;
  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  v97 = (v16 + 16);
  v17 = swift_allocObject();
  *(v17 + 16) = v9;
  v98 = v17 + 16;
  v18 = a3;
  v19 = swift_allocObject();
  v19[2] = v115;
  v19[3] = v18;
  v20 = v106;
  v19[4] = v10;
  v19[5] = v20;
  v19[6] = v12;
  v19[7] = v13;
  v19[8] = v14;
  v19[9] = v15;
  v19[10] = v16;
  v19[11] = v17;

  v105 = v10;
  v21 = v14;

  v104 = v12;

  v22 = v103;
  (v102)(v114, sub_1ABCC4FE0, 0, sub_1ABD19C84, v19);
  if (v22)
  {

LABEL_17:
  }

  v103 = 0;
  v88 = v13;
  v89 = v15;
  v101 = v16;
  v102 = v17;

  v87 = v114[0];
  v23 = v99;
  swift_beginAccess();
  v31 = *v23;
  v32 = *(*v23 + 16);
  if (v32)
  {
    v86 = v18;

    v33 = MEMORY[0x1E69E7CC0];
    v34 = 32;
    do
    {
      EntityClass.init(intValue:)(*(v31 + v34 + 7), v114);
      if (v114[1])
      {
        ActivityEventType.init(activityTypeEntityClass:)(v114, v113);
        v35 = v113[0];
        if (v113[0] != 25)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = *(v33 + 16);
            sub_1ABADADEC();
            v33 = v38;
          }

          v36 = *(v33 + 16);
          if (v36 >= *(v33 + 24) >> 1)
          {
            sub_1ABADADEC();
            v33 = v39;
          }

          *(v33 + 16) = v36 + 1;
          *(v33 + v36 + 32) = v35;
        }
      }

      v34 += 8;
      --v32;
    }

    while (v32);
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC0];
  }

  v40 = v103;
  sub_1ABC4C7B0(v87, v24, v25, v26, v27, v28, v29, v30, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112);
  if (v40)
  {

    goto LABEL_17;
  }

  v103 = 0;
  v42 = v100;
  *v100 = v114[0];
  v43 = v90;
  swift_beginAccess();
  v44 = *v43;
  v45 = sub_1ABB2B834(v44);
  v42[1] = v44;
  v42[2] = v45;
  v42[3] = v46;
  v47 = v91;
  swift_beginAccess();
  v48 = *v47;
  v49 = type metadata accessor for CustomGraphDateRelationship(0);
  v50 = v96;
  sub_1ABA7B9B4(v96, 1, 1, v49);
  v51 = type metadata accessor for CustomGraphBehaviorActivityEvent(0);
  v52 = v51[6];

  sub_1ABC8B318(v53, v50, (v42 + v52));
  v54 = v92;
  swift_beginAccess();
  v55 = v51[7];
  v96 = *v54;
  *(v42 + v55) = v96;
  v56 = v93;
  swift_beginAccess();
  v57 = v51[8];
  v93 = *v56;
  *(v42 + v57) = v93;
  v58 = v94;
  swift_beginAccess();
  v59 = *v58;
  v60 = *(*v58 + 16);
  if (v60)
  {
    v61 = *(v59 + 32);
  }

  else
  {
    v61 = 0;
  }

  v62 = v97;
  v63 = v95;
  v64 = v100 + v51[9];
  *v64 = v59;
  *(v64 + 1) = v61;
  v64[16] = v60 == 0;
  swift_beginAccess();
  v65 = *v63;
  v66 = *(v65 + 16);
  v85 = v21;
  if (v66)
  {
    v67 = *(v65 + 32);
  }

  else
  {
    v67 = 0;
  }

  v68 = v100;
  v69 = v100 + v51[10];
  *v69 = v65;
  *(v69 + 1) = v67;
  v69[16] = v66 == 0;
  v70 = *v23;
  v71 = *(v70 + 16);
  if (v71)
  {
    v72 = *(v70 + 32);
  }

  else
  {
    v72 = 0;
  }

  v73 = v68 + v51[11];
  *v73 = v70;
  *(v73 + 1) = v72;
  v73[16] = v71 == 0;
  if (*(v33 + 16))
  {
    v74 = *(v33 + 32);
  }

  else
  {
    v74 = 25;
  }

  v75 = v68 + v51[12];
  *v75 = v33;
  v75[8] = v74;
  swift_beginAccess();
  v76 = *v62;
  v77 = *(v76 + 16);
  if (v77)
  {
    v78 = *(v76 + 32);
  }

  else
  {
    v78 = 0;
  }

  v79 = v100;
  v80 = v100 + v51[13];
  *v80 = v76;
  *(v80 + 1) = v78;
  v80[16] = v77 == 0;
  swift_beginAccess();
  v81 = *(v102 + 16);
  v99 = sub_1ABB2B834(v81);
  v98 = v82;

  v83 = (v79 + v51[14]);
  v84 = v99;
  *v83 = v81;
  v83[1] = v84;
  v83[2] = v98;
}

void sub_1ABCC4850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  sub_1ABA9E2C4(v10, v11, v12, v13, v14);
  sub_1ABD1B6D0(v15);
  v16 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v16);
  v18 = *(v17 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v20);
  sub_1ABA7D028();
  v113 = swift_allocObject();
  sub_1ABD1B09C(v113);
  sub_1ABD1B3DC(v21);
  sub_1ABA7D028();
  v112 = swift_allocObject();
  sub_1ABD1B09C(v112);
  sub_1ABD1B6E8(v22);
  sub_1ABA7D028();
  v23 = swift_allocObject();
  sub_1ABD1B09C(v23);
  v102 = v24;
  sub_1ABA7D028();
  v25 = swift_allocObject();
  sub_1ABD1B09C(v25);
  sub_1ABD1BD0C(v26);
  sub_1ABA7D028();
  v27 = swift_allocObject();
  sub_1ABD1B09C(v27);
  sub_1ABD1B3C4(v28);
  sub_1ABA7D028();
  v29 = swift_allocObject();
  sub_1ABD1B09C(v29);
  sub_1ABD1BE50(v30);
  sub_1ABA7D028();
  v31 = swift_allocObject();
  sub_1ABD1B09C(v31);
  sub_1ABD1B61C(v32);
  sub_1ABA7D028();
  v33 = swift_allocObject();
  sub_1ABD1B09C(v33);
  sub_1ABD1BE44(v34);
  sub_1ABA7D028();
  v35 = swift_allocObject();
  sub_1ABD1B09C(v35);
  sub_1ABD1BA5C(v36);
  sub_1ABD1B534();
  v37 = swift_allocObject();
  v37[2] = v110;
  v37[3] = v111;
  v37[4] = sub_1ABA9EA34();
  v37[5] = a10;
  v37[6] = v112;
  v37[7] = v23;
  v37[8] = v25;
  v37[9] = v27;
  v37[10] = v29;
  v37[11] = v31;
  v37[12] = v33;
  v37[13] = v35;

  v38 = v27;

  sub_1ABD1B700();
  sub_1ABD1B6B4();
  v39();
  if (v112)
  {

    sub_1ABA9EA34();

    sub_1ABAA1460();

    sub_1ABD1BC5C();
  }

  else
  {
    v99 = v29;
    v100 = v35;

    sub_1ABD1C01C();
    sub_1ABAAD280(v117);
    v40 = v29;
    v41 = *v29;
    v42 = *(v41 + 16);
    if (v42)
    {
      v98 = v33;

      v43 = MEMORY[0x1E69E7CC0];
      v44 = 32;
      do
      {
        sub_1ABD1B924(v41 + v44);
        if (v118)
        {
          sub_1ABAA0AB0(v118);
          sub_1ABD1B9E4();
          v45 = v116;
          if (v116 != 25)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1ABA8A534();
              sub_1ABADADEC();
              v43 = v47;
            }

            v38 = *(v43 + 16);
            v46 = *(v43 + 24);
            if (v38 >= v46 >> 1)
            {
              sub_1ABA7BBEC(v46);
              sub_1ABA9ECC4();
              sub_1ABADADEC();
              v43 = v48;
            }

            *(v43 + 16) = v38 + 1;
            *(v38 + v43 + 32) = v45;
          }
        }

        v44 += 8;
        --v42;
      }

      while (v42);
      v49 = v105;
    }

    else
    {
      v43 = MEMORY[0x1E69E7CC0];
      v49 = v105;
    }

    v50 = sub_1ABD1BE5C();
    sub_1ABC4C7B0(v50, v51, v52, v53, v54, v55, v56, v57, v98, v99, v33, v100, v102);
    sub_1ABD1BE30(&v119);
    v59 = *(v58 - 256);
    *v38 = v117[2];
    sub_1ABAA9068();
    v60 = *v106;
    v61 = sub_1ABB2B834(*v106);
    v38[1] = v60;
    v38[2] = v61;
    v38[3] = v62;
    sub_1ABD1B080();
    v63 = *v49;
    sub_1ABD1AF20();
    v67 = sub_1ABA9DFB8(v109, v64, v65, v66);
    v68 = type metadata accessor for CustomGraphBehaviorActivityEvent(v67);
    sub_1ABD1C23C(v68);

    sub_1ABC8B318(v69, v109, v38);
    sub_1ABAAD280(&v114);
    v70 = *v60;
    sub_1ABD1BDEC(v68[7]);
    sub_1ABAAD280(&v115);
    v71 = *v60;
    sub_1ABD1BDEC(v68[8]);
    sub_1ABD1B1F4();
    sub_1ABD1BFD0();
    if (v72)
    {
      v73 = *(v107 + 32);
    }

    sub_1ABAAFB28();
    v74 = (v38 + v68[9]);
    *v74 = v107;
    v74[1] = v75;
    sub_1ABD1BE04(v76);
    sub_1ABD1B03C();
    sub_1ABD1BA44();
    if (v77)
    {
      v78 = *(v103 + 32);
    }

    sub_1ABAAFB28();
    v79 = v38 + v68[10];
    sub_1ABD1BCCC(v80);
    v81 = *v40;
    if (*(*v40 + 16))
    {
      v82 = *(v81 + 32);
    }

    sub_1ABAAFB28();
    v83 = (v38 + v68[11]);
    *v83 = v81;
    v83[1] = v84;
    sub_1ABA889F8(v85);
    if (v86)
    {
      v87 = *(v43 + 32);
    }

    else
    {
      v87 = 25;
    }

    v88 = v38 + v68[12];
    sub_1ABAA5C0C(v87);
    sub_1ABAAA634();
    v89 = *v104;
    if (*(*v104 + 16))
    {
      v90 = *(v89 + 32);
    }

    sub_1ABAAFB28();
    v91 = v38 + v68[13];
    *v91 = v89;
    *(v91 + 1) = v92;
    v91[16] = v93;
    sub_1ABA7F2A0();
    v94 = *(v101 + 16);
    v95 = sub_1ABB2B834(v94);
    v108 = v96;

    sub_1ABD1C2FC();

    v97 = (v38 + v68[14]);
    *v97 = v94;
    v97[1] = v95;
    v97[2] = v108;
    sub_1ABA9EA34();

    sub_1ABAA2168();

    sub_1ABAA1460();

    sub_1ABD1BC5C();
    sub_1ABD1B628();
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void sub_1ABCC4FE0(uint64_t a1)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v15);
  v1 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24674();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "entityClass is nil in CustomGraphBehaviorActivityEvent init", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 33) = 0u;
    *(v11 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xCD8), *(_Records_GDEntityClass_records + 0xCE0), *(_Records_GDEntityClass_records + 0xCE8), v28);
    v6 = v29 == v3 && v4 == v30;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v28);
LABEL_9:
      sub_1ABAA8FA8(v2, v1);
      return;
    }

    *&v15 = v2;
    *(&v15 + 1) = v1;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788();
    v13 = v12;

    sub_1ABA88934(v28);
    if (v13)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xCD8), *(_Records_GDEntityClass_records + 0xCE0), *(_Records_GDEntityClass_records + 0xCE8), &v24);
      v15 = v24;
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v2;
      v20 = v1;
      v21 = v3;
      v22 = v4;
      v23 = v5;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v15, v14);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABCC5278(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v128 = a7;
  v130 = a5;
  v132 = a4;
  v133 = a3;
  v16 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v125 - v18;
  v20 = type metadata accessor for CustomGraphDateRelationship(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v125 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = 279;
  v131 = v24;
  v129 = a6;
  v127 = a8;
  v135 = v11;
  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_126;
  }

  v25 = *a1;
  v26 = a1[1];
  v156 = a1;
  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), v153);
  if (*&v153[0] == v25 && *(&v153[0] + 1) == v26)
  {

LABEL_61:
    v56 = v156;
    if (!*(v156 + 97))
    {
      v67 = v156[5];
      v66 = v156[6];
      swift_beginAccess();

      sub_1ABB4DC20();
      v68 = *(*(a2 + 16) + 16);
      sub_1ABB4E024(v68);
      v69 = *(a2 + 16);
      *(v69 + 16) = v68 + 1;
      v70 = v69 + 16 * v68;
      *(v70 + 32) = v67;
      *(v70 + 40) = v66;
      *(a2 + 16) = v69;
      goto LABEL_68;
    }

    goto LABEL_62;
  }

  v126 = v25;
  v28 = sub_1ABF25054();

  if (v28)
  {
    goto LABEL_61;
  }

  if (v134 < 0x92)
  {
    __break(1u);
LABEL_110:

    goto LABEL_111;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_128;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), v153);
  if (*&v153[0] == v126 && *(&v153[0] + 1) == v26)
  {

LABEL_70:
    v56 = v156;
    *(v152 + 10) = *(v156 + 82);
    v71 = *(v156 + 7);
    v150 = *(v156 + 5);
    v151 = v71;
    v152[0] = *(v156 + 9);
    if (BYTE9(v152[1]) == 1)
    {
      v72 = *(v156 + 7);
      v154[0] = *(v156 + 5);
      v154[1] = v72;
      *v155 = *(v156 + 9);
      *&v155[9] = *(v156 + 81);
      sub_1ABAE2EC4();
      sub_1ABAE2EC4();
      v73 = v133;

      v74 = v73;
      v75 = v135;
      sub_1ABC8A96C(v154, v74, v19);
      if (v75)
      {
        v76 = &qword_1EB4D7E60;
        v77 = &unk_1ABF5E780;
        v78 = &v150;
      }

      else
      {
        if (sub_1ABA7E1E0(v19, 1, v20) != 1)
        {
          sub_1ABCF9424();
          v84 = v132;
          swift_beginAccess();
          sub_1ABB4DE30();
          v85 = *(*(v84 + 16) + 16);
          sub_1ABB4E234(v85);
          v86 = *(v84 + 16);
          *(v86 + 16) = v85 + 1;
          v87 = v86 + ((*(v131 + 80) + 32) & ~*(v131 + 80));
          v88 = *(v131 + 72);
          sub_1ABD0AD58();
          *(v84 + 16) = v86;
          swift_endAccess();
          sub_1ABAB480C(&v150, &qword_1EB4D7E60, &unk_1ABF5E780);
          sub_1ABD0ADB0(v23, type metadata accessor for CustomGraphDateRelationship);
          return;
        }

        sub_1ABAB480C(&v150, &qword_1EB4D7E60, &unk_1ABF5E780);
        v76 = &qword_1EB4D5F20;
        v77 = &qword_1ABF4F358;
        v78 = v19;
      }

      sub_1ABAB480C(v78, v76, v77);
      return;
    }

    goto LABEL_89;
  }

  v30 = sub_1ABF25054();

  if (v30)
  {
    goto LABEL_70;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1392], *(_Records_GDEntityPredicate_records + 349), *(_Records_GDEntityPredicate_records + 350), v153);
  if (*&v153[0] == v126 && *(&v153[0] + 1) == v26)
  {

LABEL_77:
    v56 = v156;
    *(v152 + 10) = *(v156 + 82);
    v79 = *(v156 + 7);
    v150 = *(v156 + 5);
    v151 = v79;
    v152[0] = *(v156 + 9);
    if (BYTE9(v152[1]) == 1)
    {
      v80 = *(v156 + 7);
      v147 = *(v156 + 5);
      v148 = v80;
      v149[0] = *(v156 + 9);
      *(v149 + 9) = *(v156 + 81);
      MEMORY[0x1EEE9AC00](v33);
      *(&v125 - 2) = &v147;
      v153[0] = v150;
      v153[1] = v151;
      v153[2] = v152[0];
      *(&v153[2] + 10) = *(v152 + 10);
      sub_1ABAE2EC4();
      sub_1ABD191AC(v153, &v139);
      v81 = v135;
      sub_1ABCFC2DC(sub_1ABD1A8C8, (&v125 - 4), &unk_1F209A408, &unk_1F209A890, sub_1ABD1AB6C, sub_1ABD19C3C, v82, v83, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, *(&v139 + 1), v140, *(&v140 + 1), *&v141[0], *(&v141[0] + 1), *&v141[1], *(&v141[1] + 1), v142, *(&v142 + 1));
      if (!v81)
      {
        v89 = v143;
        if (v143)
        {
          v139 = v147;
          v140 = v148;
          v141[0] = v149[0];
          *(v141 + 9) = *(v149 + 9);
          sub_1ABD19208(&v139);
          v90 = v130;
          swift_beginAccess();
          sub_1ABB4DEA8();
          v91 = *(*(v90 + 16) + 16);
          sub_1ABB4E2AC(v91);
LABEL_83:
          v92 = *(v90 + 16);
          *(v92 + 16) = v91 + 1;
          v93 = v92 + (v91 << 6);
          *(v93 + 32) = v142;
          *(v93 + 48) = v89;
          *(v93 + 56) = v144;
          *(v93 + 72) = v145;
          *(v93 + 88) = v146;
          *(v90 + 16) = v92;
          swift_endAccess();
LABEL_98:
          sub_1ABAB480C(&v150, &qword_1EB4D7E60, &unk_1ABF5E780);
          return;
        }

LABEL_97:
        v139 = v147;
        v140 = v148;
        v141[0] = v149[0];
        *(v141 + 9) = *(v149 + 9);
        sub_1ABD19208(&v139);
        goto LABEL_98;
      }

LABEL_79:
      v139 = v147;
      v140 = v148;
      v141[0] = v149[0];
      *(v141 + 9) = *(v149 + 9);
      sub_1ABD19208(&v139);
      sub_1ABAB480C(&v150, &qword_1EB4D7E60, &unk_1ABF5E780);
      return;
    }

LABEL_89:
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v99 = sub_1ABF237F4();
    sub_1ABA7AA24(v99, qword_1ED871B40);
    sub_1ABAE2EC4();
    v58 = sub_1ABF237D4();
    v59 = sub_1ABF24664();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v139 = v61;
      *v60 = 136642819;
      memcpy(v153, v56, 0x62uLL);
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v63 = sub_1ABF23C94();
      v65 = &v139;
      goto LABEL_93;
    }

LABEL_94:

    v101 = v56;
LABEL_95:
    sub_1ABAB480C(v101, &qword_1EB4D1148, &qword_1ABF332D0);
    return;
  }

  v32 = sub_1ABF25054();

  if (v32)
  {
    goto LABEL_77;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1080], *(_Records_GDEntityPredicate_records + 271), *(_Records_GDEntityPredicate_records + 272), v153);
  if (*&v153[0] == v126 && *(&v153[0] + 1) == v26)
  {

LABEL_85:
    v56 = v156;
    *(v152 + 10) = *(v156 + 82);
    v94 = *(v156 + 7);
    v150 = *(v156 + 5);
    v151 = v94;
    v152[0] = *(v156 + 9);
    if (BYTE9(v152[1]) == 1)
    {
      v95 = *(v156 + 7);
      v147 = *(v156 + 5);
      v148 = v95;
      v149[0] = *(v156 + 9);
      *(v149 + 9) = *(v156 + 81);
      MEMORY[0x1EEE9AC00](v36);
      *(&v125 - 2) = &v147;
      v153[0] = v150;
      v153[1] = v151;
      v153[2] = v152[0];
      *(&v153[2] + 10) = *(v152 + 10);
      sub_1ABAE2EC4();
      sub_1ABD191AC(v153, &v139);
      v96 = v135;
      sub_1ABCFC2DC(sub_1ABD1A8C8, (&v125 - 4), &unk_1F2099F58, &unk_1F2099F80, sub_1ABD0D498, sub_1ABD1932C, v97, v98, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, *(&v139 + 1), v140, *(&v140 + 1), *&v141[0], *(&v141[0] + 1), *&v141[1], *(&v141[1] + 1), v142, *(&v142 + 1));
      if (!v96)
      {
        v89 = v143;
        if (v143)
        {
          v139 = v147;
          v140 = v148;
          v141[0] = v149[0];
          *(v141 + 9) = *(v149 + 9);
          sub_1ABD19208(&v139);
          v90 = v129;
          swift_beginAccess();
          sub_1ABB4DD28();
          v91 = *(*(v90 + 16) + 16);
          sub_1ABB4E12C(v91);
          goto LABEL_83;
        }

        goto LABEL_97;
      }

      goto LABEL_79;
    }

    goto LABEL_89;
  }

  v35 = sub_1ABF25054();

  if (v35)
  {
    goto LABEL_85;
  }

  if (v134 < 0xA1)
  {
    __break(1u);
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v37 = v126;
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1920], *(_Records_GDEntityPredicate_records + 481), *(_Records_GDEntityPredicate_records + 482), v153);
  if (*&v153[0] == v37 && *(&v153[0] + 1) == v26)
  {

    goto LABEL_101;
  }

  v39 = sub_1ABF25054();

  if (v39)
  {
LABEL_101:
    v56 = v156;
    if (*(v156 + 97) != 2)
    {
      goto LABEL_62;
    }

    v102 = v135;
    sub_1ABC4A630(&v150, v156[5]);
    if (v102)
    {
      return;
    }

    v103 = v150;
    v104 = v128;
    goto LABEL_104;
  }

  if (v134 == 161)
  {
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v40 = v126;
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1932], *(_Records_GDEntityPredicate_records + 484), *(_Records_GDEntityPredicate_records + 485), v153);
  if (*&v153[0] == v40 && *(&v153[0] + 1) == v26)
  {

    goto LABEL_106;
  }

  v42 = sub_1ABF25054();

  if (v42)
  {
LABEL_106:
    v56 = v156;
    if (*(v156 + 97) != 2)
    {
      goto LABEL_62;
    }

    v107 = v135;
    sub_1ABC4A630(&v150, v156[5]);
    if (v107)
    {
      return;
    }

    v103 = v150;
    v104 = v127;
LABEL_104:
    swift_beginAccess();
    sub_1ABB4DD40();
    v105 = *(*(v104 + 16) + 16);
    sub_1ABB4E144(v105);
    v106 = *(v104 + 16);
    *(v106 + 16) = v105 + 1;
    *(v106 + 8 * v105 + 32) = v103;
    *(v104 + 16) = v106;
    return;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[240], *(_Records_GDEntityPredicate_records + 61), *(_Records_GDEntityPredicate_records + 62), v153);
  if (*&v153[0] == v126 && *(&v153[0] + 1) == v26)
  {
    goto LABEL_110;
  }

  v44 = sub_1ABF25054();

  if ((v44 & 1) == 0)
  {
    if (!_Records_GDEntityPredicate_records)
    {
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    sub_1ABA91D48(_Records_GDEntityPredicate_records[1200], *(_Records_GDEntityPredicate_records + 301), *(_Records_GDEntityPredicate_records + 302), v153);
    if (*&v153[0] == v126 && *(&v153[0] + 1) == v26)
    {
    }

    else
    {
      v53 = sub_1ABF25054();

      if ((v53 & 1) == 0)
      {
        if (v134 >= 0xCC)
        {
          if (_Records_GDEntityPredicate_records)
          {
            sub_1ABA91D48(_Records_GDEntityPredicate_records[2436], *(_Records_GDEntityPredicate_records + 610), *(_Records_GDEntityPredicate_records + 611), v153);
            if (*&v153[0] == v126 && *(&v153[0] + 1) == v26)
            {
            }

            else
            {
              v55 = sub_1ABF25054();

              if ((v55 & 1) == 0)
              {
                return;
              }
            }

            if (*(v156 + 97))
            {
LABEL_120:
              if (qword_1ED871B38 == -1)
              {
LABEL_121:
                v119 = sub_1ABF237F4();
                sub_1ABA7AA24(v119, qword_1ED871B40);
                sub_1ABAE2EC4();
                v58 = sub_1ABF237D4();
                v59 = sub_1ABF24664();
                if (os_log_type_enabled(v58, v59))
                {
                  v60 = swift_slowAlloc();
                  v61 = swift_slowAlloc();
                  *&v150 = v61;
                  *v60 = 136642819;
                  v62 = v156;
                  goto LABEL_66;
                }

                v101 = v156;
                goto LABEL_95;
              }

LABEL_130:
              swift_once();
              goto LABEL_121;
            }

            v121 = v156[5];
            v120 = v156[6];
            swift_beginAccess();

            sub_1ABB4DC20();
            v122 = *(*(a11 + 16) + 16);
            sub_1ABB4E024(v122);
            v123 = *(a11 + 16);
            *(v123 + 16) = v122 + 1;
            v124 = v123 + 16 * v122;
            *(v124 + 32) = v121;
            *(v124 + 40) = v120;
            *(a11 + 16) = v123;
LABEL_68:
            swift_endAccess();
            return;
          }

LABEL_137:
          __break(1u);
          return;
        }

        goto LABEL_132;
      }
    }

    if (!*(v156 + 97))
    {
      v112 = v156[5];
      v113 = v156[6];

      v114 = sub_1ABB24D04(v112, v113);
      if ((v115 & 1) == 0)
      {
        v116 = v114;
        swift_beginAccess();
        sub_1ABB4DCB0();
        v117 = *(*(a10 + 16) + 16);
        sub_1ABB4E0CC(v117);
        v118 = *(a10 + 16);
        *(v118 + 16) = v117 + 1;
        *(v118 + 8 * v117 + 32) = v116;
        *(a10 + 16) = v118;
        return;
      }
    }

    goto LABEL_120;
  }

LABEL_111:
  v56 = v156;
  if (*(v156 + 97) != 2)
  {
LABEL_62:
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v57 = sub_1ABF237F4();
    sub_1ABA7AA24(v57, qword_1ED871B40);
    sub_1ABAE2EC4();
    v58 = sub_1ABF237D4();
    v59 = sub_1ABF24664();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v150 = v61;
      *v60 = 136642819;
      v62 = v56;
LABEL_66:
      memcpy(v153, v62, 0x62uLL);
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v63 = sub_1ABF23C94();
      v65 = &v150;
LABEL_93:
      v100 = sub_1ABADD6D8(v63, v64, v65);

      *(v60 + 4) = v100;
      _os_log_impl(&dword_1ABA78000, v58, v59, "Failed to parse %{sensitive}s.", v60, 0xCu);
      sub_1ABA84B54(v61);
      MEMORY[0x1AC5AB8B0](v61, -1, -1);
      MEMORY[0x1AC5AB8B0](v60, -1, -1);

      return;
    }

    goto LABEL_94;
  }

  v108 = v135;
  sub_1ABC4CBC0(v156[5], v45, v46, v47, v48, v49, v50, v51, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, *(&v139 + 1), v140, *(&v140 + 1), *&v141[0], *(&v141[0] + 1), *&v141[1], *(&v141[1] + 1), v142, *(&v142 + 1), v143, v144, *(&v144 + 1), v145);
  if (!v108)
  {
    v109 = v150;
    swift_beginAccess();
    sub_1ABB4DE48();
    v110 = *(*(a9 + 16) + 16);
    sub_1ABB4E24C(v110);
    v111 = *(a9 + 16);
    *(v111 + 16) = v110 + 1;
    *(v111 + 8 * v110 + 32) = v109;
    *(a9 + 16) = v111;
  }
}