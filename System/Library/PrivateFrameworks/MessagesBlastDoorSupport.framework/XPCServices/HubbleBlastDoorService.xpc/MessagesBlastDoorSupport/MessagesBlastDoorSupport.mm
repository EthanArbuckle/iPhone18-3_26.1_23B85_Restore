int main(int argc, const char **argv, const char **envp)
{
  v3 = (*(*(sub_100006F6C(&qword_1000240C8, &qword_10001C300) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v17 - v4;
  v6 = sub_10001B0C0();
  v18 = *(v6 - 8);
  v19 = v6;
  v7 = *(v18 + 64);
  __chkstk_darwin();
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(sub_10001B0D0() - 8) + 64);
  __chkstk_darwin();
  v11 = *(*(sub_10001A470() - 8) + 64);
  __chkstk_darwin();
  __bd_register_for_dlsym_callbacks();
  _CFPrefsSetDirectModeEnabled();
  _CFPrefsSetReadOnly();
  sub_10001A4E0();
  qword_1000242E8 = sub_10001A4B0();
  qword_1000242F0 = &off_100021128;
  sub_10001A480();
  qword_1000242F8 = &off_1000213B8;
  sub_10001A490();
  sub_10001A530();
  sub_100006FB4();
  sub_10001A4C0();
  sub_10001AC80();
  sub_100007008();
  sub_10001A4C0();
  sub_10001A590();
  sub_10000705C();
  sub_10001A4C0();
  sub_1000070B0();
  sub_10001A460();
  v20 = &_swiftEmptyArrayStorage;
  sub_1000075D4(&qword_1000240F0, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  sub_100006F6C(&qword_1000240F8, &qword_10001C308);
  sub_1000070FC();
  sub_10001B180();
  (*(v18 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v19);
  v12 = sub_10001B0E0();
  v20 = v12;
  sub_10001A6B0();
  sub_1000071A8();
  sub_10001A4D0();

  v13 = enum case for SandboxID.blastdoor(_:);
  v14 = sub_10001AEF0();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v5, v13, v14);
  (*(v15 + 56))(v5, 0, 1, v14);
  sub_10001A4A0();
  sub_1000071FC(v5);
  return 0;
}

uint64_t sub_100006F6C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100006FB4()
{
  result = qword_1000240D0;
  if (!qword_1000240D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000240D0);
  }

  return result;
}

unint64_t sub_100007008()
{
  result = qword_1000240D8;
  if (!qword_1000240D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000240D8);
  }

  return result;
}

unint64_t sub_10000705C()
{
  result = qword_1000240E0;
  if (!qword_1000240E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000240E0);
  }

  return result;
}

unint64_t sub_1000070B0()
{
  result = qword_1000240E8;
  if (!qword_1000240E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000240E8);
  }

  return result;
}

unint64_t sub_1000070FC()
{
  result = qword_100024100;
  if (!qword_100024100)
  {
    sub_100007160(&qword_1000240F8, &qword_10001C308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024100);
  }

  return result;
}

uint64_t sub_100007160(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1000071A8()
{
  result = qword_100024108;
  if (!qword_100024108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024108);
  }

  return result;
}

uint64_t sub_1000071FC(uint64_t a1)
{
  v2 = sub_100006F6C(&qword_1000240C8, &qword_10001C300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_100007268(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10000727C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000729C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

__n128 sub_1000072E8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000072F4(uint64_t a1, int a2)
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

uint64_t sub_100007314(uint64_t result, int a2, int a3)
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

__n128 sub_100007350(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100007364(uint64_t a1, int a2)
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

uint64_t sub_100007384(uint64_t result, int a2, int a3)
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

uint64_t sub_100007414()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_10001A430();
}

uint64_t sub_100007460()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_10001A420();
}

Swift::Int sub_1000074B8()
{
  sub_10001B250();
  v1 = *v0;
  swift_getWitnessTable();
  sub_10001A420();
  return sub_10001B260();
}

uint64_t sub_100007520(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_10001A410();
}

uint64_t sub_1000075D4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100007678(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1000076C4(uint64_t a1, uint64_t a2)
{
  v2 = a1 == 0xD000000000000012 && 0x800000010001BAE0 == a2;
  if (v2 || (sub_10001B230() & 1) != 0 || a1 == 0x702E63696C627570 && a2 == 0xEA0000000000676ELL)
  {
    return 1;
  }

  if ((sub_10001B230() & 1) != 0 || a1 == 0xD000000000000014 && 0x800000010001B720 == a2)
  {
    return 1;
  }

  if ((sub_10001B230() & 1) != 0 || a1 == 0x682E63696C627570 && a2 == 0xEB00000000666965)
  {
    return 1;
  }

  v6 = sub_10001B230();
  v7 = a1 == 0x682E63696C627570 && a2 == 0xEB00000000636965;
  v8 = v7;
  if ((v6 & 1) != 0 || v8)
  {
    return 1;
  }

  v9 = sub_10001B230();
  v10 = a1 == 0x682E63696C627570 && a2 == 0xEC00000073636965;
  v11 = v10;
  if ((v9 & 1) != 0 || v11 || (sub_10001B230() & 1) != 0 || a1 == 0xD000000000000014 && 0x800000010001BB20 == a2)
  {
    return 1;
  }

  return sub_10001B230();
}

uint64_t sub_10000790C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70[4] = a1;
  v70[3] = a2;
  v2 = (*(*(sub_100006F6C(&qword_100024168, &qword_10001C570) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v80 = v70 - v3;
  v4 = sub_10001AEA0();
  v81 = *(v4 - 8);
  v82 = v4;
  v5 = *(v81 + 64);
  (__chkstk_darwin)();
  v83 = v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001ACE0();
  v75 = *(v7 - 8);
  v76 = v7;
  v8 = *(v75 + 64);
  (__chkstk_darwin)();
  v74 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001ACC0();
  v72 = *(v10 - 8);
  v73 = v10;
  v11 = *(v72 + 64);
  (__chkstk_darwin)();
  v71 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(sub_10001AC80() - 8) + 64);
  (__chkstk_darwin)();
  v70[2] = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10001AD20();
  v79 = *(v15 - 8);
  v16 = *(v79 + 64);
  v17 = (__chkstk_darwin)();
  v70[1] = v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v20 = __chkstk_darwin(v19);
  v77 = v70 - v21;
  __chkstk_darwin(v20);
  v23 = v70 - v22;
  v24 = sub_10001AE80();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v29 = v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = v70 - v30;
  sub_10001A510();
  sub_10001A500();
  v85 = v31;
  v86 = v25;
  (*(v25 + 16))(v29, v31, v24);
  v32 = sub_10001AEE0();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = v84;
  sub_10001AED0();
  if (v35)
  {
    v90 = v35;
    swift_errorRetain();
    sub_100006F6C(&qword_100024170, &qword_10001C578);
    v36 = swift_dynamicCast();
    v78 = v24;
    if (v36)
    {

      v37 = *(v79 + 32);
      v84 = v15;
      v37(v77, v23, v15);
      v38 = v71;
      sub_10001AD00();
      v39 = sub_10001ACB0();
      v41 = v40;
      (*(v72 + 8))(v38, v73);
      v88 = v39;
      v89 = v41;
      v91._countAndFlagsBits = 8250;
      v91._object = 0xE200000000000000;
      sub_10001AF90(v91);
      v42 = v74;
      sub_10001ACF0();
      v43 = sub_10001ACD0();
      v45 = v44;
      (*(v75 + 8))(v42, v76);
      v92._countAndFlagsBits = v43;
      v92._object = v45;
      sub_10001AF90(v92);

      if (sub_10001AD10())
      {
        v87._countAndFlagsBits = 0;
        v87._object = 0xE000000000000000;
        sub_10001B1A0(16);

        strcpy(&v87, ". Extra Info: ");
        HIBYTE(v87._object) = -18;
        v46 = sub_10001AF30();
        v48 = v47;

        v93._countAndFlagsBits = v46;
        v93._object = v48;
        sub_10001AF90(v93);

        sub_10001AF90(v87);
      }

      v49 = v83;
      sub_10001AE90();
      sub_10000895C();
      v50 = sub_10001B140();
      sub_100006F6C(&qword_100024180, qword_10001C580);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_10001C4F0;
      v52 = v80;
      v53 = v81;
      v76 = *(v81 + 16);
      v54 = v82;
      v76(v80, v49, v82);
      (*(v53 + 56))(v52, 0, 1, v54);
      v55 = sub_10001ADA0();
      v57 = v56;
      sub_1000089A8(v52);
      *(v51 + 56) = &type metadata for String;
      *(v51 + 64) = sub_100008A10();
      *(v51 + 32) = v55;
      *(v51 + 40) = v57;
      sub_10001B080();
      sub_10001A440();

      sub_100008A64(&qword_100024190, &type metadata accessor for Explosion);
      swift_allocError();
      v76(v58, v49, v54);
      swift_willThrow();
      (*(v53 + 8))(v49, v54);
      (*(v79 + 8))(v77, v84);
      (*(v86 + 8))(v85, v78);
    }

    else
    {

      v60 = v83;
      sub_10001AE90();
      sub_10000895C();
      v79 = sub_10001B140();
      sub_100006F6C(&qword_100024180, qword_10001C580);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_10001C4F0;
      v62 = v80;
      v63 = v81;
      v84 = *(v81 + 16);
      v64 = v82;
      v84(v80, v60, v82);
      (*(v63 + 56))(v62, 0, 1, v64);
      v65 = sub_10001ADA0();
      v67 = v66;
      sub_1000089A8(v62);
      *(v61 + 56) = &type metadata for String;
      *(v61 + 64) = sub_100008A10();
      *(v61 + 32) = v65;
      *(v61 + 40) = v67;
      sub_10001B080();
      v68 = v79;
      sub_10001A440();

      sub_100008A64(&qword_100024190, &type metadata accessor for Explosion);
      swift_allocError();
      v84(v69, v60, v64);
      swift_willThrow();

      (*(v63 + 8))(v60, v64);
      return (*(v86 + 8))(v85, v78);
    }
  }

  else
  {
    v84 = v15;

    sub_10001AEB0();

    sub_10001A520();
    sub_10001A4F0();
    return (*(v86 + 8))(v85, v24);
  }
}

unint64_t sub_10000895C()
{
  result = qword_100024178;
  if (!qword_100024178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100024178);
  }

  return result;
}

uint64_t sub_1000089A8(uint64_t a1)
{
  v2 = sub_100006F6C(&qword_100024168, &qword_10001C570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100008A10()
{
  result = qword_100024188;
  if (!qword_100024188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024188);
  }

  return result;
}

uint64_t sub_100008A64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100008AAC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100008DEC(*a1);
  v5 = v4;
  if (v3 == sub_100008DEC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10001B230();
  }

  return v8 & 1;
}

Swift::Int sub_100008B34()
{
  v1 = *v0;
  sub_10001B250();
  sub_100008DEC(v1);
  sub_10001AF80();

  return sub_10001B260();
}

uint64_t sub_100008B98()
{
  sub_100008DEC(*v0);
  sub_10001AF80();
}

Swift::Int sub_100008BEC()
{
  v1 = *v0;
  sub_10001B250();
  sub_100008DEC(v1);
  sub_10001AF80();

  return sub_10001B260();
}

unint64_t sub_100008C5C()
{
  v0 = &stru_100000020;
  while (1)
  {
    v3 = *(&off_1000213F0 + v0);
    v4 = sub_100008DEC(v3);
    v6 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_100019D08(v4, v6);
    v9 = _swiftEmptyDictionarySingleton[2];
    v10 = (v8 & 1) == 0;
    v11 = __OFADD__(v9, v10);
    v12 = v9 + v10;
    if (v11)
    {
      break;
    }

    v13 = v8;
    if (_swiftEmptyDictionarySingleton[3] < v12)
    {
      sub_10000C184(v12, isUniquelyReferenced_nonNull_native);
      result = sub_100019D08(v4, v6);
      if ((v13 & 1) != (v14 & 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      if (v13)
      {
        goto LABEL_2;
      }

      goto LABEL_10;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v18 = result;
    sub_10000C6DC();
    result = v18;
    if (v13)
    {
LABEL_2:
      v1 = result;

      *(_swiftEmptyDictionarySingleton[7] + v1) = v3;
      goto LABEL_3;
    }

LABEL_10:
    _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
    v15 = (_swiftEmptyDictionarySingleton[6] + 16 * result);
    *v15 = v4;
    v15[1] = v6;
    *(_swiftEmptyDictionarySingleton[7] + result) = v3;
    v16 = _swiftEmptyDictionarySingleton[2];
    v11 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v11)
    {
      goto LABEL_16;
    }

    _swiftEmptyDictionarySingleton[2] = v17;
LABEL_3:
    if (++v0 == 118)
    {
      off_100024198 = _swiftEmptyDictionarySingleton;
      return result;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_10001B240();
  __break(1u);
  return result;
}

uint64_t sub_100008DEC(char a1)
{
  result = 0x6974617275447661;
  switch(a1)
  {
    case 1:
      if (kPFMediaPropertyTimeZoneOffsetSeconds)
      {
        return sub_10001AF50();
      }

      __break(1u);
      goto LABEL_69;
    case 2:
      goto LABEL_72;
    case 3:
      v3 = &kCGImagePropertyOrientation;
      goto LABEL_133;
    case 4:
      goto LABEL_84;
    case 5:
      v3 = &kCGImagePropertyPixelHeight;
      goto LABEL_133;
    case 6:
      v3 = &kCGImagePropertyExifLensModel;
      goto LABEL_133;
    case 7:
      goto LABEL_95;
    case 8:
      v3 = &kCGImagePropertyProfileName;
      goto LABEL_133;
    case 9:
      if (kPFImagePropertyCustomPhotoProcessingFlags)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_95:
      v3 = &kCGImagePropertyExifLensMake;
      goto LABEL_133;
    case 10:
      goto LABEL_51;
    case 11:
      goto LABEL_62;
    case 12:
      v3 = &kCGImagePropertyExifExposureBiasValue;
      goto LABEL_133;
    case 13:
      v3 = &kCGImagePropertyExifFlash;
      goto LABEL_133;
    case 14:
LABEL_69:
      v3 = &kCGImagePropertyExifFocalLength;
      goto LABEL_133;
    case 15:
      goto LABEL_40;
    case 16:
      goto LABEL_76;
    case 17:
      v3 = &kCGImagePropertyExifMeteringMode;
      goto LABEL_133;
    case 18:
      goto LABEL_104;
    case 19:
      goto LABEL_81;
    case 20:
      goto LABEL_89;
    case 21:
      v3 = &kCGImagePropertyExifWhiteBalance;
      goto LABEL_133;
    case 22:
      goto LABEL_111;
    case 23:
      goto LABEL_66;
    case 24:
      if (kPFVideoPropertyVideoDynamicRange)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_66:
      v3 = &kCGImagePropertyCIFFWhiteBalanceIndex;
      goto LABEL_133;
    case 25:
      goto LABEL_118;
    case 26:
      goto LABEL_36;
    case 27:
      if (kPFVideoPropertyVideoContainsCinematicData)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_114:
      if (kPFMediaPropertyLivePhotoPairingIdentifier)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_116:
      if (kPFVideoPropertyCaptureMode)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_118:
      if (kPFImagePropertyHDRGain)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_120:
      if (kPFFilePropertyUniformTypeIdentifier)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_122:
      if (kPFImagePropertySmartStyleVideoCastValue)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_124:
      if (kPFFilePropertyOriginalFilename)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_126:
      v3 = &kCGImagePropertyGPSImgDirectionRef;
      goto LABEL_133;
    case 28:
      goto LABEL_114;
    case 29:
      v3 = &kCGImagePropertyGIFDelayTime;
      goto LABEL_133;
    case 30:
      if (kPFVideoPropertyPlaybackVariationIdentifier)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_76:
      v3 = &kCGImagePropertyExifISOSpeed;
      goto LABEL_133;
    case 31:
      if (kPFVideoPropertyVideoComplVideoDurationValue)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_99:
      v3 = &kCGImagePropertyGPSLatitude;
      goto LABEL_133;
    case 32:
      if (kPFVideoPropertyVideoComplVideoDurationTimescale)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_47:
      v3 = &kCGImagePropertyGPSSpeedRef;
      goto LABEL_133;
    case 33:
      goto LABEL_38;
    case 34:
      goto LABEL_30;
    case 35:
      return result;
    case 36:
      goto LABEL_32;
    case 37:
      goto LABEL_22;
    case 38:
      goto LABEL_116;
    case 39:
      if (kPFVideoPropertyVideoIsMontage)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_104:
      v3 = &kCGImagePropertyExifExposureTime;
      goto LABEL_133;
    case 40:
      if (kPFVideoPropertyIsProRes)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_58:
      if (kPFImagePropertySpatialOverCaptureIdentifier)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_60:
      if (kPFImagePropertySemanticStylePreset)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_62:
      v3 = &kCGImagePropertyExifFNumber;
      goto LABEL_133;
    case 41:
      if (kPFVideoPropertyVideoDurationValue)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_79:
      if (kPFImagePropertyStillImageCaptureFlags)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_81:
      v3 = &kCGImagePropertyTIFFModel;
      goto LABEL_133;
    case 42:
      goto LABEL_107;
    case 43:
      if (kPFMediaPropertyOriginatingAssetIdentifier)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_16:
      if (kPFImagePropertySmartStyleToneBias)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_18:
      if (kPFVideoPropertyCaptureModeTimelapse)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_20:
      if (kPFImagePropertySmartStyleIsReversible)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_22:
      if (kPFVideoPropertyCustomCodecFourCharCode)
      {
        return sub_10001AF50();
      }

      __break(1u);
      return 0x6953656C6946534ELL;
    case 44:
      goto LABEL_43;
    case 45:
      goto LABEL_99;
    case 46:
      v3 = &kCGImagePropertyGPSAltitude;
      goto LABEL_133;
    case 47:
      v3 = &kCGImagePropertyGPSSpeed;
      goto LABEL_133;
    case 48:
      goto LABEL_47;
    case 49:
      return 0x5465746144737067;
    case 50:
      goto LABEL_13;
    case 51:
      goto LABEL_132;
    case 52:
      goto LABEL_126;
    case 53:
      return 0x6953656C6946534ELL;
    case 54:
      goto LABEL_120;
    case 55:
      goto LABEL_124;
    case 56:
      if (kPFImagePropertyIsPhotoBooth)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_28:
      if (kPFImagePropertyIsAnimatedImage)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_30:
      if (kPFVideoPropertyVideoComplVideoImageDisplayTimescale)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_32:
      if (kPFVideoPropertyAVFPS)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_34:
      if (kPFImagePropertySmartStyleCast)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_36:
      if (kPFImagePropertyHasHDRGainMap)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_38:
      if (kPFVideoPropertyVideoComplVideoImageDisplayValue)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_40:
      v3 = &kCGImagePropertyExifFocalLenIn35mmFilm;
      goto LABEL_133;
    case 57:
      if (kPFImagePropertyBurstUuid)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_107:
      if (kPFVideoPropertyVideoDurationTimescale)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_109:
      if (kPFImagePropertyFrontFacingCamera)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_111:
      v3 = &kCGImagePropertyExifLightSource;
      goto LABEL_133;
    case 58:
      v3 = &kCGImagePropertyExifUserComment;
      goto LABEL_133;
    case 59:
      goto LABEL_109;
    case 60:
      goto LABEL_58;
    case 61:
      if (kPFImagePropertySemanticStyleSceneBias)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_84:
      v3 = &kCGImagePropertyPixelWidth;
      goto LABEL_133;
    case 62:
      goto LABEL_87;
    case 63:
      if (kPFImagePropertySemanticStyleRenderingVersion)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_72:
      v3 = &kCGImagePropertyExifSubsecTimeOriginal;
      goto LABEL_133;
    case 64:
      goto LABEL_60;
    case 65:
      if (kPFImagePropertySmartStyleHasSmartStyle)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_87:
      if (kPFImagePropertySemanticStyleWarmthBias)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_89:
      v3 = &kCGImagePropertyTIFFMake;
      goto LABEL_133;
    case 66:
      goto LABEL_16;
    case 67:
      if (kPFImagePropertySmartStyleColorBias)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_43:
      v3 = &kCGImagePropertyGPSLongitude;
      goto LABEL_133;
    case 68:
      goto LABEL_137;
    case 69:
      goto LABEL_34;
    case 70:
      if (kPFImagePropertySmartStyleRenderingVersion)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_11:
      if (kPFImagePropertyCameraUsedForCapture)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_13:
      v3 = &kCGImagePropertyGPSHPositioningError;
      goto LABEL_133;
    case 71:
      goto LABEL_20;
    case 72:
      goto LABEL_122;
    case 73:
      if (kPFImagePropertyIsHDR)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_130:
      if (kPFImagePropertyHasISOGainMap)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_132:
      v3 = &kCGImagePropertyGPSImgDirection;
      goto LABEL_133;
    case 74:
      goto LABEL_130;
    case 75:
      goto LABEL_28;
    case 76:
      goto LABEL_79;
    case 77:
      goto LABEL_11;
    case 78:
      if (kPFImagePropertyExifFlashFired)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_137:
      if (!kPFImagePropertySmartStyleIntensity)
      {
        __break(1u);
        JUMPOUT(0x100009400);
      }

      return sub_10001AF50();
    case 79:
      goto LABEL_8;
    case 80:
      goto LABEL_18;
    case 81:
      if (kPFImagePropertyHasSpatialAudio)
      {
        return sub_10001AF50();
      }

      __break(1u);
      return 0x5465746144737067;
    case 82:
      if (kPFImagePropertyIsAlchemist)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_51:
      v3 = &kCGImagePropertyExifCustomRendered;
      goto LABEL_133;
    case 83:
      goto LABEL_6;
    case 84:
      goto LABEL_4;
    case 85:
      v3 = &kCGImagePropertyIPTCCredit;
      goto LABEL_133;
    default:
      if (kPFMediaPropertyCreationDate)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_4:
      if (kPFImagePropertyGenerativeAIImageType)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_6:
      if (kPFImagePropertyIsThreeImageStereoHEIC)
      {
        return sub_10001AF50();
      }

      __break(1u);
LABEL_8:
      v3 = &kCGImagePropertyExifAuxFlashCompensation;
LABEL_133:
      v4 = *v3;
      return sub_10001AF50();
  }
}

uint64_t sub_100009558@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000C9E8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100009588@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100008DEC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_1000095B4(void *a1)
{
  v2 = sub_10001A9C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100006F6C(&qword_1000241A0, &qword_10001C5C8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v117 - v9;
  v11 = sub_100006F6C(&qword_1000241A8, &qword_10001C5D0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v117 - v13;
  v15 = sub_100006F6C(&qword_1000241B0, &qword_10001C5D8);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v117 - v20;
  result = [a1 syndicationProperties];
  if (result)
  {
    v120 = v21;
    v121 = v19;
    v122 = v14;
    v123 = v10;
    v124 = v6;
    v125 = v2;
    v23 = result;
    v24 = sub_10001AF20();

    v25 = 0;
    v26 = 1 << *(v24 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v24 + 64);
    v29 = (v26 + 63) >> 6;
    v119 = enum case for MediaMetadata.AppleMakerNoteCamera.unknown(_:);
    v118 = (v3 + 104);
    v117 = (v3 + 56);
    while (1)
    {
      if (v28)
      {
        v30 = v25;
LABEL_17:
        v33 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
        v34 = v33 | (v30 << 6);
        v35 = (*(v24 + 48) + 16 * v34);
        v37 = *v35;
        v36 = v35[1];
        sub_10000C080(*(v24 + 56) + 32 * v34, v127);
        *&v128 = v37;
        *(&v128 + 1) = v36;
        sub_10000C0DC(v127, &v129);
      }

      else
      {
        v31 = v29 <= v25 + 1 ? v25 + 1 : v29;
        v32 = v31 - 1;
        while (1)
        {
          v30 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            __break(1u);
            JUMPOUT(0x10000BF28);
          }

          if (v30 >= v29)
          {
            break;
          }

          v28 = *(v24 + 64 + 8 * v30);
          ++v25;
          if (v28)
          {
            v25 = v30;
            goto LABEL_17;
          }
        }

        v28 = 0;
        v129 = 0u;
        v130 = 0u;
        v25 = v32;
        v128 = 0u;
      }

      v131 = v128;
      v132[0] = v129;
      v132[1] = v130;
      v38 = *(&v128 + 1);
      if (!*(&v128 + 1))
      {
      }

      v39 = v131;
      sub_10000C0DC(v132, &v128);
      if (qword_1000240C0 != -1)
      {
        swift_once();
      }

      v40 = off_100024198;
      if (*(off_100024198 + 2))
      {
        v41 = sub_100019D08(v39, v38);
        v43 = v42;

        if (v43)
        {
          switch(*(v40[7] + v41))
          {
            case 1:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v87 = v126;
                [v126 integerValue];
              }

              sub_10001A890();
              break;
            case 2:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v80 = v126;
                [v126 doubleValue];
              }

              sub_10001A940();
              break;
            case 3:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v83 = v126;
                [v126 integerValue];
              }

              sub_10001A860();
              break;
            case 4:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v73 = v126;
                [v126 unsignedIntegerValue];
              }

              sub_10001A810();
              break;
            case 5:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v93 = v126;
                [v126 unsignedIntegerValue];
              }

              sub_10001A870();
              break;
            case 6:
              sub_10000C080(&v128, v127);
              swift_dynamicCast();
              sub_10001AC60();
              break;
            case 7:
              sub_10000C080(&v128, v127);
              swift_dynamicCast();
              sub_10001AC30();
              break;
            case 8:
              sub_10000C080(&v128, v127);
              swift_dynamicCast();
              sub_10001A750();
              break;
            case 9:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v77 = v126;
                [v126 unsignedIntegerValue];
              }

              sub_10001A8B0();
              break;
            case 0xA:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v99 = v126;
                [v126 BOOLValue];
              }

              sub_10001A8C0();
              break;
            case 0xB:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v68 = v126;
                [v126 doubleValue];
              }

              sub_10001A7D0();
              break;
            case 0xC:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v76 = v126;
                [v126 integerValue];
              }

              sub_10001A8F0();
              break;
            case 0xD:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v97 = v126;
                [v126 integerValue];
              }

              sub_10001AB90();
              break;
            case 0xE:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v65 = v126;
                [v126 doubleValue];
              }

              sub_10001A710();
              break;
            case 0xF:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v81 = v126;
                [v126 doubleValue];
              }

              sub_10001A920();
              break;
            case 0x10:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v62 = v126;
                [v126 integerValue];
              }

              sub_10001A850();
              break;
            case 0x11:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v89 = v126;
                [v126 integerValue];
              }

              sub_10001A7A0();
              break;
            case 0x12:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v98 = v126;
                [v126 doubleValue];
              }

              sub_10001A7B0();
              break;
            case 0x13:
              sub_10000C080(&v128, v127);
              swift_dynamicCast();
              sub_10001ABB0();
              break;
            case 0x14:
              sub_10000C080(&v128, v127);
              swift_dynamicCast();
              sub_10001AB70();
              break;
            case 0x15:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v96 = v126;
                [v126 integerValue];
              }

              sub_10001A7C0();
              break;
            case 0x16:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v103 = v126;
                [v126 integerValue];
              }

              sub_10001A740();
              break;
            case 0x17:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v106 = v126;
                [v126 integerValue];
              }

              sub_10001AA00();
              break;
            case 0x18:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v79 = v126;
                [v126 integerValue];
              }

              sub_10001A910();
              break;
            case 0x19:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v78 = v126;
                [v126 doubleValue];
              }

              sub_10001ABD0();
              break;
            case 0x1A:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v108 = v126;
                [v126 BOOLValue];
              }

              sub_10001A7E0();
              break;
            case 0x1B:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v60 = v126;
                [v126 BOOLValue];
              }

              sub_10001AB00();
              break;
            case 0x1C:
              sub_10000C080(&v128, v127);
              swift_dynamicCast();
              sub_10001A6D0();
              break;
            case 0x1D:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v107 = v126;
                [v126 doubleValue];
              }

              sub_10001A770();
              break;
            case 0x1E:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v100 = v126;
                [v126 unsignedIntegerValue];
              }

              sub_10001A9A0();
              break;
            case 0x1F:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v88 = v126;
                [v126 doubleValue];
              }

              sub_10001AB20();
              break;
            case 0x20:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v101 = v126;
                [v126 doubleValue];
              }

              sub_10001AB40();
              break;
            case 0x21:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v66 = v126;
                [v126 doubleValue];
              }

              sub_10001AB50();
              break;
            case 0x22:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v61 = v126;
                [v126 doubleValue];
              }

              sub_10001AB60();
              break;
            case 0x23:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v57 = v126;
                [v126 doubleValue];
              }

              sub_10001A6F0();
              break;
            case 0x24:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v58 = v126;
                [v126 doubleValue];
              }

              sub_10001AB80();
              break;
            case 0x25:
              sub_10000C080(&v128, v127);
              swift_dynamicCast();
              sub_10001A8E0();
              break;
            case 0x26:
              sub_10000C080(&v128, v127);
              swift_dynamicCast();
              sub_10001A700();
              break;
            case 0x27:
              sub_10000C080(&v128, v127);
              swift_dynamicCast();
              sub_10001A840();
              break;
            case 0x28:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v74 = v126;
                [v126 BOOLValue];
              }

              sub_10001AC10();
              break;
            case 0x29:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v90 = v126;
                [v126 doubleValue];
              }

              sub_10001A950();
              break;
            case 0x2A:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v104 = v126;
                [v126 doubleValue];
              }

              sub_10001AA70();
              break;
            case 0x2B:
              sub_10000C080(&v128, v127);
              swift_dynamicCast();
              sub_10001AAE0();
              break;
            case 0x2C:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v64 = v126;
                [v126 doubleValue];
              }

              sub_10001AC70();
              break;
            case 0x2D:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v102 = v126;
                [v126 doubleValue];
              }

              sub_10001AC20();
              break;
            case 0x2E:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v110 = v126;
                [v126 doubleValue];
              }

              sub_10001ABE0();
              break;
            case 0x2F:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v55 = v126;
                [v126 doubleValue];
              }

              sub_10001AC00();
              break;
            case 0x30:
              sub_10000C080(&v128, v127);
              swift_dynamicCast();
              sub_10001A720();
              break;
            case 0x31:
              sub_10000C080(&v128, v127);
              v70 = sub_10001A3A0();
              v71 = v121;
              v72 = swift_dynamicCast();
              (*(*(v70 - 8) + 56))(v71, v72 ^ 1u, 1, v70);
              sub_10001A780();
              break;
            case 0x32:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v50 = v126;
                [v126 doubleValue];
              }

              sub_10001A9F0();
              break;
            case 0x33:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v112 = v126;
                [v126 doubleValue];
              }

              sub_10001A830();
              break;
            case 0x34:
              sub_10000C080(&v128, v127);
              swift_dynamicCast();
              sub_10001A900();
              break;
            case 0x35:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v54 = v126;
                [v126 unsignedIntegerValue];
              }

              sub_10001ABF0();
              break;
            case 0x36:
              sub_10000C080(&v128, v127);
              swift_dynamicCast();
              sub_10001AA20();
              break;
            case 0x37:
              sub_10000C080(&v128, v127);
              swift_dynamicCast();
              sub_10001A8D0();
              break;
            case 0x38:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v56 = v126;
                [v126 BOOLValue];
              }

              sub_10001A790();
              break;
            case 0x39:
              sub_10000C080(&v128, v127);
              swift_dynamicCast();
              sub_10001A3B0();

              sub_10001AC40();
              break;
            case 0x3A:
              sub_10000C080(&v128, v127);
              swift_dynamicCast();
              sub_10001A760();
              break;
            case 0x3B:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v105 = v126;
                [v126 BOOLValue];
              }

              sub_10001A960();
              break;
            case 0x3C:
              sub_10000C080(&v128, v127);
              swift_dynamicCast();
              sub_10001AB10();
              break;
            case 0x3D:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v92 = v126;
                [v126 doubleValue];
              }

              sub_10001AA40();
              break;
            case 0x3E:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v95 = v126;
                [v126 doubleValue];
              }

              sub_10001AA80();
              break;
            case 0x3F:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v82 = v126;
                [v126 integerValue];
              }

              sub_10001AB30();
              break;
            case 0x40:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v75 = v126;
                [v126 integerValue];
              }

              sub_10001A970();
              break;
            case 0x41:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v94 = v126;
                [v126 BOOLValue];
              }

              sub_10001A800();
              break;
            case 0x42:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v51 = v126;
                [v126 doubleValue];
              }

              sub_10001A930();
              break;
            case 0x43:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v63 = v126;
                [v126 doubleValue];
              }

              sub_10001A980();
              break;
            case 0x44:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v114 = v126;
                [v126 doubleValue];
              }

              sub_10001A990();
              break;
            case 0x45:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v59 = v126;
                [v126 doubleValue];
              }

              sub_10001A880();
              break;
            case 0x46:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v48 = v126;
                [v126 integerValue];
              }

              sub_10001AAF0();
              break;
            case 0x47:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v53 = v126;
                [v126 BOOLValue];
              }

              sub_10001AA50();
              break;
            case 0x48:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v109 = v126;
                [v126 doubleValue];
              }

              sub_10001AAD0();
              break;
            case 0x49:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v111 = v126;
                [v126 BOOLValue];
              }

              sub_10001ABA0();
              break;
            case 0x4A:
            case 0x4B:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v44 = v126;
                [v126 BOOLValue];
              }

              sub_10001A7F0();
              break;
            case 0x4C:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v91 = v126;
                [v126 unsignedIntegerValue];
              }

              sub_10001AA60();
              break;
            case 0x4D:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v49 = v126;
                [v126 integerValue];
              }

              v115 = v125;
              (*v118)(v124, v119, v125);
              v116 = v123;
              sub_10001A9B0();
              (*v117)(v116, 0, 1, v115);
              sub_10001A9D0();
              break;
            case 0x4E:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v113 = v126;
                [v126 BOOLValue];
              }

              sub_10001A820();
              break;
            case 0x4F:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v47 = v126;
                [v126 doubleValue];
              }

              sub_10001AAB0();
              break;
            case 0x50:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v52 = v126;
                [v126 BOOLValue];
              }

              sub_10001A9E0();
              break;
            case 0x51:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v69 = v126;
                [v126 BOOLValue];
              }

              sub_10001A8A0();
              break;
            case 0x52:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v67 = v126;
                [v126 BOOLValue];
              }

              sub_10001A730();
              break;
            case 0x53:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v46 = v126;
                [v126 BOOLValue];
              }

              sub_10001AA30();
              break;
            case 0x54:
              sub_10000C080(&v128, v127);
              sub_10000C138();
              if (swift_dynamicCast())
              {
                v45 = v126;
                [v126 doubleValue];
              }

              sub_10001AA10();
              break;
            case 0x55:
              sub_10000C080(&v128, v127);
              swift_dynamicCast();
              sub_10001A6E0();
              break;
            default:
              sub_10000C080(&v128, v127);
              v84 = sub_10001A3A0();
              v85 = v120;
              v86 = swift_dynamicCast();
              (*(*(v84 - 8) + 56))(v85, v86 ^ 1u, 1, v84);
              sub_10001AC50();
              break;
          }
        }
      }

      else
      {
      }

      sub_10000C0EC(&v128);
    }
  }

  return result;
}

uint64_t sub_10000C080(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_10000C0DC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000C0EC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_10000C138()
{
  result = qword_1000241B8;
  if (!qword_1000241B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000241B8);
  }

  return result;
}

uint64_t sub_10000C184(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100006F6C(&qword_1000241C0, &unk_10001C5E0);
  v38 = a2;
  result = sub_10001B1F0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_10001B250();
      sub_10001AF80();
      result = sub_10001B260();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10000C424(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100006F6C(&qword_1000241C8, &qword_10001C960);
  v36 = a2;
  result = sub_10001B1F0();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_10000C0DC(v25, v37);
      }

      else
      {
        sub_10000C080(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_10001B250();
      sub_10001AF80();
      result = sub_10001B260();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_10000C0DC(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

void *sub_10000C6DC()
{
  v1 = v0;
  sub_100006F6C(&qword_1000241C0, &unk_10001C5E0);
  v2 = *v0;
  v3 = sub_10001B1E0();
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
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_10000C844()
{
  v1 = v0;
  sub_100006F6C(&qword_1000241C8, &qword_10001C960);
  v2 = *v0;
  v3 = sub_10001B1E0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10000C080(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000C0DC(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_10000C9E8(uint64_t a1, uint64_t a2)
{
  if (qword_1000240C0 != -1)
  {
    v7 = a1;
    v8 = a2;
    swift_once();
    a1 = v7;
    a2 = v8;
  }

  v2 = off_100024198;
  if (*(off_100024198 + 2))
  {
    v3 = sub_100019D08(a1, a2);
    v5 = v4;

    if (v5)
    {
      return *(v2[7] + v3);
    }
  }

  else
  {
  }

  return 86;
}

uint64_t getEnumTagSinglePayload for MetadataKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xAB)
  {
    goto LABEL_17;
  }

  if (a2 + 85 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 85) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 85;
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

      return (*a1 | (v4 << 8)) - 85;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 85;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x56;
  v8 = v6 - 86;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MetadataKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 85 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 85) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xAB)
  {
    v4 = 0;
  }

  if (a2 > 0xAA)
  {
    v5 = ((a2 - 171) >> 8) + 1;
    *result = a2 + 85;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 85;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000CC08()
{
  result = qword_1000241D0;
  if (!qword_1000241D0)
  {
    sub_100007160(&qword_1000241D8, qword_10001C608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000241D0);
  }

  return result;
}

unint64_t sub_10000CC70()
{
  result = qword_1000241E0;
  if (!qword_1000241E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000241E0);
  }

  return result;
}

uint64_t sub_10000CD1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v44 = a3;
  v45 = a2;
  v46 = a4;
  v5 = sub_100006F6C(&qword_1000241F0, &qword_10001C790);
  v43 = *(v5 - 8);
  v6 = *(v43 + 64);
  __chkstk_darwin(v5);
  v42 = &v34 - v7;
  v40 = sub_10001AE10();
  v38 = *(v40 - 8);
  v8 = *(v38 + 64);
  __chkstk_darwin(v40);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10001A390();
  v39 = *(v36 - 8);
  v11 = *(v39 + 64);
  __chkstk_darwin(v36);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10001ADE0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10001B060();
  sub_100017824(0, &qword_100024178, OS_os_log_ptr);
  v20 = sub_10001B150();
  v21 = *(v15 + 16);
  v41 = a1;
  v21(v18, a1, v14);
  v37 = v19;
  if (os_log_type_enabled(v20, v19))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v35 = v5;
    v24 = v23;
    v47 = v23;
    *v22 = 136446210;
    sub_10001ADD0();
    sub_10001AE00();
    (*(v38 + 8))(v10, v40);
    sub_100016A68(&qword_100024200, &type metadata accessor for URL);
    v25 = v36;
    v26 = sub_10001B210();
    v28 = v27;
    (*(v39 + 8))(v13, v25);
    (*(v15 + 8))(v18, v14);
    v29 = sub_1000164C0(v26, v28, &v47);

    *(v22 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v20, v37, "BlastDoor processing thumbnail for video: %{public}s", v22, 0xCu);
    sub_10000C0EC(v24);
    v5 = v35;
  }

  else
  {

    v30 = (*(v15 + 8))(v18, v14);
  }

  __chkstk_darwin(v30);
  v32 = v44;
  v31 = v45;
  *(&v34 - 4) = v41;
  *(&v34 - 3) = v32;
  *(&v34 - 2) = v31;
  sub_100006F6C(&qword_1000241F8, &qword_10001C798);
  (*(v43 + 104))(v42, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v5);
  return sub_10001B010();
}

uint64_t sub_10000D1E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v35 = a2;
  v36 = a4;
  v38 = a3;
  v34 = a1;
  v39 = sub_100006F6C(&qword_100024210, &qword_10001C7A8);
  v4 = *(v39 - 8);
  v37 = *(v4 + 64);
  __chkstk_darwin(v39);
  v6 = &v28 - v5;
  v31 = &v28 - v5;
  v32 = sub_10001A5F0();
  v7 = *(v32 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v32);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001ADE0();
  v29 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100006F6C(&qword_100024218, &qword_10001C7B0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v28 - v15;
  v33 = &v28 - v15;
  v17 = sub_10001AFE0();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v10 + 16))(v12, v35, v9);
  v18 = v32;
  (*(v7 + 16))(&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v32);
  v19 = v4;
  (*(v4 + 16))(v6, v34, v39);
  v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v21 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v7 + 80) + v21 + 8) & ~*(v7 + 80);
  v23 = (v8 + *(v4 + 80) + v22) & ~*(v4 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  (*(v10 + 32))(v24 + v20, v12, v29);
  v25 = v38;
  *(v24 + v21) = v38;
  (*(v7 + 32))(v24 + v22, v30, v18);
  (*(v19 + 32))(v24 + v23, v31, v39);
  v26 = v25;
  sub_100015FCC(0, 0, v33, &unk_10001C7C0, v24);
}

uint64_t sub_10000D598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = sub_100006F6C(&qword_100024210, &qword_10001C7A8);
  v7[7] = v8;
  v9 = *(v8 - 8);
  v7[8] = v9;
  v7[9] = *(v9 + 64);
  v7[10] = swift_task_alloc();
  v10 = sub_10001A5F0();
  v7[11] = v10;
  v11 = *(v10 - 8);
  v7[12] = v11;
  v7[13] = *(v11 + 64);
  v7[14] = swift_task_alloc();
  v12 = sub_10001AE10();
  v7[15] = v12;
  v13 = *(v12 - 8);
  v7[16] = v13;
  v14 = *(v13 + 64) + 15;
  v7[17] = swift_task_alloc();
  v15 = sub_10001A390();
  v7[18] = v15;
  v16 = *(v15 - 8);
  v7[19] = v16;
  v17 = *(v16 + 64) + 15;
  v7[20] = swift_task_alloc();
  v18 = sub_10001ADE0();
  v7[21] = v18;
  v19 = *(v18 - 8);
  v7[22] = v19;
  v7[23] = *(v19 + 64);
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();

  return _swift_task_switch(sub_10000D7FC, 0, 0);
}

uint64_t sub_10000D7FC()
{
  v54 = v0;
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[3];
  v5 = sub_10001B060();
  v0[26] = sub_100017824(0, &qword_100024178, OS_os_log_ptr);
  v6 = sub_10001B150();
  v50 = *(v3 + 16);
  (v50)(v1, v4, v2);
  v7 = os_log_type_enabled(v6, v5);
  v8 = v0[25];
  v9 = v0[21];
  v10 = v0[22];
  if (v7)
  {
    v12 = v0[19];
    v11 = v0[20];
    v13 = v0[17];
    v44 = v0[18];
    v51 = v5;
    v14 = v0[16];
    v41 = v0[15];
    buf = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v53 = v48;
    *buf = 136446210;
    v42 = v9;
    sub_10001ADD0();
    sub_10001AE00();
    (*(v14 + 8))(v13, v41);
    sub_100016A68(&qword_100024200, &type metadata accessor for URL);
    v15 = sub_10001B210();
    v17 = v16;
    (*(v12 + 8))(v11, v44);
    (*(v10 + 8))(v8, v42);
    v18 = sub_1000164C0(v15, v17, &v53);

    *(buf + 4) = v18;
    _os_log_impl(&_mh_execute_header, v6, v51, "Task running for video: %{public}s)", buf, 0xCu);
    sub_10000C0EC(v48);
  }

  else
  {

    (*(v10 + 8))(v8, v9);
  }

  v19 = v0[21];
  v20 = v0[22];
  v43 = v19;
  v45 = v0[24];
  v21 = v0[14];
  v39 = v0[23];
  v40 = v0[13];
  v23 = v0[11];
  v22 = v0[12];
  v24 = v0[10];
  bufa = v21;
  v49 = v24;
  v25 = v0[7];
  v26 = v0[8];
  v28 = v0[5];
  v27 = v0[6];
  v29 = v0[3];
  v52 = v0[4];
  v50();
  (*(v22 + 16))(v21, v28, v23);
  (*(v26 + 16))(v24, v27, v25);
  v30 = (*(v20 + 80) + 24) & ~*(v20 + 80);
  v31 = (v39 + *(v22 + 80) + v30) & ~*(v22 + 80);
  v32 = (v40 + *(v26 + 80) + v31) & ~*(v26 + 80);
  v33 = swift_allocObject();
  v0[27] = v33;
  *(v33 + 16) = v52;
  (*(v20 + 32))(v33 + v30, v45, v43);
  (*(v22 + 32))(v33 + v31, bufa, v23);
  (*(v26 + 32))(v33 + v32, v49, v25);
  v34 = async function pointer to File.withResource<A>(_:)[1];
  v35 = v52;
  v36 = swift_task_alloc();
  v0[28] = v36;
  *v36 = v0;
  v36[1] = sub_10000DC24;
  v37 = v0[3];

  return File.withResource<A>(_:)();
}

uint64_t sub_10000DC24()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v7 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = sub_10000DDE8;
  }

  else
  {
    v5 = *(v2 + 216);

    v4 = sub_10000DD40;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000DD40()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[10];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10000DDE8()
{
  v2 = v0[26];
  v1 = v0[27];

  v3 = sub_10001B070();
  v4 = sub_10001B150();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = v0[29];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v3, "Caught error: %@", v6, 0xCu);
    sub_100017768(v7, &qword_100024220, &qword_10001C7F0);
  }

  v9 = v0[29];
  v11 = v0[6];
  v10 = v0[7];

  v0[2] = v9;
  sub_10001B000();
  v13 = v0[24];
  v12 = v0[25];
  v14 = v0[20];
  v15 = v0[17];
  v16 = v0[14];
  v17 = v0[10];

  v18 = v0[1];

  return v18();
}

uint64_t sub_10000DF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_10000DF9C, 0, 0);
}

uint64_t sub_10000DF9C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = sub_10001747C();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = *(v0 + 40);
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  v5 = _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lFTu[1];
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  sub_100006F6C(&qword_100024170, &qword_10001C578);
  *v6 = v0;
  v6[1] = sub_10000E0D8;
  v7 = *(v0 + 24);

  return _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lF(v7, v2, v3, 0, 0, &unk_10001C800, v4, &type metadata for () + 8);
}

uint64_t sub_10000E0D8()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_10000E210, 0, 0);
  }

  else
  {
    v5 = *(v2 + 64);

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_10000E210()
{
  v1 = v0[8];
  v2 = v0[2];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10000E274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[57] = a5;
  v6[58] = a6;
  v6[55] = a2;
  v6[56] = a3;
  v7 = *(*(sub_100006F6C(&qword_1000241F8, &qword_10001C798) - 8) + 64) + 15;
  v6[59] = swift_task_alloc();
  v8 = sub_100006F6C(&qword_100024230, &unk_10001C810);
  v6[60] = v8;
  v9 = *(v8 - 8);
  v6[61] = v9;
  v10 = *(v9 + 64) + 15;
  v6[62] = swift_task_alloc();
  v11 = sub_10001A6B0();
  v6[63] = v11;
  v12 = *(v11 - 8);
  v6[64] = v12;
  v13 = *(v12 + 64) + 15;
  v6[65] = swift_task_alloc();
  v6[66] = swift_task_alloc();
  v14 = sub_10001A5D0();
  v6[67] = v14;
  v15 = *(v14 - 8);
  v6[68] = v15;
  v16 = *(v15 + 64) + 15;
  v6[69] = swift_task_alloc();
  v6[70] = swift_task_alloc();
  v17 = sub_10001A5B0();
  v6[71] = v17;
  v18 = *(v17 - 8);
  v6[72] = v18;
  v19 = *(v18 + 64) + 15;
  v6[73] = swift_task_alloc();
  v6[74] = swift_task_alloc();
  v20 = *(*(sub_100006F6C(&qword_100024238, &unk_10001C8D0) - 8) + 64) + 15;
  v6[75] = swift_task_alloc();
  v21 = sub_10001AE70();
  v6[76] = v21;
  v22 = *(v21 - 8);
  v6[77] = v22;
  v23 = *(v22 + 64) + 15;
  v6[78] = swift_task_alloc();
  v6[79] = swift_task_alloc();
  v24 = sub_10001B040();
  v6[80] = v24;
  v25 = *(v24 - 8);
  v6[81] = v25;
  v26 = *(v25 + 64) + 15;
  v6[82] = swift_task_alloc();
  v6[83] = swift_task_alloc();
  v27 = sub_10001A670();
  v6[84] = v27;
  v28 = *(v27 - 8);
  v6[85] = v28;
  v29 = *(v28 + 64) + 15;
  v6[86] = swift_task_alloc();
  v6[87] = swift_task_alloc();
  v6[88] = swift_task_alloc();
  v30 = sub_10001A690();
  v6[89] = v30;
  v31 = *(v30 - 8);
  v6[90] = v31;
  v32 = *(v31 + 64) + 15;
  v6[91] = swift_task_alloc();
  v33 = sub_10001A600();
  v6[92] = v33;
  v34 = *(v33 - 8);
  v6[93] = v34;
  v35 = *(v34 + 64) + 15;
  v6[94] = swift_task_alloc();
  v6[95] = swift_task_alloc();
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();
  v6[98] = swift_task_alloc();
  v36 = sub_10001A390();
  v6[99] = v36;
  v37 = *(v36 - 8);
  v6[100] = v37;
  v38 = *(v37 + 64) + 15;
  v6[101] = swift_task_alloc();
  v39 = sub_10001AE10();
  v6[102] = v39;
  v40 = *(v39 - 8);
  v6[103] = v40;
  v41 = *(v40 + 64) + 15;
  v6[104] = swift_task_alloc();

  return _swift_task_switch(sub_10000E7FC, 0, 0);
}

uint64_t sub_10000E7FC()
{
  v1 = v0[104];
  v2 = v0[103];
  v3 = v0[102];
  v4 = v0[101];
  v5 = v0[100];
  v6 = v0[99];
  v7 = v0[55];
  sub_10001ADD0();
  sub_10001AE00();
  (*(v2 + 8))(v1, v3);
  v0[105] = sub_100006F6C(&qword_100024240, &qword_10001C820);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10001C4F0;
  *(v8 + 32) = sub_10001AF50();
  *(v8 + 40) = v9;
  *(v8 + 72) = &type metadata for Bool;
  *(v8 + 48) = 1;
  sub_100019FF8(v8);
  swift_setDeallocating();
  sub_100017768(v8 + 32, &qword_100024248, &qword_10001C828);
  swift_deallocClassInstance();
  v10 = objc_allocWithZone(AVURLAsset);
  sub_10001A380(v11);
  v13 = v12;
  isa = sub_10001AF00().super.isa;

  v15 = [v10 initWithURL:v13 options:isa];
  v0[106] = v15;

  (*(v5 + 8))(v4, v6);
  v16 = sub_10001B060();
  v0[107] = sub_100017824(0, &qword_100024178, OS_os_log_ptr);
  v17 = sub_10001B150();
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138543362;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v17, v16, "Created asset: %{public}@", v18, 0xCu);
    sub_100017768(v19, &qword_100024220, &qword_10001C7F0);
  }

  sub_10001B060();
  v21 = sub_10001B150();
  sub_10001A450();

  v0[2] = v0;
  v0[7] = v0 + 50;
  v0[3] = sub_10000EBE8;
  v22 = swift_continuation_init();
  v0[17] = sub_100006F6C(&qword_100024250, &qword_10001C830);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100015EDC;
  v0[13] = &unk_1000218B8;
  v0[14] = v22;
  [v15 loadTracksWithMediaType:AVMediaTypeVideo completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000EBE8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 864) = v3;
  if (v3)
  {
    v4 = *(v1 + 848);

    v5 = sub_100014148;
  }

  else
  {
    v5 = sub_10000ED30;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000ED30()
{
  v1 = *(v0 + 856);
  v2 = *(v0 + 400);
  sub_10001B060();
  v3 = sub_10001B150();
  sub_10001A450();

  if (v2 >> 62)
  {
    v5 = sub_10001B1D0();
    v4 = sub_10001B1D0();
    *(v0 + 872) = v5;
    if (v4)
    {
LABEL_3:
      v6 = __OFSUB__(v4, 1);
      v7 = v4 - 1;
      if (v6)
      {
        __break(1u);
      }

      else if ((v2 & 0xC000000000000001) == 0)
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v7 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v8 = *(v2 + 8 * v7 + 32);
LABEL_8:
          v9 = v8;

          goto LABEL_11;
        }

        __break(1u);
      }

      v8 = sub_10001B1B0();
      goto LABEL_8;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = v4;
    *(v0 + 872) = v4;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_11:
  *(v0 + 880) = v9;
  v10 = *(v0 + 856);
  v11 = sub_10001B060();
  v12 = sub_10001B150();
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    *v13 = 134349056;
    *(v13 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v12, v11, "Tracks found: %{public}ld)", v13, 0xCu);
  }

  v14 = *(v0 + 848);
  if (v9)
  {
    v15 = *(v0 + 784);
    v16 = *(v0 + 744);
    v17 = *(v0 + 736);
    v18 = *(v0 + 448);
    v19 = objc_opt_self();
    v20 = v9;
    *(v0 + 1484) = [v19 videoAssetIsSpatial:v14];
    sub_10001A5E0();
    v21 = *(v16 + 88);
    *(v0 + 888) = v21;
    *(v0 + 896) = (v16 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
    v22 = v21(v15, v17);
    *(v0 + 1460) = v22;
    v23 = enum case for VideoPreview.FrameConstraints.singleFrame(_:);
    *(v0 + 1464) = enum case for VideoPreview.FrameConstraints.singleFrame(_:);
    if (v22 == v23)
    {
      v24 = *(v0 + 784);
      v25 = *(v0 + 736);
      v26 = *(v0 + 728);
      v27 = *(v0 + 720);
      v28 = *(v0 + 712);
      v29 = *(*(v0 + 744) + 96);
      *(v0 + 904) = v29;
      v29(v24, v25);
      (*(v27 + 32))(v26, v24, v28);
      sub_100006F6C(&qword_100024288, &qword_10001C858);
      v30 = sub_10001A3C0();
      *(v0 + 912) = v30;
      v31 = async function pointer to AVAsynchronousKeyValueLoading.load<A>(_:isolation:)[1];
      v32 = swift_task_alloc();
      *(v0 + 920) = v32;
      *v32 = v0;
      v32[1] = sub_10000F63C;

      return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 368, v30, 0, 0);
    }

    if (v22 == enum case for VideoPreview.FrameConstraints.multiFrame(_:))
    {
      v34 = *(v0 + 784);
      v35 = *(v0 + 704);
      v36 = *(v0 + 680);
      v37 = *(v0 + 672);
      v38 = *(*(v0 + 744) + 96);
      v38(v34, *(v0 + 736));
      (*(v36 + 32))(v35, v34, v37);
      if (sub_10001A640() >= 1)
      {
        v39 = *(v0 + 704);
        if (sub_10001A650() >= 1)
        {
          v40 = *(v0 + 704);
          v41 = *(v0 + 680);
          v42 = *(v0 + 672);
          v43 = sub_10001A640();
          v44 = sub_10001A650();
          v45 = sub_10001A610();
          (*(v41 + 8))(v40, v42);
          *(v0 + 1000) = v44;
          *(v0 + 992) = v43;
          *(v0 + 984) = v45;
          *(v0 + 976) = v38;
          v46 = *(v0 + 880);
          v47 = async function pointer to AVAssetTrack.info.getter[1];
          v48 = swift_task_alloc();
          *(v0 + 1008) = v48;
          *v48 = v0;
          v48[1] = sub_10000FD04;
          v49 = *(v0 + 664);

          return AVAssetTrack.info.getter(v49);
        }
      }

      v50 = *(v0 + 848);
      v51 = *(v0 + 704);
      v52 = *(v0 + 680);
      v53 = *(v0 + 672);

      sub_10001AEA0();
      sub_100016A68(&qword_100024190, &type metadata accessor for Explosion);
      v55 = swift_allocError();
      sub_10001AE90();
      v82 = v55;
      swift_willThrow();
    }

    else
    {
      v50 = *(v0 + 848);
      v51 = *(v0 + 784);
      v52 = *(v0 + 744);
      v53 = *(v0 + 736);

      sub_10001AEA0();
      sub_100016A68(&qword_100024190, &type metadata accessor for Explosion);
      v54 = swift_allocError();
      sub_10001AE90();
      v82 = v54;
      swift_willThrow();
    }

    (*(v52 + 8))(v51, v53);
  }

  else
  {

    sub_10001AEA0();
    sub_100016A68(&qword_100024190, &type metadata accessor for Explosion);
    v33 = swift_allocError();
    sub_10001AE90();
    v82 = v33;
    swift_willThrow();
  }

  v56 = *(v0 + 832);
  v57 = *(v0 + 808);
  v58 = *(v0 + 784);
  v59 = *(v0 + 776);
  v60 = *(v0 + 768);
  v61 = *(v0 + 760);
  v62 = *(v0 + 752);
  v63 = *(v0 + 728);
  v64 = *(v0 + 704);
  v65 = *(v0 + 696);
  v68 = *(v0 + 688);
  v69 = *(v0 + 664);
  v70 = *(v0 + 656);
  v71 = *(v0 + 632);
  v72 = *(v0 + 624);
  v73 = *(v0 + 600);
  v74 = *(v0 + 592);
  v75 = *(v0 + 584);
  v76 = *(v0 + 560);
  v77 = *(v0 + 552);
  v78 = *(v0 + 528);
  v79 = *(v0 + 520);
  v80 = *(v0 + 496);
  v81 = *(v0 + 472);
  **(v0 + 464) = v82;

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_10000F63C()
{
  v2 = *v1;
  v3 = *(*v1 + 920);
  v4 = *v1;
  v2[116] = v0;

  v5 = v2[114];
  if (v0)
  {
    v6 = v2[106];

    v7 = sub_100014344;
  }

  else
  {

    v7 = sub_10000F7BC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10000F7BC()
{
  v1 = *(v0 + 880);
  *(v0 + 936) = *(v0 + 368);
  sub_100006F6C(&qword_100024290, &unk_10001C860);
  v2 = sub_10001A3E0();
  *(v0 + 952) = v2;
  v3 = async function pointer to AVAsynchronousKeyValueLoading.load<A>(_:isolation:)[1];
  v4 = swift_task_alloc();
  *(v0 + 960) = v4;
  *v4 = v0;
  v4[1] = sub_10000F8CC;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 144, v2, 0, 0);
}

uint64_t sub_10000F8CC()
{
  v2 = *v1;
  v3 = *(*v1 + 960);
  v4 = *v1;
  v2[121] = v0;

  v5 = v2[119];
  if (v0)
  {
    v6 = v2[106];

    v7 = sub_100014568;
  }

  else
  {

    v7 = sub_10000FA4C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10000FD04()
{
  v2 = *v1;
  v3 = *(*v1 + 1008);
  v8 = *v1;
  *(*v1 + 1016) = v0;

  if (v0)
  {
    v4 = *(v2 + 880);
    v5 = *(v2 + 848);

    v6 = sub_10001478C;
  }

  else
  {
    v6 = sub_10000FE60;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10000FE60()
{
  v1 = v0[107];
  v2 = sub_10001B060();
  v3 = sub_10001B150();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = v0[125];
    v5 = v0[124];
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v3, v2, "thumbnailFitPxSize: %f x %f", v6, 0x16u);
  }

  v7 = async function pointer to AVAsset.isAutoLoop.getter[1];
  v8 = swift_task_alloc();
  v0[128] = v8;
  *v8 = v0;
  v8[1] = sub_10000FFBC;
  v9 = v0[106];

  return AVAsset.isAutoLoop.getter();
}

uint64_t sub_10000FFBC(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1024);
  v8 = *v2;
  *(v3 + 1485) = a1;
  *(v3 + 1032) = v1;

  if (v1)
  {
    v5 = *(v3 + 848);

    v6 = sub_100014988;
  }

  else
  {
    v6 = sub_100010114;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100010114()
{
  v1 = *(v0 + 848);

  v2 = objc_allocWithZone(AVAssetReader);
  *(v0 + 408) = 0;
  v3 = [v2 initWithAsset:v1 error:v0 + 408];
  *(v0 + 1040) = v3;
  v4 = *(v0 + 408);
  v5 = *(v0 + 848);
  if (!v3)
  {
    v46 = *(v0 + 880);
    v47 = *(v0 + 664);
    v48 = *(v0 + 648);
    v49 = *(v0 + 640);
    v50 = v4;
    v51 = sub_10001A370();

    v254 = v51;
    swift_willThrow();

    (*(v48 + 8))(v47, v49);
    goto LABEL_32;
  }

  v6 = *(v0 + 992);
  v7 = *(v0 + 840);
  v8 = v4;

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10001C710;
  *(v9 + 32) = sub_10001AF50();
  *(v9 + 40) = v10;
  *(v9 + 72) = sub_100006F6C(&qword_100024258, &qword_10001C838);
  *(v9 + 48) = &off_100021490;
  *(v9 + 80) = sub_10001AF50();
  *(v9 + 88) = v11;
  if ((v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_63;
  }

  v12 = *(v0 + 992);
  if (v12 <= -9.22337204e18)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v13 = *(v0 + 1000);
  *(v9 + 120) = &type metadata for Int;
  *(v9 + 96) = v12;
  *(v9 + 128) = sub_10001AF50();
  *(v9 + 136) = v14;
  if ((v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v15 = *(v0 + 1000);
  if (v15 <= -9.22337204e18)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
  }

  if (v15 >= 9.22337204e18)
  {
    goto LABEL_68;
  }

  v16 = *(v0 + 896);
  v17 = *(v0 + 888);
  v18 = *(v0 + 776);
  v19 = *(v0 + 736);
  v20 = *(v0 + 448);
  *(v9 + 168) = &type metadata for Int;
  *(v9 + 144) = v15;
  v21 = sub_100019FF8(v9);
  swift_setDeallocating();
  sub_100006F6C(&qword_100024248, &qword_10001C828);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_10001A5E0();
  v22 = v17(v18, v19);
  v23 = enum case for VideoPreview.FrameConstraints.multiFrame(_:);
  *(v0 + 1468) = enum case for VideoPreview.FrameConstraints.multiFrame(_:);
  if (v22 == v23)
  {
    v24 = *(v0 + 776);
    v25 = *(v0 + 696);
    v26 = v0 + 680;
    v27 = *(v0 + 680);
    v28 = (v0 + 672);
    v29 = *(v0 + 672);
    v30 = *(v0 + 744) + 96;
    (*(v0 + 976))(v24, *(v0 + 736));
    (*(v27 + 32))(v25, v24, v29);
    if (sub_10001A620() >= 1)
    {
      v31 = *(v0 + 696);
      v32 = sub_10001AF50();
      v34 = v33;
      v35 = sub_10001A620();
      *(v0 + 328) = &type metadata for Int;
      *(v0 + 304) = v35;
      sub_10000C0DC((v0 + 304), (v0 + 336));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1000175AC((v0 + 336), v32, v34, isUniquelyReferenced_nonNull_native);
    }

    v37 = (v0 + 696);
    *(v0 + 1048) = v21;
    v38 = *(v0 + 696);
    if (sub_10001A610() >= 1)
    {
      v39 = *v37;
      if (sub_10001A630())
      {
        sub_100006F6C(&qword_100024278, &qword_10001C850);
        v40 = sub_10001A400();
        *(v0 + 1056) = v40;
        v41 = async function pointer to AVAsynchronousKeyValueLoading.load<A>(_:isolation:)[1];
        v42 = swift_task_alloc();
        *(v0 + 1064) = v42;
        *v42 = v0;
        v42[1] = sub_100011654;
        v43 = *(v0 + 848);
        v44 = v0 + 1384;
        v45 = v40;
LABEL_23:

        return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v44, v45, 0, 0);
      }
    }
  }

  else
  {
    v37 = (v0 + 776);
    v28 = (v0 + 736);
    v26 = v0 + 744;
  }

  (*(*v26 + 8))(*v37, *v28);
  v255 = *(v0 + 1468);
  v52 = *(v0 + 896);
  v53 = *(v0 + 888);
  v54 = *(v0 + 880);
  v55 = *(v0 + 768);
  v56 = *(v0 + 736);
  v57 = *(v0 + 448);
  v58 = objc_allocWithZone(AVAssetReaderTrackOutput);
  v59 = v54;
  isa = sub_10001AF00().super.isa;

  v61 = [v58 initWithTrack:v59 outputSettings:isa];
  *(v0 + 1080) = v61;

  sub_10001A5E0();
  if (v53(v55, v56) == v255)
  {
    v62 = *(v0 + 768);
    v63 = *(v0 + 688);
    v64 = *(v0 + 680);
    v65 = *(v0 + 672);
    v66 = *(v0 + 744) + 96;
    (*(v0 + 976))(v62, *(v0 + 736));
    (*(v64 + 32))(v63, v62, v65);
    [v61 setAppliesPreferredTrackTransform:sub_10001A660() & 1];
    if (sub_10001A620() == 1)
    {
      [v61 setLimitsImageQueueCapacityToOneFrame:1];
    }

    (*(*(v0 + 680) + 8))(*(v0 + 688), *(v0 + 672));
  }

  else
  {
    (*(*(v0 + 744) + 8))(*(v0 + 768), *(v0 + 736));
    [v61 setAppliesPreferredTrackTransform:1];
  }

  v67 = *(v0 + 1040);
  v68 = *(v0 + 1464);
  v69 = *(v0 + 896);
  v70 = *(v0 + 888);
  v71 = *(v0 + 760);
  v72 = *(v0 + 744);
  v73 = *(v0 + 736);
  v74 = *(v0 + 448);
  [v61 setAlwaysCopiesSampleData:0];
  [v67 addOutput:v61];
  sub_10001A5E0();
  LODWORD(v74) = v70(v71, v73);
  (*(v72 + 8))(v71, v73);
  if (v74 == v68)
  {
    v75 = *(v0 + 880);
    sub_100006F6C(&qword_100024268, &qword_10001C840);
    v76 = sub_10001A3D0();
    *(v0 + 1088) = v76;
    v77 = async function pointer to AVAsynchronousKeyValueLoading.load<A>(_:isolation:)[1];
    v78 = swift_task_alloc();
    *(v0 + 1096) = v78;
    *v78 = v0;
    v78[1] = sub_100012B78;
    v44 = v0 + 1456;
    v45 = v76;
    goto LABEL_23;
  }

  v79 = *(v0 + 1080);
  [*(v0 + 1040) startReading];
  v80 = [v79 copyNextSampleBuffer];
  if (v80)
  {
    v81 = *(v0 + 984);
    v82 = *(v0 + 1464);
    v83 = *(v0 + 1460);
    v84 = v80;
    v85 = v84;
    if (v83 != v82 && !v81)
    {
LABEL_29:
      v86 = *(v0 + 1080);
      v87 = *(v0 + 880);
      v88 = *(v0 + 848);
      v89 = *(v0 + 664);
      v90 = *(v0 + 648);
      v91 = *(v0 + 640);

      (*(v90 + 8))(v89, v91);
      goto LABEL_30;
    }

    v120 = 0;
    v121 = *(v0 + 616);
    v186 = (v121 + 16);
    v187 = (*(v0 + 648) + 16);
    v122 = *(v0 + 576);
    v123 = *(v0 + 544);
    v124 = *(v0 + 512);
    v184 = (v123 + 16);
    v185 = (v122 + 16);
    v188 = (*(v0 + 744) + 8);
    v178 = (v124 + 16);
    v179 = (*(v0 + 488) + 8);
    v180 = (v124 + 8);
    v181 = (v123 + 8);
    v182 = (v122 + 8);
    v183 = (v121 + 8);
    if (CMSampleBufferGetNumSamples(v84))
    {
      goto LABEL_38;
    }

    do
    {
LABEL_37:
    }

    while (!CMSampleBufferGetNumSamples(v85));
    while (1)
    {
LABEL_38:

      v125 = sub_10001B0A0();
      if (!v125)
      {
        v160 = *(v0 + 1080);
        v161 = *(v0 + 1040);
        v162 = *(v0 + 880);
        v252 = *(v0 + 848);
        v244 = *(v0 + 664);
        v163 = *(v0 + 648);
        v164 = *(v0 + 640);
        sub_10001AEA0();
        sub_100016A68(&qword_100024190, &type metadata accessor for Explosion);
        v165 = swift_allocError();
        sub_10001AE90();
        v254 = v165;
        swift_willThrow();

        (*(v163 + 8))(v244, v164);
        goto LABEL_32;
      }

      v126 = v125;
      v127 = *(v0 + 856);
      v128 = sub_10001B060();
      v129 = sub_10001B150();
      if (os_log_type_enabled(v129, v128))
      {
        v130 = swift_slowAlloc();
        *v130 = 134217984;
        *(v130 + 4) = v120;
        _os_log_impl(&_mh_execute_header, v129, v128, "BlastDoor processing thumbnail %ld", v130, 0xCu);
      }

      v221 = *(v0 + 1485);
      v249 = *(v0 + 1464);
      v237 = *(v0 + 888);
      v242 = *(v0 + 896);
      v225 = *(v0 + 1484);
      v217 = *(v0 + 872);
      v229 = *(v0 + 752);
      v233 = *(v0 + 736);
      v131 = *(v0 + 664);
      v132 = *(v0 + 656);
      v133 = *(v0 + 640);
      v134 = *(v0 + 632);
      v191 = *(v0 + 624);
      v192 = *(v0 + 608);
      v257 = v120;
      v135 = *(v0 + 600);
      v136 = *(v0 + 592);
      v194 = *(v0 + 584);
      v197 = *(v0 + 568);
      v190 = *(v0 + 560);
      v201 = *(v0 + 552);
      v205 = *(v0 + 536);
      v209 = *(v0 + 528);
      v213 = *(v0 + 448);

      sub_10001B0B0();
      sub_10001B120();
      type metadata accessor for CVBuffer(0);
      v137 = sub_10001AE40();
      (*(*(v137 - 8) + 56))(v135, 1, 1, v137);
      v189 = v126;
      sub_10001AE50();
      v138 = *v187;
      (*v187)(v132, v131, v133);
      sub_10001A5A0();
      v138(v132, v131, v133);
      sub_10001A5C0();
      (*v186)(v191, v134, v192);
      (*v185)(v194, v136, v197);
      (*v184)(v201, v190, v205);
      sub_10001A6A0();
      sub_10001A5E0();
      v139 = v237(v229, v233);
      v140 = *(v0 + 1080);
      if (v139 == v249)
      {
        v206 = *(v0 + 1040);
        v210 = *(v0 + 880);
        v166 = *(v0 + 856);
        v222 = *(v0 + 848);
        v253 = *(v0 + 640);
        v259 = *(v0 + 664);
        v239 = *(v0 + 632);
        v245 = *(v0 + 648);
        v230 = *(v0 + 592);
        v234 = *(v0 + 608);
        v226 = *(v0 + 568);
        v214 = *(v0 + 536);
        v218 = *(v0 + 560);
        v167 = *(v0 + 528);
        v168 = *(v0 + 520);
        v170 = *(v0 + 496);
        v169 = *(v0 + 504);
        v171 = *(v0 + 472);
        v198 = *(v0 + 456);
        v202 = *(v0 + 480);
        (*v188)(*(v0 + 752), *(v0 + 736));
        sub_10001B060();
        v172 = sub_10001B150();
        sub_10001A450();

        (*v178)(v168, v167, v169);
        sub_100016A68(&qword_100024260, &type metadata accessor for VideoPreview);
        sub_10001AD90();
        sub_100006F6C(&qword_100024210, &qword_10001C7A8);
        sub_10001AFF0();
        (*v179)(v170, v202);
        *(v0 + 424) = 0;
        sub_10001B000();

        (*v180)(v167, v169);
        (*v181)(v218, v214);
        (*v182)(v230, v226);
        (*v183)(v239, v234);
        (*(v245 + 8))(v259, v253);
        goto LABEL_30;
      }

      (*v188)(*(v0 + 752), *(v0 + 736));
      v141 = [v140 copyNextSampleBuffer];
      v142 = v257 + 1;
      if (__OFADD__(v257, 1))
      {
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v143 = v141;
      v258 = v257 + 1;
      if (v141)
      {
        v144 = *(v0 + 1460) != *(v0 + 1464) && v142 == *(v0 + 984);
        v145 = v144;
      }

      else
      {
        v145 = 1;
      }

      v146 = *(v0 + 496);
      v147 = *(v0 + 472);
      v250 = *(v0 + 480);
      v148 = *(v0 + 456);
      (*v178)(*(v0 + 520), *(v0 + 528), *(v0 + 504));
      sub_100016A68(&qword_100024260, &type metadata accessor for VideoPreview);
      sub_10001AD90();
      sub_100006F6C(&qword_100024210, &qword_10001C7A8);
      sub_10001AFF0();
      (*v179)(v146, v250);
      v149 = *(v0 + 632);
      v243 = *(v0 + 592);
      v251 = *(v0 + 608);
      v238 = *(v0 + 568);
      v150 = *(v0 + 560);
      v151 = *(v0 + 536);
      v152 = *(v0 + 528);
      v153 = *(v0 + 504);
      if (v145)
      {
        v154 = *(v0 + 632);
        v155 = *(v0 + 456);
        *(v0 + 416) = 0;
        sub_10001B000();

        (*v180)(v152, v153);
        (*v181)(v150, v151);
        (*v182)(v243, v238);
        (*v183)(v154, v251);
      }

      else
      {

        (*v180)(v152, v153);
        (*v181)(v150, v151);
        (*v182)(v243, v238);
        (*v183)(v149, v251);
      }

      if (!v143)
      {
        break;
      }

      v156 = *(v0 + 984);
      v157 = *(v0 + 1464);
      v158 = *(v0 + 1460);
      v159 = v143;
      v85 = v159;
      v144 = v158 == v157;
      v120 = v258;
      if (!v144 && v258 == v156)
      {
        goto LABEL_29;
      }

      if (!CMSampleBufferGetNumSamples(v159))
      {
        goto LABEL_37;
      }
    }

    v173 = *(v0 + 1080);
    v174 = *(v0 + 1040);
    v175 = *(v0 + 880);
    v176 = *(v0 + 848);
    (*(*(v0 + 648) + 8))(*(v0 + 664), *(v0 + 640));

LABEL_30:
    v92 = *(v0 + 832);
    v93 = *(v0 + 808);
    v94 = *(v0 + 784);
    v95 = *(v0 + 776);
    v96 = *(v0 + 768);
    v97 = *(v0 + 760);
    v98 = *(v0 + 752);
    v99 = *(v0 + 728);
    v100 = *(v0 + 704);
    v101 = *(v0 + 696);
    v195 = *(v0 + 688);
    v199 = *(v0 + 664);
    v203 = *(v0 + 656);
    v207 = *(v0 + 632);
    v211 = *(v0 + 624);
    v215 = *(v0 + 600);
    v219 = *(v0 + 592);
    v223 = *(v0 + 584);
    v227 = *(v0 + 560);
    v231 = *(v0 + 552);
    v235 = *(v0 + 528);
    v240 = *(v0 + 520);
    v246 = *(v0 + 496);
    v256 = *(v0 + 472);

    v102 = *(v0 + 8);
    goto LABEL_33;
  }

  v103 = *(v0 + 1080);
  v104 = *(v0 + 1040);
  v105 = *(v0 + 880);
  v247 = *(v0 + 848);
  v106 = *(v0 + 664);
  v107 = *(v0 + 648);
  v108 = *(v0 + 640);
  sub_10001AEA0();
  sub_100016A68(&qword_100024190, &type metadata accessor for Explosion);
  v109 = swift_allocError();
  sub_10001AE90();
  v254 = v109;
  swift_willThrow();

  (*(v107 + 8))(v106, v108);
LABEL_32:
  v110 = *(v0 + 832);
  v111 = *(v0 + 808);
  v112 = *(v0 + 784);
  v113 = *(v0 + 776);
  v114 = *(v0 + 768);
  v115 = *(v0 + 760);
  v116 = *(v0 + 752);
  v117 = *(v0 + 728);
  v118 = *(v0 + 704);
  v119 = *(v0 + 696);
  v193 = *(v0 + 688);
  v196 = *(v0 + 664);
  v200 = *(v0 + 656);
  v204 = *(v0 + 632);
  v208 = *(v0 + 624);
  v212 = *(v0 + 600);
  v216 = *(v0 + 592);
  v220 = *(v0 + 584);
  v224 = *(v0 + 560);
  v228 = *(v0 + 552);
  v232 = *(v0 + 528);
  v236 = *(v0 + 520);
  v241 = *(v0 + 496);
  v248 = *(v0 + 472);
  **(v0 + 464) = v254;

  v102 = *(v0 + 8);
LABEL_33:

  return v102();
}

uint64_t sub_100011654()
{
  v2 = *v1;
  v3 = *(*v1 + 1064);
  v4 = *v1;
  v2[134] = v0;

  v5 = v2[132];
  if (v0)
  {
    v6 = v2[131];

    v7 = sub_100014BAC;
  }

  else
  {

    v7 = sub_1000117D0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000117D0()
{
  v243 = v0;
  v1 = *(v0 + 696);
  v2 = *(v0 + 1400);
  v3 = *(v0 + 1392);
  *(v0 + 1408) = *(v0 + 1384);
  *(v0 + 1416) = v3;
  *(v0 + 1424) = v2;
  Seconds = CMTimeGetSeconds((v0 + 1408));
  v5 = sub_10001A610();
  if (__OFSUB__(v5, 1))
  {
    __break(1u);
LABEL_53:
    __break(1u);
  }

  v6 = Seconds / ((v5 - 1) + 0.1);
  if (v6 <= 0.0)
  {
    (*(*(v0 + 680) + 8))(*(v0 + 696), *(v0 + 672));
    v21 = *(v0 + 1048);
  }

  else
  {
    v7 = *(v0 + 680);
    CMTimeMakeWithSeconds(&v240, v6, 1000);
    epoch = v240.epoch;
    v9 = *&v240.timescale;
    *(v0 + 1432) = v240.value;
    *(v0 + 1440) = v9;
    *(v0 + 1448) = epoch;
    v10 = CMTimeCopyAsDictionary((v0 + 1432), kCFAllocatorDefault);
    v11 = (v7 + 8);
    v12 = *(v0 + 1048);
    if (!v10)
    {
      v73 = *(v0 + 1040);
      v74 = *(v0 + 880);
      v75 = *(v0 + 848);
      v208 = *(v0 + 672);
      v213 = *(v0 + 696);
      v76 = *(v0 + 648);
      v219 = *(v0 + 640);
      v226 = *(v0 + 664);

      sub_10001AEA0();
      sub_100016A68(&qword_100024190, &type metadata accessor for Explosion);
      v77 = swift_allocError();
      sub_10001AE90();
      v236 = v77;
      swift_willThrow();

      (*v11)(v213, v208);
      (*(v76 + 8))(v226, v219);
      goto LABEL_22;
    }

    v13 = v10;
    v14 = *(v0 + 696);
    v15 = *(v0 + 672);
    v16 = sub_10001AF50();
    v18 = v17;
    *(v0 + 264) = sub_100017824(0, &qword_100024280, NSDictionary_ptr);
    *(v0 + 240) = v13;
    sub_10000C0DC((v0 + 240), (v0 + 272));
    v19 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v240.value = v12;
    sub_1000175AC((v0 + 272), v16, v18, isUniquelyReferenced_nonNull_native);

    (*v11)(v14, v15);
  }

  v234 = *(v0 + 1468);
  v22 = *(v0 + 896);
  v23 = *(v0 + 888);
  v24 = *(v0 + 880);
  v25 = *(v0 + 768);
  v26 = *(v0 + 736);
  v27 = *(v0 + 448);
  v28 = objc_allocWithZone(AVAssetReaderTrackOutput);
  v29 = v24;
  isa = sub_10001AF00().super.isa;

  v31 = [v28 initWithTrack:v29 outputSettings:isa];
  *(v0 + 1080) = v31;

  sub_10001A5E0();
  if (v23(v25, v26) == v234)
  {
    v32 = *(v0 + 768);
    v33 = *(v0 + 688);
    v34 = *(v0 + 680);
    v35 = *(v0 + 672);
    v36 = *(v0 + 744) + 96;
    (*(v0 + 976))(v32, *(v0 + 736));
    (*(v34 + 32))(v33, v32, v35);
    [v31 setAppliesPreferredTrackTransform:sub_10001A660() & 1];
    if (sub_10001A620() == 1)
    {
      [v31 setLimitsImageQueueCapacityToOneFrame:1];
    }

    (*(*(v0 + 680) + 8))(*(v0 + 688), *(v0 + 672));
  }

  else
  {
    (*(*(v0 + 744) + 8))(*(v0 + 768), *(v0 + 736));
    [v31 setAppliesPreferredTrackTransform:1];
  }

  v37 = *(v0 + 1040);
  v38 = *(v0 + 1464);
  v39 = *(v0 + 896);
  v40 = *(v0 + 888);
  v41 = *(v0 + 760);
  v42 = *(v0 + 744);
  v43 = *(v0 + 736);
  v44 = *(v0 + 448);
  [v31 setAlwaysCopiesSampleData:0];
  [v37 addOutput:v31];
  sub_10001A5E0();
  LODWORD(v44) = v40(v41, v43);
  (*(v42 + 8))(v41, v43);
  if (v44 == v38)
  {
    v45 = *(v0 + 880);
    sub_100006F6C(&qword_100024268, &qword_10001C840);
    v46 = sub_10001A3D0();
    *(v0 + 1088) = v46;
    v47 = async function pointer to AVAsynchronousKeyValueLoading.load<A>(_:isolation:)[1];
    v48 = swift_task_alloc();
    *(v0 + 1096) = v48;
    *v48 = v0;
    v48[1] = sub_100012B78;

    return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 1456, v46, 0, 0);
  }

  v49 = *(v0 + 1080);
  [*(v0 + 1040) startReading];
  v50 = [v49 copyNextSampleBuffer];
  if (v50)
  {
    v51 = *(v0 + 984);
    v52 = *(v0 + 1464);
    v53 = *(v0 + 1460);
    v54 = v50;
    v55 = v54;
    if (v53 == v52 || v51)
    {
      v95 = 0;
      v96 = *(v0 + 616);
      v162 = (v96 + 16);
      v163 = (*(v0 + 648) + 16);
      v97 = *(v0 + 576);
      v98 = *(v0 + 544);
      v99 = *(v0 + 512);
      v160 = (v98 + 16);
      v161 = (v97 + 16);
      v164 = (*(v0 + 744) + 8);
      v154 = (v99 + 16);
      v155 = (*(v0 + 488) + 8);
      v156 = (v99 + 8);
      v157 = (v98 + 8);
      v158 = (v97 + 8);
      v159 = (v96 + 8);
      if (CMSampleBufferGetNumSamples(v54))
      {
        goto LABEL_28;
      }

      do
      {
LABEL_27:
      }

      while (!CMSampleBufferGetNumSamples(v55));
      while (1)
      {
LABEL_28:

        v100 = sub_10001B0A0();
        if (!v100)
        {
          v136 = *(v0 + 1080);
          v137 = *(v0 + 1040);
          v138 = *(v0 + 880);
          v232 = *(v0 + 848);
          v223 = *(v0 + 664);
          v139 = *(v0 + 648);
          v140 = *(v0 + 640);
          sub_10001AEA0();
          sub_100016A68(&qword_100024190, &type metadata accessor for Explosion);
          v141 = swift_allocError();
          sub_10001AE90();
          v236 = v141;
          swift_willThrow();

          (*(v139 + 8))(v223, v140);
          goto LABEL_22;
        }

        v101 = v100;
        v102 = *(v0 + 856);
        v103 = sub_10001B060();
        v104 = sub_10001B150();
        if (os_log_type_enabled(v104, v103))
        {
          v105 = swift_slowAlloc();
          *v105 = 134217984;
          *(v105 + 4) = v95;
          _os_log_impl(&_mh_execute_header, v104, v103, "BlastDoor processing thumbnail %ld", v105, 0xCu);
        }

        v197 = *(v0 + 1485);
        v229 = *(v0 + 1464);
        v215 = *(v0 + 888);
        v221 = *(v0 + 896);
        v201 = *(v0 + 1484);
        v193 = *(v0 + 872);
        v205 = *(v0 + 752);
        v210 = *(v0 + 736);
        v106 = *(v0 + 664);
        v107 = *(v0 + 656);
        v108 = *(v0 + 640);
        v109 = *(v0 + 632);
        v167 = *(v0 + 624);
        v168 = *(v0 + 608);
        v237 = v95;
        v110 = *(v0 + 600);
        v111 = *(v0 + 592);
        v170 = *(v0 + 584);
        v173 = *(v0 + 568);
        v166 = *(v0 + 560);
        v177 = *(v0 + 552);
        v181 = *(v0 + 536);
        v185 = *(v0 + 528);
        v189 = *(v0 + 448);

        sub_10001B0B0();
        sub_10001B120();
        type metadata accessor for CVBuffer(0);
        v241 = v112;
        v242 = &protocol witness table for CVBufferRef;
        v240.value = v101;
        v113 = sub_10001AE40();
        (*(*(v113 - 8) + 56))(v110, 1, 1, v113);
        v165 = v101;
        sub_10001AE50();
        v114 = *v163;
        (*v163)(v107, v106, v108);
        sub_10001A5A0();
        v114(v107, v106, v108);
        sub_10001A5C0();
        (*v162)(v167, v109, v168);
        (*v161)(v170, v111, v173);
        (*v160)(v177, v166, v181);
        sub_10001A6A0();
        sub_10001A5E0();
        v115 = v215(v205, v210);
        v116 = *(v0 + 1080);
        if (v115 == v229)
        {
          v182 = *(v0 + 1040);
          v186 = *(v0 + 880);
          v142 = *(v0 + 856);
          v198 = *(v0 + 848);
          v233 = *(v0 + 640);
          v239 = *(v0 + 664);
          v217 = *(v0 + 632);
          v224 = *(v0 + 648);
          v206 = *(v0 + 592);
          v211 = *(v0 + 608);
          v202 = *(v0 + 568);
          v190 = *(v0 + 536);
          v194 = *(v0 + 560);
          v143 = *(v0 + 528);
          v144 = *(v0 + 520);
          v146 = *(v0 + 496);
          v145 = *(v0 + 504);
          v147 = *(v0 + 472);
          v174 = *(v0 + 456);
          v178 = *(v0 + 480);
          (*v164)(*(v0 + 752), *(v0 + 736));
          sub_10001B060();
          v148 = sub_10001B150();
          sub_10001A450();

          (*v154)(v144, v143, v145);
          sub_100016A68(&qword_100024260, &type metadata accessor for VideoPreview);
          sub_10001AD90();
          sub_100006F6C(&qword_100024210, &qword_10001C7A8);
          sub_10001AFF0();
          (*v155)(v146, v178);
          *(v0 + 424) = 0;
          sub_10001B000();

          (*v156)(v143, v145);
          (*v157)(v194, v190);
          (*v158)(v206, v202);
          (*v159)(v217, v211);
          (*(v224 + 8))(v239, v233);
          goto LABEL_19;
        }

        (*v164)(*(v0 + 752), *(v0 + 736));
        v117 = [v116 copyNextSampleBuffer];
        v118 = v237 + 1;
        if (__OFADD__(v237, 1))
        {
          goto LABEL_53;
        }

        v119 = v117;
        v238 = v237 + 1;
        if (v117)
        {
          v120 = *(v0 + 1460) != *(v0 + 1464) && v118 == *(v0 + 984);
          v121 = v120;
        }

        else
        {
          v121 = 1;
        }

        v122 = *(v0 + 496);
        v123 = *(v0 + 472);
        v230 = *(v0 + 480);
        v124 = *(v0 + 456);
        (*v154)(*(v0 + 520), *(v0 + 528), *(v0 + 504));
        sub_100016A68(&qword_100024260, &type metadata accessor for VideoPreview);
        sub_10001AD90();
        sub_100006F6C(&qword_100024210, &qword_10001C7A8);
        sub_10001AFF0();
        (*v155)(v122, v230);
        v125 = *(v0 + 632);
        v222 = *(v0 + 592);
        v231 = *(v0 + 608);
        v216 = *(v0 + 568);
        v126 = *(v0 + 560);
        v127 = *(v0 + 536);
        v128 = *(v0 + 528);
        v129 = *(v0 + 504);
        if (v121)
        {
          v130 = *(v0 + 632);
          v131 = *(v0 + 456);
          *(v0 + 416) = 0;
          sub_10001B000();

          (*v156)(v128, v129);
          (*v157)(v126, v127);
          (*v158)(v222, v216);
          (*v159)(v130, v231);
        }

        else
        {

          (*v156)(v128, v129);
          (*v157)(v126, v127);
          (*v158)(v222, v216);
          (*v159)(v125, v231);
        }

        if (!v119)
        {
          break;
        }

        v132 = *(v0 + 984);
        v133 = *(v0 + 1464);
        v134 = *(v0 + 1460);
        v135 = v119;
        v55 = v135;
        v120 = v134 == v133;
        v95 = v238;
        if (!v120 && v238 == v132)
        {
          goto LABEL_18;
        }

        if (!CMSampleBufferGetNumSamples(v135))
        {
          goto LABEL_27;
        }
      }

      v149 = *(v0 + 1080);
      v150 = *(v0 + 1040);
      v151 = *(v0 + 880);
      v152 = *(v0 + 848);
      (*(*(v0 + 648) + 8))(*(v0 + 664), *(v0 + 640));
    }

    else
    {
LABEL_18:
      v56 = *(v0 + 1080);
      v57 = *(v0 + 880);
      v58 = *(v0 + 848);
      v59 = *(v0 + 664);
      v60 = *(v0 + 648);
      v61 = *(v0 + 640);

      (*(v60 + 8))(v59, v61);
    }

LABEL_19:
    v62 = *(v0 + 832);
    v63 = *(v0 + 808);
    v64 = *(v0 + 784);
    v65 = *(v0 + 776);
    v66 = *(v0 + 768);
    v67 = *(v0 + 760);
    v68 = *(v0 + 752);
    v69 = *(v0 + 728);
    v70 = *(v0 + 704);
    v71 = *(v0 + 696);
    v171 = *(v0 + 688);
    v175 = *(v0 + 664);
    v179 = *(v0 + 656);
    v183 = *(v0 + 632);
    v187 = *(v0 + 624);
    v191 = *(v0 + 600);
    v195 = *(v0 + 592);
    v199 = *(v0 + 584);
    v203 = *(v0 + 560);
    v207 = *(v0 + 552);
    v212 = *(v0 + 528);
    v218 = *(v0 + 520);
    v225 = *(v0 + 496);
    v235 = *(v0 + 472);

    v72 = *(v0 + 8);
    goto LABEL_23;
  }

  v78 = *(v0 + 1080);
  v79 = *(v0 + 1040);
  v80 = *(v0 + 880);
  v227 = *(v0 + 848);
  v81 = *(v0 + 664);
  v82 = *(v0 + 648);
  v83 = *(v0 + 640);
  sub_10001AEA0();
  sub_100016A68(&qword_100024190, &type metadata accessor for Explosion);
  v84 = swift_allocError();
  sub_10001AE90();
  v236 = v84;
  swift_willThrow();

  (*(v82 + 8))(v81, v83);
LABEL_22:
  v85 = *(v0 + 832);
  v86 = *(v0 + 808);
  v87 = *(v0 + 784);
  v88 = *(v0 + 776);
  v89 = *(v0 + 768);
  v90 = *(v0 + 760);
  v91 = *(v0 + 752);
  v92 = *(v0 + 728);
  v93 = *(v0 + 704);
  v94 = *(v0 + 696);
  v169 = *(v0 + 688);
  v172 = *(v0 + 664);
  v176 = *(v0 + 656);
  v180 = *(v0 + 632);
  v184 = *(v0 + 624);
  v188 = *(v0 + 600);
  v192 = *(v0 + 592);
  v196 = *(v0 + 584);
  v200 = *(v0 + 560);
  v204 = *(v0 + 552);
  v209 = *(v0 + 528);
  v214 = *(v0 + 520);
  v220 = *(v0 + 496);
  v228 = *(v0 + 472);
  **(v0 + 464) = v236;

  v72 = *(v0 + 8);
LABEL_23:

  return v72();
}

uint64_t sub_100012B78()
{
  v2 = *v1;
  v3 = *(*v1 + 1096);
  v4 = *v1;
  *(*v1 + 1104) = v0;

  v5 = *(v2 + 1088);

  if (v0)
  {
    v6 = sub_100014DFC;
  }

  else
  {
    v6 = sub_100012CD8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100012CD8()
{
  v1 = ceilf(*(v0 + 1456));
  *(v0 + 1472) = v1;
  if ((LODWORD(v1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v1 <= -2147500000.0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (v1 >= 2147500000.0)
  {
    goto LABEL_9;
  }

  v2 = *(v0 + 880);
  *(v0 + 1112) = kCMTimeZero.value;
  *(v0 + 1476) = *&kCMTimeZero.timescale;
  *(v0 + 1120) = kCMTimeZero.epoch;
  sub_100006F6C(&qword_100024270, &qword_10001C848);
  v3 = sub_10001A3F0();
  *(v0 + 1128) = v3;
  v4 = async function pointer to AVAsynchronousKeyValueLoading.load<A>(_:isolation:)[1];
  v5 = swift_task_alloc();
  *(v0 + 1136) = v5;
  *v5 = v0;
  v5[1] = sub_100012E4C;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 432, v3, 0, 0);
}

uint64_t sub_100012E4C()
{
  v2 = *v1;
  v3 = *(*v1 + 1136);
  v4 = *v1;

  v5 = *(v2 + 1128);
  if (v0)
  {

    v6 = sub_100015030;
  }

  else
  {

    v6 = sub_100012FC0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100012FC0()
{
  v229 = v0;
  v1 = *(v0 + 432);
  if (v1 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10001B1D0())
  {
    v3 = v0 + 1304;
    if (!i)
    {
      break;
    }

    v4 = 0;
    v5 = v1 & 0xC000000000000001;
    v6 = &selRef_syndicationProperties;
    v201 = i;
    while (1)
    {
      if (v5)
      {
        v7 = sub_10001B1B0();
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_60;
        }

        v7 = *(v1 + 32 + 8 * v4);
      }

      v8 = v7;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      if (([v7 v6[16]] & 1) == 0)
      {
        v10 = *(v0 + 880);
        [v8 timeMapping];
        v11 = v222;
        v12 = *(&v221 + 1);
        *(v0 + 1336) = v221;
        *(v0 + 1344) = v12;
        *(v0 + 1352) = v11;
        v13 = [v10 makeSampleCursorWithPresentationTimeStamp:v0 + 1336];
        if (v13)
        {
          v14 = v13;
          do
          {
            if (([v14 currentSampleDependencyInfo] & 0x1000000) == 0)
            {
              break;
            }

            if ([v14 stepInPresentationOrderByCount:1] != 1)
            {
              break;
            }

            [v14 presentationTimeStamp];
            [v8 timeMapping];
            v15 = v222;
            *(v0 + 1144) = v221;
            *(v0 + 1160) = v15;
            *(v0 + 1176) = v223;
            sub_10001B030();
          }

          while ((sub_10001B100() & 1) == 0);
          if (([v14 currentSampleDependencyInfo] & 0x1000000) == 0)
          {

            [v14 presentationTimeStamp];
            v108 = v221;
            v109 = v222;
            v110 = *(&v221 + 1);
            [v8 timeMapping];
            v111 = v221;
            v113 = *(&v222 + 1);
            v112 = v222;
            v114 = *(&v223 + 1);
            v115 = v223;
            v116 = *(&v221 + 1);
            [v8 timeMapping];
            v117 = v224;
            v118 = v228;
            v119 = v227;
            v120 = v226;
            v121 = v225;
            *(v0 + 1360) = v108;
            *(v0 + 1368) = v110;
            *(v0 + 1376) = v109;
            *(v0 + 1240) = v111;
            *(v0 + 1248) = v116;
            *(v0 + 1256) = __PAIR128__(v113, v112);
            *(v0 + 1272) = v115;
            *(v0 + 1280) = v114;
            *(v0 + 1288) = v117;
            *(v0 + 1296) = v121;
            v3 = v0 + 1304;
            *(v0 + 1304) = v120;
            *(v0 + 1320) = v119;
            *(v0 + 1328) = v118;
            CMTimeMapTimeFromRangeToRange(&v221, (v0 + 1360), (v0 + 1240), (v0 + 1288));
            v17 = *(&v221 + 1);
            v18 = v221;
            v16 = v222;

            goto LABEL_22;
          }

          i = v201;
          v5 = v1 & 0xC000000000000001;
          v6 = &selRef_syndicationProperties;
        }
      }

      if (v4 == i)
      {

        v16 = *(v0 + 1120);
        v3 = v0 + 1304;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

  v16 = *(v0 + 1120);
LABEL_21:
  v17 = *(v3 + 172);
  v18 = *(v0 + 1112);
LABEL_22:
  v19 = *(v0 + 1040);
  v20 = sub_10001B110(1, *(v0 + 1472));
  *(v0 + 1192) = v18;
  *(v0 + 1200) = v17;
  *(v0 + 1208) = v16;
  *(v0 + 1216) = v20;
  *(v0 + 1224) = v21;
  *(v0 + 1228) = v22;
  *(v0 + 1232) = v23;
  [v19 setTimeRange:v0 + 1192];
  v24 = *(v0 + 1080);
  [*(v0 + 1040) startReading];
  v25 = [v24 copyNextSampleBuffer];
  if (v25)
  {
    v26 = *(v0 + 984);
    v27 = *(v0 + 1464);
    v28 = *(v0 + 1460);
    v29 = v25;
    v30 = v29;
    if (v28 == v27 || v26)
    {
      v66 = 0;
      v67 = *(v0 + 616);
      v147 = (v67 + 16);
      v148 = (*(v0 + 648) + 16);
      v68 = *(v0 + 576);
      v69 = *(v0 + 544);
      v70 = *(v0 + 512);
      v145 = (v69 + 16);
      v146 = (v68 + 16);
      v149 = (*(v0 + 744) + 8);
      v139 = (v70 + 16);
      v140 = (*(v0 + 488) + 8);
      v141 = (v70 + 8);
      v142 = (v69 + 8);
      v143 = (v68 + 8);
      v144 = (v67 + 8);
      if (CMSampleBufferGetNumSamples(v29))
      {
        goto LABEL_34;
      }

      do
      {
LABEL_33:
      }

      while (!CMSampleBufferGetNumSamples(v30));
      while (1)
      {
LABEL_34:

        v71 = sub_10001B0A0();
        if (!v71)
        {
          v122 = *(v0 + 1080);
          v123 = *(v0 + 1040);
          v124 = *(v0 + 880);
          v214 = *(v0 + 848);
          v206 = *(v0 + 664);
          v125 = *(v0 + 648);
          v126 = *(v0 + 640);
          sub_10001AEA0();
          sub_100016A68(&qword_100024190, &type metadata accessor for Explosion);
          v127 = swift_allocError();
          sub_10001AE90();
          v217 = v127;
          swift_willThrow();

          (*(v125 + 8))(v206, v126);
          goto LABEL_28;
        }

        v72 = v71;
        v73 = *(v0 + 856);
        v74 = sub_10001B060();
        v75 = sub_10001B150();
        if (os_log_type_enabled(v75, v74))
        {
          v76 = swift_slowAlloc();
          *v76 = 134217984;
          *(v76 + 4) = v66;
          _os_log_impl(&_mh_execute_header, v75, v74, "BlastDoor processing thumbnail %ld", v76, 0xCu);
        }

        v182 = *(v3 + 181);
        v211 = *(v0 + 1464);
        v204 = *(v0 + 896);
        v186 = *(v3 + 180);
        v178 = *(v0 + 872);
        v190 = *(v0 + 752);
        v194 = *(v0 + 736);
        v198 = *(v0 + 888);
        v77 = *(v0 + 664);
        v218 = v66;
        v78 = *(v0 + 656);
        v79 = *(v0 + 640);
        v80 = *(v0 + 632);
        v152 = *(v0 + 624);
        v153 = *(v0 + 608);
        v81 = *(v0 + 600);
        v82 = *(v0 + 592);
        v155 = *(v0 + 584);
        v158 = *(v0 + 568);
        v151 = *(v0 + 560);
        v162 = *(v0 + 552);
        v166 = *(v0 + 536);
        v170 = *(v0 + 528);
        v174 = *(v0 + 448);

        sub_10001B0B0();
        sub_10001B120();
        type metadata accessor for CVBuffer(0);
        *(&v222 + 1) = v83;
        *&v223 = &protocol witness table for CVBufferRef;
        *&v221 = v72;
        v84 = sub_10001AE40();
        (*(*(v84 - 8) + 56))(v81, 1, 1, v84);
        v85 = v72;
        sub_10001AE50();
        v86 = *v148;
        (*v148)(v78, v77, v79);
        sub_10001A5A0();
        v86(v78, v77, v79);
        v1 = v151;
        sub_10001A5C0();
        (*v147)(v152, v80, v153);
        (*v146)(v155, v82, v158);
        (*v145)(v162, v151, v166);
        sub_10001A6A0();
        sub_10001A5E0();
        v87 = v198(v190, v194);
        v88 = *(v0 + 1080);
        v150 = v85;
        if (v87 == v211)
        {
          v167 = *(v0 + 1040);
          v171 = *(v0 + 880);
          v128 = *(v0 + 856);
          v183 = *(v0 + 848);
          v207 = *(v0 + 648);
          v215 = *(v0 + 640);
          v220 = *(v0 + 664);
          v195 = *(v0 + 608);
          v200 = *(v0 + 632);
          v187 = *(v0 + 568);
          v191 = *(v0 + 592);
          v175 = *(v0 + 536);
          v179 = *(v0 + 560);
          v129 = *(v0 + 528);
          v130 = *(v0 + 520);
          v132 = *(v0 + 496);
          v131 = *(v0 + 504);
          v133 = *(v0 + 472);
          v159 = *(v0 + 456);
          v163 = *(v0 + 480);
          (*v149)(*(v0 + 752), *(v0 + 736));
          sub_10001B060();
          v134 = sub_10001B150();
          sub_10001A450();

          (*v139)(v130, v129, v131);
          sub_100016A68(&qword_100024260, &type metadata accessor for VideoPreview);
          sub_10001AD90();
          sub_100006F6C(&qword_100024210, &qword_10001C7A8);
          sub_10001AFF0();
          (*v140)(v132, v163);
          *(v0 + 424) = 0;
          sub_10001B000();

          (*v141)(v129, v131);
          (*v142)(v179, v175);
          (*v143)(v191, v187);
          (*v144)(v200, v195);
          (*(v207 + 8))(v220, v215);
          goto LABEL_26;
        }

        (*v149)(*(v0 + 752), *(v0 + 736));
        v89 = [v88 copyNextSampleBuffer];
        v90 = v218 + 1;
        if (__OFADD__(v218, 1))
        {
          goto LABEL_61;
        }

        v91 = v89;
        v219 = v218 + 1;
        if (v89)
        {
          v92 = *(v0 + 1460) != *(v0 + 1464) && v90 == *(v0 + 984);
          v93 = v92;
        }

        else
        {
          v93 = 1;
        }

        v94 = *(v0 + 496);
        v95 = *(v0 + 472);
        v212 = *(v0 + 480);
        v96 = *(v0 + 456);
        (*v139)(*(v0 + 520), *(v0 + 528), *(v0 + 504));
        sub_100016A68(&qword_100024260, &type metadata accessor for VideoPreview);
        sub_10001AD90();
        sub_100006F6C(&qword_100024210, &qword_10001C7A8);
        sub_10001AFF0();
        (*v140)(v94, v212);
        v97 = *(v0 + 632);
        v205 = *(v0 + 592);
        v213 = *(v0 + 608);
        v199 = *(v0 + 568);
        v98 = *(v0 + 560);
        v99 = *(v0 + 536);
        v100 = *(v0 + 528);
        v101 = *(v0 + 504);
        if (v93)
        {
          v102 = *(v0 + 632);
          v103 = *(v0 + 456);
          *(v0 + 416) = 0;
          sub_10001B000();

          (*v141)(v100, v101);
          (*v142)(v98, v99);
          (*v143)(v205, v199);
          (*v144)(v102, v213);
        }

        else
        {

          (*v141)(v100, v101);
          (*v142)(v98, v99);
          (*v143)(v205, v199);
          (*v144)(v97, v213);
        }

        v66 = v90;
        if (!v91)
        {
          break;
        }

        v104 = *(v0 + 984);
        v105 = *(v0 + 1464);
        v106 = *(v0 + 1460);
        v107 = v91;
        v30 = v107;
        v92 = v106 == v105;
        v3 = v0 + 1304;
        if (!v92 && v219 == v104)
        {
          goto LABEL_25;
        }

        if (!CMSampleBufferGetNumSamples(v107))
        {
          goto LABEL_33;
        }
      }

      v135 = *(v0 + 1080);
      v136 = *(v0 + 1040);
      v137 = *(v0 + 880);
      v138 = *(v0 + 848);
      (*(*(v0 + 648) + 8))(*(v0 + 664), *(v0 + 640));
    }

    else
    {
LABEL_25:
      v31 = *(v0 + 1080);
      v32 = *(v0 + 880);
      v33 = *(v0 + 848);
      v34 = *(v0 + 664);
      v35 = *(v0 + 648);
      v36 = *(v0 + 640);

      (*(v35 + 8))(v34, v36);
    }

LABEL_26:
    v37 = *(v0 + 832);
    v38 = *(v0 + 808);
    v39 = *(v0 + 784);
    v40 = *(v0 + 776);
    v41 = *(v0 + 768);
    v42 = *(v0 + 760);
    v43 = *(v0 + 752);
    v44 = *(v0 + 728);
    v45 = *(v0 + 704);
    v46 = *(v0 + 696);
    v156 = *(v0 + 688);
    v160 = *(v0 + 664);
    v164 = *(v0 + 656);
    v168 = *(v0 + 632);
    v172 = *(v0 + 624);
    v176 = *(v0 + 600);
    v180 = *(v0 + 592);
    v184 = *(v0 + 584);
    v188 = *(v0 + 560);
    v192 = *(v0 + 552);
    v196 = *(v0 + 528);
    v202 = *(v0 + 520);
    v208 = *(v0 + 496);
    v216 = *(v0 + 472);

    v47 = *(v0 + 8);
  }

  else
  {
    v48 = *(v0 + 1080);
    v49 = *(v0 + 1040);
    v50 = *(v0 + 880);
    v209 = *(v0 + 848);
    v51 = *(v0 + 664);
    v52 = *(v0 + 648);
    v53 = *(v0 + 640);
    sub_10001AEA0();
    sub_100016A68(&qword_100024190, &type metadata accessor for Explosion);
    v54 = swift_allocError();
    sub_10001AE90();
    v217 = v54;
    swift_willThrow();

    (*(v52 + 8))(v51, v53);
LABEL_28:
    v55 = *(v0 + 832);
    v56 = *(v0 + 808);
    v57 = *(v0 + 784);
    v58 = *(v0 + 776);
    v59 = *(v0 + 768);
    v60 = *(v0 + 760);
    v61 = *(v0 + 752);
    v62 = *(v0 + 728);
    v63 = *(v0 + 704);
    v64 = *(v0 + 696);
    v154 = *(v0 + 688);
    v157 = *(v0 + 664);
    v161 = *(v0 + 656);
    v165 = *(v0 + 632);
    v169 = *(v0 + 624);
    v173 = *(v0 + 600);
    v177 = *(v0 + 592);
    v181 = *(v0 + 584);
    v185 = *(v0 + 560);
    v189 = *(v0 + 552);
    v193 = *(v0 + 528);
    v197 = *(v0 + 520);
    v203 = *(v0 + 496);
    v210 = *(v0 + 472);
    **(v0 + 464) = v217;

    v47 = *(v0 + 8);
  }

  return v47();
}

uint64_t sub_100014148()
{
  v1 = *(v0 + 864);
  v2 = *(v0 + 848);
  swift_willThrow();

  v3 = *(v0 + 832);
  v4 = *(v0 + 808);
  v5 = *(v0 + 784);
  v6 = *(v0 + 776);
  v7 = *(v0 + 768);
  v8 = *(v0 + 760);
  v9 = *(v0 + 752);
  v10 = *(v0 + 728);
  v11 = *(v0 + 704);
  v12 = *(v0 + 696);
  v15 = *(v0 + 688);
  v16 = *(v0 + 664);
  v17 = *(v0 + 656);
  v18 = *(v0 + 632);
  v19 = *(v0 + 624);
  v20 = *(v0 + 600);
  v21 = *(v0 + 592);
  v22 = *(v0 + 584);
  v23 = *(v0 + 560);
  v24 = *(v0 + 552);
  v25 = *(v0 + 528);
  v26 = *(v0 + 520);
  v27 = *(v0 + 496);
  v28 = *(v0 + 472);
  **(v0 + 464) = *(v0 + 864);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100014344()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = *(v0 + 712);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 832);
  v6 = *(v0 + 808);
  v7 = *(v0 + 784);
  v8 = *(v0 + 776);
  v9 = *(v0 + 768);
  v10 = *(v0 + 760);
  v11 = *(v0 + 752);
  v12 = *(v0 + 728);
  v13 = *(v0 + 704);
  v14 = *(v0 + 696);
  v17 = *(v0 + 688);
  v18 = *(v0 + 664);
  v19 = *(v0 + 656);
  v20 = *(v0 + 632);
  v21 = *(v0 + 624);
  v22 = *(v0 + 600);
  v23 = *(v0 + 592);
  v24 = *(v0 + 584);
  v25 = *(v0 + 560);
  v26 = *(v0 + 552);
  v27 = *(v0 + 528);
  v28 = *(v0 + 520);
  v29 = *(v0 + 496);
  v30 = *(v0 + 472);
  **(v0 + 464) = *(v0 + 928);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100014568()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = *(v0 + 712);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 832);
  v6 = *(v0 + 808);
  v7 = *(v0 + 784);
  v8 = *(v0 + 776);
  v9 = *(v0 + 768);
  v10 = *(v0 + 760);
  v11 = *(v0 + 752);
  v12 = *(v0 + 728);
  v13 = *(v0 + 704);
  v14 = *(v0 + 696);
  v17 = *(v0 + 688);
  v18 = *(v0 + 664);
  v19 = *(v0 + 656);
  v20 = *(v0 + 632);
  v21 = *(v0 + 624);
  v22 = *(v0 + 600);
  v23 = *(v0 + 592);
  v24 = *(v0 + 584);
  v25 = *(v0 + 560);
  v26 = *(v0 + 552);
  v27 = *(v0 + 528);
  v28 = *(v0 + 520);
  v29 = *(v0 + 496);
  v30 = *(v0 + 472);
  **(v0 + 464) = *(v0 + 968);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10001478C()
{
  v1 = *(v0 + 880);

  v2 = *(v0 + 832);
  v3 = *(v0 + 808);
  v4 = *(v0 + 784);
  v5 = *(v0 + 776);
  v6 = *(v0 + 768);
  v7 = *(v0 + 760);
  v8 = *(v0 + 752);
  v9 = *(v0 + 728);
  v10 = *(v0 + 704);
  v11 = *(v0 + 696);
  v14 = *(v0 + 688);
  v15 = *(v0 + 664);
  v16 = *(v0 + 656);
  v17 = *(v0 + 632);
  v18 = *(v0 + 624);
  v19 = *(v0 + 600);
  v20 = *(v0 + 592);
  v21 = *(v0 + 584);
  v22 = *(v0 + 560);
  v23 = *(v0 + 552);
  v24 = *(v0 + 528);
  v25 = *(v0 + 520);
  v26 = *(v0 + 496);
  v27 = *(v0 + 472);
  **(v0 + 464) = *(v0 + 1016);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100014988()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 664);
  v3 = *(v0 + 648);
  v4 = *(v0 + 640);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 832);
  v6 = *(v0 + 808);
  v7 = *(v0 + 784);
  v8 = *(v0 + 776);
  v9 = *(v0 + 768);
  v10 = *(v0 + 760);
  v11 = *(v0 + 752);
  v12 = *(v0 + 728);
  v13 = *(v0 + 704);
  v14 = *(v0 + 696);
  v17 = *(v0 + 688);
  v18 = *(v0 + 664);
  v19 = *(v0 + 656);
  v20 = *(v0 + 632);
  v21 = *(v0 + 624);
  v22 = *(v0 + 600);
  v23 = *(v0 + 592);
  v24 = *(v0 + 584);
  v25 = *(v0 + 560);
  v26 = *(v0 + 552);
  v27 = *(v0 + 528);
  v28 = *(v0 + 520);
  v29 = *(v0 + 496);
  v30 = *(v0 + 472);
  **(v0 + 464) = *(v0 + 1032);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100014BAC()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 848);
  v3 = *(v0 + 696);
  v4 = *(v0 + 680);
  v5 = *(v0 + 672);
  v6 = *(v0 + 664);
  v7 = *(v0 + 648);
  v8 = *(v0 + 640);

  (*(v4 + 8))(v3, v5);
  (*(v7 + 8))(v6, v8);
  v9 = *(v0 + 832);
  v10 = *(v0 + 808);
  v11 = *(v0 + 784);
  v12 = *(v0 + 776);
  v13 = *(v0 + 768);
  v14 = *(v0 + 760);
  v15 = *(v0 + 752);
  v16 = *(v0 + 728);
  v17 = *(v0 + 704);
  v18 = *(v0 + 696);
  v21 = *(v0 + 688);
  v22 = *(v0 + 664);
  v23 = *(v0 + 656);
  v24 = *(v0 + 632);
  v25 = *(v0 + 624);
  v26 = *(v0 + 600);
  v27 = *(v0 + 592);
  v28 = *(v0 + 584);
  v29 = *(v0 + 560);
  v30 = *(v0 + 552);
  v31 = *(v0 + 528);
  v32 = *(v0 + 520);
  v33 = *(v0 + 496);
  v34 = *(v0 + 472);
  **(v0 + 464) = *(v0 + 1072);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100014DFC()
{
  v1 = *(v0 + 1080);
  v2 = *(v0 + 880);
  v3 = *(v0 + 848);
  v4 = *(v0 + 664);
  v5 = *(v0 + 648);
  v6 = *(v0 + 640);

  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 832);
  v8 = *(v0 + 808);
  v9 = *(v0 + 784);
  v10 = *(v0 + 776);
  v11 = *(v0 + 768);
  v12 = *(v0 + 760);
  v13 = *(v0 + 752);
  v14 = *(v0 + 728);
  v15 = *(v0 + 704);
  v16 = *(v0 + 696);
  v19 = *(v0 + 688);
  v20 = *(v0 + 664);
  v21 = *(v0 + 656);
  v22 = *(v0 + 632);
  v23 = *(v0 + 624);
  v24 = *(v0 + 600);
  v25 = *(v0 + 592);
  v26 = *(v0 + 584);
  v27 = *(v0 + 560);
  v28 = *(v0 + 552);
  v29 = *(v0 + 528);
  v30 = *(v0 + 520);
  v31 = *(v0 + 496);
  v32 = *(v0 + 472);
  **(v0 + 464) = *(v0 + 1104);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100015030()
{
  v1 = *(v0 + 1120);
  v2 = *(v0 + 1112);
  v3 = *(v0 + 1040);
  v4 = *(v0 + 1476);
  v5 = sub_10001B110(1, *(v0 + 1472));
  *(v0 + 1192) = v2;
  *(v0 + 1200) = v4;
  *(v0 + 1208) = v1;
  *(v0 + 1216) = v5;
  *(v0 + 1224) = v6;
  *(v0 + 1228) = v7;
  *(v0 + 1232) = v8;
  [v3 setTimeRange:v0 + 1192];
  v9 = *(v0 + 1080);
  [*(v0 + 1040) startReading];
  v10 = [v9 copyNextSampleBuffer];
  if (v10)
  {
    v11 = *(v0 + 984);
    v12 = *(v0 + 1464);
    v13 = *(v0 + 1460);
    v14 = v10;
    v15 = v14;
    if (v13 == v12 || v11)
    {
      v51 = 0;
      v52 = *(v0 + 616);
      v116 = (v52 + 16);
      v117 = (*(v0 + 648) + 16);
      v53 = *(v0 + 576);
      v54 = *(v0 + 544);
      v55 = *(v0 + 512);
      v114 = (v54 + 16);
      v115 = (v53 + 16);
      v118 = (*(v0 + 744) + 8);
      v108 = (v55 + 16);
      v109 = (*(v0 + 488) + 8);
      v110 = (v55 + 8);
      v111 = (v54 + 8);
      v112 = (v53 + 8);
      v113 = (v52 + 8);
      if (CMSampleBufferGetNumSamples(v14))
      {
        goto LABEL_13;
      }

      do
      {
LABEL_12:
      }

      while (!CMSampleBufferGetNumSamples(v15));
      while (1)
      {
LABEL_13:

        v56 = sub_10001B0A0();
        if (!v56)
        {
          v91 = *(v0 + 1080);
          v92 = *(v0 + 1040);
          v93 = *(v0 + 880);
          v182 = *(v0 + 848);
          v174 = *(v0 + 664);
          v94 = *(v0 + 648);
          v95 = *(v0 + 640);
          sub_10001AEA0();
          sub_100016A68(&qword_100024190, &type metadata accessor for Explosion);
          v96 = swift_allocError();
          sub_10001AE90();
          v185 = v96;
          swift_willThrow();

          (*(v94 + 8))(v174, v95);
          goto LABEL_7;
        }

        v57 = v56;
        v58 = *(v0 + 856);
        v59 = sub_10001B060();
        v60 = sub_10001B150();
        if (os_log_type_enabled(v60, v59))
        {
          v61 = swift_slowAlloc();
          *v61 = 134217984;
          *(v61 + 4) = v51;
          _os_log_impl(&_mh_execute_header, v60, v59, "BlastDoor processing thumbnail %ld", v61, 0xCu);
        }

        v151 = *(v0 + 1485);
        v179 = *(v0 + 1464);
        v167 = *(v0 + 888);
        v172 = *(v0 + 896);
        v155 = *(v0 + 1484);
        v147 = *(v0 + 872);
        v159 = *(v0 + 752);
        v163 = *(v0 + 736);
        v62 = *(v0 + 664);
        v63 = *(v0 + 656);
        v64 = *(v0 + 640);
        v65 = *(v0 + 632);
        v121 = *(v0 + 624);
        v122 = *(v0 + 608);
        v186 = v51;
        v66 = *(v0 + 600);
        v67 = *(v0 + 592);
        v124 = *(v0 + 584);
        v127 = *(v0 + 568);
        v120 = *(v0 + 560);
        v131 = *(v0 + 552);
        v135 = *(v0 + 536);
        v139 = *(v0 + 528);
        v143 = *(v0 + 448);

        sub_10001B0B0();
        sub_10001B120();
        type metadata accessor for CVBuffer(0);
        v68 = sub_10001AE40();
        (*(*(v68 - 8) + 56))(v66, 1, 1, v68);
        v119 = v57;
        sub_10001AE50();
        v69 = *v117;
        (*v117)(v63, v62, v64);
        sub_10001A5A0();
        v69(v63, v62, v64);
        sub_10001A5C0();
        (*v116)(v121, v65, v122);
        (*v115)(v124, v67, v127);
        (*v114)(v131, v120, v135);
        sub_10001A6A0();
        sub_10001A5E0();
        v70 = v167(v159, v163);
        v71 = *(v0 + 1080);
        if (v70 == v179)
        {
          v136 = *(v0 + 1040);
          v140 = *(v0 + 880);
          v97 = *(v0 + 856);
          v183 = *(v0 + 640);
          v188 = *(v0 + 664);
          v169 = *(v0 + 632);
          v175 = *(v0 + 648);
          v160 = *(v0 + 592);
          v164 = *(v0 + 608);
          v152 = *(v0 + 848);
          v156 = *(v0 + 568);
          v144 = *(v0 + 536);
          v148 = *(v0 + 560);
          v98 = *(v0 + 528);
          v99 = *(v0 + 520);
          v101 = *(v0 + 496);
          v100 = *(v0 + 504);
          v102 = *(v0 + 472);
          v128 = *(v0 + 456);
          v132 = *(v0 + 480);
          (*v118)(*(v0 + 752), *(v0 + 736));
          sub_10001B060();
          v103 = sub_10001B150();
          sub_10001A450();

          (*v108)(v99, v98, v100);
          sub_100016A68(&qword_100024260, &type metadata accessor for VideoPreview);
          sub_10001AD90();
          sub_100006F6C(&qword_100024210, &qword_10001C7A8);
          sub_10001AFF0();
          (*v109)(v101, v132);
          *(v0 + 424) = 0;
          sub_10001B000();

          (*v110)(v98, v100);
          (*v111)(v148, v144);
          (*v112)(v160, v156);
          (*v113)(v169, v164);
          (*(v175 + 8))(v188, v183);
          goto LABEL_5;
        }

        (*v118)(*(v0 + 752), *(v0 + 736));
        v72 = [v71 copyNextSampleBuffer];
        v73 = v186 + 1;
        if (__OFADD__(v186, 1))
        {
          __break(1u);
        }

        v74 = v72;
        v187 = v186 + 1;
        if (v72)
        {
          v75 = *(v0 + 1460) != *(v0 + 1464) && v73 == *(v0 + 984);
          v76 = v75;
        }

        else
        {
          v76 = 1;
        }

        v77 = *(v0 + 496);
        v78 = *(v0 + 472);
        v180 = *(v0 + 480);
        v79 = *(v0 + 456);
        (*v108)(*(v0 + 520), *(v0 + 528), *(v0 + 504));
        sub_100016A68(&qword_100024260, &type metadata accessor for VideoPreview);
        sub_10001AD90();
        sub_100006F6C(&qword_100024210, &qword_10001C7A8);
        sub_10001AFF0();
        (*v109)(v77, v180);
        v80 = *(v0 + 632);
        v173 = *(v0 + 592);
        v181 = *(v0 + 608);
        v168 = *(v0 + 568);
        v81 = *(v0 + 560);
        v82 = *(v0 + 536);
        v83 = *(v0 + 528);
        v84 = *(v0 + 504);
        if (v76)
        {
          v85 = *(v0 + 632);
          v86 = *(v0 + 456);
          *(v0 + 416) = 0;
          sub_10001B000();

          (*v110)(v83, v84);
          (*v111)(v81, v82);
          (*v112)(v173, v168);
          (*v113)(v85, v181);
        }

        else
        {

          (*v110)(v83, v84);
          (*v111)(v81, v82);
          (*v112)(v173, v168);
          (*v113)(v80, v181);
        }

        if (!v74)
        {
          break;
        }

        v87 = *(v0 + 984);
        v88 = *(v0 + 1464);
        v89 = *(v0 + 1460);
        v90 = v74;
        v15 = v90;
        v75 = v89 == v88;
        v51 = v187;
        if (!v75 && v187 == v87)
        {
          goto LABEL_4;
        }

        if (!CMSampleBufferGetNumSamples(v90))
        {
          goto LABEL_12;
        }
      }

      v104 = *(v0 + 1080);
      v105 = *(v0 + 1040);
      v106 = *(v0 + 880);
      v107 = *(v0 + 848);
      (*(*(v0 + 648) + 8))(*(v0 + 664), *(v0 + 640));
    }

    else
    {
LABEL_4:
      v16 = *(v0 + 1080);
      v17 = *(v0 + 880);
      v18 = *(v0 + 848);
      v19 = *(v0 + 664);
      v20 = *(v0 + 648);
      v21 = *(v0 + 640);

      (*(v20 + 8))(v19, v21);
    }

LABEL_5:
    v22 = *(v0 + 832);
    v23 = *(v0 + 808);
    v24 = *(v0 + 784);
    v25 = *(v0 + 776);
    v26 = *(v0 + 768);
    v27 = *(v0 + 760);
    v28 = *(v0 + 752);
    v29 = *(v0 + 728);
    v30 = *(v0 + 704);
    v31 = *(v0 + 696);
    v125 = *(v0 + 688);
    v129 = *(v0 + 664);
    v133 = *(v0 + 656);
    v137 = *(v0 + 632);
    v141 = *(v0 + 624);
    v145 = *(v0 + 600);
    v149 = *(v0 + 592);
    v153 = *(v0 + 584);
    v157 = *(v0 + 560);
    v161 = *(v0 + 552);
    v165 = *(v0 + 528);
    v170 = *(v0 + 520);
    v176 = *(v0 + 496);
    v184 = *(v0 + 472);

    v32 = *(v0 + 8);
  }

  else
  {
    v33 = *(v0 + 1080);
    v34 = *(v0 + 1040);
    v35 = *(v0 + 880);
    v177 = *(v0 + 848);
    v36 = *(v0 + 664);
    v37 = *(v0 + 648);
    v38 = *(v0 + 640);
    sub_10001AEA0();
    sub_100016A68(&qword_100024190, &type metadata accessor for Explosion);
    v39 = swift_allocError();
    sub_10001AE90();
    v185 = v39;
    swift_willThrow();

    (*(v37 + 8))(v36, v38);
LABEL_7:
    v40 = *(v0 + 832);
    v41 = *(v0 + 808);
    v42 = *(v0 + 784);
    v43 = *(v0 + 776);
    v44 = *(v0 + 768);
    v45 = *(v0 + 760);
    v46 = *(v0 + 752);
    v47 = *(v0 + 728);
    v48 = *(v0 + 704);
    v49 = *(v0 + 696);
    v123 = *(v0 + 688);
    v126 = *(v0 + 664);
    v130 = *(v0 + 656);
    v134 = *(v0 + 632);
    v138 = *(v0 + 624);
    v142 = *(v0 + 600);
    v146 = *(v0 + 592);
    v150 = *(v0 + 584);
    v154 = *(v0 + 560);
    v158 = *(v0 + 552);
    v162 = *(v0 + 528);
    v166 = *(v0 + 520);
    v171 = *(v0 + 496);
    v178 = *(v0 + 472);
    **(v0 + 464) = v185;

    v32 = *(v0 + 8);
  }

  return v32();
}

uint64_t sub_100015EDC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1000177E0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100006F6C(&qword_100024170, &qword_10001C578);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_100017824(0, &qword_100024298, AVAssetTrack_ptr);
    **(*(v4 + 64) + 40) = sub_10001AFB0();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_100015FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100006F6C(&qword_100024218, &qword_10001C7B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100016F80(a3, v27 - v11);
  v13 = sub_10001AFE0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100017768(v12, &qword_100024218, &qword_10001C7B0);
  }

  else
  {
    sub_10001AFD0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_10001AFC0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_10001AF70() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100017768(a3, &qword_100024218, &qword_10001C7B0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100017768(a3, &qword_100024218, &qword_10001C7B0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1000162C4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000163BC;

  return v7(a1);
}

uint64_t sub_1000163BC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000164C0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001658C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000C080(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000C0EC(v11);
  return v7;
}

unint64_t sub_10001658C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100016698(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_10001B1C0();
    a6 = v11;
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

char *sub_100016698(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000166E4(a1, a2);
  sub_100016814(&off_100021468);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000166E4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100016900(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10001B1C0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10001AFA0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100016900(v10, 0);
        result = sub_10001B190();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100016814(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100016974(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
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

void *sub_100016900(uint64_t a1, uint64_t a2)
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

  sub_100006F6C(&qword_100024208, &qword_10001C7A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100016974(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006F6C(&qword_100024208, &qword_10001C7A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t sub_100016A68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100016AB4()
{
  v18 = sub_10001ADE0();
  v1 = *(v18 - 8);
  v2 = *(v1 + 80);
  v16 = (v2 + 32) & ~v2;
  v3 = (*(v1 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = sub_10001A5F0();
  v4 = *(v17 - 8);
  v5 = *(v4 + 80);
  v6 = (v3 + v5 + 8) & ~v5;
  v7 = *(v4 + 64);
  v8 = sub_100006F6C(&qword_100024210, &qword_10001C7A8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v6 + v7 + v10) & ~v10;
  v15 = *(v9 + 64);
  v12 = v2 | v5 | v10;
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v16, v18);

  (*(v4 + 8))(v0 + v6, v17);
  (*(v9 + 8))(v0 + v11, v8);

  return _swift_deallocObject(v0, v11 + v15, v12 | 7);
}

uint64_t sub_100016CB8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10001ADE0() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_10001A5F0() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_100006F6C(&qword_100024210, &qword_10001C7A8) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = *(v1 + v7);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_100016E8C;

  return sub_10000D598(a1, v13, v14, v1 + v6, v15, v1 + v9, v1 + v12);
}

uint64_t sub_100016E8C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100016F80(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006F6C(&qword_100024218, &qword_10001C7B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016FF0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100017028(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100017870;

  return sub_1000162C4(a1, v5);
}

uint64_t sub_1000170E0()
{
  v17 = sub_10001ADE0();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v16 = sub_10001A5F0();
  v5 = *(v16 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_100006F6C(&qword_100024210, &qword_10001C7A8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v15 = *(v10 + 64);
  v13 = v2 | v6 | v11;

  (*(v1 + 8))(v0 + v3, v17);
  (*(v5 + 8))(v0 + v7, v16);
  (*(v10 + 8))(v0 + v12, v9);

  return _swift_deallocObject(v0, v12 + v15, v13 | 7);
}

uint64_t sub_1000172C8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10001ADE0() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10001A5F0() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_100006F6C(&qword_100024210, &qword_10001C7A8) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100016E8C;

  return sub_10000DF74(a1, v13, v1 + v6, v1 + v9, v1 + v12);
}

unint64_t sub_10001747C()
{
  result = qword_100024228;
  if (!qword_100024228)
  {
    sub_100017824(255, &qword_1000240E8, OS_dispatch_queue_serial_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100024228);
  }

  return result;
}

uint64_t sub_1000174E4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100017870;

  return sub_10000E274(a1, v6, v7, v9, v8, a2);
}

_OWORD *sub_1000175AC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100019D08(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10000C844();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10000C424(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_100019D08(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_10001B240();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_10000C0EC(v23);

    return sub_10000C0DC(a1, v23);
  }

  else
  {
    sub_1000176FC(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_1000176FC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000C0DC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_100017768(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100006F6C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_1000177E0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100017824(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1000178CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v120 = a2;
  v104 = a3;
  v99 = sub_10001ACA0();
  v98 = *(v99 - 8);
  v4 = *(v98 + 64);
  __chkstk_darwin(v99);
  v107 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100006F6C(&qword_1000242A8, &qword_10001C8C0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v110 = &v92 - v8;
  v114 = sub_10001AD80();
  v108 = *(v114 - 8);
  v9 = *(v108 + 64);
  __chkstk_darwin(v114);
  v106 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100006F6C(&qword_1000242B0, &qword_10001C8C8);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v103 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v96 = &v92 - v16;
  v17 = __chkstk_darwin(v15);
  v102 = &v92 - v18;
  __chkstk_darwin(v17);
  v115 = &v92 - v19;
  v20 = sub_100006F6C(&qword_100024238, &unk_10001C8D0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v109 = &v92 - v22;
  v23 = sub_10001AE70();
  v24 = *(v23 - 8);
  v112 = v23;
  v113 = v24;
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v97 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v101 = &v92 - v29;
  v30 = __chkstk_darwin(v28);
  v100 = &v92 - v31;
  __chkstk_darwin(v30);
  v33 = &v92 - v32;
  v34 = sub_10001AE10();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  v38 = &v92 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_10000895C();
  v39 = sub_10001B170();
  sub_100006F6C(&qword_100024180, qword_10001C580);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_10001C4F0;
  sub_10001ADD0();
  v41 = sub_10001ADF0();
  v43 = v42;
  (*(v35 + 8))(v38, v34);
  v116 = v41;
  v117 = v43;
  v44 = sub_10001ADA0();
  v46 = v45;

  *(v40 + 56) = &type metadata for String;
  *(v40 + 64) = sub_100008A10();
  *(v40 + 32) = v44;
  *(v40 + 40) = v46;
  v47 = v115;
  sub_10001B080();
  sub_10001A440();

  v48 = sub_10001ADE0();
  v118 = v48;
  v119 = &protocol witness table for File;
  v49 = sub_100018B0C(&v116);
  (*(*(v48 - 8) + 16))(v49, a1, v48);
  sub_10001A550();
  v50 = sub_10001AE40();
  (*(*(v50 - 8) + 56))(v109, 1, 1, v50);
  sub_10001AE50();
  v51 = sub_10001A590();
  v52 = *(v51 - 8);
  v53 = *(v52 + 7);
  v53(v47, 1, 1, v51);
  sub_10001AE60();
  sub_1000177E0(&v116, v118);
  v54 = v111;
  v55 = v110;
  v56 = v114;
  sub_10001A6C0();
  if (v54)
  {
    sub_100017768(v47, &qword_1000242B0, &qword_10001C8C8);
    (*(v113 + 8))(v33, v112);
    return sub_10000C0EC(&v116);
  }

  v95 = 0;
  v94 = v52 + 56;
  v111 = v51;
  v93 = v53;
  v109 = v52;
  v59 = v107;
  v58 = v108;
  v60 = v55;
  if ((*(v108 + 48))(v55, 1, v56) == 1)
  {
    sub_100017768(v55, &qword_1000242A8, &qword_10001C8C0);
    sub_10000C0EC(&v116);
    v61 = v104;
    v62 = v109;
    v63 = v47;
  }

  else
  {
    v92 = v33;
    v64 = v106;
    (*(v58 + 32))(v106, v60, v56);
    sub_10000C0EC(&v116);
    v65 = sub_10001AD50();
    if (!v66)
    {
      sub_10001AEA0();
      sub_100018BE0(&qword_100024190, &type metadata accessor for Explosion);
      swift_allocError();
      sub_10001AE90();
      swift_willThrow();
      (*(v58 + 8))(v64, v56);
      sub_100017768(v47, &qword_1000242B0, &qword_10001C8C8);
      return (*(v113 + 8))(v92, v112);
    }

    v67 = v65;
    v68 = v66;
    if (sub_10001A540())
    {
      v69 = v67 == 0x682E63696C627570;
      v70 = v113;
      v71 = v59;
      if ((!v69 || v68 != 0xEB00000000636965) && (sub_10001B230() & 1) == 0)
      {

        sub_10001AEA0();
        sub_100018BE0(&qword_100024190, &type metadata accessor for Explosion);
        swift_allocError();
        sub_10001AE90();
        swift_willThrow();
        (*(v108 + 8))(v106, v114);
        sub_100017768(v115, &qword_1000242B0, &qword_10001C8C8);
        return (*(v70 + 8))(v92, v112);
      }

      sub_10001A560();
      sub_10001A550();
      v116 = 0;
      v117 = 0;
      v72 = v100;
      v73 = v92;
      v74 = v95;
      sub_10001AE20();
      if (v74)
      {

        (*(v108 + 8))(v106, v114);
        sub_100017768(v115, &qword_1000242B0, &qword_10001C8C8);
        return (*(v70 + 8))(v73, v112);
      }

      v86 = v112;
      (*(v70 + 16))(v101, v72, v112);
      (*(v98 + 104))(v71, enum case for StickerEffect.none(_:), v99);
      v87 = v102;
      sub_10001A580();
      (*(v70 + 8))(v72, v86);
      (*(v108 + 8))(v106, v114);
      v63 = v115;
      sub_100017768(v115, &qword_1000242B0, &qword_10001C8C8);
      v93(v87, 0, 1, v111);
      sub_100018C28(v87, v63);
      v33 = v73;
      v61 = v104;
      v95 = 0;
    }

    else
    {
      v110 = v67;
      v75 = sub_1000076C4(v67, v68);
      v76 = v113;
      if ((v75 & 1) != 0 && sub_10001AD30() > 1)
      {
        v77 = sub_10001B170();
        sub_10001B080();
        sub_10001A440();

        v78 = sub_10001A560();
        v79 = v106;
        v80 = sub_10001AD30();
        v81 = sub_10001A570();
        v82 = v95;
        sub_100018C98(v78, v80, v81);
        v62 = v109;
        if (v82)
        {

          (*(v108 + 8))(v79, v114);
          sub_100017768(v115, &qword_1000242B0, &qword_10001C8C8);
          return (*(v113 + 8))(v92, v112);
        }

        sub_10001A550();
        sub_10001AE30();
        v63 = v115;
        v95 = 0;
        sub_10001AD30();
        sub_10001AD70();
        (*(v98 + 104))(v107, enum case for StickerEffect.none(_:), v99);
        v91 = v96;
        sub_10001A580();
        (*(v108 + 8))(v79, v114);
        sub_100017768(v63, &qword_1000242B0, &qword_10001C8C8);
        v93(v91, 0, 1, v111);
        sub_100018C28(v91, v63);
        v33 = v92;
        v61 = v104;
        goto LABEL_21;
      }

      v83 = sub_10001B170();
      sub_10001B080();
      sub_10001A440();

      v33 = v92;
      (*(v76 + 16))(v101, v92, v112);
      v84 = v106;
      sub_10001AD30();
      sub_10001AD40();
      sub_10001AD60();
      sub_10001AC90();
      sub_10001AD70();
      v85 = v102;
      sub_10001A580();
      (*(v108 + 8))(v84, v114);
      v63 = v115;
      sub_100017768(v115, &qword_1000242B0, &qword_10001C8C8);
      v93(v85, 0, 1, v111);
      sub_100018C28(v85, v63);
      v61 = v104;
    }

    v62 = v109;
  }

LABEL_21:
  v88 = v103;
  sub_100018B70(v63, v103);
  v89 = v111;
  if ((*(v62 + 6))(v88, 1, v111) == 1)
  {
    sub_100017768(v88, &qword_1000242B0, &qword_10001C8C8);
    v90 = sub_10001B170();
    sub_10001B080();
    sub_10001A440();

    sub_10001AEA0();
    sub_100018BE0(&qword_100024190, &type metadata accessor for Explosion);
    swift_allocError();
    sub_10001AE90();
    swift_willThrow();
    sub_100017768(v63, &qword_1000242B0, &qword_10001C8C8);
    return (*(v113 + 8))(v33, v112);
  }

  else
  {
    sub_100017768(v63, &qword_1000242B0, &qword_10001C8C8);
    (*(v113 + 8))(v33, v112);
    return (*(v62 + 4))(v61, v88, v89);
  }
}

uint64_t sub_100018A7C@<X0>(uint64_t a1@<X8>)
{
  sub_10001B090();
  v2 = sub_10001AD80();
  return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
}

uint64_t *sub_100018B0C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100018B70(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006F6C(&qword_1000242B0, &qword_10001C8C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018BE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100018C28(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006F6C(&qword_1000242B0, &qword_10001C8C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018C98(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a3)
  {
    sub_10001AEA0();
    sub_100018BE0(&qword_100024190, &type metadata accessor for Explosion);
    swift_allocError();
    sub_10001AE90();
    return swift_willThrow();
  }

  if (a3 < a2)
  {
    v3 = a2 / a3 * result;
    if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v3 > -9.22337204e18)
    {
      if (v3 < 9.22337204e18)
      {
        return v3;
      }

LABEL_11:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

void sub_100018E44(uint64_t a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X8>)
{
  v80 = a2;
  v4 = sub_100006F6C(&qword_100024168, &qword_10001C570);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v77 = &v69 - v6;
  v7 = sub_10001AEA0();
  v79 = *(v7 - 8);
  v8 = v79[8];
  __chkstk_darwin(v7);
  v78 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100006F6C(&qword_1000242C0, &unk_10001C938);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v69 - v15;
  v17 = sub_10001AAA0();
  v18 = *(*(v17 - 8) + 56);
  v18(v16, 1, 1, v17);
  if ((sub_10001ABC0() & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_10001ADE0();
  type metadata accessor for CGImageSource(0);
  sub_10001A6C0();
  if (v2)
  {
    sub_100017768(v16, &qword_1000242C0, &unk_10001C938);
    return;
  }

  v76 = v16;
  if (!v81)
  {
    v40 = v78;
    sub_10001AE90();
    sub_10000895C();
    v41 = sub_10001B160();
    sub_100006F6C(&qword_100024180, qword_10001C580);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_10001C4F0;
    v43 = v79;
    v80 = v79[2];
    v44 = v77;
    v80(v77, v40, v7);
    (v43[7])(v44, 0, 1, v7);
    v45 = v7;
    v46 = sub_10001ADA0();
    v48 = v47;
    sub_100017768(v44, &qword_100024168, &qword_10001C570);
    *(v42 + 56) = &type metadata for String;
    *(v42 + 64) = sub_100008A10();
    *(v42 + 32) = v46;
    *(v42 + 40) = v48;
    sub_10001B080();
    sub_10001A440();

    sub_10001A2C0(&qword_100024190, &type metadata accessor for Explosion);
    swift_allocError();
    v80(v49, v40, v45);
    swift_willThrow();
LABEL_18:
    (v43[1])(v40, v45);
    sub_100017768(v76, &qword_1000242C0, &unk_10001C938);
    return;
  }

  v75 = v81;
  sub_100006F6C(&qword_1000242C8, &qword_10001C948);
  inited = swift_initStackObject();
  v73 = xmmword_10001C4F0;
  *(inited + 16) = xmmword_10001C4F0;
  *(inited + 32) = kCGImageSourceShouldCache;
  *(inited + 64) = &type metadata for Bool;
  *(inited + 40) = 0;
  v20 = kCGImageSourceShouldCache;
  sub_10001A128(inited);
  v74 = v7;
  swift_setDeallocating();
  sub_100017768(inited + 32, &qword_1000242D0, &qword_10001C950);
  type metadata accessor for CFString(0);
  sub_10001A2C0(&qword_100024148, type metadata accessor for CFString);
  isa = sub_10001AF00().super.isa;
  v22 = v74;

  v23 = CGImageSourceCopyPropertiesAtIndex(v75, 0, isa);

  if (!v23)
  {
    goto LABEL_15;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_15;
  }

  v81 = 0;
  type metadata accessor for CFNumber(0);
  sub_10001AF10();

  v24 = v81;
  if (!v81)
  {
LABEL_15:
    v40 = v78;
    sub_10001AE90();
    sub_10000895C();
    v50 = sub_10001B160();
    sub_100006F6C(&qword_100024180, qword_10001C580);
    v51 = swift_allocObject();
    *(v51 + 16) = v73;
    v43 = v79;
    v80 = v79[2];
    v52 = v77;
    v80(v77, v40, v22);
    (v43[7])(v52, 0, 1, v22);
    v53 = sub_10001ADA0();
    v45 = v22;
LABEL_16:
    v55 = v53;
    v56 = v54;
    sub_100017768(v52, &qword_100024168, &qword_10001C570);
    *(v51 + 56) = &type metadata for String;
    *(v51 + 64) = sub_100008A10();
    *(v51 + 32) = v55;
    *(v51 + 40) = v56;
    sub_10001B080();
    sub_10001A440();

    sub_10001A2C0(&qword_100024190, &type metadata accessor for Explosion);
    swift_allocError();
    v80(v57, v40, v45);
    swift_willThrow();
LABEL_17:

    goto LABEL_18;
  }

  v25 = sub_10001AF50();
  if (!*(v24 + 2))
  {

    goto LABEL_20;
  }

  v72 = sub_100019D08(v25, v26);
  v28 = v27;

  if ((v28 & 1) == 0)
  {
LABEL_20:

    v40 = v78;
    sub_10001AE90();
    sub_10000895C();
    v50 = sub_10001B160();
    sub_100006F6C(&qword_100024180, qword_10001C580);
    v51 = swift_allocObject();
    *(v51 + 16) = v73;
    v43 = v79;
    v80 = v79[2];
    v52 = v77;
    v45 = v74;
    v80(v77, v40, v74);
    (v43[7])(v52, 0, 1, v45);
    v53 = sub_10001ADA0();
    goto LABEL_16;
  }

  v29 = *(*(v24 + 7) + 8 * v72);
  v30 = sub_10001AF50();
  v32 = v31;
  v33 = *(v24 + 2);
  v72 = v29;
  if (!v33)
  {
    v58 = v29;

    goto LABEL_22;
  }

  v71 = v30;
  v70 = v29;
  v71 = sub_100019D08(v71, v32);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
LABEL_22:

    v40 = v78;
    sub_10001AE90();
    sub_10000895C();
    v59 = sub_10001B160();
    sub_100006F6C(&qword_100024180, qword_10001C580);
    v60 = swift_allocObject();
    *(v60 + 16) = v73;
    v43 = v79;
    v80 = v79[2];
    v61 = v77;
    v45 = v74;
    v80(v77, v40, v74);
    (v43[7])(v61, 0, 1, v45);
    v62 = sub_10001ADA0();
    v64 = v63;
    sub_100017768(v61, &qword_100024168, &qword_10001C570);
    *(v60 + 56) = &type metadata for String;
    *(v60 + 64) = sub_100008A10();
    *(v60 + 32) = v62;
    *(v60 + 40) = v64;
    sub_10001B080();
    sub_10001A440();

    sub_10001A2C0(&qword_100024190, &type metadata accessor for Explosion);
    swift_allocError();
    v80(v65, v40, v45);
    swift_willThrow();

    goto LABEL_17;
  }

  v36 = *(*(v24 + 7) + 8 * v71);

  v37 = v70;
  v38 = sub_10001B020();
  v79 = v37;

  v39 = v36;
  sub_10001B020();
  v78 = v39;

  sub_10001AEE0();
  v77 = v38;
  sub_10001AEC0();
  sub_10001AA90();

  v16 = v76;
  sub_100017768(v76, &qword_1000242C0, &unk_10001C938);
  v18(v14, 0, 1, v17);
  sub_10001A250(v14, v16);
LABEL_23:
  sub_10001A308(v16, v14, &qword_1000242C0, &unk_10001C938);
  v66 = v80;
  v67 = sub_10001AAC0();
  __chkstk_darwin(v67);
  *(&v69 - 2) = a1;
  *(&v69 - 1) = v66;
  sub_10001ADB0();
  sub_100017768(v16, &qword_1000242C0, &unk_10001C938);
  if (v2)
  {
    v68 = sub_10001AC80();
    (*(*(v68 - 8) + 8))(v66, v68);
  }
}

void sub_100019B8C()
{
  v0 = sub_10001AE10();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001ADD0();
  sub_10001ADF0();
  (*(v1 + 8))(v4, v0);
  v5 = objc_allocWithZone(PFMetadata);
  v6 = sub_10001AF40();

  v7 = [v5 initForLimitedPropertiesWithPath:v6];

  if (v7)
  {
    sub_1000095B4(v7);
  }
}

void sub_100019CEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100019B8C();
}

unint64_t sub_100019D08(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10001B250();
  sub_10001AF80();
  v6 = sub_10001B260();

  return sub_100019E34(a1, a2, v6);
}

unint64_t sub_100019D80(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_10001B250();
  type metadata accessor for CFString(0);
  sub_10001A2C0(&qword_1000242E0, type metadata accessor for CFString);
  sub_10001A420();
  v4 = sub_10001B260();

  return sub_100019EEC(a1, v4);
}

unint64_t sub_100019E34(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10001B230())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100019EEC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_10001A2C0(&qword_1000242E0, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_10001A410();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100019FF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006F6C(&qword_1000241C8, &qword_10001C960);
    v3 = sub_10001B200();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001A308(v4, &v13, &qword_100024248, &qword_10001C828);
      v5 = v13;
      v6 = v14;
      result = sub_100019D08(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000C0DC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10001A128(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006F6C(&qword_1000242D8, &qword_10001C958);
    v3 = sub_10001B200();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001A308(v4, &v11, &qword_1000242D0, &qword_10001C950);
      v5 = v11;
      result = sub_100019D80(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000C0DC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10001A250(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006F6C(&qword_1000242C0, &unk_10001C938);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001A2C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001A308(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100006F6C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}