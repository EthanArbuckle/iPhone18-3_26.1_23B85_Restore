void sub_10000187C(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 calendarIdentifier];
  sub_1000086A8();

  v5 = CUIKDisplayedTitleForCalendar();
  if (!v5)
  {
    sub_1000086A8();
    v5 = sub_100008698();
  }

  type metadata accessor for EKUICalendar();
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_100008698();

  v8 = [v6 initWithIdentifier:v7 displayString:v5];

  v9 = [v3 source];
  if (!v9)
  {
    __break(1u);
    goto LABEL_22;
  }

  v10 = v9;
  v11 = [v9 externalID];

  [v8 setAcAccountIdentifier:v11];
  v12 = [v3 image];
  if (v12)
  {
    v13 = v12;
    if ([v12 type] == 1)
    {
      v14 = [v13 name];
      if (v14)
      {
        v15 = v14;
        v16 = objc_opt_self();
        v17 = v8;
        v18 = [v16 systemImageNamed:v15];

        [v17 setDisplayImage:v18];
      }
    }
  }

  v19 = v8;
  v20 = [v19 displayImage];
  if (v20)
  {
    goto LABEL_10;
  }

  v21 = [v3 source];
  if (!v21)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v22 = v21;
  v23 = [v21 sourceType];

  if (v23 != 5 || ([v3 isSuggestedEventCalendar] & 1) != 0)
  {
    goto LABEL_14;
  }

  v32 = objc_opt_self();
  v33 = sub_100008698();
  v34 = [v32 systemImageNamed:v33];

  [v19 setDisplayImage:v34];
  v20 = v34;
LABEL_10:

LABEL_14:
  v24 = [v19 displayImage];
  v25 = v19;
  if (v24)
  {
LABEL_18:

    goto LABEL_19;
  }

  v26 = [v3 displayColor];
  v25 = v19;
  if (!v26)
  {
LABEL_19:

    *a2 = v19;
    return;
  }

  v27 = v26;
  v28 = objc_opt_self();
  v29 = v27;
  v30 = [v28 preferredFontForTextStyle:UIFontTextStyleBody];
  v31 = ScaledCalendarColorDotImageForColor();

  if (v31)
  {
    v25 = [objc_opt_self() imageWithUIImage:v31];

    [v19 setDisplayImage:v25];
    v24 = v19;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_100001C58()
{
  v1 = [*(v0 + OBJC_IVAR____TtC16IntentsExtension19WidgetIntentHandler_eventStore) calendarsForEntityType:0];
  sub_1000050F8(0, &qword_100011220, EKCalendar_ptr);
  v2 = sub_1000086E8();

  v92 = _swiftEmptyArrayStorage;
  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000087D8())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = sub_100008758();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 source];
      if (!v9)
      {
        goto LABEL_106;
      }

      v10 = v9;
      v11 = [v9 isDelegate];

      if (v11)
      {
      }

      else
      {
        sub_100008768();
        v5 = *(v92 + 16);
        sub_100008798();
        sub_1000087A8();
        sub_100008778();
      }

      ++v4;
      if (v8 == i)
      {
        v12 = v92;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_19:

  if (v12 < 0 || (v12 & 0x4000000000000000) != 0)
  {
    goto LABEL_59;
  }

  v13 = *(v12 + 16);
  v91 = v12;
  if (v13)
  {
LABEL_22:
    v14 = 0;
    v89 = v12 & 0xC000000000000001;
    v15 = &_swiftEmptyDictionarySingleton;
    v87 = v13;
    while (1)
    {
      if (v89)
      {
        v19 = sub_100008758();
      }

      else
      {
        if (v14 >= *(v12 + 16))
        {
          goto LABEL_56;
        }

        v19 = *(v12 + 8 * v14 + 32);
      }

      v20 = v19;
      v21 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        v13 = sub_1000087D8();
        v91 = v12;
        if (!v13)
        {
          break;
        }

        goto LABEL_22;
      }

      v22 = [objc_allocWithZone(CUIKCalendarInfo) initWithCalendar:v19];
      if (!v22)
      {
        goto LABEL_107;
      }

      v23 = v22;
      v24 = [v22 customGroupType];
      if (v24 == 1)
      {
        v25 = 0xE500000000000000;
        v26 = 0x726568744FLL;
        if (!v15[2])
        {
          goto LABEL_38;
        }
      }

      else
      {
        v27 = [v23 calendar];
        if (!v27)
        {
          goto LABEL_110;
        }

        v28 = v27;
        v12 = [v27 source];

        if (!v12)
        {
          goto LABEL_109;
        }

        v29 = [v12 sourceIdentifier];

        v26 = sub_1000086A8();
        v25 = v30;

        if (!v15[2])
        {
          goto LABEL_38;
        }
      }

      v31 = sub_100002AE4(v26, v25);
      if (v32)
      {
        v33 = v31;

        v34 = *(v15[7] + 8 * v33);
        goto LABEL_24;
      }

LABEL_38:
      if (v24 == 1)
      {
        v35 = [objc_allocWithZone(CUIKGroupInfo) initWithCustomGroupType:1];
        if (!v35)
        {
          goto LABEL_111;
        }
      }

      else
      {
        v36 = [v23 calendar];
        if (!v36)
        {
          goto LABEL_113;
        }

        v37 = v36;
        v38 = [v36 source];

        v12 = [objc_allocWithZone(CUIKGroupInfo) initWithSource:v38];
        if (!v12)
        {
          goto LABEL_112;
        }

        v35 = v12;
      }

      v34 = v35;
      v39 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v92 = v39;
      v41 = sub_100002AE4(v26, v25);
      v43 = v39[2];
      v44 = (v42 & 1) == 0;
      v45 = __OFADD__(v43, v44);
      v46 = v43 + v44;
      if (v45)
      {
        goto LABEL_57;
      }

      v12 = v42;
      if (v39[3] < v46)
      {
        sub_100004210(v46, isUniquelyReferenced_nonNull_native);
        v41 = sub_100002AE4(v26, v25);
        if ((v12 & 1) != (v47 & 1))
        {
          goto LABEL_114;
        }

LABEL_49:
        v15 = v92;
        if (v12)
        {
          goto LABEL_23;
        }

        goto LABEL_50;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_49;
      }

      v51 = v41;
      sub_10000456C();
      v41 = v51;
      v15 = v92;
      if (v12)
      {
LABEL_23:
        v16 = v15[7];
        v17 = *(v16 + 8 * v41);
        *(v16 + 8 * v41) = v34;

        goto LABEL_24;
      }

LABEL_50:
      v15[(v41 >> 6) + 8] |= 1 << v41;
      v48 = (v15[6] + 16 * v41);
      *v48 = v26;
      v48[1] = v25;
      *(v15[7] + 8 * v41) = v34;
      v49 = v15[2];
      v45 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v45)
      {
        goto LABEL_58;
      }

      v15[2] = v50;
LABEL_24:
      v18 = v23;
      [v34 insertCalendarInfo:v18];

      ++v14;
      v12 = v91;
      if (v21 == v87)
      {
        goto LABEL_61;
      }
    }
  }

  v15 = &_swiftEmptyDictionarySingleton;
LABEL_61:
  v52 = v15[2];
  if (v52)
  {
    v53 = sub_100002CDC(v52, 0);
    v54 = sub_100004998(&v92, v53 + 4, v52, v15);

    sub_1000050F0();
    if (v54 != v52)
    {
      __break(1u);
    }
  }

  v92 = sub_100004760(v55);
  sub_100002B5C(&v92);

  v56 = v92;
  v92 = _swiftEmptyArrayStorage;
  if ((v56 & 0x8000000000000000) != 0 || (v56 & 0x4000000000000000) != 0)
  {
LABEL_104:
    v57 = sub_1000087D8();
  }

  else
  {
    v57 = *(v56 + 16);
  }

  if (!v57)
  {
LABEL_98:

    v79 = objc_allocWithZone(INObjectCollection);
    sub_100005090(&qword_100011218, &qword_1000091A0);
    isa = sub_1000086D8().super.isa;

    v81 = [v79 initWithSections:isa];

    return v81;
  }

  v58 = 0;
  v85 = v56;
  v86 = v56 & 0xC000000000000001;
  v83 = (v56 + 32);
  v84 = v57;
  while (1)
  {
    if (v86)
    {
      v59 = sub_100008758();
    }

    else
    {
      if (v58 >= *(v56 + 16))
      {
        goto LABEL_103;
      }

      v59 = *&v83[8 * v58];
    }

    v60 = v59;
    v45 = __OFADD__(v58++, 1);
    if (v45)
    {
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    v61 = [v59 title];
    if (v61)
    {
      v62 = v61;
      sub_1000086A8();
      v64 = v63;
    }

    else
    {
      v64 = 0;
    }

    v65 = [v60 calendarInfos];
    if (!v65)
    {
      goto LABEL_108;
    }

    v66 = v65;
    v88 = v64;
    sub_1000050F8(0, &qword_100011228, CUIKCalendarInfo_ptr);
    v67 = sub_1000086E8();

    if (v67 >> 62)
    {
      break;
    }

    v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v90 = v60;
    if (v68)
    {
      goto LABEL_80;
    }

LABEL_91:

LABEL_92:
    sub_100004AEC(_swiftEmptyArrayStorage);

    if (v88)
    {
      v73 = sub_100008698();
    }

    else
    {
      v73 = 0;
    }

    v74 = objc_allocWithZone(INObjectSection);
    type metadata accessor for EKUICalendar();
    v75 = sub_1000086D8().super.isa;

    v76 = [v74 initWithTitle:v73 items:v75];

    v77 = v76;
    sub_1000086C8();
    if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v78 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1000086F8();
    }

    sub_100008718();

    if (v58 == v57)
    {
      goto LABEL_98;
    }
  }

  v68 = sub_1000087D8();
  v90 = v60;
  if (!v68)
  {
    goto LABEL_91;
  }

LABEL_80:
  sub_100008788();
  if (v68 < 0)
  {
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v69 = 0;
  while (1)
  {
    v70 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      __break(1u);
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    if ((v67 & 0xC000000000000001) != 0)
    {
      v71 = sub_100008758();
    }

    else
    {
      if (v69 >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_100;
      }

      v71 = *(v67 + 8 * v69 + 32);
    }

    v72 = v71;
    if (![v71 calendar])
    {
      break;
    }

    sub_100008768();
    v56 = _swiftEmptyArrayStorage[2];
    sub_100008798();
    sub_1000087A8();
    sub_100008778();
    ++v69;
    if (v70 == v68)
    {

      v57 = v84;
      v56 = v85;
      goto LABEL_92;
    }
  }

  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  sub_100008858();
  __break(1u);

  __break(1u);
  return result;
}

void *sub_100002634()
{
  v1 = *(v0 + OBJC_IVAR____TtC16IntentsExtension19WidgetIntentHandler_eventStore);
  v2 = objc_allocWithZone(EKCalendarVisibilityManager);
  v9[4] = NextEventComplicationConfigurationIntentResponseCode.rawValue.getter;
  v9[5] = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100002AA0;
  v9[3] = &unk_10000C4D8;
  v3 = _Block_copy(v9);

  v4 = [v2 initWithEventStore:v1 visibilityChangedCallback:v3 queue:0];
  _Block_release(v3);
  v5 = [v4 visibleCalendars];
  sub_1000050F8(0, &qword_100011220, EKCalendar_ptr);
  v6 = sub_1000086E8();

  v7 = sub_100004AEC(v6);

  return v7;
}

id sub_100002778()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000027E4(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a3;
  v8 = a1;
  sub_100004C3C(v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

Class sub_100002868(void *a1)
{
  v1 = a1;
  v2 = sub_100002634();
  sub_100008728();
  sub_100005090(&qword_100011208, &qword_100009198);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100009140;
  if (v2 >> 62)
  {
    v4 = sub_1000087D8();
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v3 + 56) = &type metadata for Int;
  *(v3 + 64) = &protocol witness table for Int;
  *(v3 + 32) = v4;
  sub_1000050F8(0, &qword_100011210, OS_os_log_ptr);
  v5 = sub_100008738();
  sub_100008668();

  type metadata accessor for EKUICalendar();
  v6.super.isa = sub_1000086D8().super.isa;

  return v6.super.isa;
}

void sub_1000029D0(void *a1, int a2, void *a3, void *aBlock, uint64_t (*a5)(void), uint64_t *a6)
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a1;
  sub_100004F18(v11, v12, v10, a5, a6);
  _Block_release(v10);
  _Block_release(v10);
}

uint64_t sub_100002AA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

unint64_t sub_100002AE4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100008868();
  sub_1000086B8();
  v6 = sub_100008888();

  return sub_1000044B4(a1, a2, v6);
}

uint64_t sub_100002B5C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100004984(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100002D64(v6);
  return sub_100008778();
}

char *sub_100002BD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005090(&qword_100011258, &qword_1000091B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_100002CDC(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100005090(&qword_100011260, &qword_1000091C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_100002D64(uint64_t *a1)
{
  v3 = (*(*(sub_100005090(&qword_100011248, &qword_1000091B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v44 = &v35 - v4;
  v5 = a1[1];
  v6 = sub_100008818(v5);
  if (v6 >= v5)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      if (v5 < 2)
      {
        return;
      }

      v35 = v1;
      v36 = v5;
      v9 = *a1;
      v10 = -1;
      v11 = 1;
      v12 = &WidgetIntentHandler;
      v13 = *a1;
      v40 = *a1;
LABEL_10:
      v38 = v11;
      v39 = v10;
      v14 = *(v9 + 8 * v11);
      v37 = v13;
      while (1)
      {
        v15 = *v13;
        v16 = v14;
        v17 = v15;
        v18 = [v16 v12[30].weak_ivar_lyt];
        if (v18 >= [v17 v12[30].weak_ivar_lyt])
        {
          v19 = [v16 v12[30].weak_ivar_lyt];
          if ([v17 v12[30].weak_ivar_lyt] < v19)
          {

LABEL_9:
            v11 = v38 + 1;
            v13 = v37 + 8;
            v10 = v39 - 1;
            if (v38 + 1 == v36)
            {
              return;
            }

            goto LABEL_10;
          }

          v20 = [v16 title];
          if (!v20)
          {
            goto LABEL_27;
          }

          v21 = v20;
          v22 = sub_1000086A8();
          v24 = v23;

          v42 = v22;
          v43 = v24;
          v25 = [v17 title];
          if (!v25)
          {
            goto LABEL_28;
          }

          v26 = v25;
          v27 = sub_1000086A8();
          v29 = v28;

          v41[0] = v27;
          v41[1] = v29;
          v30 = sub_100008658();
          v31 = v44;
          (*(*(v30 - 8) + 56))(v44, 1, 1, v30);
          sub_1000051EC();
          v32 = sub_100008748();
          sub_100005240(v31);

          v9 = v40;
          v12 = &WidgetIntentHandler;
          if (v32 != -1)
          {
            goto LABEL_9;
          }
        }

        else
        {
        }

        if (!v9)
        {
          goto LABEL_26;
        }

        v33 = *v13;
        v14 = *(v13 + 8);
        *v13 = v14;
        *(v13 + 8) = v33;
        v13 -= 8;
        if (__CFADD__(v10++, 1))
        {
          goto LABEL_9;
        }
      }
    }
  }

  else
  {
    if (v5 >= -1)
    {
      v7 = v6;
      if (v5 <= 1)
      {
        v8 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000050F8(0, &qword_100011230, CUIKGroupInfo_ptr);
        v8 = sub_100008708();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5 / 2;
      }

      v42 = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v43 = v5 / 2;
      sub_1000030B4(&v42, v41, a1, v7);
      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      return;
    }

    __break(1u);
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_1000030B4(__objc2_class_ro **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v145 = a4;
  v147 = a1;
  v8 = (*(*(sub_100005090(&qword_100011248, &qword_1000091B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v153 = &v142 - v9;
  v10 = *(a3 + 8);
  v148 = a3;
  if (v10 < 1)
  {
    v12 = &_swiftEmptyArrayStorage;
LABEL_115:
    v13 = *v147;
    if (!*v147)
    {
      goto LABEL_158;
    }

    v4 = v12;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v137 = v4;
LABEL_118:
      v158 = v137;
      v4 = *(v137 + 2);
      if (v4 >= 2)
      {
        do
        {
          v138 = *a3;
          if (!*a3)
          {
            goto LABEL_154;
          }

          v139 = *&v137[16 * v4];
          v140 = v137;
          a3 = *&v137[16 * v4 + 24];
          sub_100003BB4((v138 + 8 * v139), (v138 + 8 * *&v137[16 * v4 + 16]), (v138 + 8 * a3), v13);
          if (v6)
          {
            break;
          }

          if (a3 < v139)
          {
            goto LABEL_141;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v140 = sub_1000041FC(v140);
          }

          if (v4 - 2 >= *(v140 + 2))
          {
            goto LABEL_142;
          }

          v141 = &v140[16 * v4];
          *v141 = v139;
          *(v141 + 1) = a3;
          v158 = v140;
          sub_100004170(v4 - 1);
          v137 = v158;
          v4 = *(v158 + 2);
          a3 = v148;
        }

        while (v4 > 1);
      }

LABEL_126:

      return;
    }

LABEL_148:
    v137 = sub_1000041FC(v4);
    goto LABEL_118;
  }

  v11 = 0;
  v12 = &_swiftEmptyArrayStorage;
  v13 = &WidgetIntentHandler;
  v14 = &WidgetIntentHandler;
  while (1)
  {
    v15 = v11;
    v16 = v11 + 1;
    v151 = v10;
    if (v16 >= v10)
    {
      v152 = v16;
      v23 = v145;
      goto LABEL_38;
    }

    v144 = v12;
    v17 = *a3;
    v18 = *(v17 + 8 * v16);
    v146 = v15;
    v19 = *(v17 + 8 * v15);
    v20 = v18;
    v21 = v19;
    v22 = [v20 v13[30].weak_ivar_lyt];
    if (v22 >= [v21 v13[30].weak_ivar_lyt])
    {
      v24 = [v20 v13[30].weak_ivar_lyt];
      if ([v21 v13[30].weak_ivar_lyt] >= v24)
      {
        v25 = [v20 v14[30].name];
        if (!v25)
        {
          goto LABEL_160;
        }

        v26 = v25;
        v27 = sub_1000086A8();
        v29 = v28;

        v156 = v27;
        v157 = v29;
        v30 = [v21 v14[30].name];
        if (!v30)
        {
          goto LABEL_159;
        }

        v31 = v30;
        v32 = sub_1000086A8();
        v34 = v33;

        v154 = v32;
        v155 = v34;
        v35 = sub_100008658();
        v36 = v153;
        (*(*(v35 - 8) + 56))(v153, 1, 1, v35);
        sub_1000051EC();
        v37 = sub_100008748();
        sub_100005240(v36);

        v4 = v37 == -1;
        v13 = &WidgetIntentHandler;
      }

      else
      {

        v4 = 0;
      }
    }

    else
    {

      v4 = 1;
    }

    v15 = v146;
    v152 = v146 + 2;
    if (v146 + 2 >= v151)
    {
      v12 = v144;
      v23 = v145;
      a3 = v148;
      if (!v4)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v38 = (v17 + 8 * v146 + 16);
      v39 = v151;
      do
      {
        v40 = *(v38 - 1);
        v41 = *v38;
        v42 = v40;
        LODWORD(v40) = [v41 v13[30].weak_ivar_lyt];
        if (v40 < [v42 v13[30].weak_ivar_lyt])
        {

          if ((v4 & 1) == 0)
          {
            a3 = v148;
            v12 = v144;
            v23 = v145;
            v15 = v146;
            goto LABEL_38;
          }
        }

        else
        {
          v43 = [v41 v13[30].weak_ivar_lyt];
          if ([v42 v13[30].weak_ivar_lyt] >= v43)
          {
            v44 = [v41 v14[30].name];
            if (!v44)
            {
              goto LABEL_156;
            }

            v45 = v44;
            v46 = sub_1000086A8();
            v48 = v47;

            v156 = v46;
            v157 = v48;
            v49 = [v42 v14[30].name];
            if (!v49)
            {
              goto LABEL_155;
            }

            v50 = v49;
            v51 = sub_1000086A8();
            v53 = v52;

            v154 = v51;
            v155 = v53;
            v54 = sub_100008658();
            v55 = v153;
            (*(*(v54 - 8) + 56))(v153, 1, 1, v54);
            sub_1000051EC();
            v56 = sub_100008748();
            sub_100005240(v55);

            v13 = &WidgetIntentHandler;
            v14 = &WidgetIntentHandler;
            v39 = v151;
            if (v4 == (v56 != -1))
            {
              goto LABEL_28;
            }
          }

          else
          {

            if (v4)
            {
              a3 = v148;
              v12 = v144;
              v23 = v145;
              v15 = v146;
              goto LABEL_31;
            }
          }
        }

        ++v38;
        ++v152;
      }

      while (v39 != v152);
      v152 = v39;
LABEL_28:
      v12 = v144;
      v23 = v145;
      v15 = v146;
      a3 = v148;
      if (!v4)
      {
        goto LABEL_38;
      }
    }

LABEL_31:
    v57 = v152;
    if (v152 < v15)
    {
      goto LABEL_147;
    }

    if (v15 < v152)
    {
      v58 = 8 * v152 - 8;
      v59 = 8 * v15;
      v60 = v15;
      do
      {
        if (v60 != --v57)
        {
          v61 = *a3;
          if (!*a3)
          {
            goto LABEL_153;
          }

          v62 = *(v61 + v59);
          *(v61 + v59) = *(v61 + v58);
          *(v61 + v58) = v62;
        }

        ++v60;
        v58 -= 8;
        v59 += 8;
      }

      while (v60 < v57);
    }

LABEL_38:
    v63 = *(a3 + 8);
    if (v152 < v63)
    {
      if (__OFSUB__(v152, v15))
      {
        goto LABEL_144;
      }

      if (v152 - v15 < v23)
      {
        break;
      }
    }

LABEL_62:
    if (v152 < v15)
    {
      goto LABEL_143;
    }

    v88 = v12;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v12 = v88;
    }

    else
    {
      v12 = sub_100002BD8(0, *(v88 + 2) + 1, 1, v88);
    }

    v4 = *(v12 + 2);
    v89 = *(v12 + 3);
    v90 = v4 + 1;
    if (v4 >= v89 >> 1)
    {
      v12 = sub_100002BD8((v89 > 1), v4 + 1, 1, v12);
    }

    *(v12 + 2) = v90;
    v91 = &v12[16 * v4];
    v92 = v152;
    *(v91 + 4) = v15;
    *(v91 + 5) = v92;
    v93 = *v147;
    if (!*v147)
    {
      goto LABEL_157;
    }

    if (v4)
    {
      while (1)
      {
        v94 = v90 - 1;
        if (v90 >= 4)
        {
          break;
        }

        if (v90 == 3)
        {
          v95 = *(v12 + 4);
          v96 = *(v12 + 5);
          v105 = __OFSUB__(v96, v95);
          v97 = v96 - v95;
          v98 = v105;
LABEL_82:
          if (v98)
          {
            goto LABEL_132;
          }

          v111 = &v12[16 * v90];
          v113 = *v111;
          v112 = *(v111 + 1);
          v114 = __OFSUB__(v112, v113);
          v115 = v112 - v113;
          v116 = v114;
          if (v114)
          {
            goto LABEL_135;
          }

          v117 = &v12[16 * v94 + 32];
          v119 = *v117;
          v118 = *(v117 + 1);
          v105 = __OFSUB__(v118, v119);
          v120 = v118 - v119;
          if (v105)
          {
            goto LABEL_138;
          }

          if (__OFADD__(v115, v120))
          {
            goto LABEL_139;
          }

          if (v115 + v120 >= v97)
          {
            if (v97 < v120)
            {
              v94 = v90 - 2;
            }

            goto LABEL_103;
          }

          goto LABEL_96;
        }

        v121 = &v12[16 * v90];
        v123 = *v121;
        v122 = *(v121 + 1);
        v105 = __OFSUB__(v122, v123);
        v115 = v122 - v123;
        v116 = v105;
LABEL_96:
        if (v116)
        {
          goto LABEL_134;
        }

        v124 = &v12[16 * v94];
        v126 = *(v124 + 4);
        v125 = *(v124 + 5);
        v105 = __OFSUB__(v125, v126);
        v127 = v125 - v126;
        if (v105)
        {
          goto LABEL_137;
        }

        if (v127 < v115)
        {
          goto LABEL_3;
        }

LABEL_103:
        v4 = v94 - 1;
        if (v94 - 1 >= v90)
        {
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        if (!*a3)
        {
          goto LABEL_152;
        }

        v132 = v12;
        v133 = *&v12[16 * v4 + 32];
        v134 = *&v12[16 * v94 + 40];
        sub_100003BB4((*a3 + 8 * v133), (*a3 + 8 * *&v12[16 * v94 + 32]), (*a3 + 8 * v134), v93);
        if (v6)
        {
          goto LABEL_126;
        }

        if (v134 < v133)
        {
          goto LABEL_128;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v135 = v132;
        }

        else
        {
          v135 = sub_1000041FC(v132);
        }

        v14 = &WidgetIntentHandler;
        if (v4 >= *(v135 + 2))
        {
          goto LABEL_129;
        }

        v136 = &v135[16 * v4];
        *(v136 + 4) = v133;
        *(v136 + 5) = v134;
        v158 = v135;
        sub_100004170(v94);
        v12 = v158;
        v90 = *(v158 + 2);
        if (v90 <= 1)
        {
          goto LABEL_3;
        }
      }

      v99 = &v12[16 * v90 + 32];
      v100 = *(v99 - 64);
      v101 = *(v99 - 56);
      v105 = __OFSUB__(v101, v100);
      v102 = v101 - v100;
      if (v105)
      {
        goto LABEL_130;
      }

      v104 = *(v99 - 48);
      v103 = *(v99 - 40);
      v105 = __OFSUB__(v103, v104);
      v97 = v103 - v104;
      v98 = v105;
      if (v105)
      {
        goto LABEL_131;
      }

      v106 = &v12[16 * v90];
      v108 = *v106;
      v107 = *(v106 + 1);
      v105 = __OFSUB__(v107, v108);
      v109 = v107 - v108;
      if (v105)
      {
        goto LABEL_133;
      }

      v105 = __OFADD__(v97, v109);
      v110 = v97 + v109;
      if (v105)
      {
        goto LABEL_136;
      }

      if (v110 >= v102)
      {
        v128 = &v12[16 * v94 + 32];
        v130 = *v128;
        v129 = *(v128 + 1);
        v105 = __OFSUB__(v129, v130);
        v131 = v129 - v130;
        if (v105)
        {
          goto LABEL_140;
        }

        if (v97 < v131)
        {
          v94 = v90 - 2;
        }

        goto LABEL_103;
      }

      goto LABEL_82;
    }

LABEL_3:
    v10 = *(a3 + 8);
    v11 = v152;
    if (v152 >= v10)
    {
      goto LABEL_115;
    }
  }

  if (__OFADD__(v15, v23))
  {
    goto LABEL_145;
  }

  if (v15 + v23 >= v63)
  {
    v64 = *(a3 + 8);
  }

  else
  {
    v64 = v15 + v23;
  }

  if (v64 < v15)
  {
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  if (v152 == v64)
  {
    goto LABEL_62;
  }

  v143 = v6;
  v144 = v12;
  v65 = *a3;
  v66 = *a3 + 8 * v152 - 8;
  v146 = v15;
  v4 = v15 - v152;
  v67 = v152;
  v149 = v64;
LABEL_50:
  v151 = v66;
  v152 = v67;
  v68 = *(v65 + 8 * v67);
  v150 = v4;
  while (1)
  {
    v69 = *v66;
    v70 = v68;
    v71 = v69;
    LODWORD(v69) = [v70 v13[30].weak_ivar_lyt];
    if (v69 >= [v71 v13[30].weak_ivar_lyt])
    {
      v72 = [v70 v13[30].weak_ivar_lyt];
      if ([v71 v13[30].weak_ivar_lyt] < v72)
      {

LABEL_49:
        v67 = v152 + 1;
        v66 = v151 + 8;
        v4 = v150 - 1;
        if (v152 + 1 == v149)
        {
          v152 = v149;
          v6 = v143;
          v12 = v144;
          a3 = v148;
          v15 = v146;
          goto LABEL_62;
        }

        goto LABEL_50;
      }

      v73 = [v70 v14[30].name];
      if (!v73)
      {
        goto LABEL_150;
      }

      v74 = v73;
      v75 = sub_1000086A8();
      v77 = v76;

      v156 = v75;
      v157 = v77;
      v78 = [v71 v14[30].name];
      if (!v78)
      {
        goto LABEL_151;
      }

      v79 = v78;
      v80 = sub_1000086A8();
      v82 = v81;

      v154 = v80;
      v155 = v82;
      v83 = sub_100008658();
      v84 = v153;
      (*(*(v83 - 8) + 56))(v153, 1, 1, v83);
      sub_1000051EC();
      v85 = sub_100008748();
      sub_100005240(v84);

      v13 = &WidgetIntentHandler;
      v14 = &WidgetIntentHandler;
      if (v85 != -1)
      {
        goto LABEL_49;
      }
    }

    else
    {
    }

    if (!v65)
    {
      break;
    }

    v86 = *v66;
    v68 = *(v66 + 8);
    *v66 = v68;
    *(v66 + 8) = v86;
    v66 -= 8;
    if (__CFADD__(v4++, 1))
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
}

uint64_t sub_100003BB4(void **a1, id *a2, char *a3, void **a4)
{
  v8 = (*(*(sub_100005090(&qword_100011248, &qword_1000091B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v61 = &v57 - v9;
  v10 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v10 = a2 - a1;
  }

  v11 = v10 >> 3;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v11 < v12 >> 3)
  {
    v14 = a1;
    if (a4 != a1 || &a1[v11] <= a4)
    {
      memmove(a4, a1, 8 * v11);
    }

    v15 = &a4[v11];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v16 = &WidgetIntentHandler;
      v67 = v15;
      while (1)
      {
        v17 = *a4;
        v18 = *a2;
        v19 = v17;
        LODWORD(v17) = [v18 v16[30].weak_ivar_lyt];
        if (v17 < [v19 v16[30].weak_ivar_lyt])
        {
          break;
        }

        v22 = [v18 v16[30].weak_ivar_lyt];
        if ([v19 v16[30].weak_ivar_lyt] >= v22)
        {
          v60 = v14;
          v23 = a4;
          result = [v18 title];
          if (!result)
          {
            goto LABEL_58;
          }

          v25 = result;
          v26 = sub_1000086A8();
          v28 = v27;

          v65 = v26;
          v66 = v28;
          result = [v19 title];
          if (!result)
          {
            goto LABEL_57;
          }

          v29 = result;
          v30 = sub_1000086A8();
          v32 = v31;

          v63 = v30;
          v64 = v32;
          v33 = sub_100008658();
          v34 = v61;
          (*(*(v33 - 8) + 56))(v61, 1, 1, v33);
          sub_1000051EC();
          v35 = sub_100008748();
          sub_100005240(v34);

          a4 = v23;
          v14 = v60;
          v15 = v67;
          v16 = &WidgetIntentHandler;
          if (v35 == -1)
          {
            goto LABEL_14;
          }
        }

        else
        {
        }

        v20 = a4;
        v21 = v14 == a4++;
        if (!v21)
        {
          goto LABEL_15;
        }

LABEL_16:
        ++v14;
        if (a4 >= v15 || a2 >= a3)
        {
          goto LABEL_49;
        }
      }

LABEL_14:
      v20 = a2;
      v21 = v14 == a2++;
      if (v21)
      {
        goto LABEL_16;
      }

LABEL_15:
      *v14 = *v20;
      goto LABEL_16;
    }

LABEL_49:
    a2 = v14;
LABEL_51:
    if (a2 != a4 || a2 >= (a4 + ((v15 - a4 + (v15 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(a2, a4, 8 * (v15 - a4));
    }

    return 1;
  }

  v60 = a1;
  if (a4 != a2 || &a2[v13] <= a4)
  {
    memmove(a4, a2, 8 * v13);
  }

  v15 = &a4[v13];
  if (a3 - a2 < 8 || a2 <= v60)
  {
    goto LABEL_51;
  }

  v36 = &WidgetIntentHandler;
  v58 = a4;
LABEL_33:
  v37 = a2 - 1;
  a3 -= 8;
  v38 = v15;
  v59 = a2;
  v67 = a2 - 1;
  while (1)
  {
    v39 = *--v38;
    v40 = *v37;
    v41 = v39;
    v42 = v40;
    LODWORD(v40) = [v41 v36[30].weak_ivar_lyt];
    if (v40 < [v42 v36[30].weak_ivar_lyt])
    {

LABEL_44:
      v56 = v67;
      if (a3 + 8 != a2)
      {
        *a3 = *v67;
      }

      if (v15 <= a4 || (a2 = v56, v56 <= v60))
      {
        a2 = v56;
        goto LABEL_51;
      }

      goto LABEL_33;
    }

    v43 = [v41 v36[30].weak_ivar_lyt];
    if ([v42 v36[30].weak_ivar_lyt] < v43)
    {

      goto LABEL_41;
    }

    v62 = a3;
    result = [v41 title];
    if (!result)
    {
      break;
    }

    v44 = result;
    v45 = v15;
    v46 = sub_1000086A8();
    v48 = v47;

    v65 = v46;
    v66 = v48;
    result = [v42 title];
    if (!result)
    {
      goto LABEL_56;
    }

    v49 = result;
    v50 = sub_1000086A8();
    v52 = v51;

    v63 = v50;
    v64 = v52;
    v53 = sub_100008658();
    v54 = v61;
    (*(*(v53 - 8) + 56))(v61, 1, 1, v53);
    sub_1000051EC();
    v55 = sub_100008748();
    sub_100005240(v54);

    a4 = v58;
    a2 = v59;
    v15 = v45;
    a3 = v62;
    v36 = &WidgetIntentHandler;
    if (v55 == -1)
    {
      goto LABEL_44;
    }

LABEL_41:
    v37 = v67;
    if (a3 + 8 != v15)
    {
      *a3 = *v38;
    }

    a3 -= 8;
    v15 = v38;
    if (v38 <= a4)
    {
      v15 = v38;
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_100004170(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000041FC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_100004210(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100005090(&qword_100011268, qword_1000091C8);
  v39 = a2;
  result = sub_1000087F8();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_100008868();
      sub_1000086B8();
      result = sub_100008888();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_1000044B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100008838())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id sub_10000456C()
{
  v1 = v0;
  sub_100005090(&qword_100011268, qword_1000091C8);
  v2 = *v0;
  v3 = sub_1000087E8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void (*sub_1000046D8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100008758();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100004758;
  }

  __break(1u);
  return result;
}

void *sub_100004760(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_1000087D8();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100002CDC(v3, 0);
  sub_1000047F4(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1000047F4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1000087D8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1000087D8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100005140();
          for (i = 0; i != v6; ++i)
          {
            sub_100005090(&qword_100011238, &qword_1000091A8);
            v9 = sub_1000046D8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000050F8(0, &qword_100011230, CUIKGroupInfo_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100004998(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_100004AEC(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1000087D8())
  {
    result = &_swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v11 = &_swiftEmptyArrayStorage;
    sub_100008788();
    if (i < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_100008758();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v9 = v6;
      sub_10000187C(&v9, &v10);

      sub_100008768();
      v8 = v11[2];
      sub_100008798();
      sub_1000087A8();
      sub_100008778();
      if (v5 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return result;
}

void sub_100004C3C(uint64_t a1, uint64_t a2)
{
  v21 = sub_100001C58();
  sub_100008728();
  sub_100005090(&qword_100011208, &qword_100009198);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100009150;
  v4 = &WidgetIntentHandler;
  v5 = [v21 sections];
  sub_100005090(&qword_100011218, &qword_1000091A0);
  v6 = sub_1000086E8();

  v20 = a2;
  if (v6 >> 62)
  {
LABEL_24:
    v7 = sub_1000087D8();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v3 + 56) = &type metadata for Int;
  *(v3 + 64) = &protocol witness table for Int;
  *(v3 + 32) = v7;
  v8 = [v21 *&v4[27].ivar_base_size];
  v9 = sub_1000086E8();

  *(v3 + 96) = &type metadata for Int;
  *(v3 + 104) = &protocol witness table for Int;
  v19 = v3;
  if (v9 >> 62)
  {
    v10 = sub_1000087D8();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  v12 = 0;
  v4 = (v9 & 0xC000000000000001);
  while (v10 != v11)
  {
    if (v4)
    {
      v13 = sub_100008758();
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v13 = *(v9 + 8 * v11 + 32);
    }

    v3 = v13;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v14 = [v13 items];
    type metadata accessor for EKUICalendar();
    v15 = sub_1000086E8();

    if (v15 >> 62)
    {
      v16 = sub_1000087D8();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v11;
    v17 = __OFADD__(v12, v16);
    v12 += v16;
    if (v17)
    {
      goto LABEL_23;
    }
  }

  *(v19 + 72) = v12;
  sub_1000050F8(0, &qword_100011210, OS_os_log_ptr);
  v18 = sub_100008738();
  sub_100008668();

  (*(v20 + 16))(v20, v21, 0);
}

void sub_100004F18(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5)
{
  v9 = [a1 mirrorCalendarApp];
  if (v9)
  {
    v10 = v9;
    if ([v9 BOOLValue])
    {
      v11 = sub_100002634();
LABEL_7:
      v13 = v11;

      goto LABEL_9;
    }
  }

  v12 = [a1 calendars];
  if (v12)
  {
    v10 = v12;
    type metadata accessor for EKUICalendar();
    v11 = sub_1000086E8();
    goto LABEL_7;
  }

  v13 = 0;
LABEL_9:
  v14 = [objc_allocWithZone(a4(0)) init];
  v15 = *a5;
  swift_beginAccess();
  *&v14[v15] = 4;
  [v14 setUserActivity:0];
  if (v13)
  {
    type metadata accessor for EKUICalendar();
    v16.super.isa = sub_1000086D8().super.isa;
  }

  else
  {
    v16.super.isa = 0;
  }

  [v14 setCalendars:v16.super.isa];

  (*(a3 + 16))(a3, v14);
}

uint64_t sub_100005090(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000050D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000050F8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_100005140()
{
  result = qword_100011240;
  if (!qword_100011240)
  {
    sub_1000051A4(&qword_100011238, &qword_1000091A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100011240);
  }

  return result;
}

uint64_t sub_1000051A4(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1000051EC()
{
  result = qword_100011250;
  if (!qword_100011250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100011250);
  }

  return result;
}

uint64_t sub_100005240(uint64_t a1)
{
  v2 = sub_100005090(&qword_100011248, &qword_1000091B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000053F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100005448(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000548C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

char *EKUICalendarsIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___EKUICalendarsIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id NextEventComplicationConfigurationIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EKUICalendarsIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EKUICalendarsIntent();
  return objc_msgSendSuper2(&v2, "init");
}

id NextEventComplicationConfigurationIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id EKUICalendarsIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for EKUICalendarsIntent();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id NextEventComplicationConfigurationIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_100008698();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id EKUICalendarsIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_100008698();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for EKUICalendarsIntent();
  v6 = objc_msgSendSuper2(&v8, "initWithIdentifier:backingStore:", v5, a3);

  return v6;
}

id NextEventComplicationConfigurationIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100008698();

  v8 = sub_100008698();

  if (a5)
  {
    v9.super.isa = sub_100008678().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9.super.isa];

  return v10;
}

id EKUICalendarsIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100008698();

  v8 = sub_100008698();

  if (a5)
  {
    v9.super.isa = sub_100008678().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for EKUICalendarsIntent();
  v10 = objc_msgSendSuper2(&v12, "initWithDomain:verb:parametersByName:", v7, v8, v9.super.isa);

  return v10;
}

Swift::Int sub_100005BB0()
{
  v1 = *v0;
  sub_100008868();
  sub_100008878(v1);
  return sub_100008888();
}

Swift::Int sub_100005C24()
{
  v1 = *v0;
  sub_100008868();
  sub_100008878(v1);
  return sub_100008888();
}

unint64_t sub_100005C68@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000062EC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t EKUICalendarsIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___EKUICalendarsIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *EKUICalendarsIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___EKUICalendarsIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id EKUICalendarsIntentResponse.init()()
{
  *&v0[OBJC_IVAR___EKUICalendarsIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EKUICalendarsIntentResponse();
  return objc_msgSendSuper2(&v2, "init");
}

id EKUICalendarsIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___EKUICalendarsIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for EKUICalendarsIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id NextEventComplicationConfigurationIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore:a1];

  return v3;
}

id EKUICalendarsIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___EKUICalendarsIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for EKUICalendarsIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithBackingStore:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100006098(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___EKUICalendarsIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for EKUICalendarsIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id NextEventComplicationConfigurationIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = sub_100008678().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName:v2.super.isa];

  return v3;
}

id EKUICalendarsIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___EKUICalendarsIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = sub_100008678().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for EKUICalendarsIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithPropertiesByName:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id sub_1000062B4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1000062EC(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_100006324()
{
  result = qword_100011300;
  if (!qword_100011300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100011300);
  }

  return result;
}

uint64_t sub_100006378@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___EKUICalendarsIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1000063D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___EKUICalendarsIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

char *NextEventComplicationConfigurationIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id NextEventComplicationConfigurationIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NextEventComplicationConfigurationIntent();
  return objc_msgSendSuper2(&v2, "init");
}

id NextEventComplicationConfigurationIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NextEventComplicationConfigurationIntent();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id NextEventComplicationConfigurationIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_100008698();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for NextEventComplicationConfigurationIntent();
  v6 = objc_msgSendSuper2(&v8, "initWithIdentifier:backingStore:", v5, a3);

  return v6;
}

id NextEventComplicationConfigurationIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100008698();

  v8 = sub_100008698();

  if (a5)
  {
    v9.super.isa = sub_100008678().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for NextEventComplicationConfigurationIntent();
  v10 = objc_msgSendSuper2(&v12, "initWithDomain:verb:parametersByName:", v7, v8, v9.super.isa);

  return v10;
}

uint64_t NextEventComplicationConfigurationIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *NextEventComplicationConfigurationIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id NextEventComplicationConfigurationIntentResponse.init()()
{
  *&v0[OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NextEventComplicationConfigurationIntentResponse();
  return objc_msgSendSuper2(&v2, "init");
}

id NextEventComplicationConfigurationIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NextEventComplicationConfigurationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id NextEventComplicationConfigurationIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NextEventComplicationConfigurationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithBackingStore:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100006CCC(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for NextEventComplicationConfigurationIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id NextEventComplicationConfigurationIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = sub_100008678().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for NextEventComplicationConfigurationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithPropertiesByName:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id sub_100006E64(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100006EC4()
{
  result = qword_100011360;
  if (!qword_100011360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100011360);
  }

  return result;
}

uint64_t sub_100006F18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_100006F70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id LunarDateComplicationConfigurationIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LunarDateComplicationConfigurationIntent();
  return objc_msgSendSuper2(&v2, "init");
}

id LunarDateComplicationConfigurationIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LunarDateComplicationConfigurationIntent();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id LunarDateComplicationConfigurationIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_100008698();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for LunarDateComplicationConfigurationIntent();
  v6 = objc_msgSendSuper2(&v8, "initWithIdentifier:backingStore:", v5, a3);

  return v6;
}

id LunarDateComplicationConfigurationIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100008698();

  v8 = sub_100008698();

  if (a5)
  {
    v9.super.isa = sub_100008678().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for LunarDateComplicationConfigurationIntent();
  v10 = objc_msgSendSuper2(&v12, "initWithDomain:verb:parametersByName:", v7, v8, v9.super.isa);

  return v10;
}

uint64_t LunarDateComplicationConfigurationIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *LunarDateComplicationConfigurationIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

char *LunarDateComplicationConfigurationIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id LunarDateComplicationConfigurationIntentResponse.init()()
{
  *&v0[OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LunarDateComplicationConfigurationIntentResponse();
  return objc_msgSendSuper2(&v2, "init");
}

id LunarDateComplicationConfigurationIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LunarDateComplicationConfigurationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id LunarDateComplicationConfigurationIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LunarDateComplicationConfigurationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithBackingStore:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100007864(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for LunarDateComplicationConfigurationIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id LunarDateComplicationConfigurationIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = sub_100008678().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for LunarDateComplicationConfigurationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithPropertiesByName:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id sub_1000079FC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100007A5C()
{
  result = qword_1000113C0;
  if (!qword_1000113C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000113C0);
  }

  return result;
}

uint64_t sub_100007AB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_100007B08(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id EKUICalendar.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_100008698();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_100008698();

  if (a6)
  {
    v10 = sub_100008698();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id EKUICalendar.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_100008698();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_100008698();

  if (a6)
  {
    v10 = sub_100008698();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for EKUICalendar();
  v11 = objc_msgSendSuper2(&v13, "initWithIdentifier:displayString:pronunciationHint:", v8, v9, v10);

  return v11;
}

id EKUICalendar.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for EKUICalendar();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id static EKUICalendarResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___EKUICalendarResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "successWithResolvedObject:", a1);

  return v2;
}

id static EKUICalendarResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_100008094();

    sub_1000087C8();
  }

  else
  {

    sub_100008848();
    sub_100008094();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_100008094();
  isa = sub_1000086D8().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___EKUICalendarResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", isa);

  return v3;
}

unint64_t sub_100008094()
{
  result = qword_100011440;
  if (!qword_100011440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100011440);
  }

  return result;
}

id static EKUICalendarResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___EKUICalendarResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "confirmationRequiredWithObjectToConfirm:", a1);

  return v2;
}

id EKUICalendarResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = sub_100008678().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id EKUICalendarResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = sub_100008678().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for EKUICalendarResolutionResult();
  v5 = objc_msgSendSuper2(&v7, "initWithJSONDictionary:forIntent:", isa, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_100008620(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}