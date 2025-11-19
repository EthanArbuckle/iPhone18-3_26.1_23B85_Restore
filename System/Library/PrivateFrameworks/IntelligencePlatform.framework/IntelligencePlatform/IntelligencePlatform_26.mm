void __swiftcall CustomGraphSleepingActivityEvent.toObjectiveCGraphObject()(GDGraphSleepingActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  v8 = sub_1ABAA9198();
  v9 = sub_1ABA8C0D0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8F4D8();
  v12 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7E77C(v16, v86);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA99440(v18, v19, v20, v21, v22, v23, v24, v25, v87);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA954CC();
  v27 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v27);
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D5FB0, off_1E7960110);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v31 = sub_1ABA90CF4();
  v32 = type metadata accessor for CustomGraphSleepingActivityEvent(v31);
  sub_1ABAA0EE8(v32);
  v33 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v33 + 28));
  sub_1ABAA5898();
  if (v34)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    v35 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968(v35);
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v36);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v37 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v38 = sub_1ABAA40C4();
    sub_1ABC6C440(v38);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABAB5AC8(v39);
        sub_1ABAFF390(v41, v42, off_1E79600C8);
        v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_75;
        }
      }

      v44 = v3[2];
      if (v44)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v47 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v45 = sub_1ABA8BCD4();
    sub_1ABAFF390(v45, v46, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v44)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_70;
  }

LABEL_18:
  sub_1ABAB510C();
  v48 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v50)
      {
        sub_1ABA8908C();
      }

      else
      {
        v51 = sub_1ABA8CB08(v49);
        sub_1ABAFF390(v51, &qword_1EB4D5F08, off_1E7960048);
        v52 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_76;
        }
      }

      v53 = v3[2];
      if (v53)
      {
        break;
      }

      v1 = v48;
LABEL_29:
      ++v5;
      v54 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v53)
      {
        v1 = v89;
        v48 = MEMORY[0x1E69E7CC0];
        v6 = v88;
        goto LABEL_29;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v55)
  {
    v56 = 0;
  }

  else
  {
    v57 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v56 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v56)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v58 & 1) == 0)
  {
    v59 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_79;
    }
  }

  sub_1ABAA1F6C();
  if ((v61 & 1) == 0)
  {
    v62 = *(v60 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_80;
    }
  }

  sub_1ABAB1118();
  if (v34)
  {
    v63 = 0;
  }

  else
  {
    v63 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v64 = sub_1ABAA045C();
  v65 = sub_1ABA97B70(v64);
  sub_1ABA80B88(v65);
  if (v3)
  {
    v90 = v48;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v66 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v67 = sub_1ABA90834(v66);
      sub_1ABB2E9FC(v67, v68, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v69 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v70 = sub_1ABA9F354();
      sub_1ABC6AA68(v70);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v34);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v71 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v72)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_72;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v56)
      {
        v71 = v90;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

LABEL_53:
  sub_1ABAA2640(v71);
  v73 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v72)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_73;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v73)
      {
        goto LABEL_58;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_58:
  sub_1ABAA111C();
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    do
    {
      sub_1ABA9F274();
      if (v72)
      {
        goto LABEL_69;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_74;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
    }

    while (v3 != v7);
  }

  sub_1ABA8282C();
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v74 = sub_1ABA95120();
      sub_1ABAAD268(v74);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
  }

  sub_1ABA7AD30();
  objc_allocWithZone(GDGraphSleepingActivityEvent);
  v75 = sub_1ABA8F488();
  sub_1ABC67F50(v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphTravelingActivityEvent.toObjectiveCGraphObject()(GDGraphTravelingActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  v8 = sub_1ABAA9198();
  v9 = sub_1ABA8C0D0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8F4D8();
  v12 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7E77C(v16, v86);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA99440(v18, v19, v20, v21, v22, v23, v24, v25, v87);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA954CC();
  v27 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v27);
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D5FB8, off_1E79601C8);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v31 = sub_1ABA90CF4();
  v32 = type metadata accessor for CustomGraphTravelingActivityEvent(v31);
  sub_1ABAA0EE8(v32);
  v33 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v33 + 28));
  sub_1ABAA5898();
  if (v34)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    v35 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968(v35);
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v36);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v37 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v38 = sub_1ABAA40C4();
    sub_1ABC6C440(v38);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABAB5AC8(v39);
        sub_1ABAFF390(v41, v42, off_1E79600C8);
        v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_75;
        }
      }

      v44 = v3[2];
      if (v44)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v47 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v45 = sub_1ABA8BCD4();
    sub_1ABAFF390(v45, v46, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v44)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_70;
  }

LABEL_18:
  sub_1ABAB510C();
  v48 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v50)
      {
        sub_1ABA8908C();
      }

      else
      {
        v51 = sub_1ABA8CB08(v49);
        sub_1ABAFF390(v51, &qword_1EB4D5F08, off_1E7960048);
        v52 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_76;
        }
      }

      v53 = v3[2];
      if (v53)
      {
        break;
      }

      v1 = v48;
LABEL_29:
      ++v5;
      v54 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v53)
      {
        v1 = v89;
        v48 = MEMORY[0x1E69E7CC0];
        v6 = v88;
        goto LABEL_29;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v55)
  {
    v56 = 0;
  }

  else
  {
    v57 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v56 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v56)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v58 & 1) == 0)
  {
    v59 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_79;
    }
  }

  sub_1ABAA1F6C();
  if ((v61 & 1) == 0)
  {
    v62 = *(v60 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_80;
    }
  }

  sub_1ABAB1118();
  if (v34)
  {
    v63 = 0;
  }

  else
  {
    v63 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v64 = sub_1ABAA045C();
  v65 = sub_1ABA97B70(v64);
  sub_1ABA80B88(v65);
  if (v3)
  {
    v90 = v48;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v66 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v67 = sub_1ABA90834(v66);
      sub_1ABB2E9FC(v67, v68, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v69 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v70 = sub_1ABA9F354();
      sub_1ABC6AA68(v70);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v34);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v71 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v72)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_72;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v56)
      {
        v71 = v90;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

LABEL_53:
  sub_1ABAA2640(v71);
  v73 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v72)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_73;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v73)
      {
        goto LABEL_58;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_58:
  sub_1ABAA111C();
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    do
    {
      sub_1ABA9F274();
      if (v72)
      {
        goto LABEL_69;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_74;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
    }

    while (v3 != v7);
  }

  sub_1ABA8282C();
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v74 = sub_1ABA95120();
      sub_1ABAAD268(v74);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
  }

  sub_1ABA7AD30();
  objc_allocWithZone(GDGraphTravelingActivityEvent);
  v75 = sub_1ABA8F488();
  sub_1ABC67F50(v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphReadingActivityEvent.toObjectiveCGraphObject()(GDGraphReadingActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  v8 = sub_1ABAA9198();
  v9 = sub_1ABA8C0D0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8F4D8();
  v12 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7E77C(v16, v86);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA99440(v18, v19, v20, v21, v22, v23, v24, v25, v87);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA954CC();
  v27 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v27);
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D5FC0, off_1E79600E0);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v31 = sub_1ABA90CF4();
  v32 = type metadata accessor for CustomGraphReadingActivityEvent(v31);
  sub_1ABAA0EE8(v32);
  v33 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v33 + 28));
  sub_1ABAA5898();
  if (v34)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    v35 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968(v35);
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v36);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v37 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v38 = sub_1ABAA40C4();
    sub_1ABC6C440(v38);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABAB5AC8(v39);
        sub_1ABAFF390(v41, v42, off_1E79600C8);
        v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_75;
        }
      }

      v44 = v3[2];
      if (v44)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v47 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v45 = sub_1ABA8BCD4();
    sub_1ABAFF390(v45, v46, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v44)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_70;
  }

LABEL_18:
  sub_1ABAB510C();
  v48 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v50)
      {
        sub_1ABA8908C();
      }

      else
      {
        v51 = sub_1ABA8CB08(v49);
        sub_1ABAFF390(v51, &qword_1EB4D5F08, off_1E7960048);
        v52 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_76;
        }
      }

      v53 = v3[2];
      if (v53)
      {
        break;
      }

      v1 = v48;
LABEL_29:
      ++v5;
      v54 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v53)
      {
        v1 = v89;
        v48 = MEMORY[0x1E69E7CC0];
        v6 = v88;
        goto LABEL_29;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v55)
  {
    v56 = 0;
  }

  else
  {
    v57 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v56 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v56)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v58 & 1) == 0)
  {
    v59 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_79;
    }
  }

  sub_1ABAA1F6C();
  if ((v61 & 1) == 0)
  {
    v62 = *(v60 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_80;
    }
  }

  sub_1ABAB1118();
  if (v34)
  {
    v63 = 0;
  }

  else
  {
    v63 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v64 = sub_1ABAA045C();
  v65 = sub_1ABA97B70(v64);
  sub_1ABA80B88(v65);
  if (v3)
  {
    v90 = v48;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v66 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v67 = sub_1ABA90834(v66);
      sub_1ABB2E9FC(v67, v68, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v69 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v70 = sub_1ABA9F354();
      sub_1ABC6AA68(v70);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v34);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v71 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v72)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_72;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v56)
      {
        v71 = v90;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

LABEL_53:
  sub_1ABAA2640(v71);
  v73 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v72)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_73;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v73)
      {
        goto LABEL_58;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_58:
  sub_1ABAA111C();
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    do
    {
      sub_1ABA9F274();
      if (v72)
      {
        goto LABEL_69;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_74;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
    }

    while (v3 != v7);
  }

  sub_1ABA8282C();
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v74 = sub_1ABA95120();
      sub_1ABAAD268(v74);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
  }

  sub_1ABA7AD30();
  objc_allocWithZone(GDGraphReadingActivityEvent);
  v75 = sub_1ABA8F488();
  sub_1ABC67F50(v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphVacationingActivityEvent.toObjectiveCGraphObject()(GDGraphVacationingActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  v8 = sub_1ABAA9198();
  v9 = sub_1ABA8C0D0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8F4D8();
  v12 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7E77C(v16, v86);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA99440(v18, v19, v20, v21, v22, v23, v24, v25, v87);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA954CC();
  v27 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v27);
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D5FC8, off_1E79601D8);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v31 = sub_1ABA90CF4();
  v32 = type metadata accessor for CustomGraphVacationingActivityEvent(v31);
  sub_1ABAA0EE8(v32);
  v33 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v33 + 28));
  sub_1ABAA5898();
  if (v34)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    v35 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968(v35);
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v36);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v37 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v38 = sub_1ABAA40C4();
    sub_1ABC6C440(v38);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABAB5AC8(v39);
        sub_1ABAFF390(v41, v42, off_1E79600C8);
        v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_75;
        }
      }

      v44 = v3[2];
      if (v44)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v47 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v45 = sub_1ABA8BCD4();
    sub_1ABAFF390(v45, v46, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v44)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_70;
  }

LABEL_18:
  sub_1ABAB510C();
  v48 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v50)
      {
        sub_1ABA8908C();
      }

      else
      {
        v51 = sub_1ABA8CB08(v49);
        sub_1ABAFF390(v51, &qword_1EB4D5F08, off_1E7960048);
        v52 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_76;
        }
      }

      v53 = v3[2];
      if (v53)
      {
        break;
      }

      v1 = v48;
LABEL_29:
      ++v5;
      v54 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v53)
      {
        v1 = v89;
        v48 = MEMORY[0x1E69E7CC0];
        v6 = v88;
        goto LABEL_29;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v55)
  {
    v56 = 0;
  }

  else
  {
    v57 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v56 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v56)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v58 & 1) == 0)
  {
    v59 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_79;
    }
  }

  sub_1ABAA1F6C();
  if ((v61 & 1) == 0)
  {
    v62 = *(v60 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_80;
    }
  }

  sub_1ABAB1118();
  if (v34)
  {
    v63 = 0;
  }

  else
  {
    v63 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v64 = sub_1ABAA045C();
  v65 = sub_1ABA97B70(v64);
  sub_1ABA80B88(v65);
  if (v3)
  {
    v90 = v48;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v66 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v67 = sub_1ABA90834(v66);
      sub_1ABB2E9FC(v67, v68, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v69 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v70 = sub_1ABA9F354();
      sub_1ABC6AA68(v70);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v34);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v71 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v72)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_72;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v56)
      {
        v71 = v90;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

LABEL_53:
  sub_1ABAA2640(v71);
  v73 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v72)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_73;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v73)
      {
        goto LABEL_58;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_58:
  sub_1ABAA111C();
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    do
    {
      sub_1ABA9F274();
      if (v72)
      {
        goto LABEL_69;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_74;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
    }

    while (v3 != v7);
  }

  sub_1ABA8282C();
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v74 = sub_1ABA95120();
      sub_1ABAAD268(v74);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
  }

  sub_1ABA7AD30();
  objc_allocWithZone(GDGraphVacationingActivityEvent);
  v75 = sub_1ABA8F488();
  sub_1ABC67F50(v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphGamingActivityEvent.toObjectiveCGraphObject()(GDGraphGamingActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  v201 = v6;
  v202 = v7;
  v8 = type metadata accessor for CustomGraphDateRelationship(0);
  v9 = sub_1ABA8C0D0(v8);
  v168 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8F4D8();
  v13 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v14 = sub_1ABA7AB80(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C068();
  v189 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v166 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v193 = &v166 - v22;
  v23 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v23);
  v25 = *(v24 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABC6C7C0();
  sub_1ABAFF390(0, &qword_1EB4D5FD0, off_1E7960000);
  v27 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (!v27)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v28 = v27;
  v29 = v2[2];
  v30 = v2[3];
  v31 = type metadata accessor for CustomGraphGamingActivityEvent(0);
  v32 = v31[6];
  v184 = v2;
  v33 = v2 + v32;
  v34 = *(sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00) + 28);
  v182 = v33;
  sub_1ABB2E9FC(v33 + v34, v1, &qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABAA5898();
  v190 = v20;
  v183 = v31;
  v181 = v28;
  v180 = v30;
  v179 = v29;
  v187 = v4;
  v188 = v5;
  if (v35)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
    v178 = 0;
  }

  else
  {
    sub_1ABA89DD8();
    v36 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968(v36);
    v38 = v193;
    sub_1ABA8B8D0(v4 + v37);
    v39 = sub_1ABAA3560();
    sub_1ABA9E550(v39, v190);
    v40 = sub_1ABAA3914();
    sub_1ABA9E550(v40, v189);
    sub_1ABA9F7CC();
    v20 = v190;
    v41 = *v5;
    v5 = v38;
    v31 = v183;
    objc_allocWithZone(GDGraphDateRelationship);

    sub_1ABA96094();
    v178 = sub_1ABC69E44(v42, v43, v44);
    sub_1ABC6AA68(v1);
  }

  v45 = v184;
  v46 = *(*(v184 + v31[7]) + 16);
  v47 = MEMORY[0x1E69E7CC0];
  if (v46)
  {
    *&v196 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    sub_1ABAA0AA4();
    v185 = v46;
    v186 = v48;
    v49 = v46;
    while (1)
    {
      sub_1ABAA08D0(v186);
      v51 = *(v50 + 32);
      v52 = *(v50 + 40);
      v53 = *(v50 + 56);
      v191 = v54;
      v192 = v51;
      if (v53)
      {
        sub_1ABC6C540();

        v5 = 0;
      }

      else
      {
        v55 = sub_1ABA8CB08(v50);
        sub_1ABAFF390(v55, &qword_1EB4D5EF8, off_1E79600C8);
        v56 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA9E830();

        v57 = sub_1ABA7C298();
        v5 = [v57 v58];
        if (!v5)
        {
          goto LABEL_102;
        }
      }

      v59 = *(v52 + 16);
      if (v59)
      {
        break;
      }

LABEL_16:
      ++v20;
      v64 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA89794();
      sub_1ABC69D78();
      sub_1ABC6C688();

      sub_1ABF24B94();
      sub_1ABA9E334(v196);
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v20 == v49)
      {
        v47 = v196;
        v31 = v183;
        v45 = v184;
        goto LABEL_18;
      }
    }

    v195 = MEMORY[0x1E69E7CC0];

    sub_1ABF24BC4();
    sub_1ABAFF390(0, &qword_1EB4D5EF8, off_1E79600C8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v61 = (v52 + 32);
    while (1)
    {
      v62 = *v61++;
      if (![objc_allocWithZone(ObjCClassFromMetadata) initWithValue_])
      {
        goto LABEL_96;
      }

      sub_1ABF24B94();
      v63 = *(v195 + 16);
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v59)
      {
        v49 = v185;
        goto LABEL_16;
      }
    }
  }

LABEL_18:
  v65 = *(*(v45 + v31[8]) + 16);
  v66 = MEMORY[0x1E69E7CC0];
  v177 = v47;
  if (v65)
  {
    *&v196 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    sub_1ABAA0AA4();
    v185 = v65;
    v186 = v67;
    v68 = v66;
    v69 = v65;
    while (1)
    {
      sub_1ABAA08D0(v186);
      v71 = *(v70 + 32);
      v72 = *(v70 + 40);
      v73 = *(v70 + 56);
      v191 = v74;
      v192 = v71;
      if (v73)
      {
        sub_1ABC6C540();

        v5 = 0;
      }

      else
      {
        v75 = sub_1ABAB5AC8(v70);
        sub_1ABAFF390(v75, v76, off_1E7960048);
        v77 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA9E830();

        v78 = sub_1ABA7C298();
        v5 = [v78 v79];
        if (!v5)
        {
          goto LABEL_103;
        }
      }

      v80 = *(v72 + 16);
      if (v80)
      {
        break;
      }

LABEL_29:
      ++v20;
      v87 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABAA3138();
      sub_1ABC69D78();
      sub_1ABC6C688();

      sub_1ABF24B94();
      sub_1ABA9E334(v196);
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v20 == v69)
      {
        v88 = v196;
        v31 = v183;
        v45 = v184;
        goto LABEL_32;
      }
    }

    v195 = v68;

    sub_1ABF24BC4();
    v81 = sub_1ABA8BCD4();
    sub_1ABAFF390(v81, v82, off_1E7960048);
    v83 = swift_getObjCClassFromMetadata();
    v84 = (v72 + 32);
    while (1)
    {
      v85 = *v84++;
      if (![objc_allocWithZone(v83) initWithValue_])
      {
        goto LABEL_97;
      }

      sub_1ABF24B94();
      v86 = *(v195 + 16);
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v80)
      {
        v68 = MEMORY[0x1E69E7CC0];
        v69 = v185;
        goto LABEL_29;
      }
    }
  }

  v88 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v89 = v45 + v31[9];
  if (*(v89 + 16))
  {
    v90 = 0;
  }

  else
  {
    v91 = *(v89 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v90 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v90)
    {
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }
  }

  v92 = v45 + v31[10];
  v93 = *(v92 + 16);
  v175 = v90;
  v185 = v92;
  v186 = v89;
  if (v93)
  {
    v94 = 0;
  }

  else
  {
    v95 = *(v92 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v94 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v94)
    {
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
      return;
    }
  }

  v96 = (v45 + v31[11]);
  v97 = *(v96 + 16);
  v174 = v94;
  if ((v97 & 1) == 0)
  {
    v98 = v96[1];
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_108;
    }
  }

  sub_1ABA89F20(v45 + v31[12]);
  v173 = v88;
  v172 = v99;
  v176 = v100;
  v184 = v96;
  if (!v35)
  {
    LOBYTE(v196) = v89;
    v88 = &v196;
    sub_1ABACEB14();
  }

  sub_1ABA9F4DC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v101 = sub_1ABAA045C();
  v102 = v45 + v31[13];
  v103 = *(v102 + 8);
  v183 = v102;
  v170 = sub_1ABC5021C(v103, *(v102 + 16));
  v104 = v45 + v31[14];
  v105 = *(v104 + 24);
  v171 = v101;
  if (v105)
  {
    v106 = *(v104 + 40);
    v107 = *(v104 + 32);
    v196 = *(v104 + 8);
    v197 = v105;
    v198 = v107;
    v199[0] = v106 & 1;
    v88 = &v196;
    v169 = sub_1ABC64AB0(&qword_1EB4D5FD8, off_1E7960130, off_1E7960138);
  }

  else
  {
    v169 = 0;
  }

  v108 = v45[1];
  sub_1ABA8C5A8(v182);
  v182 = v109;
  if (v89)
  {
    v167 = v104;
    v195 = MEMORY[0x1E69E7CC0];

    sub_1ABF24BC4();
    sub_1ABA935AC(v199);
    v111 = v101 + v110;
    v191 = *(v112 + 72);
    v113 = v189;
    do
    {
      v192 = v89;
      v114 = v187;
      sub_1ABC6AA04(v111, v187);
      v115 = v188;
      v116 = (v114 + *(v188 + 5));
      v117 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v5 = &qword_1ABF34240;
      sub_1ABB2E9FC(v116 + *(v117 + 28), v193, &qword_1EB4D9BF0, &qword_1ABF34240);
      v118 = (v114 + *(v115 + 6));
      sub_1ABB2E9FC(v118 + *(v117 + 28), v190, &qword_1EB4D9BF0, &qword_1ABF34240);
      v119 = (v114 + *(v115 + 7));
      sub_1ABB2E9FC(v119 + *(v117 + 28), v113, &qword_1EB4D9BF0, &qword_1ABF34240);
      v120 = *v116;
      v121 = *v118;
      v122 = *v119;
      objc_allocWithZone(GDGraphDateRelationship);

      sub_1ABA9EAB4();
      sub_1ABC69E44(v123, v124, v125);
      sub_1ABC6AA68(v114);
      v88 = &v195;
      sub_1ABF24B94();
      sub_1ABA9EBF4();
      v126 = v192;
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      v111 += v191;
      v89 = v126 - 1;
    }

    while (v89);
    v127 = v195;
    v104 = v167;
  }

  else
  {

    v127 = MEMORY[0x1E69E7CC0];
  }

  v128 = *(*v186 + 16);
  v129 = MEMORY[0x1E69E7CC0];
  if (v128)
  {
    v195 = MEMORY[0x1E69E7CC0];
    sub_1ABC6C694();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v130 = swift_getObjCClassFromMetadata();
    sub_1ABC6C4FC();
    while (1)
    {
      sub_1ABC6C508();
      if (v131)
      {
        break;
      }

      if (![objc_allocWithZone(v130) initWithValue_])
      {
        goto LABEL_99;
      }

      sub_1ABC6C6FC();
      sub_1ABA9EBF4();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v128 == v5)
      {
        v129 = v195;
        goto LABEL_56;
      }
    }

    __break(1u);
    goto LABEL_94;
  }

LABEL_56:
  v132 = *(*v185 + 16);
  v133 = MEMORY[0x1E69E7CC0];
  v191 = v129;
  if (v132)
  {
    v195 = MEMORY[0x1E69E7CC0];
    sub_1ABC6C694();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v134 = swift_getObjCClassFromMetadata();
    sub_1ABC6C4FC();
    while (1)
    {
      sub_1ABC6C508();
      if (v131)
      {
        break;
      }

      if (![objc_allocWithZone(v134) initWithValue_])
      {
        goto LABEL_100;
      }

      sub_1ABC6C6FC();
      sub_1ABA9EBF4();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v132 == v5)
      {
        v133 = v195;
        v129 = v191;
        goto LABEL_62;
      }
    }

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
    goto LABEL_105;
  }

LABEL_62:
  v190 = v133;
  v135 = *v184;
  v136 = *(*v184 + 16);
  if (v136)
  {
    v195 = MEMORY[0x1E69E7CC0];
    sub_1ABC6C694();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    v137 = swift_getObjCClassFromMetadata();
    sub_1ABC6C4FC();
    while (1)
    {
      sub_1ABC6C508();
      if (v131)
      {
        goto LABEL_95;
      }

      if (![objc_allocWithZone(v137) initWithValue_])
      {
        goto LABEL_101;
      }

      sub_1ABC6C6FC();
      sub_1ABA9EBF4();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v136 == v5)
      {
        v189 = v195;
        v129 = v191;
        goto LABEL_69;
      }
    }
  }

  v189 = MEMORY[0x1E69E7CC0];
LABEL_69:
  sub_1ABA9F6D8();
  v139 = *v138;
  v140 = *(*v138 + 16);
  if (v140)
  {
    v195 = MEMORY[0x1E69E7CC0];
    sub_1ABC6C694();
    v135 = (v139 + 32);
    do
    {
      v141 = *v135;
      v135 = (v135 + 1);
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v88 = &v195;
      sub_1ABF24B94();
      sub_1ABA9EBF4();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      --v140;
    }

    while (v140);
    v188 = v195;
    v129 = v191;
  }

  else
  {
    v188 = MEMORY[0x1E69E7CC0];
  }

  v142 = *v183;
  v143 = *(*v183 + 16);
  v144 = MEMORY[0x1E69E7CC0];
  if (v143)
  {
    v195 = MEMORY[0x1E69E7CC0];
    sub_1ABC6C694();
    v135 = (v142 + 32);
    do
    {
      v145 = *v135++;
      sub_1ABAA0D98(objc_allocWithZone(MEMORY[0x1E696AD98]));
      v88 = &v195;
      sub_1ABF24B94();
      sub_1ABA9EBF4();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      --v143;
    }

    while (v143);
    v144 = v195;
  }

  v146 = *(*v104 + 16);
  v147 = MEMORY[0x1E69E7CC0];
  if (v146)
  {
    v186 = v144;
    v187 = v127;
    v195 = MEMORY[0x1E69E7CC0];
    sub_1ABC6C694();
    sub_1ABAA0AA4();
    v192 = v146;
    v193 = v148;
    while (1)
    {
      sub_1ABC6C748(v193 + 40 * v135);
      if (v150)
      {
      }

      else
      {
        v151 = *(v149 + 24);
        sub_1ABAFF390(0, &qword_1EB4D5FD8, off_1E7960130);
        v152 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA94A78();

        if (![v88 initWithValue_])
        {
          goto LABEL_104;
        }
      }

      v153 = *(v129 + 16);
      if (v153)
      {
        break;
      }

      v159 = v147;
LABEL_89:
      v135 = (v135 + 1);
      v160 = objc_allocWithZone(GDGraphSoftwareRelationship);
      v161 = sub_1ABC6C5D4();
      sub_1ABC69D04(v161, v159, &qword_1EB4D5FD8, off_1E7960130);
      sub_1ABC6C59C();

      v88 = &v195;
      sub_1ABF24B94();
      sub_1ABA9EBF4();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v135 == v146)
      {
        v162 = v171;
        goto LABEL_92;
      }
    }

    v154 = v147;
    v194 = v147;
    sub_1ABF24BC4();
    sub_1ABAFF390(0, &qword_1EB4D5FD8, off_1E7960130);
    v155 = swift_getObjCClassFromMetadata();
    v156 = (v129 + 32);
    while (1)
    {
      v157 = *v156++;
      if (![objc_allocWithZone(v155) initWithValue_])
      {
        goto LABEL_98;
      }

      sub_1ABF24B94();
      v158 = *(v194 + 16);
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v153)
      {
        v159 = v194;
        v147 = v154;
        v146 = v192;
        goto LABEL_89;
      }
    }
  }

  v162 = v171;
LABEL_92:
  objc_allocWithZone(GDGraphGamingActivityEvent);
  v165 = v169;
  v164 = v170;
  sub_1ABA8A1D4(&v200);
  sub_1ABC68240(v181, v179, v180, v178, v177, v173, v175, v174, v163, v162, v164, v165);
  sub_1ABA8B438();
}

void __swiftcall CustomGraphSocializingActivityEvent.toObjectiveCGraphObject()(GDGraphSocializingActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  v8 = sub_1ABAA9198();
  v9 = sub_1ABA8C0D0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8F4D8();
  v12 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7E77C(v16, v86);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA99440(v18, v19, v20, v21, v22, v23, v24, v25, v87);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA954CC();
  v27 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v27);
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D5FE8, off_1E7960120);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v31 = sub_1ABA90CF4();
  v32 = type metadata accessor for CustomGraphSocializingActivityEvent(v31);
  sub_1ABAA0EE8(v32);
  v33 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v33 + 28));
  sub_1ABAA5898();
  if (v34)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    v35 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968(v35);
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v36);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v37 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v38 = sub_1ABAA40C4();
    sub_1ABC6C440(v38);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABAB5AC8(v39);
        sub_1ABAFF390(v41, v42, off_1E79600C8);
        v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_75;
        }
      }

      v44 = v3[2];
      if (v44)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v47 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v45 = sub_1ABA8BCD4();
    sub_1ABAFF390(v45, v46, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v44)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_70;
  }

LABEL_18:
  sub_1ABAB510C();
  v48 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v50)
      {
        sub_1ABA8908C();
      }

      else
      {
        v51 = sub_1ABA8CB08(v49);
        sub_1ABAFF390(v51, &qword_1EB4D5F08, off_1E7960048);
        v52 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_76;
        }
      }

      v53 = v3[2];
      if (v53)
      {
        break;
      }

      v1 = v48;
LABEL_29:
      ++v5;
      v54 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v53)
      {
        v1 = v89;
        v48 = MEMORY[0x1E69E7CC0];
        v6 = v88;
        goto LABEL_29;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v55)
  {
    v56 = 0;
  }

  else
  {
    v57 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v56 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v56)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v58 & 1) == 0)
  {
    v59 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_79;
    }
  }

  sub_1ABAA1F6C();
  if ((v61 & 1) == 0)
  {
    v62 = *(v60 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_80;
    }
  }

  sub_1ABAB1118();
  if (v34)
  {
    v63 = 0;
  }

  else
  {
    v63 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v64 = sub_1ABAA045C();
  v65 = sub_1ABA97B70(v64);
  sub_1ABA80B88(v65);
  if (v3)
  {
    v90 = v48;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v66 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v67 = sub_1ABA90834(v66);
      sub_1ABB2E9FC(v67, v68, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v69 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v70 = sub_1ABA9F354();
      sub_1ABC6AA68(v70);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v34);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v71 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v72)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_72;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v56)
      {
        v71 = v90;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

LABEL_53:
  sub_1ABAA2640(v71);
  v73 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v72)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_73;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v73)
      {
        goto LABEL_58;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_58:
  sub_1ABAA111C();
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    do
    {
      sub_1ABA9F274();
      if (v72)
      {
        goto LABEL_69;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_74;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
    }

    while (v3 != v7);
  }

  sub_1ABA8282C();
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v74 = sub_1ABA95120();
      sub_1ABAAD268(v74);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
  }

  sub_1ABA7AD30();
  objc_allocWithZone(GDGraphSocializingActivityEvent);
  v75 = sub_1ABA8F488();
  sub_1ABC67F50(v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphWakingUpActivityEvent.toObjectiveCGraphObject()(GDGraphWakingUpActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  v8 = sub_1ABAA9198();
  v9 = sub_1ABA8C0D0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8F4D8();
  v12 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7E77C(v16, v86);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA99440(v18, v19, v20, v21, v22, v23, v24, v25, v87);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA954CC();
  v27 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v27);
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D5FF0, off_1E79601F0);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v31 = sub_1ABA90CF4();
  v32 = type metadata accessor for CustomGraphWakingUpActivityEvent(v31);
  sub_1ABAA0EE8(v32);
  v33 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v33 + 28));
  sub_1ABAA5898();
  if (v34)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    v35 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968(v35);
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v36);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v37 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v38 = sub_1ABAA40C4();
    sub_1ABC6C440(v38);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABAB5AC8(v39);
        sub_1ABAFF390(v41, v42, off_1E79600C8);
        v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_75;
        }
      }

      v44 = v3[2];
      if (v44)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v47 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v45 = sub_1ABA8BCD4();
    sub_1ABAFF390(v45, v46, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v44)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_70;
  }

LABEL_18:
  sub_1ABAB510C();
  v48 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v50)
      {
        sub_1ABA8908C();
      }

      else
      {
        v51 = sub_1ABA8CB08(v49);
        sub_1ABAFF390(v51, &qword_1EB4D5F08, off_1E7960048);
        v52 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_76;
        }
      }

      v53 = v3[2];
      if (v53)
      {
        break;
      }

      v1 = v48;
LABEL_29:
      ++v5;
      v54 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v53)
      {
        v1 = v89;
        v48 = MEMORY[0x1E69E7CC0];
        v6 = v88;
        goto LABEL_29;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v55)
  {
    v56 = 0;
  }

  else
  {
    v57 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v56 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v56)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v58 & 1) == 0)
  {
    v59 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_79;
    }
  }

  sub_1ABAA1F6C();
  if ((v61 & 1) == 0)
  {
    v62 = *(v60 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_80;
    }
  }

  sub_1ABAB1118();
  if (v34)
  {
    v63 = 0;
  }

  else
  {
    v63 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v64 = sub_1ABAA045C();
  v65 = sub_1ABA97B70(v64);
  sub_1ABA80B88(v65);
  if (v3)
  {
    v90 = v48;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v66 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v67 = sub_1ABA90834(v66);
      sub_1ABB2E9FC(v67, v68, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v69 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v70 = sub_1ABA9F354();
      sub_1ABC6AA68(v70);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v34);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v71 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v72)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_72;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v56)
      {
        v71 = v90;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

LABEL_53:
  sub_1ABAA2640(v71);
  v73 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v72)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_73;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v73)
      {
        goto LABEL_58;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_58:
  sub_1ABAA111C();
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    do
    {
      sub_1ABA9F274();
      if (v72)
      {
        goto LABEL_69;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_74;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
    }

    while (v3 != v7);
  }

  sub_1ABA8282C();
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v74 = sub_1ABA95120();
      sub_1ABAAD268(v74);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
  }

  sub_1ABA7AD30();
  objc_allocWithZone(GDGraphWakingUpActivityEvent);
  v75 = sub_1ABA8F488();
  sub_1ABC67F50(v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphGoingToBedActivityEvent.toObjectiveCGraphObject()(GDGraphGoingToBedActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  v8 = sub_1ABAA9198();
  v9 = sub_1ABA8C0D0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8F4D8();
  v12 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7E77C(v16, v86);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA99440(v18, v19, v20, v21, v22, v23, v24, v25, v87);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA954CC();
  v27 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v27);
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D5FF8, off_1E7960010);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v31 = sub_1ABA90CF4();
  v32 = type metadata accessor for CustomGraphGoingToBedActivityEvent(v31);
  sub_1ABAA0EE8(v32);
  v33 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v33 + 28));
  sub_1ABAA5898();
  if (v34)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    v35 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968(v35);
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v36);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v37 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v38 = sub_1ABAA40C4();
    sub_1ABC6C440(v38);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABAB5AC8(v39);
        sub_1ABAFF390(v41, v42, off_1E79600C8);
        v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_75;
        }
      }

      v44 = v3[2];
      if (v44)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v47 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v45 = sub_1ABA8BCD4();
    sub_1ABAFF390(v45, v46, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v44)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_70;
  }

LABEL_18:
  sub_1ABAB510C();
  v48 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v50)
      {
        sub_1ABA8908C();
      }

      else
      {
        v51 = sub_1ABA8CB08(v49);
        sub_1ABAFF390(v51, &qword_1EB4D5F08, off_1E7960048);
        v52 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_76;
        }
      }

      v53 = v3[2];
      if (v53)
      {
        break;
      }

      v1 = v48;
LABEL_29:
      ++v5;
      v54 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v53)
      {
        v1 = v89;
        v48 = MEMORY[0x1E69E7CC0];
        v6 = v88;
        goto LABEL_29;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v55)
  {
    v56 = 0;
  }

  else
  {
    v57 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v56 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v56)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v58 & 1) == 0)
  {
    v59 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_79;
    }
  }

  sub_1ABAA1F6C();
  if ((v61 & 1) == 0)
  {
    v62 = *(v60 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_80;
    }
  }

  sub_1ABAB1118();
  if (v34)
  {
    v63 = 0;
  }

  else
  {
    v63 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v64 = sub_1ABAA045C();
  v65 = sub_1ABA97B70(v64);
  sub_1ABA80B88(v65);
  if (v3)
  {
    v90 = v48;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v66 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v67 = sub_1ABA90834(v66);
      sub_1ABB2E9FC(v67, v68, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v69 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v70 = sub_1ABA9F354();
      sub_1ABC6AA68(v70);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v34);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v71 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v72)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_72;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v56)
      {
        v71 = v90;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

LABEL_53:
  sub_1ABAA2640(v71);
  v73 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v72)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_73;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v73)
      {
        goto LABEL_58;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_58:
  sub_1ABAA111C();
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    do
    {
      sub_1ABA9F274();
      if (v72)
      {
        goto LABEL_69;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_74;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
    }

    while (v3 != v7);
  }

  sub_1ABA8282C();
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v74 = sub_1ABA95120();
      sub_1ABAAD268(v74);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
  }

  sub_1ABA7AD30();
  objc_allocWithZone(GDGraphGoingToBedActivityEvent);
  v75 = sub_1ABA8F488();
  sub_1ABC67F50(v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphExercisingActivityEvent.toObjectiveCGraphObject()(GDGraphExercisingActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  v8 = sub_1ABAA9198();
  v9 = sub_1ABA8C0D0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8F4D8();
  v12 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7E77C(v16, v86);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA99440(v18, v19, v20, v21, v22, v23, v24, v25, v87);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA954CC();
  v27 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v27);
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D6000, off_1E795FFE0);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v31 = sub_1ABA90CF4();
  v32 = type metadata accessor for CustomGraphExercisingActivityEvent(v31);
  sub_1ABAA0EE8(v32);
  v33 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v33 + 28));
  sub_1ABAA5898();
  if (v34)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    v35 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968(v35);
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v36);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v37 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v38 = sub_1ABAA40C4();
    sub_1ABC6C440(v38);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABAB5AC8(v39);
        sub_1ABAFF390(v41, v42, off_1E79600C8);
        v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_75;
        }
      }

      v44 = v3[2];
      if (v44)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v47 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v45 = sub_1ABA8BCD4();
    sub_1ABAFF390(v45, v46, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v44)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_70;
  }

LABEL_18:
  sub_1ABAB510C();
  v48 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v50)
      {
        sub_1ABA8908C();
      }

      else
      {
        v51 = sub_1ABA8CB08(v49);
        sub_1ABAFF390(v51, &qword_1EB4D5F08, off_1E7960048);
        v52 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_76;
        }
      }

      v53 = v3[2];
      if (v53)
      {
        break;
      }

      v1 = v48;
LABEL_29:
      ++v5;
      v54 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v53)
      {
        v1 = v89;
        v48 = MEMORY[0x1E69E7CC0];
        v6 = v88;
        goto LABEL_29;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v55)
  {
    v56 = 0;
  }

  else
  {
    v57 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v56 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v56)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v58 & 1) == 0)
  {
    v59 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_79;
    }
  }

  sub_1ABAA1F6C();
  if ((v61 & 1) == 0)
  {
    v62 = *(v60 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_80;
    }
  }

  sub_1ABAB1118();
  if (v34)
  {
    v63 = 0;
  }

  else
  {
    v63 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v64 = sub_1ABAA045C();
  v65 = sub_1ABA97B70(v64);
  sub_1ABA80B88(v65);
  if (v3)
  {
    v90 = v48;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v66 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v67 = sub_1ABA90834(v66);
      sub_1ABB2E9FC(v67, v68, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v69 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v70 = sub_1ABA9F354();
      sub_1ABC6AA68(v70);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v34);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v71 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v72)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_72;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v56)
      {
        v71 = v90;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

LABEL_53:
  sub_1ABAA2640(v71);
  v73 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v72)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_73;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v73)
      {
        goto LABEL_58;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_58:
  sub_1ABAA111C();
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    do
    {
      sub_1ABA9F274();
      if (v72)
      {
        goto LABEL_69;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_74;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
    }

    while (v3 != v7);
  }

  sub_1ABA8282C();
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v74 = sub_1ABA95120();
      sub_1ABAAD268(v74);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
  }

  sub_1ABA7AD30();
  objc_allocWithZone(GDGraphExercisingActivityEvent);
  v75 = sub_1ABA8F488();
  sub_1ABC67F50(v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphCommuteActivityEvent.toObjectiveCGraphObject()(GDGraphCommuteActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  v8 = sub_1ABAA9198();
  v9 = sub_1ABA8C0D0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8F4D8();
  v12 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7E77C(v16, v86);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA99440(v18, v19, v20, v21, v22, v23, v24, v25, v87);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA954CC();
  v27 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v27);
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D6008, off_1E795FF78);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v31 = sub_1ABA90CF4();
  v32 = type metadata accessor for CustomGraphCommuteActivityEvent(v31);
  sub_1ABAA0EE8(v32);
  v33 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v33 + 28));
  sub_1ABAA5898();
  if (v34)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    v35 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968(v35);
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v36);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v37 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v38 = sub_1ABAA40C4();
    sub_1ABC6C440(v38);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABAB5AC8(v39);
        sub_1ABAFF390(v41, v42, off_1E79600C8);
        v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_75;
        }
      }

      v44 = v3[2];
      if (v44)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v47 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v45 = sub_1ABA8BCD4();
    sub_1ABAFF390(v45, v46, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v44)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_70;
  }

LABEL_18:
  sub_1ABAB510C();
  v48 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v50)
      {
        sub_1ABA8908C();
      }

      else
      {
        v51 = sub_1ABA8CB08(v49);
        sub_1ABAFF390(v51, &qword_1EB4D5F08, off_1E7960048);
        v52 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_76;
        }
      }

      v53 = v3[2];
      if (v53)
      {
        break;
      }

      v1 = v48;
LABEL_29:
      ++v5;
      v54 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v53)
      {
        v1 = v89;
        v48 = MEMORY[0x1E69E7CC0];
        v6 = v88;
        goto LABEL_29;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v55)
  {
    v56 = 0;
  }

  else
  {
    v57 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v56 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v56)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v58 & 1) == 0)
  {
    v59 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_79;
    }
  }

  sub_1ABAA1F6C();
  if ((v61 & 1) == 0)
  {
    v62 = *(v60 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_80;
    }
  }

  sub_1ABAB1118();
  if (v34)
  {
    v63 = 0;
  }

  else
  {
    v63 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v64 = sub_1ABAA045C();
  v65 = sub_1ABA97B70(v64);
  sub_1ABA80B88(v65);
  if (v3)
  {
    v90 = v48;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v66 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v67 = sub_1ABA90834(v66);
      sub_1ABB2E9FC(v67, v68, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v69 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v70 = sub_1ABA9F354();
      sub_1ABC6AA68(v70);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v34);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v71 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v72)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_72;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v56)
      {
        v71 = v90;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

LABEL_53:
  sub_1ABAA2640(v71);
  v73 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v72)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_73;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v73)
      {
        goto LABEL_58;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_58:
  sub_1ABAA111C();
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    do
    {
      sub_1ABA9F274();
      if (v72)
      {
        goto LABEL_69;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_74;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
    }

    while (v3 != v7);
  }

  sub_1ABA8282C();
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v74 = sub_1ABA95120();
      sub_1ABAAD268(v74);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
  }

  sub_1ABA7AD30();
  objc_allocWithZone(GDGraphCommuteActivityEvent);
  v75 = sub_1ABA8F488();
  sub_1ABC67F50(v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphDiningActivityEvent.toObjectiveCGraphObject()(GDGraphDiningActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  v8 = sub_1ABAA9198();
  v9 = sub_1ABA8C0D0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8F4D8();
  v12 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7E77C(v16, v86);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA99440(v18, v19, v20, v21, v22, v23, v24, v25, v87);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA954CC();
  v27 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v27);
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D6010, off_1E795FF90);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v31 = sub_1ABA90CF4();
  v32 = type metadata accessor for CustomGraphDiningActivityEvent(v31);
  sub_1ABAA0EE8(v32);
  v33 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v33 + 28));
  sub_1ABAA5898();
  if (v34)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    v35 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968(v35);
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v36);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v37 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v38 = sub_1ABAA40C4();
    sub_1ABC6C440(v38);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABAB5AC8(v39);
        sub_1ABAFF390(v41, v42, off_1E79600C8);
        v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_75;
        }
      }

      v44 = v3[2];
      if (v44)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v47 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v45 = sub_1ABA8BCD4();
    sub_1ABAFF390(v45, v46, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v44)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_70;
  }

LABEL_18:
  sub_1ABAB510C();
  v48 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v50)
      {
        sub_1ABA8908C();
      }

      else
      {
        v51 = sub_1ABA8CB08(v49);
        sub_1ABAFF390(v51, &qword_1EB4D5F08, off_1E7960048);
        v52 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_76;
        }
      }

      v53 = v3[2];
      if (v53)
      {
        break;
      }

      v1 = v48;
LABEL_29:
      ++v5;
      v54 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v53)
      {
        v1 = v89;
        v48 = MEMORY[0x1E69E7CC0];
        v6 = v88;
        goto LABEL_29;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v55)
  {
    v56 = 0;
  }

  else
  {
    v57 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v56 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v56)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v58 & 1) == 0)
  {
    v59 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_79;
    }
  }

  sub_1ABAA1F6C();
  if ((v61 & 1) == 0)
  {
    v62 = *(v60 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_80;
    }
  }

  sub_1ABAB1118();
  if (v34)
  {
    v63 = 0;
  }

  else
  {
    v63 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v64 = sub_1ABAA045C();
  v65 = sub_1ABA97B70(v64);
  sub_1ABA80B88(v65);
  if (v3)
  {
    v90 = v48;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v66 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v67 = sub_1ABA90834(v66);
      sub_1ABB2E9FC(v67, v68, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v69 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v70 = sub_1ABA9F354();
      sub_1ABC6AA68(v70);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v34);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v71 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v72)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_72;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v56)
      {
        v71 = v90;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

LABEL_53:
  sub_1ABAA2640(v71);
  v73 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v72)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_73;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v73)
      {
        goto LABEL_58;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_58:
  sub_1ABAA111C();
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    do
    {
      sub_1ABA9F274();
      if (v72)
      {
        goto LABEL_69;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_74;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
    }

    while (v3 != v7);
  }

  sub_1ABA8282C();
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v74 = sub_1ABA95120();
      sub_1ABAAD268(v74);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
  }

  sub_1ABA7AD30();
  objc_allocWithZone(GDGraphDiningActivityEvent);
  v75 = sub_1ABA8F488();
  sub_1ABC67F50(v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphAttendingAPerformanceActivityEvent.toObjectiveCGraphObject()(GDGraphAttendingAPerformanceActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  v8 = sub_1ABAA9198();
  v9 = sub_1ABA8C0D0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8F4D8();
  v12 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7E77C(v16, v86);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA99440(v18, v19, v20, v21, v22, v23, v24, v25, v87);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA954CC();
  v27 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v27);
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D6018, off_1E795FF28);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v31 = sub_1ABA90CF4();
  v32 = type metadata accessor for CustomGraphAttendingAPerformanceActivityEvent(v31);
  sub_1ABAA0EE8(v32);
  v33 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v33 + 28));
  sub_1ABAA5898();
  if (v34)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    v35 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968(v35);
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v36);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v37 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v38 = sub_1ABAA40C4();
    sub_1ABC6C440(v38);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABAB5AC8(v39);
        sub_1ABAFF390(v41, v42, off_1E79600C8);
        v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_75;
        }
      }

      v44 = v3[2];
      if (v44)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v47 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v45 = sub_1ABA8BCD4();
    sub_1ABAFF390(v45, v46, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v44)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_70;
  }

LABEL_18:
  sub_1ABAB510C();
  v48 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v50)
      {
        sub_1ABA8908C();
      }

      else
      {
        v51 = sub_1ABA8CB08(v49);
        sub_1ABAFF390(v51, &qword_1EB4D5F08, off_1E7960048);
        v52 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_76;
        }
      }

      v53 = v3[2];
      if (v53)
      {
        break;
      }

      v1 = v48;
LABEL_29:
      ++v5;
      v54 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v53)
      {
        v1 = v89;
        v48 = MEMORY[0x1E69E7CC0];
        v6 = v88;
        goto LABEL_29;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v55)
  {
    v56 = 0;
  }

  else
  {
    v57 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v56 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v56)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v58 & 1) == 0)
  {
    v59 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_79;
    }
  }

  sub_1ABAA1F6C();
  if ((v61 & 1) == 0)
  {
    v62 = *(v60 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_80;
    }
  }

  sub_1ABAB1118();
  if (v34)
  {
    v63 = 0;
  }

  else
  {
    v63 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v64 = sub_1ABAA045C();
  v65 = sub_1ABA97B70(v64);
  sub_1ABA80B88(v65);
  if (v3)
  {
    v90 = v48;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v66 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v67 = sub_1ABA90834(v66);
      sub_1ABB2E9FC(v67, v68, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v69 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v70 = sub_1ABA9F354();
      sub_1ABC6AA68(v70);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v34);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v71 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v72)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_72;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v56)
      {
        v71 = v90;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

LABEL_53:
  sub_1ABAA2640(v71);
  v73 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v72)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_73;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v73)
      {
        goto LABEL_58;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_58:
  sub_1ABAA111C();
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    do
    {
      sub_1ABA9F274();
      if (v72)
      {
        goto LABEL_69;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_74;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
    }

    while (v3 != v7);
  }

  sub_1ABA8282C();
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v74 = sub_1ABA95120();
      sub_1ABAAD268(v74);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
  }

  sub_1ABA7AD30();
  objc_allocWithZone(GDGraphAttendingAPerformanceActivityEvent);
  v75 = sub_1ABA8F488();
  sub_1ABC67F50(v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphStationaryActivityEvent.toObjectiveCGraphObject()(GDGraphStationaryActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  v8 = sub_1ABAA9198();
  v9 = sub_1ABA8C0D0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8F4D8();
  v12 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7E77C(v16, v86);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA99440(v18, v19, v20, v21, v22, v23, v24, v25, v87);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA954CC();
  v27 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v27);
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D6020, off_1E7960190);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v31 = sub_1ABA90CF4();
  v32 = type metadata accessor for CustomGraphStationaryActivityEvent(v31);
  sub_1ABAA0EE8(v32);
  v33 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v33 + 28));
  sub_1ABAA5898();
  if (v34)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    v35 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968(v35);
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v36);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v37 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v38 = sub_1ABAA40C4();
    sub_1ABC6C440(v38);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABAB5AC8(v39);
        sub_1ABAFF390(v41, v42, off_1E79600C8);
        v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_75;
        }
      }

      v44 = v3[2];
      if (v44)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v47 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v45 = sub_1ABA8BCD4();
    sub_1ABAFF390(v45, v46, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v44)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_70;
  }

LABEL_18:
  sub_1ABAB510C();
  v48 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v50)
      {
        sub_1ABA8908C();
      }

      else
      {
        v51 = sub_1ABA8CB08(v49);
        sub_1ABAFF390(v51, &qword_1EB4D5F08, off_1E7960048);
        v52 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_76;
        }
      }

      v53 = v3[2];
      if (v53)
      {
        break;
      }

      v1 = v48;
LABEL_29:
      ++v5;
      v54 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v53)
      {
        v1 = v89;
        v48 = MEMORY[0x1E69E7CC0];
        v6 = v88;
        goto LABEL_29;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v55)
  {
    v56 = 0;
  }

  else
  {
    v57 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v56 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v56)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v58 & 1) == 0)
  {
    v59 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_79;
    }
  }

  sub_1ABAA1F6C();
  if ((v61 & 1) == 0)
  {
    v62 = *(v60 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_80;
    }
  }

  sub_1ABAB1118();
  if (v34)
  {
    v63 = 0;
  }

  else
  {
    v63 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v64 = sub_1ABAA045C();
  v65 = sub_1ABA97B70(v64);
  sub_1ABA80B88(v65);
  if (v3)
  {
    v90 = v48;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v66 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v67 = sub_1ABA90834(v66);
      sub_1ABB2E9FC(v67, v68, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v69 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v70 = sub_1ABA9F354();
      sub_1ABC6AA68(v70);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v34);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v71 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v72)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_72;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v56)
      {
        v71 = v90;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

LABEL_53:
  sub_1ABAA2640(v71);
  v73 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v72)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_73;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v73)
      {
        goto LABEL_58;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_58:
  sub_1ABAA111C();
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    do
    {
      sub_1ABA9F274();
      if (v72)
      {
        goto LABEL_69;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_74;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
    }

    while (v3 != v7);
  }

  sub_1ABA8282C();
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v74 = sub_1ABA95120();
      sub_1ABAAD268(v74);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
  }

  sub_1ABA7AD30();
  objc_allocWithZone(GDGraphStationaryActivityEvent);
  v75 = sub_1ABA8F488();
  sub_1ABC67F50(v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphLocationVisitActivityEvent.toObjectiveCGraphObject()(GDGraphLocationVisitActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  v8 = sub_1ABAA9198();
  v9 = sub_1ABA8C0D0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8F4D8();
  v12 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7E77C(v16, v86);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA99440(v18, v19, v20, v21, v22, v23, v24, v25, v87);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA954CC();
  v27 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v27);
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D6028, off_1E7960068);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v31 = sub_1ABA90CF4();
  v32 = type metadata accessor for CustomGraphLocationVisitActivityEvent(v31);
  sub_1ABAA0EE8(v32);
  v33 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v33 + 28));
  sub_1ABAA5898();
  if (v34)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    v35 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968(v35);
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v36);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v37 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v38 = sub_1ABAA40C4();
    sub_1ABC6C440(v38);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABAB5AC8(v39);
        sub_1ABAFF390(v41, v42, off_1E79600C8);
        v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_75;
        }
      }

      v44 = v3[2];
      if (v44)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v47 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v45 = sub_1ABA8BCD4();
    sub_1ABAFF390(v45, v46, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v44)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_70;
  }

LABEL_18:
  sub_1ABAB510C();
  v48 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v50)
      {
        sub_1ABA8908C();
      }

      else
      {
        v51 = sub_1ABA8CB08(v49);
        sub_1ABAFF390(v51, &qword_1EB4D5F08, off_1E7960048);
        v52 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_76;
        }
      }

      v53 = v3[2];
      if (v53)
      {
        break;
      }

      v1 = v48;
LABEL_29:
      ++v5;
      v54 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v53)
      {
        v1 = v89;
        v48 = MEMORY[0x1E69E7CC0];
        v6 = v88;
        goto LABEL_29;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v55)
  {
    v56 = 0;
  }

  else
  {
    v57 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v56 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v56)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v58 & 1) == 0)
  {
    v59 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_79;
    }
  }

  sub_1ABAA1F6C();
  if ((v61 & 1) == 0)
  {
    v62 = *(v60 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_80;
    }
  }

  sub_1ABAB1118();
  if (v34)
  {
    v63 = 0;
  }

  else
  {
    v63 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v64 = sub_1ABAA045C();
  v65 = sub_1ABA97B70(v64);
  sub_1ABA80B88(v65);
  if (v3)
  {
    v90 = v48;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v66 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v67 = sub_1ABA90834(v66);
      sub_1ABB2E9FC(v67, v68, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v69 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v70 = sub_1ABA9F354();
      sub_1ABC6AA68(v70);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v34);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v71 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v72)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_72;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v56)
      {
        v71 = v90;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

LABEL_53:
  sub_1ABAA2640(v71);
  v73 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v72)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_73;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v73)
      {
        goto LABEL_58;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_58:
  sub_1ABAA111C();
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    do
    {
      sub_1ABA9F274();
      if (v72)
      {
        goto LABEL_69;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_74;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
    }

    while (v3 != v7);
  }

  sub_1ABA8282C();
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v74 = sub_1ABA95120();
      sub_1ABAAD268(v74);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
  }

  sub_1ABA7AD30();
  objc_allocWithZone(GDGraphLocationVisitActivityEvent);
  v75 = sub_1ABA8F488();
  sub_1ABC67F50(v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphWalkingActivityEvent.toObjectiveCGraphObject()(GDGraphWalkingActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  v8 = sub_1ABAA9198();
  v9 = sub_1ABA8C0D0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8F4D8();
  v12 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7E77C(v16, v86);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA99440(v18, v19, v20, v21, v22, v23, v24, v25, v87);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA954CC();
  v27 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v27);
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D6030, off_1E7960200);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v31 = sub_1ABA90CF4();
  v32 = type metadata accessor for CustomGraphWalkingActivityEvent(v31);
  sub_1ABAA0EE8(v32);
  v33 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v33 + 28));
  sub_1ABAA5898();
  if (v34)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    v35 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968(v35);
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v36);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v37 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v38 = sub_1ABAA40C4();
    sub_1ABC6C440(v38);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABAB5AC8(v39);
        sub_1ABAFF390(v41, v42, off_1E79600C8);
        v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_75;
        }
      }

      v44 = v3[2];
      if (v44)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v47 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v45 = sub_1ABA8BCD4();
    sub_1ABAFF390(v45, v46, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v44)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_70;
  }

LABEL_18:
  sub_1ABAB510C();
  v48 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v50)
      {
        sub_1ABA8908C();
      }

      else
      {
        v51 = sub_1ABA8CB08(v49);
        sub_1ABAFF390(v51, &qword_1EB4D5F08, off_1E7960048);
        v52 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_76;
        }
      }

      v53 = v3[2];
      if (v53)
      {
        break;
      }

      v1 = v48;
LABEL_29:
      ++v5;
      v54 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v53)
      {
        v1 = v89;
        v48 = MEMORY[0x1E69E7CC0];
        v6 = v88;
        goto LABEL_29;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v55)
  {
    v56 = 0;
  }

  else
  {
    v57 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v56 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v56)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v58 & 1) == 0)
  {
    v59 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_79;
    }
  }

  sub_1ABAA1F6C();
  if ((v61 & 1) == 0)
  {
    v62 = *(v60 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_80;
    }
  }

  sub_1ABAB1118();
  if (v34)
  {
    v63 = 0;
  }

  else
  {
    v63 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v64 = sub_1ABAA045C();
  v65 = sub_1ABA97B70(v64);
  sub_1ABA80B88(v65);
  if (v3)
  {
    v90 = v48;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v66 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v67 = sub_1ABA90834(v66);
      sub_1ABB2E9FC(v67, v68, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v69 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v70 = sub_1ABA9F354();
      sub_1ABC6AA68(v70);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v34);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v71 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v72)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_72;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v56)
      {
        v71 = v90;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

LABEL_53:
  sub_1ABAA2640(v71);
  v73 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v72)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_73;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v73)
      {
        goto LABEL_58;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_58:
  sub_1ABAA111C();
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    do
    {
      sub_1ABA9F274();
      if (v72)
      {
        goto LABEL_69;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_74;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
    }

    while (v3 != v7);
  }

  sub_1ABA8282C();
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v74 = sub_1ABA95120();
      sub_1ABAAD268(v74);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
  }

  sub_1ABA7AD30();
  objc_allocWithZone(GDGraphWalkingActivityEvent);
  v75 = sub_1ABA8F488();
  sub_1ABC67F50(v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphRunningActivityEvent.toObjectiveCGraphObject()(GDGraphRunningActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  v8 = sub_1ABAA9198();
  v9 = sub_1ABA8C0D0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8F4D8();
  v12 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7E77C(v16, v86);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA99440(v18, v19, v20, v21, v22, v23, v24, v25, v87);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA954CC();
  v27 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v27);
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D6038, off_1E79600F0);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v31 = sub_1ABA90CF4();
  v32 = type metadata accessor for CustomGraphRunningActivityEvent(v31);
  sub_1ABAA0EE8(v32);
  v33 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v33 + 28));
  sub_1ABAA5898();
  if (v34)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    v35 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968(v35);
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v36);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v37 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v38 = sub_1ABAA40C4();
    sub_1ABC6C440(v38);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABAB5AC8(v39);
        sub_1ABAFF390(v41, v42, off_1E79600C8);
        v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_75;
        }
      }

      v44 = v3[2];
      if (v44)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v47 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v45 = sub_1ABA8BCD4();
    sub_1ABAFF390(v45, v46, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v44)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_70;
  }

LABEL_18:
  sub_1ABAB510C();
  v48 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v50)
      {
        sub_1ABA8908C();
      }

      else
      {
        v51 = sub_1ABA8CB08(v49);
        sub_1ABAFF390(v51, &qword_1EB4D5F08, off_1E7960048);
        v52 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_76;
        }
      }

      v53 = v3[2];
      if (v53)
      {
        break;
      }

      v1 = v48;
LABEL_29:
      ++v5;
      v54 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v53)
      {
        v1 = v89;
        v48 = MEMORY[0x1E69E7CC0];
        v6 = v88;
        goto LABEL_29;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v55)
  {
    v56 = 0;
  }

  else
  {
    v57 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v56 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v56)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v58 & 1) == 0)
  {
    v59 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_79;
    }
  }

  sub_1ABAA1F6C();
  if ((v61 & 1) == 0)
  {
    v62 = *(v60 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_80;
    }
  }

  sub_1ABAB1118();
  if (v34)
  {
    v63 = 0;
  }

  else
  {
    v63 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v64 = sub_1ABAA045C();
  v65 = sub_1ABA97B70(v64);
  sub_1ABA80B88(v65);
  if (v3)
  {
    v90 = v48;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v66 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v67 = sub_1ABA90834(v66);
      sub_1ABB2E9FC(v67, v68, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v69 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v70 = sub_1ABA9F354();
      sub_1ABC6AA68(v70);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v34);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v71 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v72)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_72;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v56)
      {
        v71 = v90;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

LABEL_53:
  sub_1ABAA2640(v71);
  v73 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v72)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_73;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v73)
      {
        goto LABEL_58;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_58:
  sub_1ABAA111C();
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    do
    {
      sub_1ABA9F274();
      if (v72)
      {
        goto LABEL_69;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_74;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
    }

    while (v3 != v7);
  }

  sub_1ABA8282C();
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v74 = sub_1ABA95120();
      sub_1ABAAD268(v74);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
  }

  sub_1ABA7AD30();
  objc_allocWithZone(GDGraphRunningActivityEvent);
  v75 = sub_1ABA8F488();
  sub_1ABC67F50(v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphBicyclingActivityEvent.toObjectiveCGraphObject()(GDGraphBicyclingActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  v8 = sub_1ABAA9198();
  v9 = sub_1ABA8C0D0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8F4D8();
  v12 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7E77C(v16, v86);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA99440(v18, v19, v20, v21, v22, v23, v24, v25, v87);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA954CC();
  v27 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v27);
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D6040, off_1E795FF48);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v31 = sub_1ABA90CF4();
  v32 = type metadata accessor for CustomGraphBicyclingActivityEvent(v31);
  sub_1ABAA0EE8(v32);
  v33 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v33 + 28));
  sub_1ABAA5898();
  if (v34)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    v35 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968(v35);
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v36);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v37 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v38 = sub_1ABAA40C4();
    sub_1ABC6C440(v38);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABAB5AC8(v39);
        sub_1ABAFF390(v41, v42, off_1E79600C8);
        v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_75;
        }
      }

      v44 = v3[2];
      if (v44)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v47 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v45 = sub_1ABA8BCD4();
    sub_1ABAFF390(v45, v46, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v44)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_70;
  }

LABEL_18:
  sub_1ABAB510C();
  v48 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v50)
      {
        sub_1ABA8908C();
      }

      else
      {
        v51 = sub_1ABA8CB08(v49);
        sub_1ABAFF390(v51, &qword_1EB4D5F08, off_1E7960048);
        v52 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_76;
        }
      }

      v53 = v3[2];
      if (v53)
      {
        break;
      }

      v1 = v48;
LABEL_29:
      ++v5;
      v54 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v53)
      {
        v1 = v89;
        v48 = MEMORY[0x1E69E7CC0];
        v6 = v88;
        goto LABEL_29;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v55)
  {
    v56 = 0;
  }

  else
  {
    v57 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v56 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v56)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v58 & 1) == 0)
  {
    v59 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_79;
    }
  }

  sub_1ABAA1F6C();
  if ((v61 & 1) == 0)
  {
    v62 = *(v60 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_80;
    }
  }

  sub_1ABAB1118();
  if (v34)
  {
    v63 = 0;
  }

  else
  {
    v63 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v64 = sub_1ABAA045C();
  v65 = sub_1ABA97B70(v64);
  sub_1ABA80B88(v65);
  if (v3)
  {
    v90 = v48;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v66 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v67 = sub_1ABA90834(v66);
      sub_1ABB2E9FC(v67, v68, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v69 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v70 = sub_1ABA9F354();
      sub_1ABC6AA68(v70);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v34);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v71 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v72)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_72;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v56)
      {
        v71 = v90;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

LABEL_53:
  sub_1ABAA2640(v71);
  v73 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v72)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_73;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v73)
      {
        goto LABEL_58;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_58:
  sub_1ABAA111C();
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    do
    {
      sub_1ABA9F274();
      if (v72)
      {
        goto LABEL_69;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_74;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
    }

    while (v3 != v7);
  }

  sub_1ABA8282C();
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v74 = sub_1ABA95120();
      sub_1ABAAD268(v74);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
  }

  sub_1ABA7AD30();
  objc_allocWithZone(GDGraphBicyclingActivityEvent);
  v75 = sub_1ABA8F488();
  sub_1ABC67F50(v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphHikingActivityEvent.toObjectiveCGraphObject()(GDGraphHikingActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  v8 = sub_1ABAA9198();
  v9 = sub_1ABA8C0D0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8F4D8();
  v12 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7E77C(v16, v86);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA99440(v18, v19, v20, v21, v22, v23, v24, v25, v87);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA954CC();
  v27 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v27);
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D6048, off_1E7960028);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v31 = sub_1ABA90CF4();
  v32 = type metadata accessor for CustomGraphHikingActivityEvent(v31);
  sub_1ABAA0EE8(v32);
  v33 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v33 + 28));
  sub_1ABAA5898();
  if (v34)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    v35 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968(v35);
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v36);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v37 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v38 = sub_1ABAA40C4();
    sub_1ABC6C440(v38);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABAB5AC8(v39);
        sub_1ABAFF390(v41, v42, off_1E79600C8);
        v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_75;
        }
      }

      v44 = v3[2];
      if (v44)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v47 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v45 = sub_1ABA8BCD4();
    sub_1ABAFF390(v45, v46, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v44)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_70;
  }

LABEL_18:
  sub_1ABAB510C();
  v48 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v50)
      {
        sub_1ABA8908C();
      }

      else
      {
        v51 = sub_1ABA8CB08(v49);
        sub_1ABAFF390(v51, &qword_1EB4D5F08, off_1E7960048);
        v52 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_76;
        }
      }

      v53 = v3[2];
      if (v53)
      {
        break;
      }

      v1 = v48;
LABEL_29:
      ++v5;
      v54 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v53)
      {
        v1 = v89;
        v48 = MEMORY[0x1E69E7CC0];
        v6 = v88;
        goto LABEL_29;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v55)
  {
    v56 = 0;
  }

  else
  {
    v57 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v56 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v56)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v58 & 1) == 0)
  {
    v59 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_79;
    }
  }

  sub_1ABAA1F6C();
  if ((v61 & 1) == 0)
  {
    v62 = *(v60 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_80;
    }
  }

  sub_1ABAB1118();
  if (v34)
  {
    v63 = 0;
  }

  else
  {
    v63 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v64 = sub_1ABAA045C();
  v65 = sub_1ABA97B70(v64);
  sub_1ABA80B88(v65);
  if (v3)
  {
    v90 = v48;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v66 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v67 = sub_1ABA90834(v66);
      sub_1ABB2E9FC(v67, v68, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v69 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v70 = sub_1ABA9F354();
      sub_1ABC6AA68(v70);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v34);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v71 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v72)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_72;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v56)
      {
        v71 = v90;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

LABEL_53:
  sub_1ABAA2640(v71);
  v73 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v72)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_73;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v73)
      {
        goto LABEL_58;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_58:
  sub_1ABAA111C();
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    do
    {
      sub_1ABA9F274();
      if (v72)
      {
        goto LABEL_69;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_74;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
    }

    while (v3 != v7);
  }

  sub_1ABA8282C();
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v74 = sub_1ABA95120();
      sub_1ABAAD268(v74);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
  }

  sub_1ABA7AD30();
  objc_allocWithZone(GDGraphHikingActivityEvent);
  v75 = sub_1ABA8F488();
  sub_1ABC67F50(v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphOnThePhoneActivityEvent.toObjectiveCGraphObject()(GDGraphOnThePhoneActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  v8 = sub_1ABAA9198();
  v9 = sub_1ABA8C0D0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8F4D8();
  v12 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7E77C(v16, v86);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA99440(v18, v19, v20, v21, v22, v23, v24, v25, v87);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA954CC();
  v27 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v27);
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D6050, off_1E79600A8);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v31 = sub_1ABA90CF4();
  v32 = type metadata accessor for CustomGraphOnThePhoneActivityEvent(v31);
  sub_1ABAA0EE8(v32);
  v33 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v33 + 28));
  sub_1ABAA5898();
  if (v34)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    v35 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968(v35);
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v36);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v37 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v38 = sub_1ABAA40C4();
    sub_1ABC6C440(v38);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABAB5AC8(v39);
        sub_1ABAFF390(v41, v42, off_1E79600C8);
        v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_75;
        }
      }

      v44 = v3[2];
      if (v44)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v47 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v45 = sub_1ABA8BCD4();
    sub_1ABAFF390(v45, v46, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v44)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_70;
  }

LABEL_18:
  sub_1ABAB510C();
  v48 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v50)
      {
        sub_1ABA8908C();
      }

      else
      {
        v51 = sub_1ABA8CB08(v49);
        sub_1ABAFF390(v51, &qword_1EB4D5F08, off_1E7960048);
        v52 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_76;
        }
      }

      v53 = v3[2];
      if (v53)
      {
        break;
      }

      v1 = v48;
LABEL_29:
      ++v5;
      v54 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v53)
      {
        v1 = v89;
        v48 = MEMORY[0x1E69E7CC0];
        v6 = v88;
        goto LABEL_29;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v55)
  {
    v56 = 0;
  }

  else
  {
    v57 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v56 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v56)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v58 & 1) == 0)
  {
    v59 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_79;
    }
  }

  sub_1ABAA1F6C();
  if ((v61 & 1) == 0)
  {
    v62 = *(v60 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_80;
    }
  }

  sub_1ABAB1118();
  if (v34)
  {
    v63 = 0;
  }

  else
  {
    v63 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v64 = sub_1ABAA045C();
  v65 = sub_1ABA97B70(v64);
  sub_1ABA80B88(v65);
  if (v3)
  {
    v90 = v48;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v66 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v67 = sub_1ABA90834(v66);
      sub_1ABB2E9FC(v67, v68, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v69 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v70 = sub_1ABA9F354();
      sub_1ABC6AA68(v70);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v34);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v71 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v72)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_72;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v56)
      {
        v71 = v90;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

LABEL_53:
  sub_1ABAA2640(v71);
  v73 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v72)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_73;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v73)
      {
        goto LABEL_58;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_58:
  sub_1ABAA111C();
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    do
    {
      sub_1ABA9F274();
      if (v72)
      {
        goto LABEL_69;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_74;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
    }

    while (v3 != v7);
  }

  sub_1ABA8282C();
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v74 = sub_1ABA95120();
      sub_1ABAAD268(v74);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
  }

  sub_1ABA7AD30();
  objc_allocWithZone(GDGraphOnThePhoneActivityEvent);
  v75 = sub_1ABA8F488();
  sub_1ABC67F50(v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphFacetimeActivityEvent.toObjectiveCGraphObject()(GDGraphFacetimeActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  v8 = sub_1ABAA9198();
  v9 = sub_1ABA8C0D0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8F4D8();
  v12 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7E77C(v16, v86);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA99440(v18, v19, v20, v21, v22, v23, v24, v25, v87);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA954CC();
  v27 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v27);
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D6058, off_1E795FFF0);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v31 = sub_1ABA90CF4();
  v32 = type metadata accessor for CustomGraphFacetimeActivityEvent(v31);
  sub_1ABAA0EE8(v32);
  v33 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v33 + 28));
  sub_1ABAA5898();
  if (v34)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    v35 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968(v35);
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v36);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v37 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v38 = sub_1ABAA40C4();
    sub_1ABC6C440(v38);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABAB5AC8(v39);
        sub_1ABAFF390(v41, v42, off_1E79600C8);
        v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_75;
        }
      }

      v44 = v3[2];
      if (v44)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v47 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v45 = sub_1ABA8BCD4();
    sub_1ABAFF390(v45, v46, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v44)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_70;
  }

LABEL_18:
  sub_1ABAB510C();
  v48 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v50)
      {
        sub_1ABA8908C();
      }

      else
      {
        v51 = sub_1ABA8CB08(v49);
        sub_1ABAFF390(v51, &qword_1EB4D5F08, off_1E7960048);
        v52 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_76;
        }
      }

      v53 = v3[2];
      if (v53)
      {
        break;
      }

      v1 = v48;
LABEL_29:
      ++v5;
      v54 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v53)
      {
        v1 = v89;
        v48 = MEMORY[0x1E69E7CC0];
        v6 = v88;
        goto LABEL_29;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v55)
  {
    v56 = 0;
  }

  else
  {
    v57 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v56 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v56)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v58 & 1) == 0)
  {
    v59 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_79;
    }
  }

  sub_1ABAA1F6C();
  if ((v61 & 1) == 0)
  {
    v62 = *(v60 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_80;
    }
  }

  sub_1ABAB1118();
  if (v34)
  {
    v63 = 0;
  }

  else
  {
    v63 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v64 = sub_1ABAA045C();
  v65 = sub_1ABA97B70(v64);
  sub_1ABA80B88(v65);
  if (v3)
  {
    v90 = v48;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v66 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v67 = sub_1ABA90834(v66);
      sub_1ABB2E9FC(v67, v68, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v69 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v70 = sub_1ABA9F354();
      sub_1ABC6AA68(v70);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v34);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v71 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v72)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_72;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v56)
      {
        v71 = v90;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

LABEL_53:
  sub_1ABAA2640(v71);
  v73 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v72)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_73;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v73)
      {
        goto LABEL_58;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_58:
  sub_1ABAA111C();
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    do
    {
      sub_1ABA9F274();
      if (v72)
      {
        goto LABEL_69;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_74;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
    }

    while (v3 != v7);
  }

  sub_1ABA8282C();
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v74 = sub_1ABA95120();
      sub_1ABAAD268(v74);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
  }

  sub_1ABA7AD30();
  objc_allocWithZone(GDGraphFacetimeActivityEvent);
  v75 = sub_1ABA8F488();
  sub_1ABC67F50(v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphDrivingActivityEvent.toObjectiveCGraphObject()(GDGraphDrivingActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  v8 = sub_1ABAA9198();
  v9 = sub_1ABA8C0D0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8F4D8();
  v12 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v13 = sub_1ABA7AB80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7E77C(v16, v86);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA99440(v18, v19, v20, v21, v22, v23, v24, v25, v87);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA954CC();
  v27 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v27);
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D6060, off_1E795FFA0);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v31 = sub_1ABA90CF4();
  v32 = type metadata accessor for CustomGraphDrivingActivityEvent(v31);
  sub_1ABAA0EE8(v32);
  v33 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v33 + 28));
  sub_1ABAA5898();
  if (v34)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    v35 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968(v35);
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v36);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v37 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v38 = sub_1ABAA40C4();
    sub_1ABC6C440(v38);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABAB5AC8(v39);
        sub_1ABAFF390(v41, v42, off_1E79600C8);
        v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_75;
        }
      }

      v44 = v3[2];
      if (v44)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v47 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v45 = sub_1ABA8BCD4();
    sub_1ABAFF390(v45, v46, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v44)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_70;
  }

LABEL_18:
  sub_1ABAB510C();
  v48 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v50)
      {
        sub_1ABA8908C();
      }

      else
      {
        v51 = sub_1ABA8CB08(v49);
        sub_1ABAFF390(v51, &qword_1EB4D5F08, off_1E7960048);
        v52 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_76;
        }
      }

      v53 = v3[2];
      if (v53)
      {
        break;
      }

      v1 = v48;
LABEL_29:
      ++v5;
      v54 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v53)
      {
        v1 = v89;
        v48 = MEMORY[0x1E69E7CC0];
        v6 = v88;
        goto LABEL_29;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v55)
  {
    v56 = 0;
  }

  else
  {
    v57 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v56 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v56)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v58 & 1) == 0)
  {
    v59 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_79;
    }
  }

  sub_1ABAA1F6C();
  if ((v61 & 1) == 0)
  {
    v62 = *(v60 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_80;
    }
  }

  sub_1ABAB1118();
  if (v34)
  {
    v63 = 0;
  }

  else
  {
    v63 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v64 = sub_1ABAA045C();
  v65 = sub_1ABA97B70(v64);
  sub_1ABA80B88(v65);
  if (v3)
  {
    v90 = v48;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v66 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v67 = sub_1ABA90834(v66);
      sub_1ABB2E9FC(v67, v68, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v69 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v70 = sub_1ABA9F354();
      sub_1ABC6AA68(v70);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v34);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v71 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v72)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_72;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v56)
      {
        v71 = v90;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

LABEL_53:
  sub_1ABAA2640(v71);
  v73 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v72)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_73;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v73)
      {
        goto LABEL_58;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_58:
  sub_1ABAA111C();
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    do
    {
      sub_1ABA9F274();
      if (v72)
      {
        goto LABEL_69;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_74;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
    }

    while (v3 != v7);
  }

  sub_1ABA8282C();
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v74 = sub_1ABA95120();
      sub_1ABAAD268(v74);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
  }

  sub_1ABA7AD30();
  objc_allocWithZone(GDGraphDrivingActivityEvent);
  v75 = sub_1ABA8F488();
  sub_1ABC67F50(v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  sub_1ABA89A08();
  sub_1ABA8B438();
}