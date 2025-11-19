void __swiftcall CustomGraphBehaviorActivityEvent.toObjectiveCGraphObject()(GDGraphBehaviorActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  v150 = v8;
  v151 = v9;
  v10 = sub_1ABAA9198();
  v11 = sub_1ABA8C0D0(v10);
  v122[1] = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA8F4D8();
  v15 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v16 = sub_1ABA7AB80(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7AC18();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA99440(v23, v24, v25, v26, v27, v28, v29, v30, v122[0]);
  MEMORY[0x1EEE9AC00](v31);
  v33 = v122 - v32;
  v34 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v34);
  v36 = *(v35 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D6068, off_1E795FF38);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v38 = sub_1ABA90CF4();
  v39 = type metadata accessor for CustomGraphBehaviorActivityEvent(v38);
  sub_1ABAA0EE8(v39);
  v40 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v40 + 28));
  sub_1ABAA5898();
  v139 = v6;
  v137 = v3;
  v138 = v2;
  v136 = v4;
  v144 = v7;
  v122[0] = v5;
  v145 = v21;
  v143 = v33;
  if (v41)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
    v135 = 0;
  }

  else
  {
    sub_1ABA89DD8();
    v42 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968(v42);
    v3 = &qword_1EB4D9BF0;
    sub_1ABA9E550(v5 + v43, v33);
    v44 = sub_1ABAA3560();
    sub_1ABA8B8D0(v44);
    v45 = sub_1ABAA3914();
    sub_1ABA9E550(v45, v145);
    sub_1ABAA295C();
    v46 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    sub_1ABA96094();
    v50 = sub_1ABC69E44(v47, v48, v49);
    sub_1ABC6C440(v50);
  }

  v51 = v140;
  v52 = *(*(v6 + v140[7]) + 16);
  v53 = MEMORY[0x1E69E7CC0];
  if (v52)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v55)
      {
        sub_1ABA8908C();
      }

      else
      {
        v56 = sub_1ABA8CB08(v54);
        sub_1ABAFF390(v56, &qword_1EB4D5EF8, off_1E79600C8);
        v57 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_77;
        }
      }

      v58 = v3[2];
      if (v58)
      {
        break;
      }

LABEL_16:
      ++v6;
      v62 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v6 == v52)
      {
        v53 = v148;
        v6 = v139;
        v51 = v140;
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88DF8();
    sub_1ABAFF390(0, &qword_1EB4D5EF8, off_1E79600C8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v60 = v3 + 4;
    while (1)
    {
      v61 = *v60++;
      if (![objc_allocWithZone(ObjCClassFromMetadata) initWithValue_])
      {
        goto LABEL_72;
      }

      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v58)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }
  }

LABEL_18:
  v63 = *(*(v6 + v51[8]) + 16);
  v64 = MEMORY[0x1E69E7CC0];
  v134 = v53;
  if (v63)
  {
    sub_1ABAA0318();
    sub_1ABAA0AA4();
    v141 = v63;
    v142 = v65;
    v66 = v63;
    while (1)
    {
      sub_1ABA8E96C();
      if (v68)
      {
        sub_1ABA8908C();
      }

      else
      {
        v69 = sub_1ABAB5AC8(v67);
        sub_1ABAFF390(v69, v70, off_1E7960048);
        v71 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_78;
        }
      }

      v72 = *(v63 + 16);
      if (v72)
      {
        break;
      }

LABEL_29:
      ++v6;
      v78 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v6 == v66)
      {
        v79 = v148;
        v6 = v139;
        v51 = v140;
        goto LABEL_32;
      }
    }

    v147 = v64;

    sub_1ABA88DF8();
    v73 = sub_1ABA8BCD4();
    sub_1ABAFF390(v73, v74, off_1E7960048);
    v75 = swift_getObjCClassFromMetadata();
    v76 = (v63 + 32);
    while (1)
    {
      v77 = *v76++;
      if (![objc_allocWithZone(v75) initWithValue_])
      {
        break;
      }

      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v72)
      {
        v64 = MEMORY[0x1E69E7CC0];
        v66 = v141;
        goto LABEL_29;
      }
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v79 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v80 = v6 + v51[9];
  if (*(v80 + 16))
  {
    v81 = 0;
  }

  else
  {
    v82 = *(v80 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v81 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v81)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }
  }

  v142 = v80;
  v83 = v6 + v51[10];
  if (*(v83 + 16))
  {
    v84 = v64;
    v85 = 0;
  }

  else
  {
    v84 = v64;
    v86 = *(v83 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v85 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v85)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      return;
    }
  }

  v87 = v6 + v51[11];
  v88 = *(v87 + 16);
  v141 = v83;
  if ((v88 & 1) == 0)
  {
    v89 = *(v87 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_82;
    }
  }

  sub_1ABA89F20(v6 + v51[12]);
  v131 = v90;
  v123 = v91;
  if (v41)
  {
    v92 = 0;
  }

  else
  {
    v92 = sub_1ABC6C3F8();
  }

  v140 = v87;
  v132 = v85;
  v133 = v81;
  v139 = v79;
  sub_1ABA9F4DC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v130 = sub_1ABAA045C();
  v129 = sub_1ABC6C834(v6 + v51[13]);
  v93 = v6 + v51[14];
  v94 = *(v93 + 16);
  v128 = *(v93 + 8);
  v125 = v93;
  v95 = *(v6 + 8);
  sub_1ABAA154C();
  v127 = v96;
  v126 = v95;
  if (v83)
  {
    v148 = v84;

    sub_1ABA9E6A8();
    sub_1ABA935AC(&v149);
    v146 = *(v97 + 72);
    v84 = v122[0];
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v98 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v99 = sub_1ABA90834(v98);
      sub_1ABB2E9FC(v99, v100, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v101 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v102 = sub_1ABA9F354();
      sub_1ABC6AA68(v102);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v41);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v103 = MEMORY[0x1E69E7CC0];
  if (v83)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v104)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_74;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v83 == v81)
      {
        v103 = v148;
        goto LABEL_55;
      }
    }

    __break(1u);
    goto LABEL_70;
  }

LABEL_55:
  sub_1ABAA2640(v103);
  v105 = MEMORY[0x1E69E7CC0];
  if (v83)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v104)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_75;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v83 == v105)
      {
        goto LABEL_60;
      }
    }

LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

LABEL_60:
  sub_1ABAA111C();
  if (v83)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    do
    {
      sub_1ABA9F274();
      if (v104)
      {
        goto LABEL_71;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_76;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
    }

    while (v83 != v84);
  }

  sub_1ABA8C5A8(v123);
  if (v83)
  {
    sub_1ABA8A628();
    do
    {
      v106 = sub_1ABA95120();
      sub_1ABAAD268(v106);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      --v83;
    }

    while (v83);
  }

  sub_1ABA8C5A8(v124);
  sub_1ABAA3CF0();
  v108 = *v107;
  objc_allocWithZone(GDGraphBehaviorActivityEvent);

  sub_1ABA8A034();
  sub_1ABA9F6D8();
  v109 = sub_1ABA8F488();
  sub_1ABC6858C(v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121);
  sub_1ABA8B438();
}

void __swiftcall CustomGraphCalendarEvent.toObjectiveCGraphObject()(GDGraphCalendarEvent *__return_ptr retstr)
{
  sub_1ABA7E2A8();
  v4 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v5 = sub_1ABA7AB80(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7AC18();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA89308();
  MEMORY[0x1EEE9AC00](v12);
  v109 = sub_1ABC6C7F4();
  v13 = sub_1ABA7BB64(v109);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7BC58();
  v20 = v19 - v18;
  v21 = *v1;
  v103 = v1[1];
  v98 = v1[2];
  v104 = v1[3];
  v22 = v1[4];
  v97 = v1[5];
  v23 = *(v1 + 48);
  v24 = v1[7];
  v101 = v1[8];
  v100 = v1[9];
  v99 = v1[10];
  v102 = v1[11];
  sub_1ABAFF390(0, &qword_1EB4D6070, off_1E795FF58);
  v25 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (!v25)
  {
LABEL_60:
    __break(1u);
    return;
  }

  v96 = v25;
  v26 = *(v22 + 16);
  if (v26)
  {
    v94 = v23;
    v95 = v24;
    v120[0] = MEMORY[0x1E69E7CC0];

    sub_1ABF24BC4();
    v116 = v3;
    v27 = v22 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v106 = *(v15 + 72);
    do
    {
      v113 = v26;
      sub_1ABC6AA04(v27, v20);
      v28 = (v20 + v109[5]);
      v29 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v30 = sub_1ABA952DC(v29);
      sub_1ABB2E9FC(v30, v116, &qword_1EB4D9BF0, &qword_1ABF34240);
      v31 = (v20 + v109[6]);
      v3 = v2;
      sub_1ABB2E9FC(v31 + v121, v2, &qword_1EB4D9BF0, &qword_1ABF34240);
      v32 = (v20 + v109[7]);
      sub_1ABB2E9FC(v32 + v121, v10, &qword_1EB4D9BF0, &qword_1ABF34240);
      v33 = *v28;
      v34 = *v31;
      v35 = *v32;
      objc_allocWithZone(GDGraphDateRelationship);

      sub_1ABC69E44(v116, v2, v10);
      v36 = sub_1ABC6C59C();
      sub_1ABC6AA68(v36);
      sub_1ABF24B94();
      sub_1ABA9E334(v120[0]);
      sub_1ABA9E200();
      sub_1ABF24BA4();
      v27 += v106;
      --v26;
    }

    while (v113 != 1);
    v107 = v120[0];
    v24 = v95;
    v23 = v94;
  }

  else
  {

    v107 = MEMORY[0x1E69E7CC0];
  }

  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v105 = sub_1ABC6433C(v23);
  v37 = *(v24 + 16);
  if (v37)
  {
    v120[0] = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v3 = v24 + 112;
    do
    {
      v38 = *(v3 - 64);
      v39 = *(v3 - 48);
      v40 = *(v3 - 40);
      v41 = *(v3 - 24);
      v114 = *(v3 - 32);
      v117 = *(v3 - 56);
      v42 = *(v3 - 16);
      v43 = *(v3 - 8);
      v44 = *v3;
      v3 += 88;
      v45 = objc_allocWithZone(GDGraphIdentifierRelationship);

      sub_1ABC6C5A8(v117, v46, v114);
      sub_1ABF24B94();
      sub_1ABA88ED0(v120[0]);
      sub_1ABC6C494();
      sub_1ABF24BA4();
      --v37;
    }

    while (v37);
  }

  v47 = *(v101 + 16);
  if (v47)
  {
    sub_1ABC6C47C(MEMORY[0x1E69E7CC0]);
    sub_1ABF24BC4();
    v48 = 0;
    v110 = v47;
    while (1)
    {
      sub_1ABA8D3D4((v101 + 32 + (v48 << 6)));
      v49 = v122;
      if (v124)
      {
        v50 = sub_1ABC6C73C();
        sub_1ABB2E9FC(v50, v51, &qword_1EB4D1898, &qword_1ABF33A28);

        v52 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v53 = v123;
        sub_1ABAFF390(0, &qword_1EB4D5EF8, off_1E79600C8);
        v54 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v55 = sub_1ABC6C73C();
        sub_1ABB2E9FC(v55, v56, &qword_1EB4D1898, &qword_1ABF33A28);

        v57 = [v54 initWithValue_];
        v52 = MEMORY[0x1E69E7CC0];
        if (!v57)
        {
          goto LABEL_57;
        }
      }

      v58 = *(v49 + 16);
      if (v58)
      {
        break;
      }

LABEL_21:
      ++v48;
      v62 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABAA2654();
      sub_1ABC6C470();
      sub_1ABC69D78();
      v3 = &qword_1ABF33A28;
      sub_1ABC6AAC4(v120, &qword_1EB4D1898);
      sub_1ABF24B94();
      sub_1ABA8965C();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v48 == v47)
      {
        goto LABEL_22;
      }
    }

    sub_1ABF24BC4();
    sub_1ABAFF390(0, &qword_1EB4D5EF8, off_1E79600C8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v60 = (v49 + 32);
    while (1)
    {
      v61 = *v60++;
      if (![objc_allocWithZone(ObjCClassFromMetadata) initWithValue_])
      {
        break;
      }

      sub_1ABF24B94();
      sub_1ABA88ED0(v52);
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v58)
      {
        v47 = v110;
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_55;
  }

LABEL_22:
  v63 = *(v100 + 16);
  v64 = MEMORY[0x1E69E7CC0];
  if (v63)
  {
    v125 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    sub_1ABAA0AA4();
    v111 = v63;
    v115 = v65;
    while (1)
    {
      sub_1ABA8D3D4((v115 + (v3 << 6)));
      v66 = v122;
      if (v124)
      {
        v67 = sub_1ABC6C73C();
        sub_1ABB2E9FC(v67, v68, &qword_1EB4D1898, &qword_1ABF33A28);
      }

      else
      {
        v69 = v123;
        sub_1ABAFF390(0, &qword_1EB4D5EF8, off_1E79600C8);
        v70 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v71 = sub_1ABC6C73C();
        sub_1ABB2E9FC(v71, v72, &qword_1EB4D1898, &qword_1ABF33A28);

        if (![v70 initWithValue_])
        {
          goto LABEL_58;
        }
      }

      v73 = *(v66 + 16);
      if (v73)
      {
        break;
      }

LABEL_33:
      ++v3;
      v77 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABC6C470();
      sub_1ABC69D78();
      sub_1ABC6AAC4(v120, &qword_1EB4D1898);
      sub_1ABF24B94();
      sub_1ABA8965C();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v3 == v63)
      {
        goto LABEL_34;
      }
    }

    v119 = v64;

    sub_1ABF24BC4();
    sub_1ABAFF390(0, &qword_1EB4D5EF8, off_1E79600C8);
    v74 = swift_getObjCClassFromMetadata();
    v75 = (v66 + 32);
    while (1)
    {
      v76 = *v75++;
      if (![objc_allocWithZone(v74) initWithValue_])
      {
        break;
      }

      sub_1ABF24B94();
      sub_1ABA8CFE4(v119);
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v73)
      {
        v64 = MEMORY[0x1E69E7CC0];
        v63 = v111;
        goto LABEL_33;
      }
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_34:
  v78 = *(v99 + 16);
  v79 = MEMORY[0x1E69E7CC0];
  if (v78)
  {
    v120[0] = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    sub_1ABAA0AA4();
    v108 = v78;
    v112 = v80;
    while (1)
    {
      sub_1ABAA08D0(v112);
      v82 = *(v81 + 40);
      v118 = *(v81 + 32);
      if (*(v81 + 56))
      {
        sub_1ABC6C86C();
      }

      else
      {
        v83 = sub_1ABC6C794(v81);
        sub_1ABAFF390(v83, &qword_1EB4D5F08, off_1E7960048);
        v84 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABC6C86C();

        if (![v84 initWithValue_])
        {
          goto LABEL_59;
        }
      }

      v85 = *(v82 + 16);
      if (v85)
      {
        break;
      }

LABEL_45:
      ++v3;
      v89 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABC6C470();
      sub_1ABC69D78();

      sub_1ABF24B94();
      sub_1ABA9E334(v120[0]);
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v3 == v78)
      {
        v90 = v97;
        goto LABEL_48;
      }
    }

    sub_1ABF24BC4();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v86 = swift_getObjCClassFromMetadata();
    v87 = (v82 + 32);
    while (1)
    {
      v88 = *v87++;
      if (![objc_allocWithZone(v86) initWithValue_])
      {
        break;
      }

      sub_1ABF24B94();
      sub_1ABA88ED0(v79);
      sub_1ABC6C494();
      sub_1ABF24BA4();
      if (!--v85)
      {
        v79 = MEMORY[0x1E69E7CC0];
        v78 = v108;
        goto LABEL_45;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v90 = v97;
LABEL_48:
  v91 = *(v90 + 16);
  sub_1ABC6C7A0();
  if (v91)
  {
    v120[0] = MEMORY[0x1E69E7CC0];

    sub_1ABF24BC4();
    v92 = 32;
    do
    {
      v93 = *(v90 + v92);
      sub_1ABC6C854(objc_allocWithZone(MEMORY[0x1E696AD98]));
      sub_1ABF24B94();
      sub_1ABA88ED0(v120[0]);
      sub_1ABC6C494();
      sub_1ABF24BA4();
      ++v92;
      --v91;
    }

    while (v91);

    sub_1ABC6C7A0();
  }

  else
  {
  }

  objc_allocWithZone(GDGraphCalendarEvent);
  sub_1ABC688F8(v96, v98, v104, v107, v105);
  sub_1ABA7BC1C();
}

id sub_1ABC6433C(char a1)
{
  if (a1 == 2)
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBool_];
  }
}

void __swiftcall CustomGraphSongEvent.toObjectiveCGraphObject()(GDGraphSongEvent *__return_ptr retstr)
{
  sub_1ABA7E2A8();
  v5 = v1;
  v6 = type metadata accessor for CustomGraphDateRelationship(0);
  v7 = sub_1ABA7BB64(v6);
  v98 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA8F4D8();
  v11 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v12 = sub_1ABA7AB80(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7AC18();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABAA08DC();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v91 - v20;
  v22 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v22);
  v24 = *(v23 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA96A10();
  v26 = *v1;
  sub_1ABAFF390(0, &qword_1EB4D6078, off_1E7960158);
  v27 = &selRef_enumerateActivityEventsWithAscending_error_block_;
  v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (!v28)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v29 = v28;
  v30 = type metadata accessor for CustomGraphSongEvent(0);
  v31 = v30[5];
  v103 = v5;
  v32 = v5 + v31;
  v33 = *(sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00) + 28);
  v99 = v32;
  sub_1ABB2E9FC(&v32[v33], v2, &qword_1EB4D5F20, &qword_1ABF4F358);
  v34 = sub_1ABA7E1E0(v2, 1, v6);
  v97 = v29;
  v101 = v4;
  v102 = v6;
  v100 = v3;
  v104 = v21;
  if (v34 == 1)
  {
    v35 = v17;
    sub_1ABC6AAC4(v2, &qword_1EB4D5F20);
    v96 = 0;
  }

  else
  {
    v36 = (v2 + v6[5]);
    v37 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968(v37);
    v95 = v30;
    v38 = v21;
    sub_1ABB2E9FC(v36 + v39, v21, &qword_1EB4D9BF0, &qword_1ABF34240);
    v40 = (v2 + v6[6]);
    v41 = sub_1ABC6C730();
    sub_1ABB2E9FC(v41, v4, &qword_1EB4D9BF0, &qword_1ABF34240);
    v42 = (v2 + v6[7]);
    sub_1ABB2E9FC(v42 + v29[7], v17, &qword_1EB4D9BF0, &qword_1ABF34240);
    v43 = *v36;
    v44 = *v40;
    v45 = *v42;
    objc_allocWithZone(GDGraphDateRelationship);

    v46 = v38;
    v30 = v95;
    v35 = v17;
    v96 = sub_1ABC69E44(v46, v4, v17);
    sub_1ABC6AA68(v2);
  }

  v47 = v30[7];
  v48 = (v103 + v30[6]);
  v49 = v48[2];
  v94 = v48[1];
  v95 = v49;
  v50 = (v103 + v47);
  v51 = *(v103 + v47 + 24);
  if (v51)
  {
    v52 = *(v50 + 40);
    v53 = v50[4];
    v107 = *(v50 + 1);
    v108 = v51;
    v109 = v53;
    v110 = v52 & 1;

    v93 = sub_1ABC64AB0(&qword_1EB4D6080, off_1E7960148, off_1E7960160);
  }

  else
  {

    v93 = 0;
  }

  v54 = *v99;
  v55 = *(*v99 + 16);
  v56 = MEMORY[0x1E69E7CC0];
  if (v55)
  {
    v91 = v50;
    v92 = v48;
    v106 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v57 = v54 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
    v58 = *(v98 + 72);
    v98 = v35;
    v99 = v58;
    do
    {
      v103 = v55;
      v59 = v100;
      sub_1ABC6AA04(v57, v100);
      v60 = v102;
      v61 = (v59 + *(v102 + 20));
      v62 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      sub_1ABA8C968(v62);
      sub_1ABB2E9FC(v61 + v63, v104, &qword_1EB4D9BF0, &qword_1ABF34240);
      v64 = (v59 + *(v60 + 24));
      v65 = v101;
      sub_1ABB2E9FC(v64 + SHIDWORD(v108), v101, &qword_1EB4D9BF0, &qword_1ABF34240);
      v66 = (v59 + *(v60 + 28));
      v67 = sub_1ABC6C730();
      v68 = v98;
      sub_1ABB2E9FC(v67, v98, &qword_1EB4D9BF0, &qword_1ABF34240);
      v69 = *v61;
      v70 = *v64;
      v71 = *v66;
      objc_allocWithZone(GDGraphDateRelationship);

      sub_1ABC69E44(v104, v65, v68);
      v72 = sub_1ABC6C7B4();
      v73 = v103;
      sub_1ABC6AA68(v72);
      sub_1ABF24B94();
      sub_1ABC6C884(v106);
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      v57 += v99;
      v55 = (v73 - 1);
    }

    while (v55);
    v74 = v106;
    v56 = MEMORY[0x1E69E7CC0];
    v50 = v91;
    v48 = v92;
    v27 = &selRef_enumerateActivityEventsWithAscending_error_block_;
  }

  else
  {
    v74 = MEMORY[0x1E69E7CC0];
  }

  v75 = *v48;
  v76 = *v50;
  v77 = *(*v50 + 16);
  if (v77)
  {
    v101 = v75;
    v102 = v74;
    v106 = v56;

    sub_1ABF24BC4();
    v78 = 0;
    v103 = v77;
    v104 = (v76 + 32);
    while (1)
    {
      sub_1ABC6C748(&v104[40 * v78]);
      if (v80)
      {
      }

      else
      {
        v81 = *(v79 + 24);
        sub_1ABAFF390(0, &qword_1EB4D6080, off_1E7960148);
        v82 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA94A78();

        if (![&v106 v27[250]])
        {
          goto LABEL_28;
        }
      }

      v83 = MEMORY[0x10];
      if (MEMORY[0x10])
      {
        break;
      }

LABEL_23:
      ++v78;
      v88 = objc_allocWithZone(GDGraphSongRelationship);
      sub_1ABC6C488();
      sub_1ABC69D04(v89, v90, &qword_1EB4D6080, off_1E7960148);
      sub_1ABC6C59C();

      sub_1ABF24B94();
      sub_1ABA9E334(v106);
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v78 == v77)
      {
        goto LABEL_26;
      }
    }

    v105 = v56;
    sub_1ABF24BC4();
    sub_1ABAFF390(0, &qword_1EB4D6080, off_1E7960148);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v85 = 32;
    while (1)
    {
      v86 = *v85;
      v85 += 8;
      if (![objc_allocWithZone(ObjCClassFromMetadata) v27[250]])
      {
        break;
      }

      sub_1ABF24B94();
      v87 = *(v105 + 16);
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v83)
      {
        v56 = MEMORY[0x1E69E7CC0];
        v77 = v103;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_26:
  objc_allocWithZone(GDGraphSongEvent);
  sub_1ABC68B50(v97, v96, v94, v95, v93);
  sub_1ABA7BC1C();
}

id sub_1ABC64AB0(unint64_t *a1, uint64_t *a2, Class *a3)
{
  v7 = *(v3 + 16);
  if ((*(v3 + 32) & 1) != 0 || (v8 = *(v3 + 24), sub_1ABAFF390(0, a1, a2), (result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_]) != 0))
  {
    v10 = *(v7 + 16);
    if (!v10)
    {
LABEL_8:
      v15 = objc_allocWithZone(*a3);
      sub_1ABC6C488();
      return sub_1ABC69D04(v16, v17, a1, a2);
    }

    v18 = a3;
    v19 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    sub_1ABAFF390(0, a1, a2);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = (v7 + 32);
    while (1)
    {
      v13 = *v12++;
      result = [objc_allocWithZone(ObjCClassFromMetadata) initWithValue_];
      if (!result)
      {
        break;
      }

      sub_1ABF24B94();
      v14 = *(v19 + 16);
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v10)
      {
        a3 = v18;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void __swiftcall CustomGraphLocation.toObjectiveCGraphObject()(GDGraphLocation *__return_ptr retstr)
{
  sub_1ABA7E2A8();
  v2 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v77 = v2[7];
  v10 = *(v2 + 5);
  v87 = *(v2 + 4);
  v88 = v10;
  v89[0] = *(v2 + 6);
  *(v89 + 9) = *(v2 + 105);
  v55 = v2[16];
  v11 = v2[46];
  v49 = v2[47];
  v12 = v2[49];
  v50 = v2[48];
  v51 = v8;
  sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (v13)
  {
    v14 = v13;
    v48 = v5;
    if (v88)
    {
      v85[0] = *(v2 + 4);
      *&v85[1] = v88;
      *(&v85[1] + 8) = *(v2 + 11);
      *(&v85[2] + 8) = *(v2 + 13);
      BYTE8(v85[3]) = *(v2 + 120);

      sub_1ABB2E9FC(&v87, __dst, &qword_1EB4D6090, &unk_1ABF50B10);
      CustomGraphLocationLatLongRelationship.toObjectiveCGraphObject()(v15);
      v17 = v16;
      __dst[0] = v85[0];
      __dst[1] = v85[1];
      __dst[2] = v85[2];
      *(&__dst[2] + 9) = *(&v85[2] + 9);
      sub_1ABC6ABF0(__dst);
    }

    else
    {

      v17 = 0;
    }

    memcpy(__dst, v2 + 17, 0xE8uLL);
    v46 = v17;
    v47 = v14;
    if (sub_1ABB9AE48(__dst) == 1)
    {
      v45 = 0;
    }

    else
    {
      memcpy(__src, __dst, sizeof(__src));
      memcpy(v84, v2 + 17, sizeof(v84));
      sub_1ABC6AB40(v84, v85);
      CustomGraphLocationAddressRelationship.toObjectiveCGraphObject()(v18);
      v45 = v19;
      memcpy(v85, __src, 0xE8uLL);
      sub_1ABC6AB9C(v85);
    }

    v20 = *(v11 + 16);
    v21 = MEMORY[0x1E69E7CC0];
    v53 = v9;
    v54 = v6;
    v52 = v12;
    if (v20)
    {
      *&v85[0] = MEMORY[0x1E69E7CC0];
      sub_1ABF24BC4();
      v22 = (v11 + 112);
      do
      {
        v23 = *(v22 - 8);
        v24 = *(v22 - 6);
        v25 = *(v22 - 5);
        v26 = *(v22 - 3);
        v79 = *(v22 - 4);
        v81 = *(v22 - 7);
        v27 = *(v22 - 2);
        v28 = *(v22 - 1);
        v29 = *v22;
        v22 += 11;
        v30 = objc_allocWithZone(GDGraphIdentifierRelationship);

        sub_1ABC6C514(v81, v31, v79);
        sub_1ABF24B94();
        v32 = *(*&v85[0] + 16);
        sub_1ABF24BD4();
        sub_1ABC6C494();
        sub_1ABF24BA4();
        --v20;
      }

      while (v20);
      v44 = *&v85[0];
      v9 = v53;
      v6 = v54;
      v12 = v52;
      v21 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v44 = MEMORY[0x1E69E7CC0];
    }

    v33 = v77;
    v34 = *(v77 + 16);
    if (v34)
    {
      v84[0] = v21;

      sub_1ABF24BC4();
      v35 = 32;
      do
      {
        v85[0] = *(v33 + v35);
        v85[1] = *(v33 + v35 + 16);
        v85[2] = *(v33 + v35 + 32);
        *(&v85[2] + 9) = *(v33 + v35 + 41);
        CustomGraphLocationLatLongRelationship.toObjectiveCGraphObject()((v33 + v35));
        sub_1ABF24B94();
        v36 = *(v84[0] + 16);
        sub_1ABF24BD4();
        v33 = v77;
        sub_1ABF24BE4();
        sub_1ABF24BA4();
        v35 += 64;
        --v34;
      }

      while (v34);

      v6 = v54;
    }

    else
    {
    }

    v37 = *(v55 + 16);
    if (v37)
    {
      *&v85[0] = MEMORY[0x1E69E7CC0];

      sub_1ABF24BC4();
      v38 = 0;
      do
      {
        v73 = v37;
        v66 = *(v55 + v38 + 48);
        v39 = *(v55 + v38 + 64);
        v80 = *(v55 + v38 + 80);
        v82 = *(v55 + v38 + 56);
        v61 = *(v55 + v38 + 88);
        v40 = *(v55 + v38 + 120);
        v60 = *(v55 + v38 + 96);
        v76 = *(v55 + v38 + 128);
        v78 = *(v55 + v38 + 104);
        v62 = *(v55 + v38 + 112);
        v63 = *(v55 + v38 + 136);
        v59 = *(v55 + v38 + 144);
        v74 = *(v55 + v38 + 176);
        v75 = *(v55 + v38 + 152);
        v41 = *(v55 + v38 + 192);
        v64 = *(v55 + v38 + 160);
        v65 = *(v55 + v38 + 184);
        v72 = *(v55 + v38 + 200);
        v56 = *(v55 + v38 + 216);
        v71 = *(v55 + v38 + 224);
        v67 = *(v55 + v38 + 208);
        v68 = *(v55 + v38 + 232);
        v57 = *(v55 + v38 + 240);
        v58 = *(v55 + v38 + 168);
        v69 = *(v55 + v38 + 256);
        v70 = *(v55 + v38 + 248);
        objc_allocWithZone(GDGraphLocationAddressRelationship);

        sub_1ABC6A3D4(v82, v39, v80, v61, v78, v62, v76, v63, v75, v64, v74, v65, v72, v67, v71, v42, v70, v69);
        sub_1ABF24B94();
        v43 = *(*&v85[0] + 16);
        sub_1ABF24BD4();
        sub_1ABA9E200();
        sub_1ABF24BA4();
        v38 += 232;
        v37 = v73 - 1;
      }

      while (v73 != 1);

      v9 = v53;
      v6 = v54;
      v12 = v52;
    }

    objc_allocWithZone(GDGraphLocation);

    sub_1ABC68CA0(v47, v48, v6, v51, v9, v46, v45, v44, v50, v12);
    sub_1ABA7BC1C();
  }

  else
  {
    __break(1u);
  }
}

void __swiftcall CustomGraphLocationLatLongRelationship.toObjectiveCGraphObject()(GDGraphLocationLatLongRelationship *__return_ptr retstr)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v16 = sub_1ABC5021C(v2, v4);
  v8 = sub_1ABC5021C(v6, v7);
  v9 = *(v3 + 16);
  if (v9)
  {
    v17 = MEMORY[0x1E69E7CC0];

    sub_1ABF24BC4();
    v10 = 32;
    do
    {
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      sub_1ABF24B94();
      v11 = *(v17 + 16);
      sub_1ABC6C7E8();
      sub_1ABF24BD4();
      sub_1ABC6C7E8();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      v10 += 8;
      --v9;
    }

    while (v9);
  }

  v12 = *(v5 + 16);
  if (v12)
  {
    v18 = MEMORY[0x1E69E7CC0];

    sub_1ABF24BC4();
    v13 = 32;
    do
    {
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      sub_1ABF24B94();
      v14 = *(v18 + 16);
      sub_1ABC6C7E8();
      sub_1ABF24BD4();
      sub_1ABC6C7E8();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      v13 += 8;
      --v12;
    }

    while (v12);
  }

  v15 = objc_allocWithZone(GDGraphLocationLatLongRelationship);
  sub_1ABC6A78C(v16, v8);
}

void __swiftcall CustomGraphLocationAddressRelationship.toObjectiveCGraphObject()(GDGraphLocationAddressRelationship *__return_ptr retstr)
{
  v16 = v1[2];
  v29 = v1[3];
  v11 = v1[5];
  v12 = v1[4];
  v2 = v1[7];
  v28 = v1[6];
  v10 = v1[8];
  v27 = v1[9];
  v13 = v1[10];
  v9 = v1[11];
  v26 = v1[12];
  v14 = v1[13];
  v8 = v1[14];
  v25 = v1[15];
  v15 = v1[16];
  v7 = v1[17];
  v3 = v1[20];
  v23 = v1[21];
  v24 = v1[18];
  v4 = v1[23];
  v17 = v1[19];
  v18 = v1[22];
  v22 = v1[24];
  v19 = v1[25];
  v6 = v1[26];
  v20 = v1[28];
  v21 = v1[27];
  objc_allocWithZone(GDGraphLocationAddressRelationship);

  sub_1ABC6A3D4(v29, v12, v28, v2, v27, v13, v26, v14, v25, v15, v24, v17, v23, v18, v22, v5, v21, v20);
}

void __swiftcall CustomGraphSportsTeam.toObjectiveCGraphObject()(GDGraphSportsTeam *__return_ptr retstr)
{
  sub_1ABC6C4E0();
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v8 = v1[6];
  v7 = v1[7];
  v9 = v1[9];
  v28 = v1[8];
  v29 = v1[5];
  v10 = v1[10];
  sub_1ABAFF390(0, &qword_1EB4D5F60, off_1E7960180);
  if ([objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
    v27 = v10;
    v11 = *(v6 + 16);
    if (v11)
    {
      v24 = v9;
      v25 = v7;
      v26 = v8;
      v33 = MEMORY[0x1E69E7CC0];

      sub_1ABF24BC4();
      v12 = (v6 + 112);
      do
      {
        v13 = *(v12 - 8);
        v31 = *(v12 - 7);
        v14 = *(v12 - 6);
        v15 = *(v12 - 5);
        v16 = *(v12 - 3);
        v30 = *(v12 - 4);
        v17 = *(v12 - 2);
        v18 = *(v12 - 1);
        v19 = *v12;
        v12 += 11;
        objc_allocWithZone(GDGraphIdentifierRelationship);

        sub_1ABC6A12C(v31, v14, v30, v16, v18, v19);
        sub_1ABF24B94();
        sub_1ABA9E334(v33);
        sub_1ABA9E200();
        sub_1ABF24BA4();
        --v11;
      }

      while (v11);
      v32 = v33;
      v7 = v25;
      v8 = v26;
      v20 = v24;
    }

    else
    {

      v32 = MEMORY[0x1E69E7CC0];
      v20 = v9;
    }

    objc_allocWithZone(GDGraphSportsTeam);

    sub_1ABAA2654();
    sub_1ABC68EF8(v21, v22, v23, v32, v8, v7, v20, v27);
    sub_1ABC6C4C4();
  }

  else
  {
    __break(1u);
  }
}

void __swiftcall CustomGraphHandleRelationship.toObjectiveCGraphObject()(GDGraphHandleRelationship *__return_ptr retstr)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = objc_allocWithZone(GDGraphHandleRelationship);

  v8 = sub_1ABA7E79C();
  sub_1ABC6A044(v8, v9);
}

void __swiftcall CustomGraphVisualIdentifierRelationship.toObjectiveCGraphObject()(GDGraphVisualIdentifierRelationship *__return_ptr retstr)
{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[7];
  v13 = v1[6];
  v14 = v1[3];
  v6 = v1[8];
  v12 = v1[9];
  v8 = v1[10];
  v7 = v1[11];
  v10 = v1[12];
  v9 = v1[13];
  v11 = objc_allocWithZone(GDGraphVisualIdentifierRelationship);

  sub_1ABC6A854(v14, v3, v13, v5, v12, v8, v10, v9);
}

GDGraphTopic __swiftcall CustomGraphTopic.toObjectiveCGraphObject()()
{
  v0 = sub_1ABC66210(&qword_1EB4D5F18, off_1E79601A0, off_1E7960198);
  result._allQid = v3;
  result._qid = v2;
  result._entityIdentifier = v1;
  result.super.isa = v0;
  return result;
}

void __swiftcall CustomGraphSong.toObjectiveCGraphObject()(GDGraphSong *__return_ptr retstr)
{
  v2 = *v1;
  v51 = v1[4];
  v52 = v1[1];
  v3 = v1[6];
  v46 = v1[5];
  v47 = v1[2];
  v54 = v1[9];
  v55 = v1[3];
  v49 = v1[10];
  v50 = v1[7];
  v44 = v1[11];
  v45 = v1[8];
  v53 = v1[12];
  v39 = v1[13];
  v4 = v1[16];
  v5 = v1[17];
  v7 = v1[18];
  v6 = v1[19];
  v41 = v1[20];
  v43 = v1[21];
  v8 = v1[23];
  v56 = v1[22];
  v42 = v1[24];
  v48 = v1[25];
  v9 = v1[26];
  v40 = v1[27];
  v10 = v1[28];
  sub_1ABAFF390(0, &qword_1EB4D6080, off_1E7960148);
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (v11)
  {
    v37 = v11;
    if (v4)
    {
      v12 = objc_allocWithZone(GDGraphQuantityRelationship);
      sub_1ABA94A78();

      v36 = sub_1ABC6A284(v5, v7);
    }

    else
    {

      v36 = 0;
    }

    v13 = *(v6 + 16);
    v38 = v3;
    if (v13)
    {
      v35 = v10;
      sub_1ABC6C47C(MEMORY[0x1E69E7CC0]);
      sub_1ABF24BC4();
      v14 = (v6 + 112);
      do
      {
        v15 = *(v14 - 8);
        v17 = *(v14 - 6);
        v16 = *(v14 - 5);
        v18 = *(v14 - 3);
        v57 = *(v14 - 4);
        v58 = *(v14 - 7);
        v20 = *(v14 - 2);
        v19 = *(v14 - 1);
        v21 = *v14;
        v14 += 11;
        objc_allocWithZone(GDGraphIdentifierRelationship);

        sub_1ABC6C788();
        sub_1ABC6A12C(v22, v23, v24, v25, v26, v21);
        sub_1ABF24B94();
        sub_1ABA8965C();
        sub_1ABA9E200();
        sub_1ABF24BA4();
        --v13;
      }

      while (v13);
      v59 = v60;
      v10 = v35;
    }

    else
    {
      v59 = MEMORY[0x1E69E7CC0];
    }

    v27 = *(v39 + 16);
    v28 = v48;
    if (v27)
    {

      sub_1ABF24BC4();
      v29 = (v39 + 64);
      do
      {
        v30 = *(v29 - 2);
        v31 = *(v29 - 1);
        v32 = *v29;
        v29 += 5;
        objc_allocWithZone(GDGraphQuantityRelationship);

        v33 = sub_1ABA7C298();
        sub_1ABC6A284(v33, v34);
        sub_1ABF24B94();
        sub_1ABA8965C();
        sub_1ABA9E200();
        sub_1ABF24BA4();
        --v27;
      }

      while (v27);

      v28 = v48;
    }

    else
    {
    }

    objc_allocWithZone(GDGraphSong);

    sub_1ABC69744(v37, v47, v55, v46, v38, v45, v54, v44, v53, v36, v59, v43, v56, v42, v28, v40, v10);
  }

  else
  {
    __break(1u);
  }
}

GDGraphQuantityRelationship __swiftcall CustomGraphQuantityRelationship.toObjectiveCGraphObject()()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = objc_allocWithZone(GDGraphQuantityRelationship);

  v5 = sub_1ABC6A284(v2, v3);
  result._allQuantity = v7;
  result._quantity = v6;
  result.super.isa = v5;
  return result;
}

GDGraphActivityEventType __swiftcall CustomGraphActivityEventType.toObjectiveCGraphObject()()
{
  v0 = sub_1ABC66210(&qword_1EB4D5F50, off_1E795FF08, off_1E795FF00);
  result._allName = v3;
  result._name = v2;
  result._entityIdentifier = v1;
  result.super.isa = v0;
  return result;
}

id sub_1ABC66210(unint64_t *a1, uint64_t *a2, Class *a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  sub_1ABAFF390(0, a1, a2);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (result)
  {
    v10 = result;
    v11 = objc_allocWithZone(*a3);

    return sub_1ABC69AD4(v10, v7, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

GDGraphModeOfTransportation __swiftcall CustomGraphModeOfTransportation.toObjectiveCGraphObject()()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_1ABAFF390(0, &qword_1EB4D5F70, off_1E7960098);
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (v4)
  {
    if (v3 == 8)
    {
      v8 = 0;
    }

    else
    {
      v8 = qword_1ABF4FEF0[v3];
    }

    sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
    sub_1ABC501D0(v8, v3 == 8);
    v9 = *(v1 + 16);
    if (v9)
    {
      v15 = MEMORY[0x1E69E7CC0];

      sub_1ABF24BC4();
      v10 = 32;
      do
      {
        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        sub_1ABF24B94();
        v11 = *(v15 + 16);
        sub_1ABF24BD4();
        sub_1ABF24BE4();
        sub_1ABF24BA4();
        ++v10;
        --v9;
      }

      while (v9);
    }

    v12 = objc_allocWithZone(GDGraphModeOfTransportation);
    v13 = sub_1ABA7E79C();
    v4 = sub_1ABC69B6C(v13, v14);
  }

  else
  {
    __break(1u);
  }

  result._allTransportationType = v7;
  result._transportationType = v6;
  result._entityIdentifier = v5;
  result.super.isa = v4;
  return result;
}

void sub_1ABC66484()
{
  sub_1ABA7E2A8();
  v2 = v1;
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[6];
  sub_1ABAFF390(0, v10, v11);
  if ([objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
    objc_allocWithZone(*v2);

    sub_1ABC69C10();
    sub_1ABA7BC1C();
  }

  else
  {
    __break(1u);
  }
}

id sub_1ABC66558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1ABA94A78();
  sub_1ABAA2654();
  return sub_1ABC6A310(v10, v11, v12, a4, a5, a6);
}

id sub_1ABC665F4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1ABA7D0F8();
  return sub_1ABC6C1D8(v1, v2);
}

id sub_1ABC6667C(void *a1, void (*a2)(uint64_t *__return_ptr, id))
{
  a2(&v6, [a1 intValue]);
  v4 = [v2 initWithValue_];

  if (v4)
  {
  }

  return v4;
}

id _sSo28GDGraphEventEntityIdentifierC20IntelligencePlatformE012fromGDEntityD0ABSgSo0hD0C_tcfc_0(void *a1)
{
  sub_1ABC4A834(&v5, [a1 intValue]);
  v3 = [v1 initWithValue_];

  if (v3)
  {
  }

  return v3;
}

id _sSo27GDGraphSongEntityIdentifierC20IntelligencePlatformE012fromGDEntityD0ABSgSo0hD0C_tcfC_0()
{
  sub_1ABA9EFD8();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initFromGDEntityIdentifier_];

  return v1;
}

id sub_1ABC6727C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  sub_1ABAFF390(0, &qword_1EB4D60E8, off_1E7960030);
  v20 = sub_1ABF240C4();

  if (a4)
  {
    v19 = sub_1ABF23BD4();
  }

  else
  {
    v19 = 0;
  }

  sub_1ABAD219C(&qword_1EB4D5F38, &qword_1ABF4F360);
  v18 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D5F40, &qword_1ABF4F368);
  v17 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D5F48, &qword_1ABF4F370);
  v11 = sub_1ABF240C4();

  v14 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D6108, off_1E795FF80);
  v15 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
  v16 = sub_1ABF240C4();

  v12 = sub_1ABF240C4();

  v22 = [v21 initWithEntityIdentifierField:a1 eventTypesField:v20 nameField:v19 dateField:a5 attendeesField:v18 cooccurringEventsField:v17 locationsField:v11 startLocationField:a9 endLocationField:a10 allNameField:v14 allDateField:v15 allStartLocationField:v16 allEndLocationField:v12];

  return v22;
}

id sub_1ABC67508(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14)
{
  sub_1ABAFF390(0, &qword_1EB4D60E8, off_1E7960030);
  v28 = sub_1ABF240C4();

  if (a4)
  {
    v27 = sub_1ABF23BD4();
  }

  else
  {
    v27 = 0;
  }

  sub_1ABAD219C(&qword_1EB4D5F38, &qword_1ABF4F360);
  v24 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D5F40, &qword_1ABF4F368);
  v22 = sub_1ABF240C4();

  v16 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D5F48, &qword_1ABF4F370);
  v17 = sub_1ABF240C4();

  v18 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D6108, off_1E795FF80);
  v19 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
  v20 = sub_1ABF240C4();

  v21 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
  v23 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v25 = sub_1ABF240C4();

  v26 = sub_1ABF240C4();

  v30 = [v29 initWithEntityIdentifierField:a1 eventTypesField:v28 nameField:v27 dateField:a5 attendeesField:v24 cooccurringEventsField:v22 subEventsField:v16 locationsField:v17 startLocationField:a10 endLocationField:a11 activityTypeObjectField:a12 activityTypeField:a13 confidenceField:a14 allNameField:v18 allDateField:v19 allStartLocationField:v20 allEndLocationField:v21 allActivityTypeObjectField:v23 allActivityTypeField:v25 allConfidenceField:v26];

  return v30;
}

id sub_1ABC678DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  sub_1ABAFF390(0, &qword_1EB4D60E8, off_1E7960030);
  v19 = sub_1ABF240C4();

  if (a4)
  {
    v18 = sub_1ABF23BD4();
  }

  else
  {
    v18 = 0;
  }

  sub_1ABAD219C(&qword_1EB4D5F40, &qword_1ABF4F368);
  v17 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D5F48, &qword_1ABF4F370);
  v16 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D5F38, &qword_1ABF4F360);
  v13 = sub_1ABF240C4();

  v14 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D6108, off_1E795FF80);
  v15 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
  v10 = sub_1ABF240C4();

  v11 = sub_1ABF240C4();

  v21 = [v20 initWithEntityIdentifierField:a1 eventTypesField:v19 nameField:v18 dateField:a5 cooccurringEventsField:v17 locationsField:v16 startLocationField:a8 endLocationField:a9 teamsField:v13 allNameField:v14 allDateField:v15 allStartLocationField:v10 allEndLocationField:v11];

  return v21;
}

id sub_1ABC67B68(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14)
{
  if (a3)
  {
    v26 = sub_1ABF23BD4();
  }

  else
  {
    v26 = 0;
  }

  sub_1ABAD219C(&qword_1EB4D5F38, &qword_1ABF4F360);
  v24 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D5F48, &qword_1ABF4F370);
  v21 = sub_1ABF240C4();

  v33 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D6108, off_1E795FF80);
  v15 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
  v16 = sub_1ABF240C4();

  v17 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
  v18 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v19 = sub_1ABF240C4();

  v20 = sub_1ABF240C4();

  v22 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D5F70, off_1E7960098);
  v23 = sub_1ABF240C4();

  v25 = sub_1ABF240C4();

  v28 = [v27 initWithEntityIdentifierField:a1 nameField:v26 dateField:a4 attendeesField:v24 locationsField:v21 startLocationField:a7 endLocationField:a8 activityTypeObjectField:a9 activityTypeField:a10 confidenceField:a11 uncertaintyField:a12 modeOfTransportationField:a13 transportationTypeField:a14 allNameField:v33 allDateField:v15 allStartLocationField:v16 allEndLocationField:v17 allActivityTypeObjectField:v18 allActivityTypeField:v19 allConfidenceField:v20 allUncertaintyField:v22 allModeOfTransportationField:v23 allTransportationTypeField:v25];

  return v28;
}

id sub_1ABC67F50(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, void *a11)
{
  if (a3)
  {
    sub_1ABAA06A0(a1, a2);
    v21 = sub_1ABF23BD4();
  }

  else
  {
    v21 = 0;
  }

  sub_1ABAD219C(&qword_1EB4D5F38, &qword_1ABF4F360);
  v20 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D5F48, &qword_1ABF4F370);
  v19 = sub_1ABF240C4();

  v12 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D6108, off_1E795FF80);
  v13 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
  sub_1ABA979F8();
  v14 = sub_1ABF240C4();

  v15 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
  sub_1ABA89740();
  v16 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v17 = sub_1ABF240C4();

  v18 = sub_1ABF240C4();

  v23 = [v22 initWithEntityIdentifierField:a1 nameField:v21 dateField:a4 attendeesField:v20 locationsField:v19 startLocationField:a7 endLocationField:a8 activityTypeObjectField:a9 activityTypeField:a10 confidenceField:a11 allNameField:v12 allDateField:v13 allStartLocationField:v14 allEndLocationField:v15 allActivityTypeObjectField:v16 allActivityTypeField:v17 allConfidenceField:v18];

  return v23;
}

id sub_1ABC68240(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12)
{
  if (a3)
  {
    v23 = sub_1ABF23BD4();
  }

  else
  {
    v23 = 0;
  }

  sub_1ABAD219C(&qword_1EB4D5F38, &qword_1ABF4F360);
  v22 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D5F48, &qword_1ABF4F370);
  v21 = sub_1ABF240C4();

  v13 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D6108, off_1E795FF80);
  v14 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
  v15 = sub_1ABF240C4();

  v16 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
  v17 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v18 = sub_1ABF240C4();

  v19 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D5FE0, &qword_1ABF4F378);
  v20 = sub_1ABF240C4();

  v25 = [v24 initWithEntityIdentifierField:a1 nameField:v23 dateField:a4 attendeesField:v22 locationsField:v21 startLocationField:a7 endLocationField:a8 activityTypeObjectField:a9 activityTypeField:a10 confidenceField:a11 softwareField:a12 allNameField:v13 allDateField:v14 allStartLocationField:v15 allEndLocationField:v16 allActivityTypeObjectField:v17 allActivityTypeField:v18 allConfidenceField:v19 allSoftwareField:v20];

  return v25;
}

id sub_1ABC6858C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13)
{
  if (a3)
  {
    v25 = sub_1ABF23BD4();
  }

  else
  {
    v25 = 0;
  }

  sub_1ABAD219C(&qword_1EB4D5F38, &qword_1ABF4F360);
  v24 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D5F48, &qword_1ABF4F370);
  v22 = sub_1ABF240C4();

  if (a13)
  {
    v13 = sub_1ABF23BD4();
  }

  else
  {
    v13 = 0;
  }

  v15 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D6108, off_1E795FF80);
  v16 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
  v17 = sub_1ABF240C4();

  v18 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
  v19 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v20 = sub_1ABF240C4();

  v21 = sub_1ABF240C4();

  v23 = sub_1ABF240C4();

  v27 = [v26 initWithEntityIdentifierField:a1 nameField:v25 dateField:a4 attendeesField:v24 locationsField:v22 startLocationField:a7 endLocationField:a8 activityTypeObjectField:a9 activityTypeField:a10 confidenceField:a11 behaviorTypeField:v13 allNameField:v15 allDateField:v16 allStartLocationField:v17 allEndLocationField:v18 allActivityTypeObjectField:v19 allActivityTypeField:v20 allConfidenceField:v21 allBehaviorTypeField:v23];

  return v27;
}

id sub_1ABC688F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    v15 = sub_1ABF23BD4();
  }

  else
  {
    v15 = 0;
  }

  sub_1ABAFF390(0, &qword_1EB4D6108, off_1E795FF80);
  v14 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D60E8, off_1E7960030);
  v13 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D5F38, &qword_1ABF4F360);
  v12 = sub_1ABF240C4();

  v5 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D5F48, &qword_1ABF4F370);
  v6 = sub_1ABF240C4();

  v10 = sub_1ABF240C4();

  v11 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v7 = sub_1ABF240C4();

  v8 = [v16 initWithEntityIdentifierField:a1 nameField:v15 datesField:v14 isAllDayField:a5 identifiersField:v13 attendeesField:v12 organizersField:v5 locationsField:v6 sgeventTypeField:v10 allNameField:v11 allIsAllDayField:v7];

  return v8;
}

id sub_1ABC68B50(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  if (a4)
  {
    v10 = sub_1ABF23BD4();
  }

  else
  {
    v10 = 0;
  }

  sub_1ABAFF390(0, &qword_1EB4D6108, off_1E795FF80);
  v11 = sub_1ABF240C4();

  v12 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D6088, &qword_1ABF4F380);
  v13 = sub_1ABF240C4();

  v14 = [v6 initWithEntityIdentifierField:a1 dateField:a2 playbackStateField:v10 songField:a5 allDateField:v11 allPlaybackStateField:v12 allSongField:v13];

  return v14;
}

id sub_1ABC68CA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a3)
  {
    v20 = sub_1ABF23BD4();
  }

  else
  {
    v20 = 0;
  }

  if (a5)
  {
    v19 = sub_1ABF23BD4();
  }

  else
  {
    v19 = 0;
  }

  sub_1ABAFF390(0, &qword_1EB4D60E8, off_1E7960030);
  v18 = sub_1ABF240C4();

  if (a10)
  {
    v11 = sub_1ABF23BD4();
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_1ABF240C4();

  v16 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D60F8, off_1E7960050);
  v17 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D6100, off_1E7960040);
  v13 = sub_1ABF240C4();

  v14 = sub_1ABF240C4();

  v22 = [v21 initWithEntityIdentifierField:a1 nameField:v20 locationLabelField:v19 latLongField:a6 addressField:a7 identifiersField:v18 muidField:v11 allNameField:v12 allLocationLabelField:v16 allLatLongField:v17 allAddressField:v13 allMuidField:v14];

  return v22;
}

id sub_1ABC68EF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v10 = sub_1ABF23BD4();
  }

  else
  {
    v10 = 0;
  }

  sub_1ABAFF390(0, &qword_1EB4D60E8, off_1E7960030);
  v11 = sub_1ABF240C4();

  if (!a6)
  {
    v12 = 0;
    if (a8)
    {
      goto LABEL_6;
    }

LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v12 = sub_1ABF23BD4();

  if (!a8)
  {
    goto LABEL_8;
  }

LABEL_6:
  v13 = sub_1ABF23BD4();

LABEL_9:
  v14 = sub_1ABF240C4();

  v15 = sub_1ABF240C4();

  v16 = sub_1ABF240C4();

  v17 = [v19 initWithEntityIdentifierField:a1 nameField:v10 identifiersField:v11 qidField:v12 umcIdentifierField:v13 allNameField:v14 allQidField:v15 allUmcIdentifierField:v16];

  return v17;
}

id sub_1ABC690A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v47 = sub_1ABF240C4();

  v46 = sub_1ABF240C4();

  v45 = sub_1ABF240C4();

  v44 = sub_1ABF240C4();

  v43 = sub_1ABF240C4();

  v42 = sub_1ABF240C4();

  v58 = sub_1ABF240C4();

  v41 = sub_1ABF240C4();

  v56 = sub_1ABF240C4();

  v40 = sub_1ABF240C4();

  v39 = sub_1ABF240C4();

  v59 = sub_1ABF240C4();

  v27 = sub_1ABF21EB4();
  v28 = 0;
  if (sub_1ABA7E1E0(a14, 1, v27) != 1)
  {
    v28 = sub_1ABF21E34();
    (*(*(v27 - 8) + 8))(a14, v27);
  }

  if (a16)
  {
    v57 = sub_1ABF23BD4();
  }

  else
  {
    v57 = 0;
  }

  sub_1ABAD219C(&qword_1EB4D6098, &qword_1ABF4F388);
  v55 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D5F48, &qword_1ABF4F370);
  v54 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D60A0, &qword_1ABF4F390);
  v53 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D60A8, &qword_1ABF4F398);
  v52 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D6110, off_1E7960018);
  v51 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D60E8, off_1E7960030);
  v29 = sub_1ABF240C4();

  if (a27)
  {
    v30 = sub_1ABF23BD4();
  }

  else
  {
    v30 = 0;
  }

  sub_1ABAFF390(0, &qword_1EB4D6118, off_1E79601E0);
  v32 = sub_1ABF240C4();

  v33 = sub_1ABF240C4();

  v34 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v35 = sub_1ABF240C4();

  v36 = sub_1ABF240C4();

  v37 = sub_1ABF240C4();

  v38 = sub_1ABF240C4();

  v49 = [v48 initWithEntityIdentifierField:a1 fullNamesField:v47 prefixesField:v46 givenNamesField:v45 phoneticGivenNamesField:v44 middleNamesField:v43 phoneticMiddleNamesField:v42 familyNamesField:v58 phoneticFamilyNamesField:v41 previousFamilyNamesField:v56 suffixesField:v40 nicknamesField:v39 birthNamesField:v59 birthdayField:v28 occupationField:v57 isFavoriteField:a17 isCurrentUserField:a18 isInferredDeviceUserField:a19 associatedPeopleField:v55 locationsField:v54 employersField:v53 topicsField:v52 handlesField:v51 identifiersField:v29 contactIdentifierField:v30 visualIdentifiersField:v32 allBirthdayField:v33 allOccupationField:v34 allIsFavoriteField:v35 allIsCurrentUserField:v36 allIsInferredDeviceUserField:v37 allContactIdentifierField:v38];

  return v49;
}

id sub_1ABC69744(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a3)
  {
    v35 = sub_1ABF23BD4();

    if (a5)
    {
LABEL_3:
      v34 = sub_1ABF23BD4();

      goto LABEL_6;
    }
  }

  else
  {
    v35 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v34 = 0;
LABEL_6:
  if (a7)
  {
    v33 = sub_1ABF23BD4();
  }

  else
  {
    v33 = 0;
  }

  if (a9)
  {
    v32 = sub_1ABF23BD4();
  }

  else
  {
    v32 = 0;
  }

  sub_1ABAFF390(0, &qword_1EB4D60E8, off_1E7960030);
  v31 = sub_1ABF240C4();

  if (a13)
  {
    v30 = sub_1ABF23BD4();
  }

  else
  {
    v30 = 0;
  }

  if (!a15)
  {
    v29 = 0;
    if (a17)
    {
      goto LABEL_17;
    }

LABEL_19:
    v28 = 0;
    goto LABEL_20;
  }

  v29 = sub_1ABF23BD4();

  if (!a17)
  {
    goto LABEL_19;
  }

LABEL_17:
  v28 = sub_1ABF23BD4();

LABEL_20:
  v20 = sub_1ABF240C4();

  v21 = sub_1ABF240C4();

  v22 = sub_1ABF240C4();

  v23 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D60F0, off_1E79600D0);
  v24 = sub_1ABF240C4();

  v25 = sub_1ABF240C4();

  v26 = sub_1ABF240C4();

  v27 = sub_1ABF240C4();

  v37 = [v36 initWithEntityIdentifierField:a1 nameField:v35 artistNameField:v34 albumNameField:v33 genreField:v32 durationField:a10 identifiersField:v31 songAdamIdField:v30 albumAdamIdField:v29 artistAdamIdField:v28 allNameField:v20 allArtistNameField:v21 allAlbumNameField:v22 allGenreField:v23 allDurationField:v24 allSongAdamIdField:v25 allAlbumAdamIdField:v26 allArtistAdamIdField:v27];

  return v37;
}

id sub_1ABC69AD4(void *a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v3 = a3;
    sub_1ABAA06A0(a1, a2);
    v5 = sub_1ABF23BD4();
  }

  else
  {
    v5 = 0;
  }

  sub_1ABF240C4();
  sub_1ABA7C014();
  v6 = sub_1ABC6C77C();
  v8 = [v6 v7];

  return v8;
}

id sub_1ABC69B6C(void *a1, void *a2)
{
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v5 = sub_1ABF240C4();

  v6 = [v2 initWithEntityIdentifierField:a1 transportationTypeField:a2 allTransportationTypeField:v5];

  return v6;
}

void sub_1ABC69C10()
{
  sub_1ABA7E2A8();
  v4 = v3;
  v5 = v2;
  v6 = v0;
  if (!v7)
  {
    v8 = 0;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  sub_1ABAA06A0(v0, v1);
  v8 = sub_1ABF23BD4();

  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_1ABF23BD4();

LABEL_6:
  v10 = sub_1ABF240C4();

  sub_1ABF240C4();
  sub_1ABA7C014();
  v11 = sub_1ABC6C77C();
  [v11 v12];

  sub_1ABA7BC1C();
}

id sub_1ABC69D04(void *a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  sub_1ABAFF390(0, a3, a4);
  v5 = sub_1ABF240C4();

  v6 = sub_1ABC6C814();

  return v6;
}

void sub_1ABC69D78()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  if (v4)
  {
    v5 = sub_1ABF23BD4();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1ABF240C4();

  sub_1ABAA2654();
  sub_1ABAFF390(v7, v8, v9);
  sub_1ABF240C4();
  sub_1ABA7C014();
  v10 = sub_1ABC6C77C();
  [v10 v11];

  sub_1ABA7BC1C();
}

id sub_1ABC69E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1ABF21EB4();
  v9 = 0;
  if (sub_1ABA7E1E0(a1, 1, v8) != 1)
  {
    v9 = sub_1ABF21E34();
    (*(*(v8 - 8) + 8))(a1, v8);
  }

  if (sub_1ABA7E1E0(a2, 1, v8) == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_1ABF21E34();
    (*(*(v8 - 8) + 8))(a2, v8);
  }

  if (sub_1ABA7E1E0(a3, 1, v8) == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_1ABF21E34();
    (*(*(v8 - 8) + 8))(a3, v8);
  }

  v12 = sub_1ABF240C4();

  v13 = sub_1ABF240C4();

  v14 = sub_1ABF240C4();

  v15 = [v4 initWithStartDateField:v9 endDateField:v10 occurrenceDateField:v11 allStartDateField:v12 allEndDateField:v13 allOccurrenceDateField:v14];

  return v15;
}

id sub_1ABC6A044(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1ABF23BD4();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_1ABF240C4();

  v5 = sub_1ABF240C4();

  v6 = sub_1ABF240C4();

  v7 = [v2 initWithLabelField:v3 emailAddressesField:v4 phoneNumbersField:v5 allLabelField:v6];

  return v7;
}

id sub_1ABC6A12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v9 = sub_1ABF23BD4();
  }

  else
  {
    v9 = 0;
  }

  if (!a4)
  {
    v10 = 0;
    if (a6)
    {
      goto LABEL_6;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v10 = sub_1ABF23BD4();

  if (!a6)
  {
    goto LABEL_8;
  }

LABEL_6:
  v11 = sub_1ABF23BD4();

LABEL_9:
  v12 = sub_1ABF240C4();

  v13 = sub_1ABF240C4();

  v14 = sub_1ABF240C4();

  v15 = [v6 initWithTypeField:v9 idField:v10 hasProfileImageField:v11 allTypeField:v12 allIdField:v13 allHasProfileImageField:v14];

  return v15;
}

id sub_1ABC6A284(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1ABF23BD4();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_1ABF240C4();

  v5 = [v2 initWithQuantityField:v3 allQuantityField:v4];

  return v5;
}

id sub_1ABC6A310(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2)
  {
    v8 = sub_1ABF23BD4();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1ABF240C4();

  sub_1ABF240C4();
  sub_1ABA7C014();
  v10 = sub_1ABC6C77C();
  v12 = [v10 v11];

  return v12;
}

id sub_1ABC6A3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a2)
  {
    v39 = sub_1ABF23BD4();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v38 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v39 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v38 = sub_1ABF23BD4();

  if (a6)
  {
LABEL_4:
    v37 = sub_1ABF23BD4();

    goto LABEL_8;
  }

LABEL_7:
  v37 = 0;
LABEL_8:
  if (a8)
  {
    v36 = sub_1ABF23BD4();
  }

  else
  {
    v36 = 0;
  }

  if (a10)
  {
    v35 = sub_1ABF23BD4();
  }

  else
  {
    v35 = 0;
  }

  if (a12)
  {
    v34 = sub_1ABF23BD4();
  }

  else
  {
    v34 = 0;
  }

  if (a14)
  {
    v33 = sub_1ABF23BD4();
  }

  else
  {
    v33 = 0;
  }

  if (!a16)
  {
    v32 = 0;
    if (a18)
    {
      goto LABEL_22;
    }

LABEL_24:
    v29 = 0;
    goto LABEL_25;
  }

  v32 = sub_1ABF23BD4();

  if (!a18)
  {
    goto LABEL_24;
  }

LABEL_22:
  v29 = sub_1ABF23BD4();

LABEL_25:
  v21 = sub_1ABF240C4();

  v23 = sub_1ABF240C4();

  v24 = sub_1ABF240C4();

  v25 = sub_1ABF240C4();

  v26 = sub_1ABF240C4();

  v27 = sub_1ABF240C4();

  v28 = sub_1ABF240C4();

  v30 = sub_1ABF240C4();

  v31 = sub_1ABF240C4();

  v41 = [v40 initWithStreetField:v39 subLocalityField:v38 cityField:v37 subAdministrativeAreaField:v36 stateField:v35 postalCodeField:v34 countryField:v33 isoCountryCodeField:v32 inferredSemanticLabelField:v29 allStreetField:v21 allSubLocalityField:v23 allCityField:v24 allSubAdministrativeAreaField:v25 allStateField:v26 allPostalCodeField:v27 allCountryField:v28 allIsoCountryCodeField:v30 allInferredSemanticLabelField:v31];

  return v41;
}

id sub_1ABC6A78C(void *a1, void *a2)
{
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v5 = sub_1ABF240C4();

  v6 = sub_1ABF240C4();

  v7 = [v2 initWithLatitudeField:a1 longitudeField:a2 allLatitudeField:v5 allLongitudeField:v6];

  return v7;
}

id sub_1ABC6A854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v20 = sub_1ABF23BD4();

    if (a4)
    {
LABEL_3:
      v11 = sub_1ABF23BD4();

      goto LABEL_6;
    }
  }

  else
  {
    v20 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
LABEL_6:
  if (!a6)
  {
    v12 = 0;
    if (a8)
    {
      goto LABEL_8;
    }

LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  v12 = sub_1ABF23BD4();

  if (!a8)
  {
    goto LABEL_10;
  }

LABEL_8:
  v13 = sub_1ABF23BD4();

LABEL_11:
  v14 = sub_1ABF240C4();

  v15 = sub_1ABF240C4();

  v16 = sub_1ABF240C4();

  v17 = sub_1ABF240C4();

  v18 = [v21 initWithVisualIdentifierField:v20 associationReasonField:v11 suggestedNameField:v12 suggestedRelationshipToDeviceOwnerField:v13 allVisualIdentifierField:v14 allAssociationReasonField:v15 allSuggestedNameField:v16 allSuggestedRelationshipToDeviceOwnerField:v17];

  return v18;
}

uint64_t sub_1ABC6AA04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomGraphDateRelationship(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABC6AA68(uint64_t a1)
{
  v2 = type metadata accessor for CustomGraphDateRelationship(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABC6AAC4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1ABAA06A0(a1, a2);
  v5 = sub_1ABAD219C(v3, v4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1ABC6AC44(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86DAF8, type metadata accessor for CustomGraphEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6AC9C(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86D278, type metadata accessor for CustomGraphActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6ACF4(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86D1D0, type metadata accessor for CustomGraphSportsGameEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6AD4C(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86C5D0, type metadata accessor for CustomGraphTransportationActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6ADA4(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86CA68, type metadata accessor for CustomGraphWorkingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6ADFC(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86CB80, type metadata accessor for CustomGraphMeetingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6AE54(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86CDB8, type metadata accessor for CustomGraphEatingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6AEAC(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86C810, type metadata accessor for CustomGraphWatchingTVActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6AF04(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86C618, type metadata accessor for CustomGraphCommunicatingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6AF5C(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86CA00, type metadata accessor for CustomGraphShoppingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6AFB4(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86C7E8, type metadata accessor for CustomGraphMindfulnessActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B00C(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86C9E0, type metadata accessor for CustomGraphSleepingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B064(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86C8F8, type metadata accessor for CustomGraphTravelingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B0BC(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86CB50, type metadata accessor for CustomGraphReadingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B114(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86C798, type metadata accessor for CustomGraphVacationingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B16C(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86CD90, type metadata accessor for CustomGraphGamingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B1C4(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86C7C0, type metadata accessor for CustomGraphSocializingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B21C(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86C9B8, type metadata accessor for CustomGraphWakingUpActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B274(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86C880, type metadata accessor for CustomGraphGoingToBedActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B2CC(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86C8A8, type metadata accessor for CustomGraphExercisingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B324(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86CC50, type metadata accessor for CustomGraphCommuteActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B37C(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86CDD8, type metadata accessor for CustomGraphDiningActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B3D4(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86C3B0, type metadata accessor for CustomGraphAttendingAPerformanceActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B42C(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86C830, type metadata accessor for CustomGraphStationaryActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B484(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86C5F0, type metadata accessor for CustomGraphLocationVisitActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B4DC(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86CA88, type metadata accessor for CustomGraphWalkingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B534(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86CB30, type metadata accessor for CustomGraphRunningActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B58C(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86C998, type metadata accessor for CustomGraphBicyclingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B5E4(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86CD70, type metadata accessor for CustomGraphHikingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B63C(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86C858, type metadata accessor for CustomGraphOnThePhoneActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B694(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86CA20, type metadata accessor for CustomGraphFacetimeActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B6EC(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86CC28, type metadata accessor for CustomGraphDrivingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B744(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86CA40, type metadata accessor for CustomGraphBehaviorActivityEvent);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC6B79C(uint64_t a1)
{
  result = sub_1ABC6B7C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC6B7C4()
{
  result = qword_1ED86D258;
  if (!qword_1ED86D258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86D258);
  }

  return result;
}

uint64_t sub_1ABC6B818(uint64_t a1)
{
  result = sub_1ABC6BD84(qword_1EB4D1B50, type metadata accessor for CustomGraphSongEvent);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC6B870(uint64_t a1)
{
  result = sub_1ABC6B898();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC6B898()
{
  result = qword_1ED86D420;
  if (!qword_1ED86D420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86D420);
  }

  return result;
}

unint64_t sub_1ABC6B8EC(uint64_t a1)
{
  result = sub_1ABC6B914();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC6B914()
{
  result = qword_1ED86D2B0;
  if (!qword_1ED86D2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86D2B0);
  }

  return result;
}

unint64_t sub_1ABC6B968(uint64_t a1)
{
  result = sub_1ABC6B990();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC6B990()
{
  result = qword_1ED86D380;
  if (!qword_1ED86D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86D380);
  }

  return result;
}

uint64_t sub_1ABC6B9E4(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86D6C8, type metadata accessor for CustomGraphPerson);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC6BA3C(uint64_t a1)
{
  result = sub_1ABC6BA64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC6BA64()
{
  result = qword_1ED86DAD8;
  if (!qword_1ED86DAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86DAD8);
  }

  return result;
}

unint64_t sub_1ABC6BAB8(uint64_t a1)
{
  result = sub_1ABC6BAE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC6BAE0()
{
  result = qword_1ED86DB30;
  if (!qword_1ED86DB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86DB30);
  }

  return result;
}

unint64_t sub_1ABC6BB34(uint64_t a1)
{
  result = sub_1ABC6BB5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC6BB5C()
{
  result = qword_1ED86CF38;
  if (!qword_1ED86CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86CF38);
  }

  return result;
}

unint64_t sub_1ABC6BBB0(uint64_t a1)
{
  result = sub_1ABC6BBD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC6BBD8()
{
  result = qword_1ED86CB60;
  if (!qword_1ED86CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86CB60);
  }

  return result;
}

unint64_t sub_1ABC6BC2C(uint64_t a1)
{
  result = sub_1ABC6BC54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC6BC54()
{
  result = qword_1ED86D410;
  if (!qword_1ED86D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86D410);
  }

  return result;
}

uint64_t sub_1ABC6BD2C(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1EB4D60B0, type metadata accessor for CustomGraphDateRelationship);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1ABC6BD84(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1ABA89740();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1ABC6BDF4(uint64_t a1)
{
  result = sub_1ABC6BE1C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABC6BE1C()
{
  result = qword_1EB4D60B8;
  if (!qword_1EB4D60B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D60B8);
  }

  return result;
}

unint64_t sub_1ABC6BE70(uint64_t a1)
{
  result = sub_1ABC6BE98();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABC6BE98()
{
  result = qword_1EB4D60C0;
  if (!qword_1EB4D60C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D60C0);
  }

  return result;
}

unint64_t sub_1ABC6BEEC(uint64_t a1)
{
  result = sub_1ABC6BF14();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABC6BF14()
{
  result = qword_1EB4D60C8;
  if (!qword_1EB4D60C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D60C8);
  }

  return result;
}

unint64_t sub_1ABC6BF94(uint64_t a1)
{
  result = sub_1ABC6BFBC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABC6BFBC()
{
  result = qword_1EB4D60D0;
  if (!qword_1EB4D60D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D60D0);
  }

  return result;
}

unint64_t sub_1ABC6C010(uint64_t a1)
{
  result = sub_1ABC6C038();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABC6C038()
{
  result = qword_1EB4D60D8;
  if (!qword_1EB4D60D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D60D8);
  }

  return result;
}

unint64_t sub_1ABC6C0E4(uint64_t a1)
{
  result = sub_1ABC6C10C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABC6C10C()
{
  result = qword_1EB4D60E0;
  if (!qword_1EB4D60E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D60E0);
  }

  return result;
}

uint64_t sub_1ABC6C18C(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

id sub_1ABC6C1D8(void *a1, uint64_t a2)
{
  sub_1ABAA06A0(a1, a2);
  v3 = sub_1ABF240C4();

  v4 = sub_1ABC6C814();

  return v4;
}

__n128 sub_1ABC6C320()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return *(v0 + 41);
}

uint64_t sub_1ABC6C36C@<X0>(uint64_t a1@<X8>)
{

  return sub_1ABB2E9FC(v3 + a1, v4, v1, v2);
}

uint64_t sub_1ABC6C3A8()
{
  v2 = *(*(v0 - 112) + 16);

  return sub_1ABF24BD4();
}

uint64_t sub_1ABC6C3C4()
{
  v2 = *(*(v0 - 120) + 16);

  return sub_1ABF24BD4();
}

uint64_t sub_1ABC6C3E0()
{

  return sub_1ABF24BE4();
}

uint64_t sub_1ABC6C3F8()
{
  *(v1 - 112) = v0;

  return sub_1ABACEB14();
}

id sub_1ABC6C410()
{
  v4 = *(v2 + 8 * v1);

  return objc_allocWithZone(v0);
}

uint64_t sub_1ABC6C428@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 120) = a1;
}

uint64_t sub_1ABC6C440(uint64_t a1)
{
  *(v2 - 240) = a1;

  return sub_1ABC6AA68(v1);
}

uint64_t sub_1ABC6C458()
{
  *(v1 - 120) = v0;
}

uint64_t sub_1ABC6C494()
{

  return sub_1ABF24BE4();
}

uint64_t sub_1ABC6C4AC()
{

  return sub_1ABF24BC4();
}

id sub_1ABC6C514(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1ABC6A12C(a1, v4, a3, v5, v6, v3);
}

uint64_t sub_1ABC6C540()
{

  return swift_bridgeObjectRetain_n();
}

void sub_1ABC6C558()
{
  v2 = *(v1 - 128) + (v0 << 6);
  v3 = *(v2 + 16);
  v5 = *(v2 + 32);
  v4 = *(v2 + 40);
  v6 = *(v2 + 56);
  *(v1 - 120) = *(v2 + 24);
  *(v1 - 112) = v5;
}

uint64_t sub_1ABC6C574()
{

  return swift_getAssociatedTypeWitness();
}

id sub_1ABC6C5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1ABC6A12C(a1, v3, a3, v4, v5, v6);
}

uint64_t sub_1ABC6C5F0(uint64_t a1, uint64_t a2)
{

  return sub_1ABB2E9FC(a1, a2, v2, v3);
}

uint64_t sub_1ABC6C608()
{

  return sub_1ABF24BC4();
}

uint64_t sub_1ABC6C63C()
{

  return sub_1ABF241F4();
}

uint64_t sub_1ABC6C694()
{

  return sub_1ABF24BC4();
}

uint64_t sub_1ABC6C6AC()
{

  return sub_1ABF24B94();
}

uint64_t sub_1ABC6C6C8()
{
  v2 = *(*(v0 - 96) + 16);

  return sub_1ABF24BD4();
}

uint64_t sub_1ABC6C6E4()
{

  return sub_1ABF24B94();
}

uint64_t sub_1ABC6C6FC()
{

  return sub_1ABF24B94();
}

uint64_t sub_1ABC6C718()
{

  return sub_1ABF24BC4();
}

uint64_t sub_1ABC6C7F4()
{

  return type metadata accessor for CustomGraphDateRelationship(0);
}

id sub_1ABC6C814()
{
  v5 = *v0;

  return [v1 v5];
}

id sub_1ABC6C834@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8);
  *(v1 - 328) = a1;
  v4 = *(a1 + 16);

  return sub_1ABC5021C(v3, v4);
}

id sub_1ABC6C854(void *a1)
{

  return [a1 (v2 + 3468)];
}

uint64_t sub_1ABC6C86C()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1ABC6C884@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);

  return sub_1ABF24BD4();
}

id sub_1ABC6C89C(void *a1, const void *a2)
{
  result = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
  if (result)
  {
    *&v2[OBJC_IVAR___GDKnosisResultContextItem__entityId] = result;
    memcpy(&v2[OBJC_IVAR___GDKnosisResultContextItem__answer], a2, 0x70uLL);
    v5.receiver = v2;
    v5.super_class = GDKnosisResultContextItem;
    return objc_msgSendSuper2(&v5, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1ABC6C934(uint64_t *a1, const void *a2)
{
  v3 = *a1;
  memcpy(__dst, a2, sizeof(__dst));
  v8 = v3;
  memcpy(v7, a2, sizeof(v7));
  v4 = objc_allocWithZone(GDKnosisResultContextItem);
  sub_1ABAE441C(__dst, v6);
  return sub_1ABC6C89C(&v8, v7);
}

id sub_1ABC6C9F0()
{
  memcpy(__dst, (v0 + OBJC_IVAR___GDKnosisResultContextItem__answer), sizeof(__dst));
  memcpy(v3, (v0 + OBJC_IVAR___GDKnosisResultContextItem__answer), sizeof(v3));
  sub_1ABAE441C(__dst, v5);
  v1 = sub_1ABD7C170();
  memcpy(v5, v3, sizeof(v5));
  sub_1ABC6D404(v5);
  return v1;
}

id sub_1ABC6CABC(uint64_t a1)
{
  type metadata accessor for GDKnosisResultContext(a1);
  v2 = *(v1 + OBJC_IVAR___GDKnosisResultContextItem__answer + 80);

  ObjectSynthesisDictionaryMapping.init()(v7);
  v3 = v7[0];
  type metadata accessor for InitializationResourcesManager();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1ABF239C4();
  v7[0] = v3;
  v7[1] = v2;
  v7[2] = v4;
  v5 = sub_1ABC6CB84(v7);

  return v5;
}

id sub_1ABC6CB84(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = v2;
  objc_allocWithZone(GDKnosisResultContext);

  return sub_1ABC6CD1C(v4);
}

id sub_1ABC6CD1C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = &v1[OBJC_IVAR___GDKnosisResultContext_knosisResultContext];
  *v5 = *a1;
  v5[1] = v3;
  v5[2] = v4;
  v6 = type metadata accessor for _GDSwiftGraphObjectContext();
  v7 = objc_allocWithZone(v6);
  v12[3] = sub_1ABAD219C(&qword_1EB4D6150, &unk_1ABF4FF30);
  v12[0] = v2;
  v12[1] = v3;
  v12[4] = sub_1ABC6D4BC();
  v12[2] = v4;
  sub_1ABA93E64(v12, v7 + OBJC_IVAR____TtC20IntelligencePlatform26_GDSwiftGraphObjectContext_context);
  v11.receiver = v7;
  v11.super_class = v6;

  v8 = objc_msgSendSuper2(&v11, sel_init);
  sub_1ABA84B54(v12);
  *&v1[OBJC_IVAR___GDKnosisResultContext_gdSwiftGraphObjectContext] = v8;
  v10.receiver = v1;
  v10.super_class = GDKnosisResultContext;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_1ABC6CE60()
{
  v1 = *(v0 + OBJC_IVAR___GDKnosisResultContext_knosisResultContext + 8);
  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v7 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v4 = (v1 + 32);
    do
    {
      memcpy(__dst, v4, sizeof(__dst));
      sub_1ABD7C170();
      sub_1ABF24B94();
      v5 = *(v7 + 16);
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      v4 += 112;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

void *sub_1ABC6CF90(void (*a1)(id, char *))
{
  result = Array<A>.entityIdsWithAnswers()(*(v1 + OBJC_IVAR___GDKnosisResultContext_knosisResultContext + 8));
  if (!v2)
  {
    sub_1ABC6CFF4(result, a1);
  }

  return result;
}

void sub_1ABC6CFF4(uint64_t a1, void (*a2)(id, char *))
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 40);
  v4 = *(a1 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = v3 + 120;
    v6 = *(v3 - 1);
    v7 = memcpy(__dst, v3, sizeof(__dst));
    v11 = 0;
    type metadata accessor for GDKnosisResultContextItem(v7);
    v10 = v6;
    v8 = sub_1ABC6C934(&v10, __dst);
    a2(v8, &v11);

    v3 = v5;
  }

  while (v11 != 1);
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1ABC6D170(void *a1, void (*a2)(id, char *))
{
  v5 = *(v2 + OBJC_IVAR___GDKnosisResultContext_knosisResultContext + 8);
  v9 = [a1 intValue];
  v6 = sub_1ABD811F4(&v9, v5);
  v7 = Array<A>.entityIdsWithAnswers()(v6);

  if (!v3)
  {
    sub_1ABC6CFF4(v7, a2);
  }

  return result;
}

id _sSo10GDVUUpdateC20IntelligencePlatformEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1ABC6D458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  result = a2;
  if (a6 - 2 < 2)
  {
  }

  if (!a6)
  {
  }

  return result;
}

unint64_t sub_1ABC6D4BC()
{
  result = qword_1EB4D6158;
  if (!qword_1EB4D6158)
  {
    sub_1ABAE2850(&qword_1EB4D6150, &unk_1ABF4FF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6158);
  }

  return result;
}

uint64_t sub_1ABC6D528()
{
  if (qword_1ED871B38 != -1)
  {
    swift_once();
  }

  v0 = sub_1ABF237F4();

  return sub_1ABA7AA24(v0, qword_1ED871B40);
}

id sub_1ABC6D8B4(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = sub_1ABF237F4();
  sub_1ABB9009C(v5, a2);
  sub_1ABA7AA24(v5, a2);
  result = a3();
  if (result)
  {
    return sub_1ABF23804();
  }

  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for GDLog(_BYTE *result, int a2, int a3)
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

uint64_t sub_1ABC6D9F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  sub_1ABADDFFC(0, v2, 0);
  result = v9;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      v10 = result;
      v8 = *(result + 16);
      v7 = *(result + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1ABADDFFC((v7 > 1), v8 + 1, 1);
        result = v10;
      }

      *(result + 16) = v8 + 1;
      *(result + 8 * v8 + 32) = v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1ABC6DAC8(char a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*(v3 + 16) + 16);
  swift_beginAccess();
  v8 = *(v3 + 24);

  sub_1ABC6DFE8(v9, a1 & 1, a2, a3);
}

void sub_1ABC6DBB4()
{
  sub_1ABA97BA0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1ABA7F3A8();
  v11 = *(v0 + 24);

  sub_1ABC6E100(v12, v10 & 1, v8, v6, v4, v2);

  sub_1ABA7E708();
}

void sub_1ABC6DCB4(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void (*a6)(void, uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  v12 = *(*(v6 + 16) + 16);
  swift_beginAccess();
  v13 = *(v6 + 24);

  a6(a1 & 1, a2, v13, a3 & 1, a4, a5);

  sub_1ABA7E708();
}

void sub_1ABC6DDA4()
{
  sub_1ABA97BA0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1ABA7F3A8();
  v11 = *(v0 + 24);

  v2(v10, v11, v8 & 1, v6, v4);

  sub_1ABA7E708();
}

void sub_1ABC6DE84()
{
  sub_1ABA97BA0();
  v5 = v4;
  sub_1ABA8C0E8();
  v7 = v6;
  sub_1ABA7F3A8();
  v8 = *(v0 + 24);

  sub_1ABC6E6A4(v3, v2, v1, v5, v7);

  sub_1ABA7E708();
}

uint64_t sub_1ABC6DFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(v4 + 16) + 16);

  v9 = sub_1ABAEE858();
  if (v5)
  {
  }

  v11 = sub_1ABAEF578(v9);

  MEMORY[0x1EEE9AC00](v12);
  v13[2] = a3;
  v13[3] = a4;
  sub_1ABC6EEF8(v11, sub_1ABC713B4, v13, sub_1ABC713D4, sub_1ABC7147C);
}

uint64_t sub_1ABC6E100(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v13 = *(*(v6 + 16) + 16);

  v14 = a5(a2 & 1);
  if (v7)
  {
  }

  v16 = sub_1ABAEF5A4(v14);

  MEMORY[0x1EEE9AC00](v17);
  v18[2] = a3;
  v18[3] = a4;
  sub_1ABC6EEF8(v16, a6, v18, sub_1ABC71180, sub_1ABC711A4);
}

uint64_t sub_1ABC6E214(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v13 = *(*(v6 + 16) + 16);

  v14 = sub_1ABAEE2F8(a1 & 1, a2, a4 & 1);
  if (v7)
  {
  }

  v16 = sub_1ABAEF578(v14);

  MEMORY[0x1EEE9AC00](v17);
  v18[2] = a5;
  v18[3] = a6;
  sub_1ABC6EEF8(v16, sub_1ABC714E4, v18, sub_1ABC713D4, sub_1ABC7147C);
}

uint64_t sub_1ABC6E33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(*(v6 + 16) + 16);

  v11 = sub_1ABAEE488();
  if (v7)
  {
  }

  v13 = sub_1ABAEF5A4(v11);

  MEMORY[0x1EEE9AC00](v14);
  v15[2] = a5;
  v15[3] = a6;
  sub_1ABC6EEF8(v13, sub_1ABC714C8, v15, sub_1ABC71180, sub_1ABC711A4);
}

uint64_t sub_1ABC6E464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(*(v5 + 16) + 16);

  v10 = sub_1ABAEE768();
  if (v6)
  {
  }

  v12 = sub_1ABAEF578(v10);

  MEMORY[0x1EEE9AC00](v13);
  v14[2] = a4;
  v14[3] = a5;
  sub_1ABC6EEF8(v12, sub_1ABC714E4, v14, sub_1ABC713D4, sub_1ABC7147C);
}

uint64_t sub_1ABC6E584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(*(v5 + 16) + 16);

  v10 = sub_1ABAEE798();
  if (v6)
  {
  }

  v12 = sub_1ABAEF5A4(v10);

  MEMORY[0x1EEE9AC00](v13);
  v14[2] = a4;
  v14[3] = a5;
  sub_1ABC6EEF8(v12, sub_1ABC714C8, v14, sub_1ABC71180, sub_1ABC711A4);
}

uint64_t sub_1ABC6E6A4@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t *__return_ptr, uint64_t)@<X2>, uint64_t (*a3)(uint64_t)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v12 = *(*(v5 + 16) + 16);

  a2(&v15, a1);

  if (!v6)
  {
    if (v16)
    {
      v14 = a4(0);
      return sub_1ABA7B9B4(a5, 1, 1, v14);
    }

    else
    {
      return a3(v15);
    }
  }

  return result;
}

uint64_t sub_1ABC6E774(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t *), uint64_t a4)
{
  v31 = a4;
  v32 = a3;
  v33 = a1;
  v6 = type metadata accessor for CustomGraphSongEvent(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1ABAD219C(&qword_1EB4D61E8, &qword_1ABF500B8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v31 - v12;
  v14 = sub_1ABAD219C(&qword_1EB4D1BE0, &unk_1ABF34230);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  sub_1ABBD88DC(a2, v13, &qword_1EB4D61E8, &qword_1ABF500B8);
  if (sub_1ABA7E1E0(v13, 1, v14) == 1)
  {
    sub_1ABAB480C(v13, &qword_1EB4D61E8, &qword_1ABF500B8);
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v21 = sub_1ABF237F4();
    sub_1ABA7AA24(v21, qword_1ED871B40);
    v22 = sub_1ABF237D4();
    v23 = sub_1ABF24664();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v35 = v25;
      *v24 = 136315138;
      v34 = v33;
      v26 = EntityIdentifier.description.getter();
      v28 = sub_1ABADD6D8(v26, v27, &v35);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_1ABA78000, v22, v23, "ID %s is in Event index but constructing a graph object from it results in nil!", v24, 0xCu);
      sub_1ABA84B54(v25);
      MEMORY[0x1AC5AB8B0](v25, -1, -1);
      MEMORY[0x1AC5AB8B0](v24, -1, -1);
    }

    v29 = 1;
  }

  else
  {
    sub_1ABBD898C(v13, v20, &qword_1EB4D1BE0, &unk_1ABF34230);
    LOBYTE(v34) = 0;
    sub_1ABBD88DC(v20, v17, &qword_1EB4D1BE0, &unk_1ABF34230);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = *v17;
      sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
      swift_willThrowTypedImpl();
      sub_1ABAB480C(v20, &qword_1EB4D1BE0, &unk_1ABF34230);
    }

    else
    {
      sub_1ABC712DC(v17, v9, type metadata accessor for CustomGraphSongEvent);
      v32(v9, &v34);
      sub_1ABC7133C(v9, type metadata accessor for CustomGraphSongEvent);
      sub_1ABAB480C(v20, &qword_1EB4D1BE0, &unk_1ABF34230);
      if (!v4)
      {
        v29 = v34 ^ 1;
      }
    }
  }

  return v29 & 1;
}

void sub_1ABC6EB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v21;
  a20 = v22;
  v56 = v24;
  v57 = v23;
  v26 = v25;
  v58 = v27;
  v28 = type metadata accessor for CustomGraphActivityEvent(0);
  v29 = sub_1ABA7AB80(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7BC58();
  v34 = v33 - v32;
  v35 = sub_1ABAD219C(&qword_1EB4D61E0, &qword_1ABF500B0);
  sub_1ABA7AB80(v35);
  v37 = *(v36 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v38);
  sub_1ABA7E338();
  v39 = sub_1ABAD219C(&qword_1EB4D5E20, &unk_1ABF643D0);
  v40 = sub_1ABA7BBB0(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v44 = (&v56 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v56 - v46;
  sub_1ABBD88DC(v26, v20, &qword_1EB4D61E0, &qword_1ABF500B0);
  if (sub_1ABA7E1E0(v20, 1, v39) == 1)
  {
    sub_1ABAB480C(v20, &qword_1EB4D61E0, &qword_1ABF500B0);
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v48 = sub_1ABF237F4();
    sub_1ABA7AA24(v48, qword_1ED871B40);
    v49 = sub_1ABF237D4();
    v50 = sub_1ABF24664();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      a10 = v52;
      *v51 = 136315138;
      v59 = v58;
      v53 = EntityIdentifier.description.getter();
      v55 = sub_1ABADD6D8(v53, v54, &a10);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_1ABA78000, v49, v50, "ID %s is in Event index but constructing a graph object from it results in nil!", v51, 0xCu);
      sub_1ABA84B54(v52);
      MEMORY[0x1AC5AB8B0](v52, -1, -1);
      MEMORY[0x1AC5AB8B0](v51, -1, -1);
    }
  }

  else
  {
    sub_1ABBD898C(v20, v47, &qword_1EB4D5E20, &unk_1ABF643D0);
    LOBYTE(v59) = 0;
    sub_1ABBD88DC(v47, v44, &qword_1EB4D5E20, &unk_1ABF643D0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      a10 = *v44;
      sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
      swift_willThrowTypedImpl();
    }

    else
    {
      sub_1ABC712DC(v44, v34, type metadata accessor for CustomGraphActivityEvent);
      v57(v34, &v59);
      sub_1ABC7133C(v34, type metadata accessor for CustomGraphActivityEvent);
    }

    sub_1ABAB480C(v47, &qword_1EB4D5E20, &unk_1ABF643D0);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABC6EEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 16);

  v12 = sub_1ABC6D9F4(a1);
  v16 = a2;
  v17 = a3;
  v18 = &v19;
  v14[2] = a4;
  v14[3] = &v15;
  sub_1ABC70FDC(v12, a5, v14);
}

uint64_t sub_1ABC6EF94(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABC6EFB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ABC6EF94(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1ABC6EFE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABC6EFAC(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1ABC6F00C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABC708EC();
  v5 = sub_1ABC70940();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

id sub_1ABC6F064(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC20IntelligencePlatform30_GDSwiftAppleMusicEventContext_swiftContext] = a1;
  v6[3] = sub_1ABAD219C(&qword_1EB4D61A8, &unk_1ABF4FF60);
  v6[4] = sub_1ABC71418();
  v6[0] = a1;
  sub_1ABA93E64(v6, &v1[OBJC_IVAR____TtC20IntelligencePlatform26_GDSwiftGraphObjectContext_context]);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _GDSwiftGraphObjectContext();

  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_1ABA84B54(v6);
  return v3;
}

uint64_t _GDSwiftAppleMusicEventContext.init()()
{
  v1 = type metadata accessor for ViewService();
  v2 = static ViewService.clientService.getter(v1);
  sub_1ABAD219C(&qword_1EB4D61A8, &unk_1ABF4FF60);
  v3 = swift_allocObject();
  v4 = v2;
  v5 = v3;
  v6 = CustomAppleMusicEventContext.init<>(viewService:)(v4);
  if (!v0)
  {
    v7 = v6;
    v8 = objc_allocWithZone(type metadata accessor for _GDSwiftAppleMusicEventContext());
    v5 = sub_1ABC6F064(v7);
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

unint64_t sub_1ABC6F2B4()
{
  result = qword_1EB4D61C0;
  if (!qword_1EB4D61C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D61C0);
  }

  return result;
}

uint64_t sub_1ABC6F33C()
{
  v3 = sub_1ABAD219C(&qword_1EB4D61B0, &qword_1ABF50310);
  sub_1ABA7AB80(v3);
  v5 = *(v4 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7E5C0();
  v7 = type metadata accessor for CustomGraphSongEvent(0);
  v8 = sub_1ABA7BBB0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7BC58();
  v13 = v12 - v11;
  v14 = *(*(v1 + OBJC_IVAR____TtC20IntelligencePlatform30_GDSwiftAppleMusicEventContext_swiftContext) + 16);
  sub_1ABC6DE84();
  if (!v2)
  {
    if (sub_1ABA7E1E0(v0, 1, v7) == 1)
    {
      sub_1ABAB480C(v0, &qword_1EB4D61B0, &qword_1ABF50310);
      sub_1ABC6F2B4();
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
    }

    else
    {
      sub_1ABC712DC(v0, v13, type metadata accessor for CustomGraphSongEvent);
      CustomGraphSongEvent.toObjectiveCGraphObject()(v17);
      v0 = v18;
      sub_1ABC7133C(v13, type metadata accessor for CustomGraphSongEvent);
    }
  }

  return v0;
}

id sub_1ABC6F50C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a1;
  v6 = a4();

  return v6;
}

void sub_1ABC6F5B8(uint64_t a1, _BYTE *a2, void (*a3)(void))
{
  CustomGraphSongEvent.toObjectiveCGraphObject()(*MEMORY[0x1E69E9840]);
  v6 = v5;
  a3();

  *a2 = 0;
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1ABC6F650()
{
  sub_1ABA7BCA8();
  sub_1ABA7D8C4();
  v2 = sub_1ABAD219C(&qword_1EB4D1D98, &qword_1ABF4C7C0);
  sub_1ABA7AB80(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7E338();
  v6 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30_GDSwiftAppleMusicEventContext_swiftContext);
  sub_1ABC2D3D4(v1);
  sub_1ABA8E988();
  v7 = *(v6 + 16);
  sub_1ABA8E2B8();
  sub_1ABC6DDA4();
  sub_1ABAB480C(v1, &qword_1EB4D1D98, &qword_1ABF4C7C0);
  sub_1ABA7BC90();
}

void sub_1ABC6F7FC()
{
  sub_1ABA7BCA8();
  v3 = v2;
  sub_1ABA7D8C4();
  v4 = sub_1ABAD219C(&qword_1EB4D1D98, &qword_1ABF4C7C0);
  sub_1ABA7AB80(v4);
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7E5C0();
  v8 = *(v1 + OBJC_IVAR____TtC20IntelligencePlatform30_GDSwiftAppleMusicEventContext_swiftContext);
  sub_1ABC2D3D4(v0);
  sub_1ABA8E988();
  v9 = *(v8 + 16);
  v10 = sub_1ABA9A4C8();
  sub_1ABC6DCB4(v10, v11, v12, v3, v13, v14);
  sub_1ABAB480C(v0, &qword_1EB4D1D98, &qword_1ABF4C7C0);
  sub_1ABA7BC90();
}

uint64_t sub_1ABC6F918()
{
  sub_1ABA8C0E8();
  swift_getObjectType();
  v1 = *(*(v0 + OBJC_IVAR____TtC20IntelligencePlatform30_GDSwiftAppleMusicEventContext_swiftContext) + 16);
  v2 = sub_1ABA80BAC(1);
  return sub_1ABC6DAC8(v2, v3, v4);
}

void sub_1ABC6F990(uint64_t a1, _BYTE *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  sub_1ABC6F5B8(a1, a2, v3);
}

unint64_t sub_1ABC6FA08()
{
  result = qword_1EB4D61C8;
  if (!qword_1EB4D61C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB4D61C8);
  }

  return result;
}

uint64_t sub_1ABC6FA80()
{
  v3 = sub_1ABAD219C(&qword_1EB4D1DF8, &unk_1ABF34858);
  sub_1ABA7AB80(v3);
  v5 = *(v4 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7E338();
  v7 = sub_1ABAD219C(&qword_1EB4D1A80, &qword_1ABF33C10);
  v8 = sub_1ABA7BBB0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  v16 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30_GDSwiftAppleMusicEventContext_swiftContext);
  v17 = *(sub_1ABC6DAB4() + 16);
  sub_1ABAEDE4C();

  if (!v1)
  {
    v17 = 1;
    if (sub_1ABA7E1E0(v2, 1, v7) == 1)
    {
      sub_1ABAB480C(v2, &qword_1EB4D1DF8, &unk_1ABF34858);
      sub_1ABC6F2B4();
      swift_allocError();
      *v18 = 1;
      swift_willThrow();
    }

    else
    {
      sub_1ABBD898C(v2, v15, &qword_1EB4D1A80, &qword_1ABF33C10);
      sub_1ABC6FA08();
      sub_1ABBD88DC(v15, v12, &qword_1EB4D1A80, &qword_1ABF33C10);
      v17 = sub_1ABC71500(v12);
      sub_1ABAB480C(v15, &qword_1EB4D1A80, &qword_1ABF33C10);
    }
  }

  return v17;
}

void sub_1ABC6FC88(uint64_t a1, _BYTE *a2, void (*a3)(id, char *))
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = sub_1ABAD219C(&qword_1EB4D1A80, &qword_1ABF33C10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v12 - v8);
  HIBYTE(v12) = 0;
  sub_1ABC6FA08();
  sub_1ABBD88DC(a1, v9, &qword_1EB4D1A80, &qword_1ABF33C10);
  v10 = sub_1ABC71500(v9);
  a3(v10, &v12 + 7);

  *a2 = HIBYTE(v12);
  v11 = *MEMORY[0x1E69E9840];
}

void sub_1ABC6FDA4()
{
  sub_1ABA7BCA8();
  sub_1ABA7D8C4();
  v2 = sub_1ABAD219C(&qword_1EB4D1D98, &qword_1ABF4C7C0);
  sub_1ABA7AB80(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7E338();
  v6 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30_GDSwiftAppleMusicEventContext_swiftContext);
  v7 = sub_1ABC6DAB4();
  sub_1ABC2D3D4(v1);
  sub_1ABA8E988();
  v8 = *(v7 + 16);
  sub_1ABA8E2B8();
  sub_1ABAEAACC();
  sub_1ABAB480C(v1, &qword_1EB4D1D98, &qword_1ABF4C7C0);

  sub_1ABA7BC90();
}

void sub_1ABC6FF4C()
{
  sub_1ABA7BCA8();
  sub_1ABA7D8C4();
  v2 = sub_1ABAD219C(&qword_1EB4D1D98, &qword_1ABF4C7C0);
  sub_1ABA7AB80(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7E5C0();
  v6 = *(v1 + OBJC_IVAR____TtC20IntelligencePlatform30_GDSwiftAppleMusicEventContext_swiftContext);
  v7 = sub_1ABC6DAB4();
  sub_1ABC2D3D4(v0);
  sub_1ABA8E988();
  v8 = *(v7 + 16);
  v9 = sub_1ABA9A4C8();
  sub_1ABAEA3A8(v9);
  sub_1ABAB480C(v0, &qword_1EB4D1D98, &qword_1ABF4C7C0);

  sub_1ABA7BC90();
}

uint64_t sub_1ABC70064(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, _BYTE *))
{
  v13 = sub_1ABF21984();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7BC58();
  v18 = v17 - v16;
  v19 = _Block_copy(a6);
  sub_1ABF21954();
  v23 = v19;
  v20 = a1;
  a8(v18, a4, a7, v22);
  (*(v14 + 8))(v18, v13);

  _Block_release(v19);
  return 1;
}

uint64_t sub_1ABC70204()
{
  sub_1ABA8C0E8();
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30_GDSwiftAppleMusicEventContext_swiftContext);
  v2 = *(sub_1ABC6DAB4() + 16);
  sub_1ABA80BAC(1);
  sub_1ABAE9F04();
}

void sub_1ABC702A0(uint64_t a1, _BYTE *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  sub_1ABC6FC88(a1, a2, v3);
}

uint64_t sub_1ABC702FC(void *a1, int a2, uint64_t a3, int a4, void *aBlock, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v11 = _Block_copy(aBlock);
  v14[2] = v11;
  v12 = a1;
  a7(a3, a6, v14);

  _Block_release(v11);
  return 1;
}

id _GDSwiftAppleMusicEventContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _GDSwiftAppleMusicEventContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of _GDSwiftAppleMusicEventContext.earliestSongEvent()()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 472))();
}

uint64_t dispatch thunk of _GDSwiftAppleMusicEventContext.latestSongEvent()()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 480))();
}

uint64_t dispatch thunk of _GDSwiftAppleMusicEventContext.enumerateSongEventsThatOverlap(with:ascending:block:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 488))();
}

uint64_t dispatch thunk of _GDSwiftAppleMusicEventContext.enumerateSongEventsWhoseStartDatesAre(in:ascending:block:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 496))();
}

uint64_t dispatch thunk of _GDSwiftAppleMusicEventContext.enumerateSongEventsWhoseEndDatesAre(in:ascending:block:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 504))();
}

uint64_t dispatch thunk of _GDSwiftAppleMusicEventContext.enumerateSongEvents(ascending:block:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 512))();
}

uint64_t dispatch thunk of _GDSwiftAppleMusicEventContext.earliestEntryForSongEvent()()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 520))();
}

uint64_t dispatch thunk of _GDSwiftAppleMusicEventContext.latestEntryForSongEvent()()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 528))();
}

uint64_t dispatch thunk of _GDSwiftAppleMusicEventContext.enumerateEntriesForSongEventsThatOverlap(with:ascending:block:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 536))();
}

uint64_t dispatch thunk of _GDSwiftAppleMusicEventContext.enumerateEntriesForSongEventsWhoseStartDatesAre(in:ascending:block:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 544))();
}

uint64_t dispatch thunk of _GDSwiftAppleMusicEventContext.enumerateEntriesForSongEventsWhoseEndDatesAre(in:ascending:block:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 552))();
}

uint64_t dispatch thunk of _GDSwiftAppleMusicEventContext.enumerateEntriesForSongEvents(ascending:block:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 560))();
}

_BYTE *storeEnumTagSinglePayload for GDAppleMusicEventContextError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABC70898()
{
  result = qword_1EB4D61D0;
  if (!qword_1EB4D61D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D61D0);
  }

  return result;
}

unint64_t sub_1ABC708EC()
{
  result = qword_1EB4D61D8;
  if (!qword_1EB4D61D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D61D8);
  }

  return result;
}

unint64_t sub_1ABC70940()
{
  result = qword_1EB4CE760;
  if (!qword_1EB4CE760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE760);
  }

  return result;
}

uint64_t sub_1ABC70994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, char *), uint64_t a5, uint64_t a6)
{
  v11 = sub_1ABAD219C(&qword_1EB4D61E8, &qword_1ABF500B8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v17 - v13;
  v15 = sub_1ABC6C238();
  if (!v6)
  {
    v17 = a6;
    MEMORY[0x1EEE9AC00](v15);
    *(&v17 - 4) = a2;
    *(&v17 - 3) = a3;
    *(&v17 - 2) = &v17;
    sub_1ABE55928(sub_1ABC713F8, (&v17 - 6), 1);
    LOBYTE(a4) = a4(&v18, v14);
    sub_1ABAB480C(v14, &qword_1EB4D61E8, &qword_1ABF500B8);
  }

  return a4 & 1;
}

uint64_t sub_1ABC70AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, char *), uint64_t a5, uint64_t a6)
{
  v11 = sub_1ABAD219C(&qword_1EB4D61E0, &qword_1ABF500B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v17 - v13;
  v15 = sub_1ABC4A730(&v18);
  if (!v6)
  {
    v17 = a6;
    MEMORY[0x1EEE9AC00](v15);
    *(&v17 - 4) = a2;
    *(&v17 - 3) = a3;
    *(&v17 - 2) = &v17;
    sub_1ABE55BD4(sub_1ABC712BC, (&v17 - 6), 1);
    LOBYTE(a4) = a4(&v18, v14);
    sub_1ABAB480C(v14, &qword_1EB4D61E0, &qword_1ABF500B0);
  }

  return a4 & 1;
}

uint64_t sub_1ABC70C44()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_getObjectType();
  return sub_1ABF22454();
}

uint64_t sub_1ABC70CEC(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t *), uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t (*)(), uint64_t))
{
  v7 = result;
  v8 = *(a2 + 16);
  for (i = (a2 + 32); v8; --v8)
  {
    v10 = *i;
    v15 = *i;
    result = a3(v7, &v15);
    if (v5)
    {
      break;
    }

    v11 = result;
    sub_1ABAD219C(&unk_1EB4DB8A0, &qword_1ABF500A8);
    swift_initStackObject();
    v12 = sub_1ABE7F504(v11);
    swift_beginAccess();
    if (*(v12 + 40))
    {
      v15 = v10;
      v13 = a5(&v15, sub_1ABC712A0, v12);

      if ((v13 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
    }

    ++i;
  }

  return result;
}

uint64_t sub_1ABC70E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[2] = a3;
  v16[3] = a4;
  v16[0] = *v4;
  v16[1] = a1;
  v6 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = v16 - v9;
  v12 = v4[5];
  v11 = v4[6];
  sub_1ABBD88DC(a2, v16 - v9, &qword_1EB4DB820, &qword_1ABF500A0);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v11;
  sub_1ABBD898C(v10, v14 + v13, &qword_1EB4DB820, &qword_1ABF500A0);
  *(v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16[0];

  sub_1ABC70C44();
}

uint64_t sub_1ABC70FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12 - v8;
  v10 = sub_1ABF22424();
  sub_1ABA7B9B4(v9, 1, 1, v10);
  sub_1ABC70E38(a1, v9, a2, a3);
  return sub_1ABAB480C(v9, &qword_1EB4DB820, &qword_1ABF500A0);
}

uint64_t sub_1ABC711A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1ABE81B3C() & 1;
}

void sub_1ABC711C4()
{
  v1 = *(sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_1ABE813F0();
}

uint64_t sub_1ABC712DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1ABA7BBB0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1ABC7133C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1ABA7BBB0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1ABC71418()
{
  result = qword_1EB4D61F0;
  if (!qword_1EB4D61F0)
  {
    sub_1ABAE2850(&qword_1EB4D61A8, &unk_1ABF4FF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D61F0);
  }

  return result;
}

id sub_1ABC71500(uint64_t *a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  v6 = *a1;
  sub_1ABC71698();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (result)
  {
    v8 = result;
    v9 = sub_1ABAD219C(&qword_1EB4D1A80, &qword_1ABF33C10);
    v10 = a1 + *(v9 + 36);
    v11 = sub_1ABF21E34();
    sub_1ABAE6A34(a1 + *(v9 + 40), v5);
    v12 = sub_1ABF21EB4();
    v13 = 0;
    if (sub_1ABA7E1E0(v5, 1, v12) != 1)
    {
      v13 = sub_1ABF21E34();
      (*(*(v12 - 8) + 8))(v5, v12);
    }

    v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEntityIdentifier:v8 startDate:v11 endDate:v13];

    sub_1ABC716DC(a1);
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1ABC71698()
{
  result = qword_1EB4D6078;
  if (!qword_1EB4D6078)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB4D6078);
  }

  return result;
}

uint64_t sub_1ABC716DC(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D1A80, &qword_1ABF33C10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABC71744(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABC7287C();
  v5 = sub_1ABC70940();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

id sub_1ABC7179C(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC20IntelligencePlatform30_GDSwiftFutureLifeEventContext_swiftContext] = a1;
  v6[3] = sub_1ABAD219C(&qword_1EB4D61F8, &unk_1ABF500C0);
  v6[4] = sub_1ABC728D8();
  v6[0] = a1;
  sub_1ABA93E64(v6, &v1[OBJC_IVAR____TtC20IntelligencePlatform26_GDSwiftGraphObjectContext_context]);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _GDSwiftGraphObjectContext();

  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_1ABA84B54(v6);
  return v3;
}

uint64_t _GDSwiftFutureLifeEventContext.init()()
{
  v1 = type metadata accessor for ViewService();
  v2 = static ViewService.clientService.getter(v1);
  sub_1ABAD219C(&qword_1EB4D61F8, &unk_1ABF500C0);
  v3 = swift_allocObject();
  v4 = v2;
  v5 = v3;
  v6 = CustomFutureLifeEventContext.init<>(viewService:)(v4);
  if (!v0)
  {
    v7 = v6;
    v8 = objc_allocWithZone(type metadata accessor for _GDSwiftFutureLifeEventContext());
    v5 = sub_1ABC7179C(v7);
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

unint64_t sub_1ABC719FC()
{
  result = qword_1EB4D6210;
  if (!qword_1EB4D6210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6210);
  }

  return result;
}

uint64_t sub_1ABC71A50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomGraphActivityEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABC71AB4(uint64_t a1)
{
  v2 = type metadata accessor for CustomGraphActivityEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1ABC71B54(void (*a1)(__n128))
{
  v4 = sub_1ABAD219C(&qword_1EB4D6200, &unk_1ABF6CC00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for CustomGraphActivityEvent(0);
  v9 = sub_1ABA7BBB0(v8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(v1 + OBJC_IVAR____TtC20IntelligencePlatform30_GDSwiftFutureLifeEventContext_swiftContext) + 16);
  a1(v12);
  if (!v2)
  {
    if (sub_1ABA7E1E0(v7, 1, v8) == 1)
    {
      sub_1ABAB480C(v7, &qword_1EB4D6200, &unk_1ABF6CC00);
      sub_1ABC719FC();
      swift_allocError();
      *v16 = 0;
      swift_willThrow();
    }

    else
    {
      sub_1ABC71A50(v7, v14);
      CustomGraphActivityEvent.toObjectiveCGraphObject()(v18);
      v7 = v19;
      sub_1ABC71AB4(v14);
    }
  }

  return v7;
}

void sub_1ABC71CE4(uint64_t a1, _BYTE *a2, void (*a3)(void))
{
  CustomGraphActivityEvent.toObjectiveCGraphObject()(*MEMORY[0x1E69E9840]);
  v6 = v5;
  a3();

  *a2 = 0;
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1ABC71D7C()
{
  sub_1ABA7F3D0();
  v1 = *(*(v0 + OBJC_IVAR____TtC20IntelligencePlatform30_GDSwiftFutureLifeEventContext_swiftContext) + 16);
  sub_1ABA80BAC(1);
  sub_1ABC6DB74();
}

void sub_1ABC71DE8(uint64_t a1, _BYTE *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  sub_1ABC71CE4(a1, a2, v3);
}

uint64_t sub_1ABC71E60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D18F8, &qword_1ABF33A88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ABC71ED0()
{
  result = qword_1EB4D6218;
  if (!qword_1EB4D6218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB4D6218);
  }

  return result;
}

uint64_t sub_1ABC71F14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D18F8, &qword_1ABF33A88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABC71FB8()
{
  v2 = sub_1ABAD219C(&qword_1EB4D1DD0, &qword_1ABF34830);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v19 - v4;
  v6 = sub_1ABAD219C(&qword_1EB4D18F8, &qword_1ABF33A88);
  v7 = sub_1ABA7BBB0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  v15 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30_GDSwiftFutureLifeEventContext_swiftContext);
  v16 = *(sub_1ABC6DAB4() + 16);
  sub_1ABAEDEE4();

  if (!v1)
  {
    v16 = 1;
    if (sub_1ABA7E1E0(v5, 1, v6) == 1)
    {
      sub_1ABAB480C(v5, &qword_1EB4D1DD0, &qword_1ABF34830);
      sub_1ABC719FC();
      swift_allocError();
      *v17 = 1;
      swift_willThrow();
    }

    else
    {
      sub_1ABC71E60(v5, v14);
      sub_1ABC71ED0();
      sub_1ABC71F14(v14, v11);
      v16 = sub_1ABC7293C(v11);
      sub_1ABAB480C(v14, &qword_1EB4D18F8, &qword_1ABF33A88);
    }
  }

  return v16;
}

id sub_1ABC721B8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a1;
  v6 = a4();

  return v6;
}

void sub_1ABC72264(uint64_t a1, _BYTE *a2, void (*a3)(id, char *))
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = sub_1ABAD219C(&qword_1EB4D18F8, &qword_1ABF33A88);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v12 - v8);
  HIBYTE(v12) = 0;
  sub_1ABC71ED0();
  sub_1ABC71F14(a1, v9);
  v10 = sub_1ABC7293C(v9);
  a3(v10, &v12 + 7);

  *a2 = HIBYTE(v12);
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1ABC72368()
{
  sub_1ABA7F3D0();
  v1 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30_GDSwiftFutureLifeEventContext_swiftContext);
  v2 = *(sub_1ABC6DAB4() + 16);
  sub_1ABA80BAC(1);
  sub_1ABAE9F20();
}

void sub_1ABC723F8(uint64_t a1, _BYTE *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  sub_1ABC72264(a1, a2, v3);
}

uint64_t sub_1ABC72454(void *a1, int a2, uint64_t a3, int a4, void *aBlock, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v11 = _Block_copy(aBlock);
  v14[2] = v11;
  v12 = a1;
  a7(a3, a6, v14);

  _Block_release(v11);
  return 1;
}

id _GDSwiftFutureLifeEventContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _GDSwiftFutureLifeEventContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of _GDSwiftFutureLifeEventContext.earliestFutureActivityEvent()()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 472))();
}

uint64_t dispatch thunk of _GDSwiftFutureLifeEventContext.latestFutureActivityEvent()()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 480))();
}

uint64_t dispatch thunk of _GDSwiftFutureLifeEventContext.enumerateFutureActivityEvents(ascending:block:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 488))();
}

uint64_t dispatch thunk of _GDSwiftFutureLifeEventContext.earliestEntryForFutureActivityEvent()()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 496))();
}

uint64_t dispatch thunk of _GDSwiftFutureLifeEventContext.latestEntryForFutureActivityEvent()()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 504))();
}

uint64_t dispatch thunk of _GDSwiftFutureLifeEventContext.enumerateEntriesForFutureActivityEvents(ascending:block:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 512))();
}

_BYTE *storeEnumTagSinglePayload for GDFutureLifeEventContextError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABC72828()
{
  result = qword_1EB4D6220;
  if (!qword_1EB4D6220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6220);
  }

  return result;
}

unint64_t sub_1ABC7287C()
{
  result = qword_1EB4D6228;
  if (!qword_1EB4D6228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6228);
  }

  return result;
}

unint64_t sub_1ABC728D8()
{
  result = qword_1EB4CED18;
  if (!qword_1EB4CED18)
  {
    sub_1ABAE2850(&qword_1EB4D61F8, &unk_1ABF500C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CED18);
  }

  return result;
}

id sub_1ABC7293C(uint64_t *a1)
{
  v2 = *a1;
  sub_1ABC72A1C();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (result)
  {
    v4 = result;
    v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v6 = sub_1ABAD219C(&qword_1EB4D18F8, &qword_1ABF33A88);
    v7 = a1 + *(v6 + 36);
    v8 = sub_1ABF21E34();
    v9 = a1 + *(v6 + 40);
    v10 = sub_1ABF21E34();
    v11 = [v5 initWithEntityIdentifier:v4 startDate:v8 endDate:v10];

    sub_1ABC72A60(a1);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1ABC72A1C()
{
  result = qword_1EB4CE650;
  if (!qword_1EB4CE650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB4CE650);
  }

  return result;
}

uint64_t sub_1ABC72A60(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D18F8, &qword_1ABF33A88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABC75BC4()
{
  sub_1ABA841B8();
  sub_1ABA83928(OBJC_IVAR____TtC20IntelligencePlatform26_GDSwiftGraphObjectContext_context);
  [v1 intValue];
  sub_1ABC77190(sub_1ABC4C8B4, &v17);
  v2 = sub_1ABC6B7C4();
  sub_1ABA94A84(&v17, v3, &type metadata for CustomGraphCalendarEvent, v4, v2, v5, v6, v7, v12, v13, v14, v15[0], v15[1], v15[2], v15[3], v15[4], v15[5], v15[6], v15[7], v15[8]);
  if (!v0)
  {
    memcpy(__dst, __src, sizeof(__dst));
    if (__dst[1])
    {
      memcpy(v15, &__src[16], sizeof(v15));
      CustomGraphCalendarEvent.toObjectiveCGraphObject()(v8);
      sub_1ABAB480C(__dst, &qword_1EB4D6340, &qword_1ABF50308);
    }

    else
    {
      sub_1ABC7713C();
      v10 = sub_1ABA7BD00();
      sub_1ABA8E0B8(v10, v11);
    }
  }

  return sub_1ABA80BE4();
}

uint64_t sub_1ABC75E54()
{
  sub_1ABA841B8();
  sub_1ABA83928(OBJC_IVAR____TtC20IntelligencePlatform26_GDSwiftGraphObjectContext_context);
  [v1 intValue];
  sub_1ABC77190(sub_1ABC4A630, &v16);
  v2 = sub_1ABC6B898();
  sub_1ABA94A84(&v16, v3, &type metadata for CustomGraphLocation, v4, v2, v5, v6, v7, v12, v13[0], v13[1], v13[2], v13[3], v13[4], v13[5], v13[6], v13[7], v13[8], v13[9], v13[10]);
  if (!v0)
  {
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v15, __src, sizeof(v15));
    if (sub_1ABAC9370(v15) == 1)
    {
      sub_1ABC7713C();
      v8 = sub_1ABA7BD00();
      sub_1ABA8E0B8(v8, v9);
    }

    else
    {
      memcpy(v13, v15, sizeof(v13));
      CustomGraphLocation.toObjectiveCGraphObject()(v11);
      sub_1ABAB480C(__dst, &qword_1EB4D6348, &qword_1ABF50318);
    }
  }

  return sub_1ABA80BE4();
}

id sub_1ABC75F6C()
{
  sub_1ABA841B8();
  sub_1ABA83928(OBJC_IVAR____TtC20IntelligencePlatform26_GDSwiftGraphObjectContext_context);
  [v1 intValue];
  sub_1ABC77190(sub_1ABC4A52C, v24);
  v3 = sub_1ABC6B914();
  sub_1ABA94A84(v24, v4, &type metadata for CustomGraphOrganization, v5, v3, v6, v7, v8, v14, v15, v16, v18, v19, v20, v21, v22, v23, v24[0], v24[1], v24[2]);
  if (v0)
  {
    return sub_1ABA80BE4();
  }

  if (!v17)
  {
    sub_1ABC7713C();
    v12 = sub_1ABA7BD00();
    sub_1ABA8E0B8(v12, v13);
    return sub_1ABA80BE4();
  }

  sub_1ABAA3CFC();
  sub_1ABAFF390(0, &qword_1EB4D5F10, off_1E79600B8);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (result)
  {
    objc_allocWithZone(GDGraphOrganization);

    sub_1ABAA58BC();
    sub_1ABAA40F0();
    sub_1ABC68EEC();
    v10 = sub_1ABA818E8();
    sub_1ABC77428(v10, v11);
    return sub_1ABA80BE4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABC760CC()
{
  sub_1ABA841B8();
  sub_1ABA83928(OBJC_IVAR____TtC20IntelligencePlatform26_GDSwiftGraphObjectContext_context);
  [v1 intValue];
  sub_1ABC77190(sub_1ABC4C9B8, &v16);
  v2 = sub_1ABC6B990();
  sub_1ABA94A84(&v16, v3, &type metadata for CustomGraphSportsTeam, v4, v2, v5, v6, v7, v12, v13, v14[0], v14[1], v14[2], v14[3], v14[4], v14[5], v14[6], v14[7], v14[8], __dst[0]);
  if (!v0)
  {
    memcpy(__dst, __src, sizeof(__dst));
    if (__dst[1])
    {
      memcpy(v14, &__src[16], sizeof(v14));
      CustomGraphSportsTeam.toObjectiveCGraphObject()(v8);
      sub_1ABAB480C(__dst, &unk_1EB4DB3E0, &unk_1ABF50320);
    }

    else
    {
      sub_1ABC7713C();
      v10 = sub_1ABA7BD00();
      sub_1ABA8E0B8(v10, v11);
    }
  }

  return sub_1ABA80BE4();
}

id sub_1ABC7635C()
{
  sub_1ABA841B8();
  sub_1ABA83928(OBJC_IVAR____TtC20IntelligencePlatform26_GDSwiftGraphObjectContext_context);
  [v1 intValue];
  sub_1ABC77190(sub_1ABC4A42C, &v18);
  v2 = sub_1ABC6BA64();
  sub_1ABA94A84(&v18, v3, &type metadata for CustomGraphTopic, v4, v2, v5, v6, v7, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
  if (v0)
  {
    return sub_1ABA80BE4();
  }

  if (!v20)
  {
    sub_1ABC7713C();
    v15 = sub_1ABA7BD00();
    sub_1ABA8E0B8(v15, v16);
    return sub_1ABA80BE4();
  }

  v8 = v19;
  sub_1ABAFF390(0, &qword_1EB4D5F18, off_1E79601A0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (result)
  {
    objc_allocWithZone(GDGraphTopic);

    v10 = sub_1ABAA58BC();
    sub_1ABC69738(v10, v11, v12);
    v13 = sub_1ABA818E8();
    sub_1ABAA8FA8(v13, v14);
    return sub_1ABA80BE4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABC76498()
{
  sub_1ABA841B8();
  sub_1ABA83928(OBJC_IVAR____TtC20IntelligencePlatform26_GDSwiftGraphObjectContext_context);
  [v1 intValue];
  sub_1ABC77190(sub_1ABC4CABC, &v16);
  v2 = sub_1ABC6BAE0();
  sub_1ABA94A84(&v16, v3, &type metadata for CustomGraphSong, v4, v2, v5, v6, v7, v12, v13[0], v13[1], v13[2], v13[3], v13[4], v13[5], v13[6], v13[7], v13[8], v13[9], v13[10]);
  if (!v0)
  {
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v15, __src, sizeof(v15));
    if (sub_1ABAC9370(v15) == 1)
    {
      sub_1ABC7713C();
      v8 = sub_1ABA7BD00();
      sub_1ABA8E0B8(v8, v9);
    }

    else
    {
      memcpy(v13, v15, sizeof(v13));
      CustomGraphSong.toObjectiveCGraphObject()(v11);
      sub_1ABAB480C(__dst, &qword_1EB4D6350, &unk_1ABF50330);
    }
  }

  return sub_1ABA80BE4();
}

id sub_1ABC765B0()
{
  sub_1ABA841B8();
  sub_1ABA83928(OBJC_IVAR____TtC20IntelligencePlatform26_GDSwiftGraphObjectContext_context);
  [v1 intValue];
  sub_1ABC77190(sub_1ABC4CBC0, &v18);
  v2 = sub_1ABC6BB5C();
  sub_1ABA94A84(&v18, v3, &type metadata for CustomGraphActivityEventType, v4, v2, v5, v6, v7, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
  if (v0)
  {
    return sub_1ABA80BE4();
  }

  if (!v20)
  {
    sub_1ABC7713C();
    v15 = sub_1ABA7BD00();
    sub_1ABA8E0B8(v15, v16);
    return sub_1ABA80BE4();
  }

  v8 = v19;
  sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (result)
  {
    objc_allocWithZone(GDGraphActivityEventType);

    v10 = sub_1ABAA58BC();
    sub_1ABC69AC8(v10, v11, v12);
    v13 = sub_1ABA818E8();
    sub_1ABAA8FA8(v13, v14);
    return sub_1ABA80BE4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABC766EC()
{
  sub_1ABA841B8();
  sub_1ABA83928(OBJC_IVAR____TtC20IntelligencePlatform26_GDSwiftGraphObjectContext_context);
  [v1 intValue];
  sub_1ABC77190(sub_1ABC4CCC4, var28);
  v2 = sub_1ABC6BBD8();
  sub_1ABA94A84(var28, v3, &type metadata for CustomGraphModeOfTransportation, v4, v2, v5, v6, v7, v11, v12, v13, v15, v16, var28[0], var28[1], var28[2], var28[3], var28[4], var28[5], var28[6]);
  if (!v0)
  {
    if (v14)
    {
      CustomGraphModeOfTransportation.toObjectiveCGraphObject()();
    }

    else
    {
      sub_1ABC7713C();
      v9 = sub_1ABA7BD00();
      sub_1ABA8E0B8(v9, v10);
    }
  }

  return sub_1ABA80BE4();
}

id sub_1ABC767D0()
{
  sub_1ABA841B8();
  sub_1ABA83928(OBJC_IVAR____TtC20IntelligencePlatform26_GDSwiftGraphObjectContext_context);
  [v1 intValue];
  sub_1ABC77190(sub_1ABC4CDC8, v24);
  v3 = sub_1ABC6BC54();
  sub_1ABA94A84(v24, v4, &type metadata for CustomGraphSoftware, v5, v3, v6, v7, v8, v14, v15, v16, v18, v19, v20, v21, v22, v23, v24[0], v24[1], v24[2]);
  if (v0)
  {
    return sub_1ABA80BE4();
  }

  if (!v17)
  {
    sub_1ABC7713C();
    v12 = sub_1ABA7BD00();
    sub_1ABA8E0B8(v12, v13);
    return sub_1ABA80BE4();
  }

  sub_1ABAA3CFC();
  sub_1ABAFF390(0, &qword_1EB4D5FD8, off_1E7960130);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (result)
  {
    objc_allocWithZone(GDGraphSoftware);

    sub_1ABAA58BC();
    sub_1ABAA40F0();
    sub_1ABC69C04();
    v10 = sub_1ABA818E8();
    sub_1ABC77428(v10, v11);
    return sub_1ABA80BE4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABC76930()
{
  sub_1ABA841B8();
  ObjectSynthesisDictionaryMapping.init()(v23);
  v3 = v23[0];
  v4 = (v1 + OBJC_IVAR____TtC20IntelligencePlatform26_GDSwiftGraphObjectContext_context);
  v5 = *(v1 + OBJC_IVAR____TtC20IntelligencePlatform26_GDSwiftGraphObjectContext_context + 24);
  v6 = v4[4];
  sub_1ABA93E20(v4, v5);
  v7 = [v2 intValue];
  GraphObjectBareContextProtocol.graphObject<A>(forUntyped:mapping:)(v19, &v16, v5, &type metadata for ObjectSynthesisDictionaryMapping, v6, &protocol witness table for ObjectSynthesisDictionaryMapping, v8, v9, v3, *(&v16 + 1), v17, *(&v17 + 1), v18, v7, v19[1], v19[2], v19[3], v19[4], v20, *(&v20 + 1));

  if (!v0)
  {
    if (v21)
    {
      sub_1ABA946C0(&v20, v23);
      sub_1ABA93E64(v23, v19);
      sub_1ABAD219C(&qword_1EB4D6360, &qword_1ABF50340);
      sub_1ABAD219C(&qword_1EB4D6368, &qword_1ABF50348);
      if (swift_dynamicCast())
      {
        sub_1ABA946C0(&v16, &v20);
        v12 = v21;
        v11 = v22;
        sub_1ABA93E20(&v20, v21);
        (*(*(v11 + 16) + 24))(v12);
        sub_1ABA84B54(v23);
        sub_1ABA84B54(&v20);
      }

      else
      {
        v18 = 0;
        v16 = 0u;
        v17 = 0u;
        sub_1ABAB480C(&v16, &qword_1EB4D6370, &unk_1ABF50350);
        sub_1ABC7713C();
        sub_1ABA7BD00();
        *v15 = 1;
        swift_willThrow();
        sub_1ABA84B54(v23);
      }
    }

    else
    {
      sub_1ABAB480C(&v20, &qword_1EB4D6358, &unk_1ABF50900);
      sub_1ABC7713C();
      v13 = sub_1ABA7BD00();
      sub_1ABA8E0B8(v13, v14);
    }
  }

  return sub_1ABA80BE4();
}

uint64_t sub_1ABC76B34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABC782B8();
  v5 = sub_1ABC70940();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

id sub_1ABC76FC4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(id))
{
  v7 = a3;
  v8 = a1;
  v9 = a5(v7);

  return v9;
}

id _GDSwiftGraphObjectContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _GDSwiftGraphObjectContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _GDSwiftGraphObjectContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1ABC7713C()
{
  result = qword_1EB4D6240;
  if (!qword_1EB4D6240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6240);
  }

  return result;
}

void *sub_1ABC77190@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1ABC77328(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1ABC77370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1ABA7BBB0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1ABC773D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1ABA7BBB0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1ABC77428(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 96))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphActivityEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 104))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphSportsGameEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 112))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphTransportationActivityEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 120))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphWorkingActivityEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 128))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphMeetingActivityEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 136))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphEatingActivityEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 144))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphWatchingTVActivityEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 152))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphCommunicatingActivityEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 160))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphShoppingActivityEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 168))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphMindfulnessActivityEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 176))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphSleepingActivityEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 184))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphTravelingActivityEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 192))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphReadingActivityEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 200))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphVacationingActivityEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 208))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphGamingActivityEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 216))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphSocializingActivityEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 224))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphWakingUpActivityEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 232))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphGoingToBedActivityEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 240))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphExercisingActivityEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 248))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphCommuteActivityEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 256))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphDiningActivityEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 264))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphAttendingAPerformanceActivityEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 272))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphStationaryActivityEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 280))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphLocationVisitActivityEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 288))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphWalkingActivityEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 296))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphRunningActivityEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 304))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphBicyclingActivityEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 312))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphHikingActivityEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 320))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphOnThePhoneActivityEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 328))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphFacetimeActivityEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 336))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphDrivingActivityEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 344))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphBehaviorActivityEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 352))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphCalendarEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 360))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphSongEvent(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 368))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphLocation(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 376))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphOrganization(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 384))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphSportsTeam(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 392))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphPerson(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 400))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphTopic(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 408))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphSong(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 416))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphActivityEventType(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 424))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphModeOfTransportation(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 432))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphSoftware(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 440))();
}

uint64_t dispatch thunk of _GDSwiftGraphObjectContext.graphObject(from:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 448))();
}

_BYTE *storeEnumTagSinglePayload for GDGraphObjectContextError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABC78264()
{
  result = qword_1EB4D6378;
  if (!qword_1EB4D6378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6378);
  }

  return result;
}

unint64_t sub_1ABC782B8()
{
  result = qword_1EB4D6380;
  if (!qword_1EB4D6380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6380);
  }

  return result;
}

uint64_t sub_1ABC7832C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABC79BF0();
  v5 = sub_1ABC70940();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

id sub_1ABC78384(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC20IntelligencePlatform24_GDSwiftLifeEventContext_swiftContext] = a1;
  v6[3] = sub_1ABAD219C(&qword_1EB4D6388, &unk_1ABF50490);
  v6[4] = sub_1ABC79C44();
  v6[0] = a1;
  sub_1ABA93E64(v6, &v1[OBJC_IVAR____TtC20IntelligencePlatform26_GDSwiftGraphObjectContext_context]);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _GDSwiftGraphObjectContext();

  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_1ABA84B54(v6);
  return v3;
}

uint64_t _GDSwiftLifeEventContext.init()()
{
  v1 = type metadata accessor for ViewService();
  v2 = static ViewService.clientService.getter(v1);
  sub_1ABAD219C(&qword_1EB4D6388, &unk_1ABF50490);
  v3 = swift_allocObject();
  v4 = v2;
  v5 = v3;
  v6 = CustomLifeEventContext.init<>(viewService:)(v4);
  if (!v0)
  {
    v7 = v6;
    v8 = objc_allocWithZone(type metadata accessor for _GDSwiftLifeEventContext());
    v5 = sub_1ABC78384(v7);
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

uint64_t sub_1ABC78604(void (*a1)(__n128))
{
  v5 = sub_1ABAD219C(&qword_1EB4D6200, &unk_1ABF6CC00);
  sub_1ABA7AB80(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7E5C0();
  v9 = type metadata accessor for CustomGraphActivityEvent(0);
  v10 = sub_1ABA7BBB0(v9);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*(v2 + OBJC_IVAR____TtC20IntelligencePlatform24_GDSwiftLifeEventContext_swiftContext) + 16);
  a1(v13);
  if (!v3)
  {
    if (sub_1ABA7E1E0(v1, 1, v9) == 1)
    {
      sub_1ABAB480C(v1, &qword_1EB4D6200, &unk_1ABF6CC00);
      sub_1ABC7956C();
      swift_allocError();
      *v17 = 0;
      swift_willThrow();
    }

    else
    {
      sub_1ABC71A50(v1, v15);
      CustomGraphActivityEvent.toObjectiveCGraphObject()(v19);
      v1 = v20;
      sub_1ABC71AB4(v15);
    }
  }

  return v1;
}

void sub_1ABC78784()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = sub_1ABAD219C(&qword_1EB4D1D98, &qword_1ABF4C7C0);
  sub_1ABA7AB80(v6);
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v14 - v10;
  v12 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform24_GDSwiftLifeEventContext_swiftContext);
  sub_1ABC2D3D4(v14 - v10);
  v14[2] = v4;
  v14[3] = v2;
  v14[4] = ObjectType;
  v13 = *(v12 + 16);
  sub_1ABC6DD78();
  sub_1ABAB480C(v11, &qword_1EB4D1D98, &qword_1ABF4C7C0);
  sub_1ABA7BC90();
}

void sub_1ABC7894C()
{
  sub_1ABA7BCA8();
  v13 = v3;
  v5 = v4;
  sub_1ABA7D8C4();
  v6 = sub_1ABAD219C(&qword_1EB4D1D98, &qword_1ABF4C7C0);
  sub_1ABA7AB80(v6);
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7E5C0();
  v10 = *(v1 + OBJC_IVAR____TtC20IntelligencePlatform24_GDSwiftLifeEventContext_swiftContext);
  sub_1ABC2D3D4(v0);
  sub_1ABA8E988();
  v11 = *(v10 + 16);
  sub_1ABC6DC88(v5, v0, (v2 & 1) == 0, v13, &v12);
  sub_1ABAB480C(v0, &qword_1EB4D1D98, &qword_1ABF4C7C0);
  sub_1ABA7BC90();
}

void sub_1ABC78A60()
{
  sub_1ABA7F3D0();
  v1 = *(*(v0 + OBJC_IVAR____TtC20IntelligencePlatform24_GDSwiftLifeEventContext_swiftContext) + 16);
  sub_1ABA80BAC(1);
  sub_1ABC6DC48();
}

uint64_t sub_1ABC78B48()
{
  v2 = sub_1ABAD219C(&qword_1EB4D1DB8, &qword_1ABF34818);
  sub_1ABA7AB80(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = sub_1ABAD219C(&qword_1EB4D1388, &qword_1ABF33510);
  v9 = sub_1ABA7BBB0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  v17 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform24_GDSwiftLifeEventContext_swiftContext);
  v18 = *(sub_1ABC6DAB4() + 16);
  sub_1ABAEDF7C();

  if (!v1)
  {
    v18 = 1;
    if (sub_1ABA7E1E0(v7, 1, v8) == 1)
    {
      sub_1ABAB480C(v7, &qword_1EB4D1DB8, &qword_1ABF34818);
      sub_1ABC7956C();
      swift_allocError();
      *v19 = 1;
      swift_willThrow();
    }

    else
    {
      sub_1ABC795C0(v7, v16);
      sub_1ABC79630();
      sub_1ABC79674(v16, v13);
      v18 = sub_1ABC79CD8(v13);
      sub_1ABAB480C(v16, &qword_1EB4D1388, &qword_1ABF33510);
    }
  }

  return v18;
}

id sub_1ABC78D40(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a1;
  v6 = a4();

  return v6;
}

void sub_1ABC78DEC(uint64_t a1, _BYTE *a2, void (*a3)(id, char *))
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = sub_1ABAD219C(&qword_1EB4D1388, &qword_1ABF33510);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v12 - v8);
  HIBYTE(v12) = 0;
  sub_1ABC79630();
  sub_1ABC79674(a1, v9);
  v10 = sub_1ABC79CD8(v9);
  a3(v10, &v12 + 7);

  *a2 = HIBYTE(v12);
  v11 = *MEMORY[0x1E69E9840];
}

void sub_1ABC78EF0()
{
  sub_1ABA7BCA8();
  sub_1ABA7D8C4();
  v1 = sub_1ABAD219C(&qword_1EB4D1D98, &qword_1ABF4C7C0);
  sub_1ABA7AB80(v1);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform24_GDSwiftLifeEventContext_swiftContext);
  v8 = sub_1ABC6DAB4();
  sub_1ABC2D3D4(v6);
  sub_1ABA8E988();
  v9 = *(v8 + 16);
  sub_1ABAEAAFC();
  sub_1ABAB480C(v6, &qword_1EB4D1D98, &qword_1ABF4C7C0);

  sub_1ABA7BC90();
}

void sub_1ABC790AC()
{
  sub_1ABA7BCA8();
  v13 = v3;
  v5 = v4;
  sub_1ABA7D8C4();
  v6 = sub_1ABAD219C(&qword_1EB4D1D98, &qword_1ABF4C7C0);
  sub_1ABA7AB80(v6);
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7E5C0();
  v10 = *(v1 + OBJC_IVAR____TtC20IntelligencePlatform24_GDSwiftLifeEventContext_swiftContext);
  v11 = sub_1ABC6DAB4();
  sub_1ABC2D3D4(v0);
  sub_1ABA8E988();
  v12 = *(v11 + 16);
  sub_1ABAEA510(v5, v0, (v2 & 1) == 0, v13, &v14);
  sub_1ABAB480C(v0, &qword_1EB4D1D98, &qword_1ABF4C7C0);

  sub_1ABA7BC90();
}

uint64_t sub_1ABC791D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, void (*a8)(char *, uint64_t, uint64_t, _BYTE *))
{
  v21[1] = a5;
  v13 = sub_1ABF21984();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _Block_copy(a6);
  sub_1ABF21954();
  v23 = v18;
  v19 = a1;
  a8(v17, a4, a7, v22);
  (*(v14 + 8))(v17, v13);

  _Block_release(v18);
  return 1;
}

uint64_t sub_1ABC79378()
{
  sub_1ABA7F3D0();
  v1 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform24_GDSwiftLifeEventContext_swiftContext);
  v2 = *(sub_1ABC6DAB4() + 16);
  sub_1ABA80BAC(1);
  sub_1ABAE9FAC();
}

uint64_t sub_1ABC79434(void *a1, int a2, uint64_t a3, int a4, void *aBlock, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v11 = _Block_copy(aBlock);
  v14[2] = v11;
  v12 = a1;
  a7(a3, a6, v14);

  _Block_release(v11);
  return 1;
}

id _GDSwiftLifeEventContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _GDSwiftLifeEventContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1ABC7956C()
{
  result = qword_1EB4D6398;
  if (!qword_1EB4D6398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6398);
  }

  return result;
}

uint64_t sub_1ABC795C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D1388, &qword_1ABF33510);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ABC79630()
{
  result = qword_1EB4CE6F8;
  if (!qword_1EB4CE6F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB4CE6F8);
  }

  return result;
}

uint64_t sub_1ABC79674(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D1388, &qword_1ABF33510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1ABC796E4(uint64_t a1, _BYTE *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  sub_1ABC78DEC(a1, a2, v3);
}

uint64_t dispatch thunk of _GDSwiftLifeEventContext.earliestActivityEvent()()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 472))();
}

uint64_t dispatch thunk of _GDSwiftLifeEventContext.latestActivityEvent()()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 480))();
}

uint64_t dispatch thunk of _GDSwiftLifeEventContext.enumerateActivityEventsThatOverlap(with:ascending:block:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 488))();
}

uint64_t dispatch thunk of _GDSwiftLifeEventContext.enumerateActivityEventsWhoseStartDatesAre(in:ascending:block:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 496))();
}

uint64_t dispatch thunk of _GDSwiftLifeEventContext.enumerateActivityEventsWhoseEndDatesAre(in:ascending:block:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 504))();
}

uint64_t dispatch thunk of _GDSwiftLifeEventContext.enumerateActivityEvents(ascending:block:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 512))();
}

uint64_t dispatch thunk of _GDSwiftLifeEventContext.earliestEntryForActivityEvent()()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 520))();
}

uint64_t dispatch thunk of _GDSwiftLifeEventContext.latestEntryForActivityEvent()()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 528))();
}

uint64_t dispatch thunk of _GDSwiftLifeEventContext.enumerateEntriesForActivityEventsThatOverlap(with:ascending:block:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 536))();
}

uint64_t dispatch thunk of _GDSwiftLifeEventContext.enumerateEntriesForActivityEventsWhoseStartDatesAre(in:ascending:block:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 544))();
}

uint64_t dispatch thunk of _GDSwiftLifeEventContext.enumerateEntriesForActivityEventsWhoseEndDatesAre(in:ascending:block:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 552))();
}

uint64_t dispatch thunk of _GDSwiftLifeEventContext.enumerateEntriesForActivityEvents(ascending:block:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 560))();
}

_BYTE *storeEnumTagSinglePayload for GDLifeEventContextError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABC79B9C()
{
  result = qword_1EB4D63A0;
  if (!qword_1EB4D63A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D63A0);
  }

  return result;
}

unint64_t sub_1ABC79BF0()
{
  result = qword_1EB4D63A8;
  if (!qword_1EB4D63A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D63A8);
  }

  return result;
}

unint64_t sub_1ABC79C44()
{
  result = qword_1EB4CF040;
  if (!qword_1EB4CF040)
  {
    sub_1ABAE2850(&qword_1EB4D6388, &unk_1ABF50490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF040);
  }

  return result;
}

id sub_1ABC79CD8(uint64_t *a1)
{
  v2 = *a1;
  sub_1ABC72A1C();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (result)
  {
    v4 = result;
    v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v6 = sub_1ABAD219C(&qword_1EB4D1388, &qword_1ABF33510);
    v7 = a1 + *(v6 + 36);
    v8 = sub_1ABF21E34();
    v9 = a1 + *(v6 + 40);
    v10 = sub_1ABF21E34();
    v11 = [v5 initWithEntityIdentifier:v4 startDate:v8 endDate:v10];

    sub_1ABC79DB8(a1);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABC79DB8(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D1388, &qword_1ABF33510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1ABC79E20()
{
  v1 = v0;
  v2 = sub_1ABAD219C(&qword_1EB4D1B40, &qword_1ABF34150);
  swift_allocObject();

  v4 = sub_1ABAE6998(v3);
  v8[3] = v2;
  v8[4] = sub_1ABC79F6C();
  v8[0] = v4;
  sub_1ABA93E64(v8, v1 + OBJC_IVAR____TtC20IntelligencePlatform26_GDSwiftGraphObjectContext_context);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for _GDSwiftGraphObjectContext();

  v5 = objc_msgSendSuper2(&v7, sel_init);
  sub_1ABA84B54(v8);

  return v5;
}

id _GDSwiftSubgraphViewContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _GDSwiftSubgraphViewContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1ABC79F6C()
{
  result = qword_1EB4D63B0;
  if (!qword_1EB4D63B0)
  {
    sub_1ABAE2850(&qword_1EB4D1B40, &qword_1ABF34150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D63B0);
  }

  return result;
}

uint64_t sub_1ABC79FD0()
{
  *&__src[0] = 7628135;
  *(&__src[0] + 1) = 0xE300000000000000;
  *&__src[1] = &unk_1F208E5D8;
  *(&__src[1] + 1) = 115;
  *&__src[2] = 0xE100000000000000;
  BYTE8(__src[2]) = 0;
  *&__src[3] = 0xD000000000000034;
  *(&__src[3] + 1) = 0x80000001ABF8D510;
  *&__src[4] = 0;
  *(&__src[4] + 1) = 0xE000000000000000;
  memset(&__src[5], 0, 32);
  memset(v4, 0, sizeof(v4));
  memcpy((v0 + 16), __src, 0x70uLL);

  sub_1ABB51320(__src, &v2);
  sub_1ABAE4AA8(v4);

  sub_1ABB5137C(__src);
  return v0;
}

uint64_t sub_1ABC7A09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (((1 << *(a6 + 64)) & 0x1FA) != 0)
  {
    swift_beginAccess();
    if (*(a6 + 32))
    {
      v10 = sub_1ABAE305C(115, 0xE100000000000000);
      swift_endAccess();
      if (v10)
      {
        swift_beginAccess();
        v11 = *(v10 + 16);

        v10 = sub_1ABE8AE5C(v11);
      }
    }

    else
    {
      swift_endAccess();
      v10 = 0;
    }

    swift_beginAccess();
    if (*(a6 + 32) && (v12 = sub_1ABAE305C(112, 0xE100000000000000)) != 0)
    {
      v13 = v12;
      swift_endAccess();
      swift_beginAccess();
      v14 = *(v13 + 16);

      v15 = sub_1ABE8AE5C(v14);
    }

    else
    {
      swift_endAccess();
      v15 = 0;
    }

    sub_1ABAD219C(&qword_1EB4D63B8, &qword_1ABF673F0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1ABF34060;
    *(v16 + 32) = v10;
    *(v16 + 40) = v15;
    v17 = sub_1ABE9059C(v16);
    swift_setDeallocating();

    sub_1ABB4DB48();
    if ((v17 & 1) == 0)
    {
      v23 = a2 + *(type metadata accessor for QueryContext() + 32);
      v25 = *(v23 + 88);
      v26 = *(v23 + 104);
      v27 = 32;
      if (v25 >> 1 != 0xFFFFFFFF || (*(v23 + 104) & 0x1E) != 0)
      {
        v34 = *(v23 + 96);
        memcpy(__dst, v23, sizeof(__dst));
        v39 = v25;
        v40 = v34;
        v41 = v26;
        v52 = 1;
        *&__src[0] = 0;
        *(&__src[0] + 1) = v10;
        *&__src[1] = 0;
        *(&__src[1] + 1) = v15;
        *(&__src[5] + 1) = 0;
        memset(&__src[2], 0, 48);
        BYTE8(__src[6]) = 32;
        sub_1ABE39F20();
        if (v6)
        {
          memcpy(v36, __src, 0x69uLL);
          sub_1ABAE4B6C(v36);
          return v22 & 1;
        }

        memcpy(v36, __src, 0x69uLL);
        sub_1ABAE4B6C(v36);
        v28 = v42;
        v10 = v43;
        v29 = v44;
        v15 = v45;
        v30 = v46;
        v31 = v47;
        v32 = v48;
        v33 = v49;
        v24 = v50;
        v27 = v51;
      }

      else
      {
        v28 = 0;
        v29 = 0;
        v30 = 0uLL;
        v31 = 0uLL;
        v32 = 0uLL;
        v33 = 0uLL;
      }

      *a1 = v28;
      *(a1 + 8) = v10;
      *(a1 + 16) = v29;
      *(a1 + 24) = v15;
      *(a1 + 32) = v30;
      *(a1 + 48) = v31;
      *(a1 + 64) = v32;
      *(a1 + 80) = v33;
      *(a1 + 96) = v24;
      v22 = 1;
      *(a1 + 104) = v27;
      return v22 & 1;
    }

    if (qword_1ED86E458 != -1)
    {
      swift_once();
    }

    v18 = sub_1ABF237F4();
    sub_1ABA7AA24(v18, qword_1ED86E460);
    v19 = sub_1ABF237D4();
    v20 = sub_1ABF24664();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1ABA78000, v19, v20, "Get operator must have subject and predicate args", v21, 2u);
      MEMORY[0x1AC5AB8B0](v21, -1, -1);
    }
  }

  v22 = 0;
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 88) = xmmword_1ABF34940;
  *(a1 + 104) = 0;
  return v22 & 1;
}

uint64_t sub_1ABC7A464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = (a3 + 32);
    v23 = MEMORY[0x1E69E7CC0];
    do
    {
      memcpy(__dst, v4, 0x58uLL);
      v6 = __dst[3];
      v5 = __dst[4];
      v7 = __dst[7];
      v24 = __dst[6];
      if (__dst[7])
      {
        v8 = __dst[7];
      }

      else
      {
        v8 = 0xE000000000000000;
      }

      sub_1ABB242A4(__dst, &v25);

      v9 = sub_1ABE713BC();
      v25 = v6;
      v26 = v5;
      MEMORY[0x1EEE9AC00](v9);
      sub_1ABA8F4F8();
      v11 = sub_1ABB2F764(sub_1ABB342A0, v10, v9);

      if (v11)
      {
        if (v7)
        {
          v12 = v24;
        }

        else
        {
          v12 = 0;
        }

        v13 = sub_1ABE713BC();
        v25 = v12;
        v26 = v8;
        MEMORY[0x1EEE9AC00](v13);
        sub_1ABA8F4F8();
        v15 = sub_1ABB2F764(sub_1ABC7A930, v14, v13);

        if (v15)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = *(v23 + 16);
            sub_1ABAD8758();
            v23 = v18;
          }

          v16 = *(v23 + 16);
          if (v16 >= *(v23 + 24) >> 1)
          {
            sub_1ABAD8758();
            v23 = v19;
          }

          *(v23 + 16) = v16 + 1;
          memcpy((v23 + 88 * v16 + 32), __dst, 0x58uLL);
        }

        else
        {
          sub_1ABB24250(__dst);
        }
      }

      else
      {
        sub_1ABB24250(__dst);
      }

      v4 += 88;
      --v3;
    }

    while (v3);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for ResultGraph();
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E7CC0];
  *(v20 + 16) = sub_1ABF239C4();
  *(v20 + 24) = v21;
  LOBYTE(__dst[0]) = 2;
  sub_1ABE489A8(v23, __dst);
  return v23;
}

uint64_t sub_1ABC7A740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16) == 29295 && *(a3 + 24) == 0xE200000000000000;
  if (!v6 && (sub_1ABF25054() & 1) == 0)
  {
    return sub_1ABB52174(a1, a2, a3) & 1;
  }

  switch(*(a2 + 64))
  {
    case 2:

      return sub_1ABB52174(a1, a2, a3) & 1;
    default:
      v7 = sub_1ABF25054();

      if (v7)
      {
        return sub_1ABB52174(a1, a2, a3) & 1;
      }

      result = 1;
      break;
  }

  return result;
}

BOOL CustomGraphEvent.isCalendarEvent.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  for (i = (v1 + 64); v2; i += 11)
  {
    if (*i)
    {
      v4 = *(i - 1) == 0x746E6576454B45 && *i == 0xE700000000000000;
      if (v4 || (sub_1ABF25054() & 1) != 0)
      {
        break;
      }
    }

    --v2;
  }

  return v2 != 0;
}

BOOL _s20IntelligencePlatform16CustomGraphEventV06isLifeE0Sbvg_0()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  for (i = (v1 + 64); v2; i += 11)
  {
    if (*i)
    {
      v4 = *(i - 1) == 0x6E6576456566696CLL && *i == 0xE900000000000074;
      if (v4 || (sub_1ABF25054() & 1) != 0)
      {
        break;
      }
    }

    --v2;
  }

  return v2 != 0;
}

uint64_t CustomGraphEventRelationship.cast<A>(as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 8);
  v11 = *(v4 + 16);
  v12 = *(v4 + 24);
  v13 = *(v4 + 32);
  v26[0] = *v4;
  v26[1] = v10;
  v24[1] = v26[0];
  v24[2] = v10;
  v24[3] = v11;
  v24[4] = v12;
  v25 = v13;
  v26[3] = CustomGraphEventRelationship.$eventId.getter(a2);
  v14 = *(a2 + 24);
  v23[2] = *(a2 + 16);
  v23[3] = a3;
  v23[4] = v14;
  v23[5] = a4;
  v23[6] = a1;
  v15 = *(v14 + 8);
  type metadata accessor for TypedEntityIdentifier();
  v16 = sub_1ABF241F4();
  v17 = *(a4 + 8);
  v18 = type metadata accessor for TypedEntityIdentifier();
  v19 = sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  WitnessTable = swift_getWitnessTable();
  v21 = sub_1ABB66290(sub_1ABC7AC90, v23, v16, v18, v19, WitnessTable, MEMORY[0x1E69E7288], v24);

  if (!v5)
  {
    return CustomGraphEventRelationship.init(subentityId:all_eventId:)(v26, v21, a3, a4);
  }

  return result;
}

uint64_t sub_1ABC7ABFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, void *a5@<X6>, void *a6@<X8>)
{
  v13 = *a1;
  v11 = *(a3 + 8);
  type metadata accessor for TypedEntityIdentifier();
  result = TypedEntityIdentifier.cast<A>(as:)(a2, *(a4 + 8), a6);
  if (v6)
  {
    *a5 = v6;
  }

  return result;
}

uint64_t sub_1ABC7AC90@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = v3[2];
  v6 = v3[6];
  return sub_1ABC7ABFC(a1, v3[3], v3[4], v3[5], a2, a3);
}

uint64_t BaseEntityFactObjectProtocol.asGraphLocationDegrees.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 24))();
  if (v3)
  {
    return sub_1ABB24D04(v2, v3);
  }

  else
  {
    return 0;
  }
}

__n128 CustomGraphLocation.Placemark.location.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t CustomGraphLocation.Placemark.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CustomGraphLocation.Placemark.postalAddress.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 32), 0xE8uLL);
  memcpy(a1, (v1 + 32), 0xE8uLL);
  return sub_1ABC7AD88(__dst, v4);
}

uint64_t sub_1ABC7AD88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&unk_1EB4D63C0, &qword_1ABF50618);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *CustomGraphLocation.placemark.getter@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = *(v1 + 112);
  v8 = *(v1 + 120);
  v9 = *(v1 + 96);
  memcpy(__dst, (v1 + 136), sizeof(__dst));
  if (!v5 || (v9 & 1) != 0 || (v8 & 1) != 0)
  {
    sub_1ABC7AF0C(__src);
    return memcpy(a1, __src, 0x108uLL);
  }

  else
  {
    memcpy(&__src[4], (v1 + 136), 0xE8uLL);
    __src[0] = v6;
    __src[1] = v7;
    __src[2] = v4;
    __src[3] = v3;
    nullsub_1(__src);
    memcpy(a1, __src, 0x108uLL);

    return sub_1ABC7AD88(__dst, v11);
  }
}

void CustomGraphLocationLatLongRelationship.location.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 32) & 1) != 0 || (*(v1 + 56))
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
  }

  else
  {
    v2 = *(v1 + 48);
    *a1 = *(v1 + 24);
    *(a1 + 8) = v2;
    *(a1 + 16) = 0;
  }
}

void sub_1ABC7AF0C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 1;
  bzero(a1 + 4, 0xE8uLL);
}

uint64_t sub_1ABC7AF34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ABC7AF54(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 264))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_1ABC7AFA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 248) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 264) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 264) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SubentityIdentifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SubentityIdentifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void *GraphObject.untypedId.getter@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  result = (*(a1 + 32))(&v4);
  *a2 = v4;
  return result;
}

id static GraphObjectObjectiveCConvertible.objectiveCGraphObjectEntityIdentifier(from:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v3 = *(a3 + 8);
  v4 = type metadata accessor for TypedEntityIdentifier();
  return TypedEntityIdentifier<>.objectiveCGraphObjectEntityIdentifier.getter(v4);
}

unint64_t sub_1ABC7B198(uint64_t a1)
{
  result = sub_1ABC7B1C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC7B1C0()
{
  result = qword_1EB4D63D0;
  if (!qword_1EB4D63D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D63D0);
  }

  return result;
}

uint64_t sub_1ABC7B214(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_1ABC7B254(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABC7B3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1ABC7B3A4();
  sub_1ABD4ED20(a1, a2, a3, a4);
}

uint64_t GraphObjectBareContext.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  GraphObjectBareContext.init(_:)(a1);
  return v5;
}

uint64_t *GraphObjectBareContext.init(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  type metadata accessor for InitializationResourcesManager();
  v5 = swift_allocObject();
  v6 = sub_1ABF239C4();
  *(v1 + v4) = v5;
  *(v5 + 16) = v6;
  (*(*(*(v3 + 80) - 8) + 32))(v1 + *(*v1 + 96), a1);
  return v1;
}

uint64_t GraphObjectBareContext.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(v0 + *(*v0 + 104));

  return v0;
}

uint64_t GraphObjectBareContext.__deallocating_deinit()
{
  GraphObjectBareContext.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1ABC7B684(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void GraphObjectBareContextProtocol.graphObject<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v22;
  a20 = v23;
  v80 = v24;
  v81 = v21;
  v76 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
  v79 = v29;
  v78 = sub_1ABF252B4();
  v34 = sub_1ABF247E4();
  v35 = sub_1ABA7BB64(v34);
  v70 = v36;
  v71 = v35;
  v38 = *(v37 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v39);
  v75 = &v70 - v40;
  sub_1ABAA1C98();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64(AssociatedTypeWitness);
  v43 = v42;
  v45 = *(v44 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v70 - v47;
  v49 = sub_1ABAB5AD8();
  sub_1ABA7C2D4();
  v50 = swift_getAssociatedTypeWitness();
  v72 = sub_1ABA7BB64(v50);
  v73 = v51;
  v53 = *(v52 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v54);
  v55 = *v33;
  v56 = *(v27 + 24);
  v77 = v20;
  v74 = v31;
  v56(v31, v27);
  a10 = v55;
  v57 = v81;
  (*(v49 + 72))(&a10, AssociatedTypeWitness, v49);
  if (v57)
  {
    (*(v43 + 8))(v48, AssociatedTypeWitness);
  }

  else
  {
    (*(v43 + 8))(v48, AssociatedTypeWitness);
    sub_1ABA7C2D4();
    swift_getAssociatedTypeWitness();
    v58 = v72;
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v59 = v75;
    v60 = v79;
    v61 = sub_1ABA7D0EC();
    sub_1ABC80FCC(v61, 1, v60, v62);
    v63 = v78;
    if (sub_1ABA7E1E0(v59, 1, v78) == 1)
    {
      v64 = sub_1ABA7E48C();
      v65(v64, v58);
      (*(v70 + 8))(v59, v71);
      v66 = 1;
      v67 = v80;
    }

    else
    {
      v67 = v80;
      sub_1ABD49B3C(v63, &a10, v80);
      v68 = sub_1ABA7E48C();
      v69(v68, v58);
      v66 = 0;
    }

    sub_1ABA7B9B4(v67, v66, 1, v60);
  }

  sub_1ABA7BC90();
}

void GraphObjectBareContextProtocol.graphObjects<A, B>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v23;
  a20 = v24;
  v81 = v25;
  v79 = v26;
  v80 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v71 = v36;
  sub_1ABA7BD7C();
  v68 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v40);
  sub_1ABA7C21C();
  v70 = v41;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BD7C();
  v82 = v42;
  v44 = *(v43 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v45);
  sub_1ABA83634();
  v77 = v22;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1ABA7F418();
  v67 = swift_getAssociatedTypeWitness();
  v47 = sub_1ABA7BB64(v67);
  v66 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1ABA7C068();
  v75 = v51;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v66 - v53;
  v55 = *(v31 + 24);
  v69 = v20;
  v55(v35, v31);
  v76 = v35;
  v83[2] = v35;
  v83[3] = v33;
  v73 = v29;
  v74 = v33;
  v83[4] = v79;
  v83[5] = v31;
  v72 = v31;
  v83[6] = v29;
  v83[7] = v80;
  a10 = sub_1ABB444E4(sub_1ABC7F9CC, v83, v79, &type metadata for EntityIdentifier, MEMORY[0x1E69E73E0], v80, MEMORY[0x1E69E7410], v56);
  v57 = *(AssociatedConformanceWitness + 80);
  v58 = sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
  sub_1ABA7D918();
  v60 = sub_1ABAB47C4(v59, &qword_1EB4D1720, &qword_1ABF338B0);
  v61 = AssociatedTypeWitness;
  v57(&a10, v58, v60, AssociatedTypeWitness, AssociatedConformanceWitness);

  v62 = sub_1ABA7E48C();
  v63(v62, v61);
  if (!v21)
  {
    v64 = v67;
    (*(v66 + 32))(v75, v54, v67);
    v65 = v70;
    (*(v68 + 16))(v70, v69, v76);
    sub_1ABAA19E0();
    swift_getAssociatedTypeWitness();
    sub_1ABAB5AD8();
    sub_1ABA9E10C();
    sub_1ABA97560();
    swift_getAssociatedConformanceWitness();
    sub_1ABAA19E0();
    swift_getAssociatedTypeWitness();
    sub_1ABA9E10C();
    swift_getAssociatedConformanceWitness();
    sub_1ABEB20F8(v75, v65, 1, v64, v76, v71);
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void GraphObjectBareContextProtocol<>.enumerateGraphObjects<A, B>(for:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1ABA7BCA8();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v50 = v36;
  v49 = v37;
  v38 = a21;
  v39 = a22;
  sub_1ABA94AA4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64(AssociatedTypeWitness);
  v52 = v40;
  v42 = *(v41 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v43);
  sub_1ABA83634();
  (*(v29 + 24))(v35, v29);
  v55[2] = v35;
  v55[3] = v33;
  v55[4] = v31;
  v55[5] = v29;
  v55[6] = v27;
  v55[7] = v38;
  v55[8] = v39;
  a10 = sub_1ABB444E4(sub_1ABC7D73C, v55, v31, &type metadata for EntityIdentifier, MEMORY[0x1E69E73E0], v38, MEMORY[0x1E69E7410], v44);
  v53[2] = v35;
  v53[3] = v33;
  v53[4] = v31;
  v53[5] = v29;
  v53[6] = v27;
  v53[7] = v38;
  v53[8] = v39;
  v53[9] = v49;
  v53[10] = v50;
  v54 = v22;
  v45 = *(v39 + 24);
  v46 = sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
  sub_1ABA7D918();
  v48 = sub_1ABAB47C4(v47, &qword_1EB4D1720, &qword_1ABF338B0);
  v45(&a10, sub_1ABC7D9B4, v53, v46, v48, AssociatedTypeWitness, v39);

  (*(v52 + 8))(v23, AssociatedTypeWitness);
  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void GraphObjectBareContextProtocol.graphObject<A>(forUntyped:mapping:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v22;
  a20 = v23;
  v72 = v24;
  v68 = v26;
  v69 = v25;
  v28 = v27;
  v71 = v29;
  v31 = v30;
  v33 = v32;
  sub_1ABAA1C98();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64(AssociatedTypeWitness);
  v36 = v35;
  v38 = *(v37 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v39);
  sub_1ABA83634();
  sub_1ABAA17B4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1ABA7F418();
  v41 = swift_getAssociatedTypeWitness();
  v66 = sub_1ABA7BB64(v41);
  v67 = v42;
  v44 = *(v43 + 64);
  sub_1ABA7BB88();
  v46 = MEMORY[0x1EEE9AC00](v45);
  v48 = &v66 - v47;
  v49 = *v33;
  v50 = *(v28 + 24);
  v70 = v20;
  v50(v31, v28, v46);
  *&v73 = v49;
  (*(AssociatedConformanceWitness + 72))(&v73, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v21)
  {
    v51 = *(v36 + 8);
    v52 = sub_1ABA7D0F8();
    v53(v52);
  }

  else
  {
    v54 = *(v36 + 8);
    v55 = sub_1ABA7D0F8();
    v56(v55);
    a10 = v49;
    sub_1ABA7F418();
    swift_getAssociatedTypeWitness();
    v57 = v66;
    v58 = swift_getAssociatedConformanceWitness();
    v59 = swift_getAssociatedConformanceWitness();
    v60 = sub_1ABC80E28(&a10, 1, v71, &v73, v31, v58, v59, v68);
    if (v74 == 255)
    {
      v63 = sub_1ABA7E48C();
      v64(v63, v57);
      sub_1ABA925A4(&v73, qword_1EB4D3948, &qword_1ABF508F0);
      v65 = v72;
      *(v72 + 32) = 0;
      *v65 = 0u;
      v65[1] = 0u;
    }

    else
    {
      v61 = v72;
      v62 = v67;
      if (v74)
      {
        a10 = v73;
        sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
        swift_willThrowTypedImpl();
        (*(v62 + 8))(v48);
      }

      else
      {
        (*(v67 + 8))(v48, v57, v60);
        sub_1ABAFF5C4(&v73, v61);
      }
    }
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

{
  sub_1ABA7BCA8();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v44 = v25;
  v45 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_1ABA94AA4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64(AssociatedTypeWitness);
  v37 = *(v36 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v38);
  sub_1ABA7BCE0();
  v39 = *v34;
  sub_1ABAA2970();
  v40(v32, v28);
  a10 = v39;
  v46[2] = v32;
  v46[3] = v30;
  v46[4] = v28;
  v46[5] = v45;
  v46[6] = v24;
  v46[7] = v39;
  v46[8] = v44;
  v47 = v20;
  v41 = sub_1ABAD219C(&qword_1EB4D6358, &unk_1ABF50900);
  sub_1ABE91010(&a10, sub_1ABC7DA10, v46, AssociatedTypeWitness, v41, v24);
  v42 = sub_1ABA95890();
  v43(v42, AssociatedTypeWitness);
  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void GraphObjectBareContextProtocol.entity(for:)()
{
  sub_1ABA7BCA8();
  v46 = v2;
  *&v47 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64(AssociatedTypeWitness);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1ABA7F418();
  v18 = swift_getAssociatedTypeWitness();
  v19 = sub_1ABA7BB64(v18);
  v44 = v20;
  v45 = v19;
  v22 = *(v21 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA7ED98();
  v24 = *v8;
  (*(v4 + 24))(v6, v4);
  *&v49[0] = v24;
  (*(AssociatedConformanceWitness + 72))(v49, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v1)
  {
    (*(v11 + 8))(v16, AssociatedTypeWitness);
  }

  else
  {
    v25 = v44;
    (*(v11 + 8))(v16, AssociatedTypeWitness);
    sub_1ABA7F418();
    sub_1ABA97560();
    swift_getAssociatedTypeWitness();
    sub_1ABAA3928();
    sub_1ABAA19E0();
    swift_getAssociatedConformanceWitness();
    sub_1ABAA3928();
    sub_1ABAB5AD8();
    sub_1ABA9E10C();
    sub_1ABC80EA0(v26);
    v27 = v52;
    if (HIBYTE(v52) <= 0xFEu)
    {
      v32 = v46;
      v33 = v25;
      if ((v52 & 0x100) != 0)
      {
        sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
        swift_willThrowTypedImpl();
        v40 = *(v25 + 8);
        v41 = sub_1ABA9E10C();
        v42(v41);
      }

      else
      {
        v47 = v49[0];
        v48 = v49[1];
        v34 = v50;
        v35 = v51;
        v36 = *(v33 + 8);
        v37 = sub_1ABA9E10C();
        v38(v37);
        v39 = v48;
        *v32 = v47;
        *(v32 + 16) = v39;
        *(v32 + 32) = v34;
        *(v32 + 40) = v35;
        *(v32 + 48) = v27;
      }
    }

    else
    {
      v28 = *(v25 + 8);
      v29 = sub_1ABA9E10C();
      v30(v29);
      v31 = v46;
      *(v46 + 48) = 0;
      v31[1] = 0u;
      v31[2] = 0u;
      *v31 = 0u;
    }
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void GraphObjectBareContextProtocol.entity<>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_1ABA94AA4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64(AssociatedTypeWitness);
  v32 = *(v31 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v33);
  sub_1ABA7BCE0();
  v34 = *v29;
  sub_1ABAA2970();
  v35(v27, v25);
  a10 = v34;
  v39[2] = v27;
  v39[3] = v25;
  v39[4] = v23;
  v36 = sub_1ABAD219C(&qword_1EB4D6500, &qword_1ABF508F8);
  sub_1ABE91010(&a10, sub_1ABC7D9F0, v39, AssociatedTypeWitness, v36, v23);
  v37 = sub_1ABA95890();
  v38(v37, AssociatedTypeWitness);
  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void sub_1ABC7C9D0(void (*a1)(uint64_t (*)(uint64_t a1), char *, double)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1ABC80EE4(a1, a2, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  v8 = v12;
  if (HIBYTE(v12) <= 0xFEu)
  {
    if ((v12 & 0x100) != 0)
    {
      sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
      swift_willThrowTypedImpl();
    }

    else
    {
      v9 = v11[1];
      v10 = v11[2];
      *a3 = v11[0];
      *(a3 + 16) = v9;
      *(a3 + 32) = v10;
      *(a3 + 48) = v8;
    }
  }

  else
  {
    *(a3 + 48) = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }
}

void GraphObjectBareContextProtocol.entities<A>(for:)()
{
  sub_1ABA7BCA8();
  v34 = v1;
  v35 = v2;
  v4 = v3;
  v6 = v5;
  v32 = v8;
  v33 = v7;
  sub_1ABAA1C98();
  sub_1ABAA19E0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64(AssociatedTypeWitness);
  v11 = *(v10 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7E358();
  sub_1ABAA17B4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1ABA7C2D4();
  v31 = swift_getAssociatedTypeWitness();
  v14 = sub_1ABA7BB64(v31);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C068();
  v30 = v19;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  (*(v4 + 24))(v6, v4);
  v23 = *(AssociatedConformanceWitness + 80);
  v24 = sub_1ABA96CEC();
  v25(v24);
  v26 = sub_1ABA960B0();
  v27(v26, AssociatedTypeWitness);
  if (!v0)
  {
    v29 = v30;
    v28 = v31;
    (*(v16 + 32))(v30, v22, v31);
    sub_1ABA7C2D4();
    sub_1ABAA17B4();
    swift_getAssociatedTypeWitness();
    sub_1ABA7D0F8();
    sub_1ABAB5AD8();
    sub_1ABA7D0F8();
    swift_getAssociatedConformanceWitness();
    sub_1ABAA2D04();
    sub_1ABAA17B4();
    swift_getAssociatedTypeWitness();
    sub_1ABA7D0F8();
    swift_getAssociatedConformanceWitness();
    sub_1ABBEDC1C(v29, v28, v32);
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABC7CF18@<X0>(uint64_t a1@<X2>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X8>, uint64_t a5)
{
  v12 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1ABC8102C(&v12, 1, a3, v10, a2, AssociatedConformanceWitness, a5);
  if (v11 == 255)
  {
    result = sub_1ABA925A4(v10, qword_1EB4D3948, &qword_1ABF508F0);
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else if (v11)
  {
    v12 = *&v10[0];
    sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
    return swift_willThrowTypedImpl();
  }

  else
  {
    return sub_1ABAFF5C4(v10, a4);
  }

  return result;
}

void GraphObjectBareContextProtocol.graphObjects<A, B>(forUntyped:mapping:)()
{
  sub_1ABA7BCA8();
  v52 = v3;
  v53 = v2;
  v58 = v4;
  v59 = v5;
  v7 = v6;
  v9 = v8;
  v57 = v10;
  sub_1ABA7BD7C();
  v48 = v11;
  v49 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7C21C();
  v51 = v16;
  v56 = v17;
  sub_1ABA7BD7C();
  v46 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7C21C();
  v55 = v22;
  sub_1ABAA1C98();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64(AssociatedTypeWitness);
  v25 = *(v24 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA7E358();
  sub_1ABA97560();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1ABA7F418();
  v47 = swift_getAssociatedTypeWitness();
  v28 = sub_1ABA7BB64(v47);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA7C068();
  v54 = v33;
  sub_1ABA7D5FC();
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v46 - v36;
  v38 = *(v7 + 24);
  v50 = v0;
  v38(v9, v7, v35);
  v39 = *(AssociatedConformanceWitness + 80);
  v40 = sub_1ABA96CEC();
  v41(v40);
  v42 = sub_1ABA960B0();
  v43(v42, AssociatedTypeWitness);
  if (!v1)
  {
    v44 = v47;
    (*(v30 + 32))(v54, v37, v47);
    (*(v46 + 16))(v55, v48, v56);
    v45 = v51;
    (*(v49 + 16))(v51, v50, v9);
    sub_1ABA7F418();
    swift_getAssociatedTypeWitness();
    sub_1ABAA3928();
    v59 = swift_getAssociatedConformanceWitness();
    sub_1ABAA3928();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    sub_1ABAA3928();
    swift_getAssociatedConformanceWitness();
    sub_1ABB6830C(v54, v55, v45, 1, v44, v9, v56, v52);
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void GraphObjectBareContextProtocol<>.enumerateEntities<A>(for:block:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  sub_1ABA94AA4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64(AssociatedTypeWitness);
  v16 = v15;
  v18 = *(v17 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7E358();
  (*(v6 + 24))(v10, v6);
  v23[2] = v10;
  v23[3] = v8;
  v23[4] = v6;
  v23[5] = v4;
  v23[6] = v2;
  v23[7] = v20;
  v23[8] = v21;
  (*(v2 + 24))(v22, sub_1ABC7DA44, v23, v8, v4, AssociatedTypeWitness, v2);
  (*(v16 + 8))(v0, AssociatedTypeWitness);
  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABC7D5E0(uint64_t *a1, void (*a2)(uint64_t (*)(uint64_t a1), char *, double), uint64_t a3, uint64_t (*a4)(uint64_t *, __int128 *))
{
  v17 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1ABC80EE4(a2, a3, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
  v11 = v15[0];
  v12 = v15[1];
  v13 = v15[2];
  v14 = v16;
  v9 = a4(&v17, &v11);
  sub_1ABC7F940(v11, *(&v11 + 1), v12, *(&v12 + 1), v13, *(&v13 + 1), v14);
  return v9 & 1;
}

uint64_t sub_1ABC7D748(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, char *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v26 = a4;
  v27 = a6;
  v24 = a2;
  v25 = a3;
  sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
  sub_1ABF252B4();
  v15 = sub_1ABF247E4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v21 - v18;
  v28 = *a1;
  TypedEntityIdentifier.init(untyped:)(&v28, a8, a11, &v29);
  if (!v11)
  {
    v22 = v16;
    v23 = v15;
    v21 = a5;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_1ABC81098(a8, 1, a8, v19);
    LOBYTE(a1) = v26(&v29, v19);
    (*(v22 + 8))(v19, v23);
  }

  return a1 & 1;
}

void sub_1ABC7D9F0(void (*a1)(uint64_t (*)(uint64_t a1), char *, double)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  sub_1ABC7C9D0(a1, a2, a3);
}

uint64_t sub_1ABC7DA10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[8];
  v4 = v1[9];
  v6 = v1[6];
  return sub_1ABC7CF18(v1[7], v1[2], v1[3], a1, v1[5]);
}

uint64_t sub_1ABC7DA44(uint64_t *a1, void (*a2)(uint64_t (*)(uint64_t a1), char *, double), uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 64);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  return sub_1ABC7D5E0(a1, a2, a3, *(v3 + 56)) & 1;
}

void GraphObjectBareContextProtocol<>.enumerateGraphObjects<A, B>(forUntyped:mapping:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  v26 = v25;
  v43 = v28;
  v44 = v27;
  v30 = v29;
  v32 = v31;
  v45 = v33;
  v46 = v34;
  v47 = v35;
  sub_1ABA94AA4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64(AssociatedTypeWitness);
  v38 = v37;
  v40 = *(v39 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v41);
  sub_1ABA7BCE0();
  sub_1ABAA2970();
  v42(v32, v26);
  v48[2] = v32;
  v48[3] = v30;
  v48[4] = v43;
  v48[5] = v26;
  v48[6] = a21;
  v48[7] = a22;
  v49 = a23;
  v50 = v44;
  v51 = v46;
  v52 = v45;
  v53 = v23;
  (*(v49 + 24))(v47, sub_1ABC7DD54, v48, v30, a21, AssociatedTypeWitness, v49);
  (*(v38 + 8))(v24, AssociatedTypeWitness);
  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABC7DBE8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, _BYTE *, double), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v21 = *a1;
  v19 = v21;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = sub_1ABC8102C(&v19, 1, a10, v20, a8, AssociatedConformanceWitness, a13);
  v16 = a4(&v21, v20, v15);
  sub_1ABA925A4(v20, qword_1EB4D3948, &qword_1ABF508F0);
  return v16 & 1;
}

void GraphObjectBareContextProtocol<>.entities()()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v31 = v8;
  sub_1ABA94AA4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64(AssociatedTypeWitness);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7BCE0();
  sub_1ABA7F418();
  v29 = swift_getAssociatedTypeWitness();
  v15 = sub_1ABA7BB64(v29);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7C068();
  v28 = v20;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v28 - v22;
  sub_1ABAA2970();
  v30 = v7;
  v24(v7, v5);
  (*(v3 + 48))(AssociatedTypeWitness, v3);
  (*(v11 + 8))(v1, AssociatedTypeWitness);
  if (!v0)
  {
    (*(v17 + 32))(v28, v23, v29);
    sub_1ABA7F418();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_1ABA8394C();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    sub_1ABAA2D04();
    swift_getAssociatedTypeWitness();
    sub_1ABA7D0F8();
    swift_getAssociatedConformanceWitness();
    v25 = sub_1ABA82DAC();
    sub_1ABBEDC1C(v25, v26, v27);
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void GraphObjectBareContextProtocol<>.graphObjects<A>(ofType:)()
{
  sub_1ABA7BCA8();
  v4 = v3;
  v43 = v6;
  v44 = v5;
  v8 = v7;
  v10 = v9;
  v42 = v11;
  sub_1ABA7BD7C();
  v37 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7C21C();
  v41 = v16;
  sub_1ABA94AA4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64(AssociatedTypeWitness);
  v19 = v18;
  v21 = *(v20 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA7ED98();
  sub_1ABA98008();
  v40 = swift_getAssociatedTypeWitness();
  v23 = sub_1ABA7BB64(v40);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA7C068();
  v45 = v28;
  sub_1ABA7D5FC();
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v36 - v31;
  v33 = *(v8 + 24);
  v38 = v8;
  AssociatedConformanceWitness = v0;
  v33(v10, v8, v30);
  (*(v4 + 48))(AssociatedTypeWitness, v4);
  (*(v19 + 8))(v2, AssociatedTypeWitness);
  if (!v1)
  {
    v34 = v40;
    (*(v25 + 32))(v45, v32, v40);
    v35 = v41;
    (*(v37 + 16))(v41, AssociatedConformanceWitness, v10);
    sub_1ABA98008();
    swift_getAssociatedTypeWitness();
    sub_1ABA82DAC();
    swift_getAssociatedConformanceWitness();
    sub_1ABA82DAC();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    sub_1ABA82DAC();
    swift_getAssociatedConformanceWitness();
    sub_1ABEB20F8(v45, v35, 0, v34, v10, v42);
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void GraphObjectBareContextProtocol<>.graphObjects<A>(mapping:)()
{
  sub_1ABA7BCA8();
  v4 = v3;
  v49 = v6;
  v50 = v5;
  v8 = v7;
  v10 = v9;
  sub_1ABA7BD7C();
  v44 = v11;
  v45 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7C21C();
  v48 = v15;
  v53 = v16;
  sub_1ABA7BD7C();
  v43[0] = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA7C21C();
  v52 = v21;
  sub_1ABA94AA4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64(AssociatedTypeWitness);
  v24 = v23;
  v26 = *(v25 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA7BCE0();
  sub_1ABA98008();
  v46 = swift_getAssociatedTypeWitness();
  v28 = sub_1ABA7BB64(v46);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA7C068();
  v51 = v33;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v34);
  v36 = v43 - v35;
  sub_1ABAA2970();
  AssociatedConformanceWitness = v0;
  v43[1] = v8;
  v37(v10, v8);
  v38 = *(v4 + 48);
  v39 = sub_1ABA9E10C();
  v40(v39);
  (*(v24 + 8))(v2, AssociatedTypeWitness);
  if (!v1)
  {
    v41 = v46;
    (*(v30 + 32))(v51, v36, v46);
    (*(v43[0] + 16))(v52, v44, v53);
    v42 = v48;
    (*(v45 + 16))(v48, AssociatedConformanceWitness, v10);
    sub_1ABA98008();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1ABA7D0F8();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_1ABB6830C(v51, v52, v42, 1, v41, v10, v53, v49);
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void GraphObjectBareContextProtocol<>.enumerateEntities(block:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  sub_1ABA94AA4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64(AssociatedTypeWitness);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7ED98();
  v9 = sub_1ABA8E9A8();
  v10(v9);
  v11 = *(v2 + 16);
  sub_1ABA97560();
  v12();
  (*(v5 + 8))(v0, AssociatedTypeWitness);

  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABC7E8EC(uint64_t *a1, void (*a2)(uint64_t (*)(uint64_t a1), char *, double), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *, __int128 *))
{
  v18 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1ABC80EE4(a2, a3, AssociatedTypeWitness, AssociatedConformanceWitness, v16);
  v12 = v16[0];
  v13 = v16[1];
  v14 = v16[2];
  v15 = v17;
  v10 = a5(&v18, &v12);
  sub_1ABC7F940(v12, *(&v12 + 1), v13, *(&v13 + 1), v14, *(&v14 + 1), v15);
  return v10 & 1;
}

uint64_t sub_1ABC7EA48(uint64_t *a1, void (*a2)(uint64_t (*)(uint64_t a1), char *, double), uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 56);
  v8 = *(v3 + 32);
  return sub_1ABC7E8EC(a1, a2, a3, *(v3 + 40), *(v3 + 48)) & 1;
}

void GraphObjectBareContextProtocol<>.enumerateGraphObjects<A>(ofType:block:)()
{
  sub_1ABA7BCA8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_1ABA94AA4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64(AssociatedTypeWitness);
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BCE0();
  sub_1ABAA2970();
  v10(v5, v3);
  v11 = *(v1 + 16);
  sub_1ABA97560();
  v12();
  v13 = sub_1ABA95890();
  v14(v13, AssociatedTypeWitness);

  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABC7EBD0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v43 = a5;
  v44 = a8;
  v38 = a7;
  v39 = a6;
  v41 = a2;
  v42 = a3;
  sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
  v13 = sub_1ABF252B4();
  v14 = sub_1ABF247E4();
  v46 = *(v14 - 8);
  v15 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  v45 = v13;
  v21 = *(v13 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v32 - v24;
  v47 = *a1;
  v40 = a11;
  TypedEntityIdentifier.init(untyped:)(&v47, a9, a11, &v48);
  if (v11)
  {
  }

  else
  {
    v34 = v25;
    v35 = v17;
    v36 = v21;
    v37 = v14;
    v33 = v48;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_1ABC81098(a9, 0, a9, v20);
    v26 = v45;
    if (sub_1ABA7E1E0(v20, 1, v45) != 1)
    {
      v29 = v36;
      v30 = v34;
      (*(v36 + 32))(v34, v20, v26);
      v48 = v33;
      v31 = v35;
      (*(v29 + 16))(v35, v30, v26);
      sub_1ABA7B9B4(v31, 0, 1, v26);
      v27 = v39(&v48, v31);
      (*(v46 + 8))(v31, v37);
      (*(v29 + 8))(v30, v26);
      return v27 & 1;
    }

    (*(v46 + 8))(v20, v37);
  }

  v27 = 1;
  return v27 & 1;
}

void GraphObjectBareContextProtocol<>.enumerateGraphObjects<A>(mapping:block:)()
{
  sub_1ABA7BCA8();
  v1 = v0;
  v3 = v2;
  sub_1ABA94AA4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64(AssociatedTypeWitness);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v10 = *(v3 + 24);
  v11 = sub_1ABA9E10C();
  v12(v11);
  v13 = *(v1 + 16);
  sub_1ABA97560();
  v14();
  v15 = *(v6 + 8);
  v16 = sub_1ABAA3928();
  v17(v16);

  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABC7F158(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t *, __int128 *), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = *a1;
  v21 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1ABC8102C(&v21, 1, a10, &v17, a9, AssociatedConformanceWitness, a12);
  if (v18[24] == 255)
  {
    sub_1ABA925A4(&v17, qword_1EB4D3948, &qword_1ABF508F0);
    v14 = 1;
  }

  else
  {
    v19 = v17;
    v20[0] = *v18;
    *(v20 + 9) = *&v18[9];
    v21 = v12;
    sub_1ABC7F8D0(&v19, &v17);
    v14 = a7(&v21, &v17);
    sub_1ABA925A4(&v17, qword_1EB4D3948, &qword_1ABF508F0);
    sub_1ABA925A4(&v19, &qword_1EB4D6508, &unk_1ABF50940);
  }

  return v14 & 1;
}

void GraphObjectBareContextProtocol<>.entityIds(referringTo:)()
{
  sub_1ABA7BCA8();
  sub_1ABAB5D04();
  sub_1ABA94AA4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64(AssociatedTypeWitness);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7ED98();
  v5 = *v0;
  v6 = sub_1ABA8E9A8();
  v7(v6);
  v8 = sub_1ABAA5388();
  v9(v8);
  v10 = sub_1ABA7AD44();
  v11(v10);
  sub_1ABA7BC90();
}

void GraphObjectBareContextProtocol<>.entityIds(referredBy:)()
{
  sub_1ABA7BCA8();
  sub_1ABAB5D04();
  sub_1ABA94AA4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64(AssociatedTypeWitness);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7ED98();
  v5 = *v0;
  v6 = sub_1ABA8E9A8();
  v7(v6);
  v8 = sub_1ABAA5388();
  v9(v8);
  v10 = sub_1ABA7AD44();
  v11(v10);
  sub_1ABA7BC90();
}

void sub_1ABC7F5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1ABA7BCA8();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  a10 = *v36;
  v38 = v37(&a10, v32, v28, v24);
  if (!v21)
  {
    v41[3] = v41;
    v41[2] = a21;
    a10 = v38;
    MEMORY[0x1EEE9AC00](v38);
    v41[1] = v40;
    v40[2] = v33;
    v40[3] = v31;
    v40[4] = v29;
    v40[5] = v27;
    v40[6] = v25;
    v40[7] = v35;
    sub_1ABAD219C(&unk_1EB4DB8E0, &unk_1ABF50A20);
    type metadata accessor for TypedEntityIdentifier();
    sub_1ABAB47C4(&qword_1EB4CF810, &unk_1EB4DB8E0, &unk_1ABF50A20);
    v39 = sub_1ABF23F24();

    a10 = v39;
    sub_1ABA7C2D4();
    sub_1ABF241F4();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1ABA97340();
    sub_1ABF243E4();
  }

  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void sub_1ABC7F778(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  EntityIdentifier.typed<A>(as:)(a2, a3, &v8);
  if (v4)
  {

    v6 = 0;
  }

  else
  {
    v6 = v8;
  }

  *a4 = v6;
  *(a4 + 8) = v4 != 0;
}

void sub_1ABC7F7F4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  v6 = v2[6];
  v5 = v2[7];
  sub_1ABC7F778(a1, v2[3], v2[5], a2);
}

uint64_t sub_1ABC7F8D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D6508, &unk_1ABF50940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1ABC7F940(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (BYTE1(a7) != 255)
  {
    sub_1ABC7F958(a1, a2, a3, a4, a5, a6, a7, BYTE1(a7) & 1);
  }
}

void sub_1ABC7F958(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {
  }

  else
  {
  }
}

uint64_t sub_1ABC7FA40(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(*(a3 + a4 - 24) - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - v7;
  (*(v9 + 16))(&v12 - v7, v6);
  v10 = *a2;
  return sub_1ABC7FB94(v8);
}

uint64_t sub_1ABC7FB00@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_1ABA7C2E0();
  v5 = *(v4 + 184);
  swift_beginAccess();
  sub_1ABA7C2E0();
  sub_1ABA7D08C(*(v6 + 160));
  return (*(v7 + 16))(a1, &v1[v5]);
}

uint64_t sub_1ABC7FB94(uint64_t a1)
{
  v3 = *v1;
  sub_1ABA7C2E0();
  v5 = *(v4 + 184);
  swift_beginAccess();
  sub_1ABA7C2E0();
  sub_1ABA7D08C(*(v6 + 160));
  (*(v7 + 40))(&v1[v5], a1);
  return swift_endAccess();
}

uint64_t (*sub_1ABC7FC30())()
{
  v1 = *(*v0 + 184);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t *GraphObjectContext.__allocating_init(_:objectMapping:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return GraphObjectContext.init(_:objectMapping:)(a1, a2);
}

uint64_t *GraphObjectContext.init(_:objectMapping:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 152);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - v8;
  v11 = *(v10 + 184);
  v12 = *(v10 + 160);
  sub_1ABA7D08C(v12);
  v14 = v13;
  (*(v13 + 16))(v2 + v15);
  (*(v6 + 16))(v9, a1, v5);
  v16 = GraphObjectBareContext.init(_:)(v9);
  (*(v14 + 8))(a2, v12);
  (*(v6 + 8))(a1, v5);
  return v16;
}

uint64_t *GraphObjectContext.__allocating_init<>(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return GraphObjectContext.init<>(_:)(a1);
}

uint64_t *GraphObjectContext.init<>(_:)(uint64_t a1)
{
  v3 = *(*v1 + 152);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  ObjectSynthesisDictionaryMapping.init()(&v11);
  *(v1 + *(*v1 + 184)) = v11;
  (*(v4 + 16))(v7, a1, v3);
  v8 = GraphObjectBareContext.init(_:)(v7);
  (*(v4 + 8))(a1, v3);
  return v8;
}