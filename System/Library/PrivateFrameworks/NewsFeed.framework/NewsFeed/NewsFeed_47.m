unint64_t sub_1D5F95F1C()
{
  v1 = v0[2];
  v2 = v0[3];
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  result = v0[4];
  if (4 * v3 <= result >> 14)
  {
    return result;
  }

  v5 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  v6 = 4 << v5;
  while ((result & 0xC) == v6 || (result & 1) == 0)
  {
    if ((result & 0xC) == v6)
    {
      result = sub_1D6BA2080(result, v1, v2);
    }

    v8 = result >> 16;
    if (result >> 16 >= v3)
    {
      goto LABEL_58;
    }

    if ((result & 1) == 0)
    {
      v8 = sub_1D6BA2208(result, v1, v2) >> 16;
    }

LABEL_21:
    if ((v2 & 0x1000000000000000) != 0)
    {
      result = sub_1D7263D3C();
    }

    else
    {
      if ((v2 & 0x2000000000000000) != 0)
      {
        v17 = v1;
        v18 = v2 & 0xFFFFFFFFFFFFFFLL;
        v10 = &v17 + v8;
      }

      else
      {
        v9 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v1 & 0x1000000000000000) == 0)
        {
          v9 = sub_1D7263E5C();
        }

        v10 = (v9 + v8);
      }

      result = *v10;
      if (*v10 < 0)
      {
        v14 = (__clz(result ^ 0xFF) - 24);
        if (v14 > 2)
        {
          if (v14 == 3)
          {
            result = ((result & 0xF) << 12) | ((v10[1] & 0x3F) << 6) | v10[2] & 0x3F;
          }

          else
          {
            result = ((result & 0xF) << 18) | ((v10[1] & 0x3F) << 12) | ((v10[2] & 0x3F) << 6) | v10[3] & 0x3F;
          }
        }

        else if (v14 != 1)
        {
          result = v10[1] & 0x3F | ((result & 0x1F) << 6);
        }
      }
    }

    if (result != 32)
    {
      return result;
    }

    result = v0[4];
    if (result & 0xC) != v6 && (result)
    {
      if (v3 <= result >> 16)
      {
        goto LABEL_60;
      }

LABEL_36:
      if ((v2 & 0x1000000000000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_8;
    }

    if ((result & 0xC) == v6)
    {
      result = sub_1D6BA2080(result, v1, v2);
      if (v3 <= result >> 16)
      {
        goto LABEL_59;
      }
    }

    else if (v3 <= result >> 16)
    {
      goto LABEL_59;
    }

    if (result)
    {
      goto LABEL_36;
    }

    result = result & 0xC | sub_1D6BA2208(result, v1, v2) & 0xFFFFFFFFFFFFFFF3 | 1;
    if ((v2 & 0x1000000000000000) == 0)
    {
LABEL_37:
      v11 = result >> 16;
      if ((v2 & 0x2000000000000000) != 0)
      {
        v17 = v1;
        v18 = v2 & 0xFFFFFFFFFFFFFFLL;
        v13 = *(&v17 + v11);
      }

      else
      {
        v12 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v1 & 0x1000000000000000) == 0)
        {
          v12 = sub_1D7263E5C();
        }

        v13 = *(v12 + v11);
      }

      v15 = v13;
      v16 = __clz(v13 ^ 0xFF) - 24;
      if (v15 >= 0)
      {
        LOBYTE(v16) = 1;
      }

      result = ((v11 + v16) << 16) | 5;
      goto LABEL_9;
    }

LABEL_8:
    result = sub_1D726218C();
LABEL_9:
    v0[4] = result;
    if (4 * v3 <= result >> 14)
    {
      return result;
    }
  }

  v8 = result >> 16;
  if (result >> 16 < v3)
  {
    goto LABEL_21;
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_1D5F961D4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D5F96238()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D5F9628C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a9, uint64_t a10, uint64_t a11)
{
  v25 = a6;
  v26 = a8;
  v22 = a7;
  v23 = a4;
  v24 = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8, v15);
  v17 = &v21 - v16;
  if (a2)
  {
    v18 = a2;
  }

  else
  {
    type metadata accessor for FeedCursorTracker();
    (*(a11 + 48))(a10, a11);
    v18 = FeedCursorTracker.__allocating_init(context:)(v17);
  }

  v19 = v26(a1, v22, v18, a3, v23, v24, v25);

  return v19;
}

uint64_t sub_1D5F96464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v4 = sub_1D726393C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

id VideoLiveIcon.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *VideoLiveIcon.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8NewsFeed13VideoLiveIcon_label;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v37.receiver = v4;
  v37.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v37, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = [v11 layer];
  [v12 setCornerRadius_];

  v13 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.31372549 blue:0.4 alpha:1.0];
  [v11 setBackgroundColor_];

  v14 = OBJC_IVAR____TtC8NewsFeed13VideoLiveIcon_label;
  [v11 addSubview_];
  v15 = *&v11[v14];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = objc_opt_self();
  v18 = v15;
  v19 = [v17 bundleForClass_];
  sub_1D725811C();

  sub_1D726213C();

  v20 = sub_1D726203C();

  [v18 setText_];

  v21 = *&v11[v14];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 whiteColor];
  [v23 setTextColor_];

  [*&v11[v14] setTextAlignment_];
  v25 = *&v11[v14];
  v26 = objc_opt_self();
  v27 = *MEMORY[0x1E69DB980];
  v28 = v25;
  v29 = [v26 systemFontOfSize:12.0 weight:v27];
  v30 = [v29 fontDescriptor];
  v31 = [v30 fontDescriptorWithDesign_];

  if (v31)
  {
    v32 = [v26 fontWithDescriptor:v31 size:12.0];

    v29 = v32;
  }

  [v28 setFont_];

  v33 = *&v11[v14];
  v34 = [v17 bundleForClass_];
  sub_1D725811C();

  v35 = sub_1D726203C();

  [v33 setAccessibilityLabel_];

  return v11;
}

Swift::Void __swiftcall VideoLiveIcon.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8NewsFeed13VideoLiveIcon_label];
  [v0 bounds];
  [v1 setFrame_];
}

id VideoLiveIcon.intrinsicContentSize.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed13VideoLiveIcon_label);
  result = [v1 font];
  if (result)
  {
    v3 = result;
    [result capHeight];

    return [v1 intrinsicContentSize];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id VideoLiveIcon.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D5F96D00(void *a1)
{
  v3 = v1;
  sub_1D5F97A90(0, &unk_1EDF028C0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F97280();
  sub_1D7264B5C();
  LOBYTE(v13) = 0;
  sub_1D72643FC();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1D72643FC();
    LOBYTE(v13) = 2;
    sub_1D72643FC();
    v13 = *(v3 + 48);
    HIBYTE(v12) = 3;
    sub_1D5BBE0A8();
    sub_1D5F97AF4(&qword_1EDF04A90, sub_1D5BBE0A8);
    sub_1D726443C();
    LOBYTE(v13) = 4;
    sub_1D72643FC();
    v13 = *(v3 + 72);
    HIBYTE(v12) = 5;
    sub_1D5B81B04();
    sub_1D5F97AF4(&qword_1EDF047E0, sub_1D5B81B04);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D5F96FB0()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  sub_1D72621EC();
  sub_1D72621EC();
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  MEMORY[0x1DA6FC0B0](v2);
  if (v2)
  {
    v3 = v1 + 40;
    do
    {

      sub_1D72621EC();

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  sub_1D72621EC();
  sub_1D5BE251C(v5, *(v0 + 72));
  return sub_1D7264A5C();
}

uint64_t sub_1D5F97084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5F973BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5F970AC(uint64_t a1)
{
  v2 = sub_1D5F97280();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F970E8(uint64_t a1)
{
  v2 = sub_1D5F97280();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5F9712C()
{
  sub_1D7264A0C();
  sub_1D5BCA370(v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D5F97168(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1D5F972D4(v8, v9) & 1;
}

unint64_t sub_1D5F971C8()
{
  result = qword_1EC881CF8;
  if (!qword_1EC881CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881CF8);
  }

  return result;
}

__n128 sub_1D5F9721C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5F97574(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

unint64_t sub_1D5F97280()
{
  result = qword_1EDF14068;
  if (!qword_1EDF14068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14068);
  }

  return result;
}

uint64_t sub_1D5F972D4(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1D72646CC() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D5BF1C0C(a1[6], a2[6]) & 1) == 0 || (a1[7] != a2[7] || a1[8] != a2[8]) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[9];
  v7 = a2[9];

  return sub_1D5BFC390(v6, v7);
}

uint64_t sub_1D5F973BC(uint64_t a1, uint64_t a2)
{
  if (a1 == 97 && a2 == 0xE100000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 98 && a2 == 0xE100000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 99 && a2 == 0xE100000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 100 && a2 == 0xE100000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 101 && a2 == 0xE100000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 102 && a2 == 0xE100000000000000)
  {

    return 5;
  }

  else
  {
    v5 = sub_1D72646CC();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1D5F97574@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D5F97A90(0, &qword_1EDF03BB8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F97280();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v38[0]) = 0;
  v11 = sub_1D72642BC();
  v13 = v12;
  LOBYTE(v38[0]) = 1;
  v30 = sub_1D72642BC();
  v32 = v14;
  LOBYTE(v38[0]) = 2;
  v15 = sub_1D72642BC();
  v31 = v16;
  v27 = v15;
  sub_1D5BBE0A8();
  LOBYTE(v33) = 3;
  sub_1D5F97AF4(&qword_1EDF3C830, sub_1D5BBE0A8);
  v29 = 0;
  sub_1D726431C();
  v26 = v38[0];
  LOBYTE(v38[0]) = 4;
  v25 = sub_1D72642BC();
  v28 = v17;
  sub_1D5B81B04();
  v39 = 5;
  sub_1D5F97AF4(&qword_1EDF3C7D0, sub_1D5B81B04);
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v29 = v40;
  *&v33 = v11;
  *(&v33 + 1) = v13;
  v18 = v30;
  v19 = v32;
  *&v34 = v30;
  *(&v34 + 1) = v32;
  v20 = v31;
  *&v35 = v27;
  *(&v35 + 1) = v31;
  v21 = v26;
  *&v36 = v26;
  *(&v36 + 1) = v25;
  *&v37 = v28;
  *(&v37 + 1) = v40;
  sub_1D5F97B58(&v33, v38);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v38[0] = v11;
  v38[1] = v13;
  v38[2] = v18;
  v38[3] = v19;
  v38[4] = v27;
  v38[5] = v20;
  v38[6] = v21;
  v38[7] = v25;
  v38[8] = v28;
  v38[9] = v29;
  result = sub_1D5F97B90(v38);
  v23 = v36;
  a2[2] = v35;
  a2[3] = v23;
  a2[4] = v37;
  v24 = v34;
  *a2 = v33;
  a2[1] = v24;
  return result;
}

void sub_1D5F97A90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5F97280();
    v7 = a3(a1, &type metadata for FeedLayoutCacheDataKey.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D5F97AF4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D5F97BD4()
{
  result = qword_1EC881D00;
  if (!qword_1EC881D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D00);
  }

  return result;
}

unint64_t sub_1D5F97C2C()
{
  result = qword_1EDF14058;
  if (!qword_1EDF14058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14058);
  }

  return result;
}

unint64_t sub_1D5F97C84()
{
  result = qword_1EDF14060;
  if (!qword_1EDF14060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14060);
  }

  return result;
}

uint64_t sub_1D5F97CE8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x72635F73656C6966;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = 0x80000001D73B7A50;
  }

  else
  {
    v4 = 0xED00006465746165;
  }

  if (*a2)
  {
    v5 = 0x72635F73656C6966;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (*a2)
  {
    v6 = 0xED00006465746165;
  }

  else
  {
    v6 = 0x80000001D73B7A50;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D5F97DA0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5F97E34()
{
  sub_1D72621EC();
}

uint64_t sub_1D5F97EB4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5F97F44@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1D5F97FA4(unint64_t *a1@<X8>)
{
  v2 = 0x80000001D73B7A50;
  v3 = 0xD000000000000010;
  if (*v1)
  {
    v3 = 0x72635F73656C6966;
    v2 = 0xED00006465746165;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1D5F97FF4()
{
  if (*v0)
  {
    return 0x72635F73656C6966;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1D5F98040@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D5F980A4(uint64_t a1)
{
  v2 = sub_1D5F98398();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F980E0(uint64_t a1)
{
  v2 = sub_1D5F98398();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5F9811C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5F9814C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1D5F9814C(void *a1)
{
  sub_1D5F9833C();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F98398();
  sub_1D7264B0C();
  if (!v1)
  {
    v11[31] = 0;
    v9 = sub_1D72642BC();
    sub_1D5BBE0A8();
    v11[15] = 1;
    sub_1D5F983EC();
    sub_1D726431C();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void sub_1D5F9833C()
{
  if (!qword_1EC881D08)
  {
    sub_1D5F98398();
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC881D08);
    }
  }
}

unint64_t sub_1D5F98398()
{
  result = qword_1EC881D10;
  if (!qword_1EC881D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D10);
  }

  return result;
}

unint64_t sub_1D5F983EC()
{
  result = qword_1EDF3C830;
  if (!qword_1EDF3C830)
  {
    sub_1D5BBE0A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C830);
  }

  return result;
}

unint64_t sub_1D5F98470()
{
  result = qword_1EC881D18;
  if (!qword_1EC881D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D18);
  }

  return result;
}

unint64_t sub_1D5F984C8()
{
  result = qword_1EC881D20;
  if (!qword_1EC881D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D20);
  }

  return result;
}

unint64_t sub_1D5F98520()
{
  result = qword_1EC881D28;
  if (!qword_1EC881D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D28);
  }

  return result;
}

uint64_t WebEmbedDatastoreFailures.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ThumbnailProcessorRequest.cacheIdentifier.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_1D5F98684(uint64_t a1, uint64_t a2)
{
  sub_1D5BF51F8(0, &qword_1EDF3B7E8, MEMORY[0x1E69D75E8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ThumbnailProcessorRequest.__allocating_init(thumbnailAssetHandle:thumbnailFrame:focalFrame:scale:byRoundingCorners:cornerRadius:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v54 = a10;
  v53 = a7;
  v56 = a18;
  sub_1D5BF51F8(0, &qword_1EDF3B7E8, MEMORY[0x1E69D75E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v52 - v33;
  v55 = a1;
  sub_1D5B68374(a1, v63);
  v35 = sub_1D725CB5C();
  v36 = *(v35 - 8);
  (*(v36 + 56))(v34, 1, 1, v35);
  v37 = swift_allocObject();
  sub_1D5B68374(v63, v37 + 24);
  sub_1D5BF51F8(0, &qword_1EDF19590, sub_1D5C16B18, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = 0x69616E626D756874;
  *(inited + 40) = 0xE90000000000006CLL;
  sub_1D5B68374(v63, inited + 48);
  v39 = sub_1D5BFFC64(inited);
  swift_setDeallocating();
  sub_1D5F99394(inited + 32);
  *(v37 + 16) = v39;
  *(v37 + 80) = a3;
  *(v37 + 88) = a4;
  *(v37 + 96) = a5;
  *(v37 + 104) = a6;
  *(v37 + 112) = a7;
  *(v37 + 120) = a8;
  v40 = a8;
  v41 = v54;
  *(v37 + 128) = a9;
  *(v37 + 136) = v41;
  *(v37 + 144) = a17;
  *(v37 + 152) = *&a2;
  *(v37 + 160) = v56;
  sub_1D5F98684(v34, v37 + OBJC_IVAR____TtC8NewsFeed25ThumbnailProcessorRequest_border);
  v57 = 0.0;
  v58 = -2.68156159e154;
  sub_1D7263D4C();
  v61 = v57;
  v62 = v58;
  __swift_project_boxed_opaque_existential_1(v63, v63[3]);
  v42 = sub_1D725D2DC();
  MEMORY[0x1DA6F9910](v42);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v57 = a3;
  v58 = a4;
  v59 = a5;
  v60 = a6;
  type metadata accessor for CGRect(0);
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v57 = v53;
  v58 = v40;
  v59 = a9;
  v60 = v41;
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v43 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v43);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v57 = *&a2;
  type metadata accessor for UIRectCorner(0);
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v44 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v44);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  sub_1D5F98684(v34, v30);
  if ((*(v36 + 48))(v30, 1, v35) == 1)
  {
    sub_1D5C18264(v30);
    v45 = 0xE300000000000000;
    v46 = 7104878;
  }

  else
  {
    v47 = sub_1D725CB4C();
    v45 = v48;
    (*(v36 + 8))(v30, v35);
    v46 = v47;
  }

  MEMORY[0x1DA6F9910](v46, v45);

  v49 = v61;
  v50 = v62;
  __swift_destroy_boxed_opaque_existential_1(v55);
  sub_1D5C18264(v34);
  *(v37 + 64) = v49;
  *(v37 + 72) = v50;
  __swift_destroy_boxed_opaque_existential_1(v63);
  return v37;
}

uint64_t ThumbnailProcessorRequest.__allocating_init(thumbnailAssetHandle:thumbnailFrame:focalFrame:scale:byRoundingCorners:cornerRadius:border:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v28 = *(a1 + 24);
  v29 = *(a1 + 32);
  v30 = __swift_mutable_project_boxed_opaque_existential_1(a1, v28);
  v33 = sub_1D5F993F0(v30, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, v18, v28, v29, v31, v32, a17, a18);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v33;
}

uint64_t ThumbnailProcessorRequest.init(thumbnailAssetHandle:thumbnailFrame:focalFrame:scale:byRoundingCorners:cornerRadius:border:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v39 = a10;
  v40 = a11;
  v28 = *(a1 + 24);
  v29 = *(a1 + 32);
  v30 = __swift_mutable_project_boxed_opaque_existential_1(a1, v28);
  v31 = MEMORY[0x1EEE9AC00](v30, v30);
  v33 = &v39 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33, v31);
  v37 = sub_1D5F98EBC(v33, a2, a3, v18, v28, v29, a4, a5, a6, a7, a8, a9, v39, v40, v35, v36, a17, a18);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v37;
}

uint64_t ThumbnailProcessorRequest.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  sub_1D5C18264(v0 + OBJC_IVAR____TtC8NewsFeed25ThumbnailProcessorRequest_border);
  return v0;
}

uint64_t sub_1D5F98EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v51 = a14;
  v50 = a13;
  v49 = a10;
  sub_1D5BF51F8(0, &qword_1EDF3B7E8, MEMORY[0x1E69D75E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v32 = &v49 - v31;
  v58[3] = a5;
  v58[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  sub_1D5B68374(v58, a4 + 24);
  sub_1D5BF51F8(0, &qword_1EDF19590, sub_1D5C16B18, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = 0x69616E626D756874;
  *(inited + 40) = 0xE90000000000006CLL;
  sub_1D5B68374(v58, inited + 48);
  v35 = sub_1D5BFFC64(inited);
  swift_setDeallocating();
  sub_1D5F99394(inited + 32);
  *(a4 + 16) = v35;
  *(a4 + 80) = a7;
  *(a4 + 88) = a8;
  v36 = v49;
  *(a4 + 96) = a9;
  *(a4 + 104) = v36;
  *(a4 + 112) = a11;
  *(a4 + 120) = a12;
  *(a4 + 128) = v50;
  *(a4 + 136) = v51;
  *(a4 + 144) = a17;
  *(a4 + 152) = *&a2;
  *(a4 + 160) = a18;
  sub_1D5F98684(a3, a4 + OBJC_IVAR____TtC8NewsFeed25ThumbnailProcessorRequest_border);
  v52 = 0.0;
  v53 = -2.68156159e154;
  sub_1D7263D4C();
  v56 = v52;
  v57 = v53;
  v37 = sub_1D725D2DC();
  MEMORY[0x1DA6F9910](v37);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v52 = a7;
  v53 = a8;
  v54 = a9;
  v55 = v36;
  type metadata accessor for CGRect(0);
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v52 = a11;
  v53 = a12;
  v54 = v50;
  v55 = v51;
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v38 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v38);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v52 = *&a2;
  type metadata accessor for UIRectCorner(0);
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v39 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v39);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  sub_1D5F98684(a3, v32);
  v40 = sub_1D725CB5C();
  v41 = *(v40 - 8);
  if ((*(v41 + 48))(v32, 1, v40) == 1)
  {
    sub_1D5C18264(v32);
    v42 = 0xE300000000000000;
    v43 = 7104878;
  }

  else
  {
    v44 = sub_1D725CB4C();
    v42 = v45;
    (*(v41 + 8))(v32, v40);
    v43 = v44;
  }

  MEMORY[0x1DA6F9910](v43, v42);

  v46 = v56;
  v47 = v57;
  sub_1D5C18264(a3);
  *(a4 + 64) = v46;
  *(a4 + 72) = v47;
  __swift_destroy_boxed_opaque_existential_1(v58);
  return a4;
}

uint64_t sub_1D5F99394(uint64_t a1)
{
  sub_1D5C16B18();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5F993F0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v36 = a10;
  v37 = a11;
  v29 = *(a13 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v31 = &v36 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = swift_allocObject();
  (*(v29 + 16))(v31, a1, a13);
  return sub_1D5F98EBC(v31, a2, a3, v32, a13, a14, a4, a5, a6, a7, a8, a9, v36, v37, v33, v34, a17, a18);
}

id HeadlineView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id HeadlineView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id HeadlineView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D5F996B4(uint64_t a1)
{
  v2 = *(a1 + qword_1EDF33638);
}

Swift::Void __swiftcall HeadlineView.prepareForReuse()()
{
  v1 = *(*(v0 + qword_1EDF33618) + OBJC_IVAR____TtC8NewsFeed11DebugButton_onTap);
}

void sub_1D5F997F0()
{
  swift_getWitnessTable();

  JUMPOUT(0x1DA6F6FC0);
}

void _s8NewsFeed12HeadlineViewC5coderACyxGSgSo7NSCoderC_tcfc_0()
{
  v1 = qword_1EDF33628;
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  v2 = qword_1EDF33620;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v3 = qword_1EDF33610;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v4 = qword_1EDF33600;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v5 = qword_1EDF33630;
  v6 = sub_1D725FBCC();
  *(v0 + v5) = [objc_allocWithZone(v6) initWithFrame_];
  v7 = qword_1EDF33608;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v8 = qword_1EDF33618;
  *(v0 + v8) = [objc_allocWithZone(type metadata accessor for DebugButton()) initWithFrame_];
  v9 = qword_1EDF33638;
  *(v0 + v9) = [objc_allocWithZone(v6) initWithFrame_];
  sub_1D726402C();
  __break(1u);
}

uint64_t FeedModifierStore.__allocating_init()()
{
  v0 = swift_allocObject();
  FeedModifierStore.init()();
  return v0;
}

uint64_t FeedModifierStore.init()()
{
  sub_1D725D88C();
  sub_1D725B84C();
  *(v0 + 16) = sub_1D725B82C();
  return v0;
}

uint64_t FeedModifierStore.addPendingModifier(_:for:)()
{

  sub_1D725B87C();
}

uint64_t FeedModifierStore.applyPendingModifiers<A, B>(to:)()
{

  v0 = sub_1D725B7FC();

  v2 = 0;
  v3 = 1 << *(v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v0 + 64);
  v6 = (v3 + 63) >> 6;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {
    }

    v5 = *(v0 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        sub_1D725D88C();
        swift_getWitnessTable();
        sub_1D725D8DC();

        sub_1D725B87C();
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t FeedModifierStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D5F99E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000001D73C4D40 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D72646CC();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D5F99EC4(uint64_t a1)
{
  v2 = sub_1D5F9C56C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F99F00(uint64_t a1)
{
  v2 = sub_1D5F9C56C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5F99F3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_1D5F9C5C0(0, &qword_1EC881D48, sub_1D5F9C56C, &type metadata for FeedGroupSortOptionPersonalization.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F9C56C();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v16;
  v11 = sub_1D726424C();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v10 = v11;
  *(v10 + 8) = v13 & 1;
  return result;
}

uint64_t sub_1D5F9A0F4(void *a1)
{
  sub_1D5F9C5C0(0, &qword_1EC881D58, sub_1D5F9C56C, &type metadata for FeedGroupSortOptionPersonalization.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F9C56C();
  sub_1D7264B5C();
  sub_1D726439C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t FeedGroupSortOption.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D5F9C5C0(0, &qword_1EDF03BC8, sub_1D5F9A51C, &type metadata for FeedGroupSortOption.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F9A51C();
  sub_1D7264B0C();
  if (!v2)
  {
    v10 = v6;
    v11 = v17;
    v22 = 0;
    sub_1D5F9A570();
    sub_1D726431C();
    if (v23 > 1u)
    {
      if (v23 == 2)
      {
        (*(v10 + 8))(v9, v5);
        v13 = 0;
        v14 = 1;
        v12 = 2;
      }

      else
      {
        v21 = 1;
        sub_1D5F9A5C4();
        sub_1D726427C();
        (*(v10 + 8))(v9, v5);
        if (v20)
        {
          v12 = 0;
        }

        else
        {
          v12 = v18;
        }

        if (v20)
        {
          v13 = 1;
        }

        else
        {
          v13 = v19 & 1;
        }

        v14 = 0;
      }
    }

    else
    {
      if (v23)
      {
        (*(v10 + 8))(v9, v5);
        v13 = 0;
        v12 = 1;
      }

      else
      {
        (*(v10 + 8))(v9, v5);
        v12 = 0;
        v13 = 0;
      }

      v14 = 1;
    }

    *v11 = v12;
    *(v11 + 8) = v13;
    *(v11 + 9) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5F9A51C()
{
  result = qword_1EDF14818[0];
  if (!qword_1EDF14818[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF14818);
  }

  return result;
}

unint64_t sub_1D5F9A570()
{
  result = qword_1EDF147F0;
  if (!qword_1EDF147F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF147F0);
  }

  return result;
}

unint64_t sub_1D5F9A5C4()
{
  result = qword_1EDF13190;
  if (!qword_1EDF13190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13190);
  }

  return result;
}

uint64_t FeedGroupSortOption.encode(to:)(void *a1)
{
  sub_1D5F9C5C0(0, &qword_1EDF028D8, sub_1D5F9A51C, &type metadata for FeedGroupSortOption.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v16[0] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 9);
  v9 = a1[3];
  v10 = a1;
  v12 = v16 - v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_1D5F9A51C();
  sub_1D7264B5C();
  if (v8 != 1)
  {
    LOBYTE(v17) = 3;
    v19 = 0;
    sub_1D5F9A88C();
    v14 = v16[1];
    sub_1D726443C();
    if (v14 || (v7 & 1) != 0)
    {
      return (*(v16[0] + 8))(v12, v4);
    }

    v17 = v6;
    v18 = 0;
    v19 = 1;
    sub_1D5F9A8E0();
LABEL_9:
    sub_1D726443C();
    return (*(v16[0] + 8))(v12, v4);
  }

  if (!(v6 | v7))
  {
    LOBYTE(v17) = 0;
    v19 = 0;
    sub_1D5F9A88C();
    goto LABEL_9;
  }

  if (v6 ^ 1 | v7)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  LOBYTE(v17) = v13;
  v19 = 0;
  sub_1D5F9A88C();
  sub_1D726443C();
  return (*(v16[0] + 8))(v12, v4);
}

unint64_t sub_1D5F9A88C()
{
  result = qword_1EDF14800;
  if (!qword_1EDF14800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14800);
  }

  return result;
}

unint64_t sub_1D5F9A8E0()
{
  result = qword_1EC881D30;
  if (!qword_1EC881D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D30);
  }

  return result;
}

uint64_t sub_1D5F9A934(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1635017060;
  }

  else
  {
    v2 = 1701869940;
  }

  if (*a2)
  {
    v3 = 1635017060;
  }

  else
  {
    v3 = 1701869940;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D5F9A9AC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5F9AA14()
{
  sub_1D72621EC();
}

uint64_t sub_1D5F9AA60()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5F9AAC4@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1D5F9AB24(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (*v1)
  {
    v2 = 1635017060;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

uint64_t sub_1D5F9AB4C@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D5F9ABB0(uint64_t a1)
{
  v2 = sub_1D5F9A51C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F9ABEC(uint64_t a1)
{
  v2 = sub_1D5F9A51C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5F9AC34()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5F9AD0C()
{
  sub_1D72621EC();
}

uint64_t sub_1D5F9ADD0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5F9AEA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5F9C628();
  *a1 = result;
  return result;
}

void sub_1D5F9AED4(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701736302;
  v4 = 0x80000001D73B7A90;
  v5 = 0xD000000000000014;
  if (*v1 != 2)
  {
    v5 = 0x6C616E6F73726570;
    v4 = 0xEF6E6F6974617A69;
  }

  if (*v1)
  {
    v3 = 0x6F6C6F6E6F726863;
    v2 = 0xED00006C61636967;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t (*sub_1D5F9B050(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  if (*(v2 + 9) == 1)
  {
    if (*&v5 | v6)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = a1;
      *(v7 + 24) = a2;
      *(v7 + 32) = v5;
      *(v7 + 40) = v6;
      *(v7 + 41) = 1;
      if (*&v5 ^ 1 | v6)
      {
        return sub_1D5F9C694;
      }

      else
      {
        return sub_1D5F9C6B4;
      }
    }

    else
    {
      v13 = swift_allocObject();
      *(v13 + 16) = a1;
      *(v13 + 24) = a2;
      return sub_1D5F9C710;
    }
  }

  else if (v6)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    *(v9 + 32) = v5;
    *(v9 + 40) = v6;
    *(v9 + 41) = 0;
    return sub_1D5F9C674;
  }

  else
  {
    if (v5 >= 1.0 || v5 < 0.0)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = *v2;
    }

    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = a2;
    *(v12 + 32) = v11;
    return sub_1D5F9C744;
  }
}

uint64_t sub_1D5F9B1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;
  sub_1D72627FC();
  swift_getWitnessTable();
  sub_1D72624AC();

  return sub_1D72624EC();
}

uint64_t sub_1D5F9B2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;
  sub_1D72627FC();
  swift_getWitnessTable();
  v8 = sub_1D72624AC();

  return v8;
}

uint64_t sub_1D5F9B378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a2;
  v6 = sub_1D725891C();
  v41 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v39 = &v39 - v11;
  sub_1D5BA8044();
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5B2A0();
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v25 = &v39 - v24;
  v26 = *(a4 + 32);
  v26(a3, a4, v23);
  v27 = a3;
  v28 = v41;
  (v26)(v27, a4);
  v29 = *(v13 + 56);
  sub_1D5DF42F8(v25, v16);
  sub_1D5DF42F8(v20, &v16[v29]);
  v30 = *(v28 + 48);
  v31 = v30(v16, 1, v6);
  v32 = v30(&v16[v29], 1, v6);
  if (v31 == 1)
  {
    if (v32 == 1)
    {
      v33 = 0;
    }

    else
    {
      _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(&v16[v29]);
      v33 = 1;
    }
  }

  else if (v32 == 1)
  {
    (*(v28 + 8))(v16, v6);
    v33 = 0;
  }

  else
  {
    v34 = *(v28 + 32);
    v35 = v39;
    v34(v39, v16, v6);
    v36 = v40;
    v34(v40, &v16[v29], v6);
    v33 = sub_1D725883C();
    v37 = *(v28 + 8);
    v37(v36, v6);
    v37(v35, v6);
  }

  return v33 & 1;
}

BOOL sub_1D5F9B67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = v6(a3, a4);
  if (v7 == v6(a3, a4))
  {
    v8 = sub_1D725AA4C();
    v10 = v9;
    if (v8 == sub_1D725AA4C() && v10 == v11)
    {

      return 0;
    }

    else
    {
      v13 = sub_1D72646CC();

      return v13 & 1;
    }
  }

  else
  {
    v15 = v6(a3, a4);
    return v6(a3, a4) < v15;
  }
}

uint64_t sub_1D5F9B7D0()
{
  sub_1D72627FC();
  sub_1D7261CEC();
  sub_1D7261E1C();
  swift_getWitnessTable();
  sub_1D726248C();
  nullsub_1();

  sub_1D7261DEC();
  swift_getTupleTypeMetadata2();
  sub_1D72627FC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D72624BC();

  sub_1D5F9C7A8();
  sub_1D726248C();

  v0 = sub_1D72624AC();

  return v0;
}

uint64_t sub_1D5F9BA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 16))(a3, a4);
  if (v7)
  {
    sub_1D72627FC();

    sub_1D7261E3C();

    if (!v11)
    {
      sub_1D726275C();
    }

    sub_1D5D0DDD4(a3, a3);
    v8 = *(a3 - 8);
    swift_allocObject();
    v9 = sub_1D726270C();
    (*(v8 + 16))(v10, a2, a3);
    sub_1D5BFCB60(v9);
    sub_1D726274C();

    sub_1D7261E1C();
    return sub_1D7261E4C();
  }

  return result;
}

uint64_t sub_1D5F9BC50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v26 = *a1;
  v22 = a2;
  v23 = a3;
  v9 = sub_1D72627FC();
  WitnessTable = swift_getWitnessTable();
  sub_1D72624AC();
  MEMORY[0x1DA6F9AD0](&v26, v9, WitnessTable);

  v25 = v26;
  v19 = a2;
  v20 = a3;
  v21 = a5;
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = sub_1D5F9C8BC;
  v17[5] = &v18;
  v11 = sub_1D72640AC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v24 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v15 = sub_1D5B874E4(sub_1D5F9C970, v17, v11, TupleTypeMetadata2, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);

  *a4 = v15;
  return result;
}

void sub_1D5F9BE2C(char *a1@<X0>, double (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(swift_getTupleTypeMetadata2() + 48);
  v8 = *(swift_getTupleTypeMetadata2() + 48);
  *(a3 + v8) = a2(a3, v6, &a1[v7]);
}

uint64_t sub_1D5F9BEEC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v8);
  v10 = &v17 - v9;
  v11 = sub_1D725AA4C();
  v13 = v12;
  (*(v7 + 16))(v10, a2, TupleTypeMetadata2);
  v14 = *&v10[*(TupleTypeMetadata2 + 48)];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *a1;
  sub_1D6D78B1C(v11, v13, isUniquelyReferenced_nonNull_native, v14);

  *a1 = v18;
  return (*(*(a3 - 8) + 8))(v10, a3);
}

BOOL sub_1D5F9C080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1D725AA4C();
  if (*(a3 + 16))
  {
    v6 = sub_1D5B69D90(v4, v5);
    v8 = v7;

    v9 = 0.0;
    if (v8)
    {
      v9 = *(*(a3 + 56) + 8 * v6);
    }
  }

  else
  {

    v9 = 0.0;
  }

  v10 = sub_1D725AA4C();
  if (*(a3 + 16))
  {
    v12 = sub_1D5B69D90(v10, v11);
    v14 = v13;

    v15 = 0.0;
    if (v14)
    {
      v15 = *(*(a3 + 56) + 8 * v12);
    }
  }

  else
  {

    v15 = 0.0;
  }

  return v15 < v9;
}

uint64_t Array<A>.sorted(using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D5F9B050(a3, a4);
  v4 = sub_1D72626CC();

  return v4;
}

uint64_t _s8NewsFeed0B15GroupSortOptionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 9) == 1)
  {
    if (*&v2 | v3)
    {
      if (*&v2 ^ 1 | *(a1 + 8))
      {
        if (*(a2 + 9) && __PAIR128__(v5, *&v4) >= 2)
        {
          return 1;
        }
      }

      else if (*(a2 + 9) && !(*&v4 ^ 1 | v5))
      {
        return 1;
      }
    }

    else
    {
      v7 = *&v4 | v5;
      if (*(a2 + 9))
      {
        v8 = v7 == 0;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 9) & 1) == 0)
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else if ((v5 & 1) == 0 && v2 == v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for FeedGroupSortOption(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FeedGroupSortOption(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_1D5F9C308(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5F9C324(uint64_t result, int a2)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FormatContentSubgroupFilterRequirements(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

unint64_t sub_1D5F9C3BC()
{
  result = qword_1EC881D38;
  if (!qword_1EC881D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D38);
  }

  return result;
}

unint64_t sub_1D5F9C414()
{
  result = qword_1EC881D40;
  if (!qword_1EC881D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D40);
  }

  return result;
}

unint64_t sub_1D5F9C46C()
{
  result = qword_1EDF14808;
  if (!qword_1EDF14808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14808);
  }

  return result;
}

unint64_t sub_1D5F9C4C4()
{
  result = qword_1EDF14810;
  if (!qword_1EDF14810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14810);
  }

  return result;
}

unint64_t sub_1D5F9C518()
{
  result = qword_1EDF147F8;
  if (!qword_1EDF147F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF147F8);
  }

  return result;
}

unint64_t sub_1D5F9C56C()
{
  result = qword_1EC881D50;
  if (!qword_1EC881D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D50);
  }

  return result;
}

void sub_1D5F9C5C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D5F9C628()
{
  v0 = sub_1D72641CC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D5F9C710(uint64_t a1)
{
  nullsub_1(a1);
}

void sub_1D5F9C7A8()
{
  if (!qword_1EDF056C0)
  {
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF056C0);
    }
  }
}

BOOL sub_1D5F9C82C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v2 + 24);
  v4 = v3(v1, v2);
  return v3(v1, v2) < v4;
}

double sub_1D5F9C8BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 32);
  v9 = (*(*(v3 + 24) + 24))(v7);
  v10 = pow(1.0 - v8, a2);
  (*(*(v7 - 8) + 16))(a1, a3, v7);
  return v9 * v10;
}

unint64_t sub_1D5F9C9B0()
{
  result = qword_1EC881D60;
  if (!qword_1EC881D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D60);
  }

  return result;
}

unint64_t sub_1D5F9CA08()
{
  result = qword_1EC881D68;
  if (!qword_1EC881D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D68);
  }

  return result;
}

unint64_t sub_1D5F9CA60()
{
  result = qword_1EC881D70;
  if (!qword_1EC881D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D70);
  }

  return result;
}

uint64_t SetPuzzleStreakEligibleHandler.__allocating_init(historyService:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1D5B7DDE8(a1, v2 + 16);
  return v2;
}

uint64_t SetPuzzleStreakEligibleHandler.handle(commandCenter:command:with:source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[5];
  v7 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v6);
  return (*(v7 + 48))(a4, v6, v7);
}

uint64_t SetPuzzleStreakEligibleHandler.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D5F9CBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  v6 = *(*v4 + 40);
  v7 = *(*v4 + 48);
  __swift_project_boxed_opaque_existential_1((*v4 + 16), v6);
  return (*(v7 + 48))(v5, v6, v7);
}

uint64_t _s8NewsFeed30SetPuzzleStreakEligibleHandlerC9canHandle13commandCenter0J04with6sourceSb5TeaUI07CommandK4Type_p_AI0P0CySo17FCPuzzleProviding_pGSoAM_pAI0P15ExecutionSourceCSgtF_0()
{
  v0 = sub_1D725E87C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D72596FC();
  sub_1D72596DC();
  sub_1D725950C();
  sub_1D72596CC();

  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == *MEMORY[0x1E69D8000])
  {
    v6 = 0;
  }

  else
  {
    v7 = v5;
    v8 = *MEMORY[0x1E69D8008];
    v9 = *MEMORY[0x1E69D8010];
    sub_1D725A9FC();
    v6 = sub_1D725A9CC();
    if (v7 != v8 && v7 != v9)
    {
      (*(v1 + 8))(v4, v0);
    }
  }

  return v6 & 1;
}

void *sub_1D5F9CDD4(void *a1)
{
  v34 = *(v1 + 40);
  v35 = *(v1 + 32);
  v4 = *(v1 + 48);
  v32 = *(v1 + 56);
  v33 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  v8 = *(v1 + 96);
  v37 = *v1;
  v39 = *(v1 + 8);
  v40 = *(v1 + 16);
  v41 = *(v1 + 24);
  sub_1D5FB995C(*v1, v39, v40, v41);
  v9 = sub_1D61DF5BC(a1);
  v11 = v10;
  sub_1D5FBA070(v37, v39, v40, v41);
  if (!v2)
  {
    v30 = a1;
    v31 = v11;
    if (v4 >> 8 <= 0xFE)
    {
      v38 = v35;
      sub_1D5F586A4(v35, v34, v4, SBYTE1(v4));
      v36 = sub_1D693A514(a1);
      sub_1D5F5816C(v38, v34, v4, SBYTE1(v4));
    }

    else
    {
      v36 = 0;
    }

    sub_1D5E04CC4(v5);
    sub_1D725A7EC();
    v12 = FormatBoolean.value(contextLayoutOptions:)(v42);

    sub_1D5D2F2C4(v5, v6, v7);
    v13 = v9;
    if (v12)
    {
      v14 = objc_opt_self();
      if (v36)
      {
        v15 = v36;
        v16 = sub_1D726203C();
        a1 = [v14 ts:v16 internalSystemImageNamed:v15 withConfiguration:?];
      }

      else
      {
        v15 = sub_1D726203C();
        a1 = [v14 ts:v15 internalSystemImageNamed:?];
      }

      v19 = v33;
LABEL_18:
      v23 = v8;
      v24 = v8;
      if ((~v8 & 0xF000000000000007) == 0)
      {
        if ((~v32 & 0xF000000000000007) == 0)
        {
          goto LABEL_24;
        }

        v24 = swift_allocObject();
        sub_1D5FBA108();
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_1D7270C10;
        *(v25 + 32) = v32;
        *(v25 + 40) = v19;
        *(v24 + 16) = v25;

        v23 = v8;
      }

      if (!a1)
      {
        sub_1D5FB99FC(v23);
        sub_1D5FBA158(v24);
        goto LABEL_26;
      }

      sub_1D5FB99FC(v23);
      v26 = FormatSymbolImageColor.symbolConfiguration(context:)(v30);
      v27 = [a1 imageByApplyingSymbolConfiguration_];
      sub_1D5FBA158(v24);

      a1 = v27;
LABEL_24:
      if (a1)
      {

        return a1;
      }

LABEL_26:
      type metadata accessor for FormatLayoutError();
      sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      *v28 = v13;
      v28[1] = v31;
      v28[2] = v36;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return a1;
    }

    if (v36)
    {
      v17 = v36;

      v18 = sub_1D61E05F4();
      v19 = v33;
      if (v18 == 13)
      {
        v20 = sub_1D726203C();
        v21 = [objc_opt_self() systemImageNamed:v20 withConfiguration:v17];
      }

      else
      {
        v20 = sub_1D61E0640(v18);
        v21 = [v20 imageWithConfiguration_];
      }

      a1 = v21;
    }

    else
    {

      v22 = sub_1D61E05F4();
      v19 = v33;
      if (v22 != 13)
      {
        a1 = sub_1D61E0640(v22);
        goto LABEL_18;
      }

      v17 = sub_1D726203C();
      a1 = [objc_opt_self() systemImageNamed_];
    }

    goto LABEL_18;
  }

  return a1;
}

uint64_t sub_1D5F9D31C(uint64_t a1, char a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v6 = v5();
    v7 = *(*(v6 + 40) + 16);
    swift_beginAccess();
    if (*(*(v7 + 16) + 16))
    {
      v12 = *(v6 + 56);

      v9 = sub_1D6F622E0(v8);
      sub_1D5B886D0(v9);

      v10 = v12;
    }

    else
    {
      v10 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1ACC(v10, a2 & 1, a3);
  }

  return a2 & 1;
}

double sub_1D5F9D460(double a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v6 = v5();
    v7 = *(*(v6 + 40) + 16);
    swift_beginAccess();
    if (*(*(v7 + 16) + 16))
    {
      v13 = *(v6 + 56);

      v9 = sub_1D6F622E0(v8);
      sub_1D5B886D0(v9);

      v10 = v13;
    }

    else
    {
      v10 = sub_1D6E46E28();
    }

    sub_1D5FA1CE4(v10, a3);
    a1 = v11;
  }

  return a1;
}

uint64_t sub_1D5F9D564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v6 = v5();
    v7 = *(*(v6 + 40) + 16);
    swift_beginAccess();
    if (*(*(v7 + 16) + 16))
    {
      v12 = *(v6 + 56);

      v9 = sub_1D6F622E0(v8);
      sub_1D5B886D0(v9);

      v10 = v12;
    }

    else
    {
      v10 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1B60(v10, a2, a3);
  }

  return a2;
}

uint64_t sub_1D5F9D660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v7 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v8 = v7();
    v9 = *(*(v8 + 40) + 16);
    swift_beginAccess();
    if (*(*(v9 + 16) + 16))
    {
      v14 = *(v8 + 56);

      v11 = sub_1D6F622E0(v10);
      sub_1D5B886D0(v11);

      v12 = v14;
    }

    else
    {
      v12 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1BF4(v12, a2, a3, a4);
  }

  else
  {
  }

  return a2;
}

uint64_t sub_1D5F9D7C8@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(void, uint64_t, uint64_t (*)())@<X2>, uint64_t (*a3)(void)@<X3>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X8>)
{
  if (*(*(v5 + *(a2(0, a1, type metadata accessor for FormatSelectorValue) + 36)) + 16))
  {
    v9 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v10 = v9();
    v11 = *(*(v10 + 40) + 16);
    swift_beginAccess();
    if (*(*(v11 + 16) + 16))
    {
      v18 = *(v10 + 56);

      v13 = sub_1D6F622E0(v12);
      sub_1D5B886D0(v13);

      v14 = v18;
    }

    else
    {
      v14 = sub_1D6E46E28();
    }

    a4(v14);
  }

  else
  {
    v15 = a3(0);
    v16 = *(*(v15 - 8) + 16);

    return v16(a5, v5, v15);
  }
}

uint64_t sub_1D5F9D964@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  if (*(a2 + 16))
  {
    v6 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v7 = v6();
    v8 = *(*(v7 + 40) + 16);
    swift_beginAccess();
    if (*(*(v8 + 16) + 16))
    {
      v13 = *(v7 + 56);

      v10 = sub_1D6F622E0(v9);
      sub_1D5B886D0(v10);

      v11 = v13;
    }

    else
    {
      v11 = sub_1D6E46E28();
    }

    sub_1D5FA2770(v11, a1, a2, a3);
  }

  else
  {
    *a3 = a1;
  }
}

uint64_t sub_1D5F9DA9C(uint64_t a1, char a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = off_1F51B1B90();
    v6 = *(*(v5 + 40) + 16);
    swift_beginAccess();
    if (*(*(v6 + 16) + 16))
    {
      v11 = *(v5 + 56);

      v8 = sub_1D6F622E0(v7);
      sub_1D5B886D0(v8);

      v9 = v11;
    }

    else
    {
      v9 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1ACC(v9, a2 & 1, a3);
  }

  return a2 & 1;
}

double sub_1D5F9DBF8(double a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = off_1F51B1B90();
    v6 = *(*(v5 + 40) + 16);
    swift_beginAccess();
    if (*(*(v6 + 16) + 16))
    {
      v12 = *(v5 + 56);

      v8 = sub_1D6F622E0(v7);
      sub_1D5B886D0(v8);

      v9 = v12;
    }

    else
    {
      v9 = sub_1D6E46E28();
    }

    sub_1D5FA1CE4(v9, a3);
    a1 = v10;
  }

  return a1;
}

uint64_t sub_1D5F9DD0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = off_1F51B1B90();
    v6 = *(*(v5 + 40) + 16);
    swift_beginAccess();
    if (*(*(v6 + 16) + 16))
    {
      v11 = *(v5 + 56);

      v8 = sub_1D6F622E0(v7);
      sub_1D5B886D0(v8);

      v9 = v11;
    }

    else
    {
      v9 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1B60(v9, a2, a3);
  }

  return a2;
}

uint64_t sub_1D5F9DE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v7 = off_1F51B1B90();
    v8 = *(*(v7 + 40) + 16);
    swift_beginAccess();
    if (*(*(v8 + 16) + 16))
    {
      v13 = *(v7 + 56);

      v10 = sub_1D6F622E0(v9);
      sub_1D5B886D0(v10);

      v11 = v13;
    }

    else
    {
      v11 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1BF4(v11, a2, a3, a4);
  }

  else
  {
  }

  return a2;
}

uint64_t sub_1D5F9DF98@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(void, uint64_t, uint64_t (*)())@<X2>, uint64_t (*a3)(void)@<X3>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X8>)
{
  if (*(*(v5 + *(a2(0, a1, type metadata accessor for FormatSelectorValue) + 36)) + 16))
  {
    v9 = off_1F51B1B90();
    v10 = *(*(v9 + 40) + 16);
    swift_beginAccess();
    if (*(*(v10 + 16) + 16))
    {
      v17 = *(v9 + 56);

      v12 = sub_1D6F622E0(v11);
      sub_1D5B886D0(v12);

      v13 = v17;
    }

    else
    {
      v13 = sub_1D6E46E28();
    }

    a4(v13);
  }

  else
  {
    v14 = a3(0);
    v15 = *(*(v14 - 8) + 16);

    return v15(a5, v5, v14);
  }
}

uint64_t sub_1D5F9E140@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (*(a2 + 16))
  {
    v6 = off_1F51B1B90();
    v7 = *(*(v6 + 40) + 16);
    swift_beginAccess();
    if (*(*(v7 + 16) + 16))
    {
      v12 = *(v6 + 56);

      v9 = sub_1D6F622E0(v8);
      sub_1D5B886D0(v9);

      v10 = v12;
    }

    else
    {
      v10 = sub_1D6E46E28();
    }

    sub_1D5FA3464(v10, a1, a2, sub_1D5FAE784, a3);
  }

  else
  {
    *a3 = a1;
  }
}

uint64_t sub_1D5F9E298(uint64_t a1, char a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = off_1F51B94D0[0];
    type metadata accessor for FormatNodeBinderContext();
    v6 = v5();
    v7 = *(*(v6 + 40) + 16);
    swift_beginAccess();
    if (*(*(v7 + 16) + 16))
    {
      v12 = *(v6 + 56);

      v9 = sub_1D6F622E0(v8);
      sub_1D5B886D0(v9);

      v10 = v12;
    }

    else
    {
      v10 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1ACC(v10, a2 & 1, a3);
  }

  return a2 & 1;
}

double sub_1D5F9E3DC(double a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = off_1F51B94D0[0];
    type metadata accessor for FormatNodeBinderContext();
    v6 = v5();
    v7 = *(*(v6 + 40) + 16);
    swift_beginAccess();
    if (*(*(v7 + 16) + 16))
    {
      v13 = *(v6 + 56);

      v9 = sub_1D6F622E0(v8);
      sub_1D5B886D0(v9);

      v10 = v13;
    }

    else
    {
      v10 = sub_1D6E46E28();
    }

    sub_1D5FA1CE4(v10, a3);
    a1 = v11;
  }

  return a1;
}

uint64_t sub_1D5F9E4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = off_1F51B94D0[0];
    type metadata accessor for FormatNodeBinderContext();
    v6 = v5();
    v7 = *(*(v6 + 40) + 16);
    swift_beginAccess();
    if (*(*(v7 + 16) + 16))
    {
      v12 = *(v6 + 56);

      v9 = sub_1D6F622E0(v8);
      sub_1D5B886D0(v9);

      v10 = v12;
    }

    else
    {
      v10 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1B60(v10, a2, a3);
  }

  return a2;
}

uint64_t sub_1D5F9E5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v7 = off_1F51B94D0[0];
    type metadata accessor for FormatNodeBinderContext();
    v8 = v7();
    v9 = *(*(v8 + 40) + 16);
    swift_beginAccess();
    if (*(*(v9 + 16) + 16))
    {
      v14 = *(v8 + 56);

      v11 = sub_1D6F622E0(v10);
      sub_1D5B886D0(v11);

      v12 = v14;
    }

    else
    {
      v12 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1BF4(v12, a2, a3, a4);
  }

  else
  {
  }

  return a2;
}

uint64_t sub_1D5F9E744@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(void, uint64_t, uint64_t (*)())@<X2>, uint64_t (*a3)(void)@<X3>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X8>)
{
  if (*(*(v5 + *(a2(0, a1, type metadata accessor for FormatSelectorValue) + 36)) + 16))
  {
    v9 = off_1F51B94D0[0];
    type metadata accessor for FormatNodeBinderContext();
    v10 = v9();
    v11 = *(*(v10 + 40) + 16);
    swift_beginAccess();
    if (*(*(v11 + 16) + 16))
    {
      v18 = *(v10 + 56);

      v13 = sub_1D6F622E0(v12);
      sub_1D5B886D0(v13);

      v14 = v18;
    }

    else
    {
      v14 = sub_1D6E46E28();
    }

    a4(v14);
  }

  else
  {
    v15 = a3(0);
    v16 = *(*(v15 - 8) + 16);

    return v16(a5, v5, v15);
  }
}

uint64_t sub_1D5F9E8E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (*(a2 + 16))
  {
    v6 = off_1F51B94D0[0];
    type metadata accessor for FormatNodeBinderContext();
    v7 = v6();
    v8 = *(*(v7 + 40) + 16);
    swift_beginAccess();
    if (*(*(v8 + 16) + 16))
    {
      v13 = *(v7 + 56);

      v10 = sub_1D6F622E0(v9);
      sub_1D5B886D0(v10);

      v11 = v13;
    }

    else
    {
      v11 = sub_1D6E46E28();
    }

    sub_1D5FA3464(v11, a1, a2, sub_1D5FAE784, a3);
  }

  else
  {
    *a3 = a1;
  }
}

uint64_t sub_1D5F9EA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v6 = v5();
    v7 = *(*(v6 + 40) + 16);
    swift_beginAccess();
    if (*(*(v7 + 16) + 16))
    {
      v12 = *(v6 + 56);

      v9 = sub_1D6F622E0(v8);
      sub_1D5B886D0(v9);

      v10 = v12;
    }

    else
    {
      v10 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA29C0(v10, a2, a3);
  }

  else
  {
  }

  return a2;
}

unint64_t sub_1D5F9EB60@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (*(a2 + 16))
  {
    v6 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v7 = v6();
    v8 = *(*(v7 + 40) + 16);
    swift_beginAccess();
    if (*(*(v8 + 16) + 16))
    {
      v13 = *(v7 + 56);

      v10 = sub_1D6F622E0(v9);
      sub_1D5B886D0(v10);

      v11 = v13;
    }

    else
    {
      v11 = sub_1D6E46E28();
    }

    sub_1D5FA2A94(v11, a1, a2, sub_1D5EB1500, sub_1D5EB1500, sub_1D5EB15C4, a3);
  }

  else
  {
    *a3 = a1;

    return sub_1D5EB1500(a1);
  }
}

uint64_t sub_1D5F9ED00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(uint64_t)@<X3>, void (*a4)(uint64_t, uint64_t, uint64_t)@<X4>, void *a5@<X8>)
{
  if (*(a2 + 16))
  {
    v8 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v9 = v8();
    v10 = *(*(v9 + 40) + 16);
    swift_beginAccess();
    if (*(*(v10 + 16) + 16))
    {
      v15 = *(v9 + 56);

      v12 = sub_1D6F622E0(v11);
      sub_1D5B886D0(v12);

      v13 = v15;
    }

    else
    {
      v13 = sub_1D6E46E28();
    }

    a4(v13, a1, a2);
  }

  else
  {
    *a5 = a1;

    return a3(a1);
  }
}

uint64_t sub_1D5F9EE44@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (*(a2 + 16))
  {
    v6 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v7 = v6();
    v8 = *(*(v7 + 40) + 16);
    swift_beginAccess();
    if (*(*(v8 + 16) + 16))
    {
      v13 = *(v7 + 56);

      v10 = sub_1D6F622E0(v9);
      sub_1D5B886D0(v10);

      v11 = v13;
    }

    else
    {
      v11 = sub_1D6E46E28();
    }

    sub_1D5FA2C00(v11, a1, a2, a3);
  }

  else
  {
    *a3 = a1;
  }
}

uint64_t sub_1D5F9EF7C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (*(a2 + 16))
  {
    v6 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v7 = v6();
    v8 = *(*(v7 + 40) + 16);
    swift_beginAccess();
    if (*(*(v8 + 16) + 16))
    {
      v13 = *(v7 + 56);

      v10 = sub_1D6F622E0(v9);
      sub_1D5B886D0(v10);

      v11 = v13;
    }

    else
    {
      v11 = sub_1D6E46E28();
    }

    sub_1D5FA2E6C(v11, a1, a2, a3);
  }

  else
  {
    *a3 = a1;
  }
}

uint64_t sub_1D5F9F0B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (*(a4 + 16))
  {
    v10 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v11 = v10();
    v12 = *(*(v11 + 40) + 16);
    swift_beginAccess();
    if (*(*(v12 + 16) + 16))
    {
      v17 = *(v11 + 56);

      v14 = sub_1D6F622E0(v13);
      sub_1D5B886D0(v14);

      v15 = v17;
    }

    else
    {
      v15 = sub_1D6E46E28();
    }

    sub_1D5FA2F94(v15, a1, a2, a3 & 1, a4, a5);
  }

  else
  {
    *a5 = a1;
    *(a5 + 8) = a2;
    *(a5 + 16) = a3 & 1;

    return sub_1D5E04CC4(a1);
  }
}

uint64_t sub_1D5F9F214@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (*(a2 + 16))
  {
    v6 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v7 = v6();
    v8 = *(*(v7 + 40) + 16);
    swift_beginAccess();
    if (*(*(v8 + 16) + 16))
    {
      v13 = *(v7 + 56);

      v10 = sub_1D6F622E0(v9);
      sub_1D5B886D0(v10);

      v11 = v13;
    }

    else
    {
      v11 = sub_1D6E46E28();
    }

    sub_1D5FA30E4(v11, a1, a2, a3);
  }

  else
  {
    *a3 = a1;
  }
}

uint64_t sub_1D5F9F394@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void (*a3)(uint64_t, uint64_t, uint64_t)@<X3>, _BYTE *a4@<X8>)
{
  if (*(a2 + 16))
  {
    v7 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v8 = v7();
    v9 = *(*(v8 + 40) + 16);
    swift_beginAccess();
    if (*(*(v9 + 16) + 16))
    {
      v14 = *(v8 + 56);

      v11 = sub_1D6F622E0(v10);
      sub_1D5B886D0(v11);

      v12 = v14;
    }

    else
    {
      v12 = sub_1D6E46E28();
    }

    a3(v12, a1, a2);
  }

  else
  {
    *a4 = a1;
  }

  return result;
}

uint64_t sub_1D5F9F4A8@<X0>(char a1@<W1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  if (*(a2 + 16))
  {
    v6 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v7 = v6();
    v8 = *(*(v7 + 40) + 16);
    swift_beginAccess();
    if (*(*(v8 + 16) + 16))
    {
      v13 = *(v7 + 56);

      v10 = sub_1D6F622E0(v9);
      sub_1D5B886D0(v10);

      v11 = v13;
    }

    else
    {
      v11 = sub_1D6E46E28();
    }

    sub_1D5FA33C8(v11, a1, a2, a3);
  }

  else
  {
    *a3 = a1;
  }

  return result;
}

uint64_t sub_1D5F9F5B4@<X0>(char a1@<W1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  if (*(a2 + 16))
  {
    v6 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v7 = v6();
    v8 = *(*(v7 + 40) + 16);
    swift_beginAccess();
    if (*(*(v8 + 16) + 16))
    {
      v13 = *(v7 + 56);

      v10 = sub_1D6F622E0(v9);
      sub_1D5B886D0(v10);

      v11 = v13;
    }

    else
    {
      v11 = sub_1D6E46E28();
    }

    sub_1D5FA3704(v11, a1 & 1, a2, a3);
  }

  else
  {
    *a3 = a1 & 1;
  }

  return result;
}

uint64_t sub_1D5F9F6DC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t *a4@<X8>)
{
  if (*(a2 + 16))
  {
    v8 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v9 = v8();
    v10 = *(*(v9 + 40) + 16);
    swift_beginAccess();
    if (*(*(v10 + 16) + 16))
    {
      v15 = *(v9 + 56);

      v12 = sub_1D6F622E0(v11);
      sub_1D5B886D0(v12);

      v13 = v15;
    }

    else
    {
      v13 = sub_1D6E46E28();
    }

    sub_1D5FA3464(v13, a1, a2, a3, a4);
  }

  else
  {
    *a4 = a1;
  }
}

uint64_t sub_1D5F9F81C(uint64_t a1, char a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = sub_1D6C4356C();
    v6 = *(*(v5 + 40) + 16);
    swift_beginAccess();
    if (*(*(v6 + 16) + 16))
    {
      v11 = *(v5 + 56);

      v8 = sub_1D6F622E0(v7);
      sub_1D5B886D0(v8);

      v9 = v11;
    }

    else
    {
      v9 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1ACC(v9, a2 & 1, a3);
  }

  return a2 & 1;
}

double sub_1D5F9F938(double a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = sub_1D6C4356C();
    v6 = *(*(v5 + 40) + 16);
    swift_beginAccess();
    if (*(*(v6 + 16) + 16))
    {
      v12 = *(v5 + 56);

      v8 = sub_1D6F622E0(v7);
      sub_1D5B886D0(v8);

      v9 = v12;
    }

    else
    {
      v9 = sub_1D6E46E28();
    }

    sub_1D5FA1CE4(v9, a3);
    a1 = v10;
  }

  return a1;
}

uint64_t sub_1D5F9FA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = sub_1D6C4356C();
    v6 = *(*(v5 + 40) + 16);
    swift_beginAccess();
    if (*(*(v6 + 16) + 16))
    {
      v11 = *(v5 + 56);

      v8 = sub_1D6F622E0(v7);
      sub_1D5B886D0(v8);

      v9 = v11;
    }

    else
    {
      v9 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1B60(v9, a2, a3);
  }

  return a2;
}

uint64_t sub_1D5F9FAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v7 = sub_1D6C4356C();
    v8 = *(*(v7 + 40) + 16);
    swift_beginAccess();
    if (*(*(v8 + 16) + 16))
    {
      v13 = *(v7 + 56);

      v10 = sub_1D6F622E0(v9);
      sub_1D5B886D0(v10);

      v11 = v13;
    }

    else
    {
      v11 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1BF4(v11, a2, a3, a4);
  }

  else
  {
  }

  return a2;
}

uint64_t sub_1D5F9FC18@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(void, uint64_t, uint64_t (*)())@<X2>, uint64_t (*a3)(void)@<X3>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X8>)
{
  if (*(*(v5 + *(a2(0, a1, type metadata accessor for FormatSelectorValue) + 36)) + 16))
  {
    v9 = sub_1D6C4356C();
    v10 = *(*(v9 + 40) + 16);
    swift_beginAccess();
    if (*(*(v10 + 16) + 16))
    {
      v17 = *(v9 + 56);

      v12 = sub_1D6F622E0(v11);
      sub_1D5B886D0(v12);

      v13 = v17;
    }

    else
    {
      v13 = sub_1D6E46E28();
    }

    a4(v13);
  }

  else
  {
    v14 = a3(0);
    v15 = *(*(v14 - 8) + 16);

    return v15(a5, v5, v14);
  }
}

uint64_t sub_1D5F9FD80@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (*(a2 + 16))
  {
    v6 = sub_1D6C4356C();
    v7 = *(*(v6 + 40) + 16);
    swift_beginAccess();
    if (*(*(v7 + 16) + 16))
    {
      v12 = *(v6 + 56);

      v9 = sub_1D6F622E0(v8);
      sub_1D5B886D0(v9);

      v10 = v12;
    }

    else
    {
      v10 = sub_1D6E46E28();
    }

    sub_1D5FA3464(v10, a1, a2, sub_1D5FAE784, a3);
  }

  else
  {
    *a3 = a1;
  }
}

uint64_t sub_1D5F9FE98@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (*(a2 + 16))
  {
    v6 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v7 = v6();
    v8 = *(*(v7 + 40) + 16);
    swift_beginAccess();
    if (*(*(v8 + 16) + 16))
    {
      v13 = *(v7 + 56);

      v10 = sub_1D6F622E0(v9);
      sub_1D5B886D0(v10);

      v11 = v13;
    }

    else
    {
      v11 = sub_1D6E46E28();
    }

    sub_1D5FA35D8(v11, a1, a2, a3);
  }

  else
  {
    *a3 = a1;
  }
}

uint64_t sub_1D5F9FFD0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (*(a2 + 16))
  {
    v6 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v7 = v6();
    v8 = *(*(v7 + 40) + 16);
    swift_beginAccess();
    if (*(*(v8 + 16) + 16))
    {
      v13 = *(v7 + 56);

      v10 = sub_1D6F622E0(v9);
      sub_1D5B886D0(v10);

      v11 = v13;
    }

    else
    {
      v11 = sub_1D6E46E28();
    }

    sub_1D5FA37A8(v11, a1, a2, a3);
  }

  else
  {
    *a3 = a1;
  }
}

uint64_t sub_1D5FA0108(uint64_t a1, char a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = off_1F513B080[0];
    type metadata accessor for FormatDecorationContext();
    v6 = v5();
    v7 = *(*(v6 + 40) + 16);
    swift_beginAccess();
    if (*(*(v7 + 16) + 16))
    {
      v12 = *(v6 + 56);

      v9 = sub_1D6F622E0(v8);
      sub_1D5B886D0(v9);

      v10 = v12;
    }

    else
    {
      v10 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1ACC(v10, a2 & 1, a3);
  }

  return a2 & 1;
}

double sub_1D5FA0248(double a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = off_1F513B080[0];
    type metadata accessor for FormatDecorationContext();
    v6 = v5();
    v7 = *(*(v6 + 40) + 16);
    swift_beginAccess();
    if (*(*(v7 + 16) + 16))
    {
      v13 = *(v6 + 56);

      v9 = sub_1D6F622E0(v8);
      sub_1D5B886D0(v9);

      v10 = v13;
    }

    else
    {
      v10 = sub_1D6E46E28();
    }

    sub_1D5FA1CE4(v10, a3);
    a1 = v11;
  }

  return a1;
}

uint64_t sub_1D5FA0348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = off_1F513B080[0];
    type metadata accessor for FormatDecorationContext();
    v6 = v5();
    v7 = *(*(v6 + 40) + 16);
    swift_beginAccess();
    if (*(*(v7 + 16) + 16))
    {
      v12 = *(v6 + 56);

      v9 = sub_1D6F622E0(v8);
      sub_1D5B886D0(v9);

      v10 = v12;
    }

    else
    {
      v10 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1B60(v10, a2, a3);
  }

  return a2;
}

uint64_t sub_1D5FA0440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v7 = off_1F513B080[0];
    type metadata accessor for FormatDecorationContext();
    v8 = v7();
    v9 = *(*(v8 + 40) + 16);
    swift_beginAccess();
    if (*(*(v9 + 16) + 16))
    {
      v14 = *(v8 + 56);

      v11 = sub_1D6F622E0(v10);
      sub_1D5B886D0(v11);

      v12 = v14;
    }

    else
    {
      v12 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1BF4(v12, a2, a3, a4);
  }

  else
  {
  }

  return a2;
}

uint64_t sub_1D5FA05A4@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(void, uint64_t, uint64_t (*)())@<X2>, uint64_t (*a3)(void)@<X3>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X8>)
{
  if (*(*(v5 + *(a2(0, a1, type metadata accessor for FormatSelectorValue) + 36)) + 16))
  {
    v9 = off_1F513B080[0];
    type metadata accessor for FormatDecorationContext();
    v10 = v9();
    v11 = *(*(v10 + 40) + 16);
    swift_beginAccess();
    if (*(*(v11 + 16) + 16))
    {
      v18 = *(v10 + 56);

      v13 = sub_1D6F622E0(v12);
      sub_1D5B886D0(v13);

      v14 = v18;
    }

    else
    {
      v14 = sub_1D6E46E28();
    }

    a4(v14);
  }

  else
  {
    v15 = a3(0);
    v16 = *(*(v15 - 8) + 16);

    return v16(a5, v5, v15);
  }
}

uint64_t sub_1D5FA073C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (*(a2 + 16))
  {
    v6 = off_1F513B080[0];
    type metadata accessor for FormatDecorationContext();
    v7 = v6();
    v8 = *(*(v7 + 40) + 16);
    swift_beginAccess();
    if (*(*(v8 + 16) + 16))
    {
      v13 = *(v7 + 56);

      v10 = sub_1D6F622E0(v9);
      sub_1D5B886D0(v10);

      v11 = v13;
    }

    else
    {
      v11 = sub_1D6E46E28();
    }

    sub_1D5FA3464(v11, a1, a2, sub_1D5FAE784, a3);
  }

  else
  {
    *a3 = a1;
  }
}

uint64_t sub_1D5FA0884@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (*(a2 + 16))
  {
    v6 = off_1F513B080[0];
    type metadata accessor for FormatDecorationContext();
    v7 = v6();
    v8 = *(*(v7 + 40) + 16);
    swift_beginAccess();
    if (*(*(v8 + 16) + 16))
    {
      v13 = *(v7 + 56);

      v10 = sub_1D6F622E0(v9);
      sub_1D5B886D0(v10);

      v11 = v13;
    }

    else
    {
      v11 = sub_1D6E46E28();
    }

    sub_1D5FA37A8(v11, a1, a2, a3);
  }

  else
  {
    *a3 = a1;
  }
}

uint64_t sub_1D5FA09B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (*(a2 + 16))
  {
    v6 = off_1F513B080[0];
    type metadata accessor for FormatDecorationContext();
    v7 = v6();
    v8 = *(*(v7 + 40) + 16);
    swift_beginAccess();
    if (*(*(v8 + 16) + 16))
    {
      v13 = *(v7 + 56);

      v10 = sub_1D6F622E0(v9);
      sub_1D5B886D0(v10);

      v11 = v13;
    }

    else
    {
      v11 = sub_1D6E46E28();
    }

    sub_1D5FA2C00(v11, a1, a2, a3);
  }

  else
  {
    *a3 = a1;
  }
}

uint64_t sub_1D5FA0AEC(uint64_t a1, char a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = *(a1 + 88);
    v6 = *(*(v5 + 40) + 16);
    swift_beginAccess();
    if (*(*(v6 + 16) + 16))
    {
      v11 = *(v5 + 56);

      v8 = sub_1D6F622E0(v7);
      sub_1D5B886D0(v8);
      v9 = v11;
    }

    else
    {
      v9 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1ACC(v9, a2 & 1, a3);
  }

  return a2 & 1;
}

double sub_1D5FA0BF0(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a2 + 16))
  {
    v5 = *(a1 + 88);
    v6 = *(*(v5 + 40) + 16);
    swift_beginAccess();
    if (*(*(v6 + 16) + 16))
    {
      v12 = *(v5 + 56);

      v8 = sub_1D6F622E0(v7);
      sub_1D5B886D0(v8);
      v9 = v12;
    }

    else
    {
      v9 = sub_1D6E46E28();
    }

    sub_1D5FA1CE4(v9, a2);
    a3 = v10;
  }

  return a3;
}

uint64_t sub_1D5FA0CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = *(a1 + 88);
    v6 = *(*(v5 + 40) + 16);
    swift_beginAccess();
    if (*(*(v6 + 16) + 16))
    {
      v11 = *(v5 + 56);

      v8 = sub_1D6F622E0(v7);
      sub_1D5B886D0(v8);
      v9 = v11;
    }

    else
    {
      v9 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1B60(v9, a2, a3);
  }

  return a2;
}

uint64_t sub_1D5FA0D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v7 = *(a1 + 88);
    v8 = *(*(v7 + 40) + 16);
    swift_beginAccess();
    if (*(*(v8 + 16) + 16))
    {
      v13 = *(v7 + 56);

      v10 = sub_1D6F622E0(v9);
      sub_1D5B886D0(v10);
      v11 = v13;
    }

    else
    {
      v11 = sub_1D6E46E28();
    }

    a2 = sub_1D5FA1BF4(v11, a2, a3, a4);
  }

  else
  {
  }

  return a2;
}

uint64_t sub_1D5FA0E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, uint64_t, uint64_t (*)())@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v9 = v6;
  if (*(*(v9 + *(a3(0, a2, type metadata accessor for FormatSelectorValue) + 36)) + 16))
  {
    v12 = *(*(*(a1 + 88) + 40) + 16);
    swift_beginAccess();
    if (*(*(v12 + 16) + 16))
    {

      v14 = sub_1D6F622E0(v13);
      sub_1D5B886D0(v14);
    }

    else
    {
      sub_1D6E46E28();
    }

    a5();
  }

  else
  {
    v15 = a4(0);
    v16 = *(*(v15 - 8) + 16);

    return v16(a6, v9, v15);
  }
}

uint64_t sub_1D5FA0FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a3 + 16))
  {
    v7 = *(a1 + 88);
    v8 = *(*(v7 + 40) + 16);
    swift_beginAccess();
    if (*(*(v8 + 16) + 16))
    {
      v13 = *(v7 + 56);

      v10 = sub_1D6F622E0(v9);
      sub_1D5B886D0(v10);
      v11 = v13;
    }

    else
    {
      v11 = sub_1D6E46E28();
    }

    sub_1D5FA3464(v11, a2, a3, sub_1D5FAE784, a4);
  }

  else
  {
    *a4 = a2;
  }
}

uint64_t sub_1D5FA10D8(uint64_t a1, char a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = *(a1 + 48);
    type metadata accessor for FormatVariableCollection();
    v6 = swift_allocObject();
    *(v6 + 16) = MEMORY[0x1E69E7CC8];
    type metadata accessor for FormatOptionCollection();
    swift_allocObject();
    v7 = sub_1D5D2488C(MEMORY[0x1E69E7CC0], v6);
    type metadata accessor for FormatContextLayoutOptions();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 24) = v5;
    *(inited + 32) = 0x3FF0000000000000;
    *(inited + 40) = v7;
    v9 = MEMORY[0x1E69E7CD0];
    *(inited + 48) = 0;
    *(inited + 56) = v9;
    v10 = *(v7 + 16);
    swift_beginAccess();
    if (*(*(v10 + 16) + 16))
    {
      v11 = sub_1D6F622E0(v9);
      sub_1D5B886D0(v11);
    }

    else
    {
      v9 = sub_1D6E46E28();

      swift_setDeallocating();
    }

    a2 = sub_1D5FA1ACC(v9, a2 & 1, a3);
  }

  return a2 & 1;
}

double sub_1D5FA1280(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a2 + 16))
  {
    v5 = *(a1 + 48);
    type metadata accessor for FormatVariableCollection();
    v6 = swift_allocObject();
    *(v6 + 16) = MEMORY[0x1E69E7CC8];
    type metadata accessor for FormatOptionCollection();
    swift_allocObject();
    v7 = sub_1D5D2488C(MEMORY[0x1E69E7CC0], v6);
    type metadata accessor for FormatContextLayoutOptions();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 24) = v5;
    *(inited + 32) = 0x3FF0000000000000;
    *(inited + 40) = v7;
    v9 = MEMORY[0x1E69E7CD0];
    *(inited + 48) = 0;
    *(inited + 56) = v9;
    v10 = *(v7 + 16);
    swift_beginAccess();
    if (*(*(v10 + 16) + 16))
    {
      v11 = sub_1D6F622E0(v9);
      sub_1D5B886D0(v11);
    }

    else
    {
      v9 = sub_1D6E46E28();

      swift_setDeallocating();
    }

    sub_1D5FA1CE4(v9, a2);
    a3 = v12;
  }

  return a3;
}

uint64_t sub_1D5FA13E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = *(a1 + 48);
    type metadata accessor for FormatVariableCollection();
    v6 = swift_allocObject();
    *(v6 + 16) = MEMORY[0x1E69E7CC8];
    type metadata accessor for FormatOptionCollection();
    swift_allocObject();
    v7 = sub_1D5D2488C(MEMORY[0x1E69E7CC0], v6);
    type metadata accessor for FormatContextLayoutOptions();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 24) = v5;
    *(inited + 32) = 0x3FF0000000000000;
    *(inited + 40) = v7;
    v9 = MEMORY[0x1E69E7CD0];
    *(inited + 48) = 0;
    *(inited + 56) = v9;
    v10 = *(v7 + 16);
    swift_beginAccess();
    if (*(*(v10 + 16) + 16))
    {
      v11 = sub_1D6F622E0(v9);
      sub_1D5B886D0(v11);
    }

    else
    {
      v9 = sub_1D6E46E28();

      swift_setDeallocating();
    }

    a2 = sub_1D5FA1B60(v9, a2, a3);
  }

  return a2;
}

uint64_t sub_1D5FA1540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v7 = *(a1 + 48);
    type metadata accessor for FormatVariableCollection();
    v8 = swift_allocObject();
    *(v8 + 16) = MEMORY[0x1E69E7CC8];
    type metadata accessor for FormatOptionCollection();
    swift_allocObject();
    v9 = sub_1D5D2488C(MEMORY[0x1E69E7CC0], v8);
    type metadata accessor for FormatContextLayoutOptions();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 24) = v7;
    *(inited + 32) = 0x3FF0000000000000;
    *(inited + 40) = v9;
    v11 = MEMORY[0x1E69E7CD0];
    *(inited + 48) = 0;
    *(inited + 56) = v11;
    v12 = *(v9 + 16);
    swift_beginAccess();
    if (*(*(v12 + 16) + 16))
    {
      v13 = sub_1D6F622E0(v11);
      sub_1D5B886D0(v13);
    }

    else
    {
      v11 = sub_1D6E46E28();

      swift_setDeallocating();
    }

    a2 = sub_1D5FA1BF4(v11, a2, a3, a4);
  }

  else
  {
  }

  return a2;
}

uint64_t sub_1D5FA170C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, uint64_t, uint64_t (*)())@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v9 = v6;
  if (*(*(v9 + *(a3(0, a2, type metadata accessor for FormatSelectorValue) + 36)) + 16))
  {
    v12 = *(a1 + 48);
    type metadata accessor for FormatVariableCollection();
    v13 = swift_allocObject();
    *(v13 + 16) = MEMORY[0x1E69E7CC8];
    type metadata accessor for FormatOptionCollection();
    swift_allocObject();
    v14 = sub_1D5D2488C(MEMORY[0x1E69E7CC0], v13);
    type metadata accessor for FormatContextLayoutOptions();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 24) = v12;
    *(inited + 32) = 0x3FF0000000000000;
    *(inited + 40) = v14;
    v16 = MEMORY[0x1E69E7CD0];
    *(inited + 48) = 0;
    *(inited + 56) = v16;
    v17 = *(v14 + 16);
    swift_beginAccess();
    if (*(*(v17 + 16) + 16))
    {
      v18 = sub_1D6F622E0(v16);
      sub_1D5B886D0(v18);
    }

    else
    {
      v16 = sub_1D6E46E28();

      swift_setDeallocating();
    }

    a5(v16);
  }

  else
  {
    v19 = a4(0);
    v20 = *(*(v19 - 8) + 16);

    return v20(a6, v9, v19);
  }
}

uint64_t sub_1D5FA1914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a3 + 16))
  {
    v7 = *(a1 + 48);
    type metadata accessor for FormatVariableCollection();
    v8 = swift_allocObject();
    *(v8 + 16) = MEMORY[0x1E69E7CC8];
    type metadata accessor for FormatOptionCollection();
    swift_allocObject();
    v9 = sub_1D5D2488C(MEMORY[0x1E69E7CC0], v8);
    type metadata accessor for FormatContextLayoutOptions();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 24) = v7;
    *(inited + 32) = 0x3FF0000000000000;
    *(inited + 40) = v9;
    v11 = MEMORY[0x1E69E7CD0];
    *(inited + 48) = 0;
    *(inited + 56) = v11;
    v12 = *(v9 + 16);
    swift_beginAccess();
    if (*(*(v12 + 16) + 16))
    {
      v13 = sub_1D6F622E0(v11);
      sub_1D5B886D0(v13);
    }

    else
    {
      v11 = sub_1D6E46E28();

      swift_setDeallocating();
    }

    sub_1D5FA3464(v11, a2, a3, sub_1D5FAE784, a4);
  }

  else
  {
    *a4 = a2;
  }
}

uint64_t sub_1D5FA1ACC(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 48);
    do
    {
      v7 = *v6;
      v9 = *(v6 - 2);
      v8 = *(v6 - 1);

      v10 = sub_1D5FAC504(a1, v9, v8, v7);

      if (v10 != 2)
      {
        a2 = v10;
      }

      v6 += 24;
      --v4;
    }

    while (v4);
  }

  return a2 & 1;
}

uint64_t sub_1D5FA1B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 48);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v9 = *(v6 - 2);

      v10 = sub_1D5FAB9E0(a1, v9, v8, v7);
      LOBYTE(v9) = v11;

      if ((v9 & 1) == 0)
      {
        a2 = v10;
      }

      v6 += 3;
      --v4;
    }

    while (v4);
  }

  return a2;
}

uint64_t sub_1D5FA1BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  if (v5)
  {

    v8 = (a4 + 56);
    do
    {
      v11 = *(v8 - 1);
      v10 = *v8;
      v13 = *(v8 - 3);
      v12 = *(v8 - 2);

      v14 = sub_1D5FAAEB0(a1, v13, v12, v11, v10);
      if (v15)
      {
        v9 = v14;

        a2 = v9;
      }

      else
      {
      }

      v8 += 4;
      --v5;
    }

    while (v5);
  }

  else
  {
  }

  return a2;
}

uint64_t sub_1D5FA1CE4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = 0;
    v5 = a2 + 48;
LABEL_3:
    v6 = (v5 + 24 * v4);
    while (v2 != v4)
    {
      if (v4 >= v2)
      {
        __break(1u);
LABEL_11:
        __break(1u);
        return result;
      }

      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_11;
      }

      v8 = *v6;
      v9 = *(v6 - 2);
      v10 = *(v6 - 1);

      sub_1D5FAD028(v3, v9, v10, v8);
      v12 = v11;

      ++v4;
      v6 += 3;
      if ((v12 & 1) == 0)
      {
        v4 = v7;
        goto LABEL_3;
      }
    }
  }

  return result;
}

uint64_t sub_1D5FA1DB8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v40 = a1;
  sub_1D5B7B320(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = (&v33 - v7);
  sub_1D5CF49AC(0, &qword_1EDF3A6E0, type metadata accessor for FormatSelectorValueSelector);
  v39 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v33 - v11;
  v13 = sub_1D72585BC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v33 - v20;
  sub_1D5CF49AC(0, &qword_1EDF40040, type metadata accessor for FormatSelectorValue);
  v23 = *(v3 + *(v22 + 36));
  v24 = *(v14 + 16);
  v38 = *(v23 + 16);
  if (v38)
  {
    v36 = v17;
    v37 = v23;
    v33 = a2;
    v34 = v24;
    v35 = v14 + 16;
    result = (v24)(v21, v3, v13);
    v26 = 0;
    v27 = (v14 + 48);
    v28 = (v14 + 32);
    v29 = (v14 + 8);
    while (v26 < *(v37 + 16))
    {
      sub_1D5FB9F78(v37 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v26, v12, &qword_1EDF3A6E0, sub_1D5CF49AC);
      sub_1D5FADB50(v40, &qword_1EDF3A6E0, sub_1D5CF49AC, MEMORY[0x1E6968FB0], v8);
      v32 = *v27;
      if ((*v27)(v8, 1, v13) == 1)
      {
        v30 = v36;
        v34(v36, v21, v13);
        if (v32(v8, 1, v13) != 1)
        {
          sub_1D5B87964(v8, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        }
      }

      else
      {
        v30 = v36;
        (*v28)(v36, v8, v13);
      }

      ++v26;
      sub_1D5FB9FF8(v12, &qword_1EDF3A6E0, sub_1D5CF49AC);
      (*v29)(v21, v13);
      v31 = *v28;
      result = (*v28)(v21, v30, v13);
      if (v38 == v26)
      {
        return (v31)(v33, v21, v13);
      }
    }

    __break(1u);
  }

  else
  {

    return (v24)(a2, v3, v13);
  }

  return result;
}

uint64_t sub_1D5FA21FC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v40 = a1;
  sub_1D5B7B320(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = (&v33 - v7);
  sub_1D5FB9EDC(0, &qword_1EDF3A6D0, type metadata accessor for FormatSelectorValueSelector);
  v39 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v33 - v11;
  v13 = sub_1D725891C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v33 - v20;
  sub_1D5FB9EDC(0, &qword_1EDF40030, type metadata accessor for FormatSelectorValue);
  v23 = *(v3 + *(v22 + 36));
  v24 = *(v14 + 16);
  v38 = *(v23 + 16);
  if (v38)
  {
    v36 = v17;
    v37 = v23;
    v33 = a2;
    v34 = v24;
    v35 = v14 + 16;
    result = (v24)(v21, v3, v13);
    v26 = 0;
    v27 = (v14 + 48);
    v28 = (v14 + 32);
    v29 = (v14 + 8);
    while (v26 < *(v37 + 16))
    {
      sub_1D5FB9F78(v37 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v26, v12, &qword_1EDF3A6D0, sub_1D5FB9EDC);
      sub_1D5FADB50(v40, &qword_1EDF3A6D0, sub_1D5FB9EDC, MEMORY[0x1E6969530], v8);
      v32 = *v27;
      if ((*v27)(v8, 1, v13) == 1)
      {
        v30 = v36;
        v34(v36, v21, v13);
        if (v32(v8, 1, v13) != 1)
        {
          sub_1D5B87964(v8, &qword_1EDF45B00, MEMORY[0x1E6969530]);
        }
      }

      else
      {
        v30 = v36;
        (*v28)(v36, v8, v13);
      }

      ++v26;
      sub_1D5FB9FF8(v12, &qword_1EDF3A6D0, sub_1D5FB9EDC);
      (*v29)(v21, v13);
      v31 = *v28;
      result = (*v28)(v21, v30, v13);
      if (v38 == v26)
      {
        return (v31)(v33, v21, v13);
      }
    }

    __break(1u);
  }

  else
  {

    return (v24)(a2, v3, v13);
  }

  return result;
}

unint64_t sub_1D5FA2640@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v4 = a2;
  v6 = *(a3 + 16);
  if (v6)
  {

    sub_1D5F33D5C(v4);
    v9 = (a3 + 48);
    do
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v12 = *(v9 - 2);

      sub_1D5F33D5C(v10);
      sub_1D5FAF2C8(a1, v12, v11, v10, &v15);
      v13 = v15;
      if ((~v15 & 0xF000000000000007) == 0)
      {
        sub_1D5F33D5C(v4);
        v13 = v4;
      }

      v9 += 3;

      sub_1D5F33D8C(v10);
      sub_1D5F33D8C(v4);
      v4 = v13;
      --v6;
    }

    while (v6);

    *a4 = v13;
  }

  else
  {
    *a4 = a2;

    return sub_1D5F33D5C(a2);
  }

  return result;
}

uint64_t sub_1D5FA2770@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v4 = a2;
  v5 = *(a3 + 16);
  if (v5)
  {

    v8 = (a3 + 48);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v11 = *(v8 - 2);

      sub_1D5FAFE08(a1, v11, v10, v9, &v16);
      v12 = v16;
      v13 = ~v16 & 0xF000000000000007;

      if (v13)
      {

        v4 = v12;
      }

      v8 += 3;
      --v5;
    }

    while (v5);

    *a4 = v4;
  }

  else
  {
    *a4 = a2;
  }

  return result;
}

unint64_t sub_1D5FA2898@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v4 = a2;
  v6 = *(a3 + 16);
  if (v6)
  {
    sub_1D5DEA234(a2);
    v9 = (a3 + 48);
    do
    {
      v12 = *(v9 - 1);
      v11 = *v9;
      v13 = *(v9 - 2);

      sub_1D5DEA234(v11);
      sub_1D5FB14CC(a1, v13, v12, v11, 3, sub_1D5DEA234, &v15);
      v14 = v15;
      if (v15 == 3)
      {
        sub_1D5DEA234(v4);
        v14 = v4;
      }

      v9 += 3;

      sub_1D5CBF568(v11);
      result = sub_1D5CBF568(v4);
      v4 = v14;
      --v6;
    }

    while (v6);
    *a4 = v14;
  }

  else
  {
    *a4 = a2;

    return sub_1D5DEA234(a2);
  }

  return result;
}

uint64_t sub_1D5FA29C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {

    v7 = (a3 + 48);
    do
    {
      v9 = *(v7 - 1);
      v10 = *v7;
      v11 = *(v7 - 2);

      v12 = sub_1D5FB094C(a1, v11, v9, v10);
      if (v12)
      {
        v8 = v12;

        a2 = v8;
      }

      else
      {
      }

      v7 += 3;
      --v4;
    }

    while (v4);
  }

  else
  {
  }

  return a2;
}

uint64_t sub_1D5FA2A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t (*a5)(uint64_t)@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t *a7@<X8>)
{
  v7 = a2;
  v8 = *(a3 + 16);
  if (v8)
  {

    a4(v7);
    v13 = (a3 + 48);
    do
    {
      v15 = *(v13 - 1);
      v14 = *v13;
      v16 = *(v13 - 2);

      a4(v14);
      sub_1D5FB14CC(a1, v16, v15, v14, 0xF000000000000007, a5, &v21);
      v17 = v21;
      if ((~v21 & 0xF000000000000007) == 0)
      {
        a4(v7);
        v17 = v7;
      }

      v13 += 3;

      a6(v14);
      a6(v7);
      v7 = v17;
      --v8;
    }

    while (v8);

    *a7 = v17;
  }

  else
  {
    *a7 = a2;

    return (a4)(a2);
  }

  return result;
}

uint64_t sub_1D5FA2C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = a2;
  v5 = *(a3 + 16);
  if (v5)
  {

    v8 = (a3 + 48);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v11 = *(v8 - 2);

      sub_1D5FB0A94(a1, v11, v10, v9, &v16);
      v12 = v16;
      v13 = ~v16 & 0xF000000000000007;

      if (v13)
      {

        v4 = v12;
      }

      v8 += 3;
      --v5;
    }

    while (v5);

    *a4 = v4;
  }

  else
  {
    *a4 = a2;
  }

  return result;
}

unint64_t sub_1D5FA2D28@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v4 = a2;
  v6 = *(a3 + 16);
  if (v6)
  {

    sub_1D5D0A57C(v4);
    v9 = (a3 + 48);
    do
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v12 = *(v9 - 2);

      sub_1D5D0A57C(v10);
      sub_1D5FB14CC(a1, v12, v11, v10, 2, sub_1D5D0A57C, &v15);
      v13 = v15;
      if (v15 == 2)
      {
        sub_1D5D0A57C(v4);
        v13 = v4;
      }

      v9 += 3;

      sub_1D5D0A58C(v10);
      sub_1D5D0A58C(v4);
      v4 = v13;
      --v6;
    }

    while (v6);

    *a4 = v13;
  }

  else
  {
    *a4 = a2;

    return sub_1D5D0A57C(a2);
  }

  return result;
}

uint64_t sub_1D5FA2E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = a2;
  v5 = *(a3 + 16);
  if (v5)
  {

    v8 = (a3 + 48);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v11 = *(v8 - 2);

      sub_1D5FB0BE4(a1, v11, v10, v9, &v16);
      v12 = v16;
      v13 = ~v16 & 0xF000000000000007;

      if (v13)
      {

        v4 = v12;
      }

      v8 += 3;
      --v5;
    }

    while (v5);

    *a4 = v4;
  }

  else
  {
    *a4 = a2;
  }

  return result;
}

uint64_t sub_1D5FA2F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v10 = *(a5 + 16);
  if (v10)
  {
    sub_1D5E04CC4(a2);
    v13 = a5 + 32;
    do
    {
      v15 = *(v13 + 16);
      v19[0] = *v13;
      v19[1] = v15;
      v20 = *(v13 + 32);
      sub_1D5FBA16C(v19, v17);
      sub_1D5FB0D34(a1, v17);
      v16 = v18;
      if (v18 == 255)
      {
        sub_1D5E04CC4(v8);
        sub_1D5FBA25C(v19);
        result = sub_1D5D2F2C4(v8, v7, v6 & 1);
      }

      else
      {
        sub_1D5FBA25C(v19);
        result = sub_1D5D2F2C4(v8, v7, v6 & 1);
        v8 = v17[0];
        v7 = v17[1];
        v6 = v16;
      }

      v13 += 40;
      --v10;
    }

    while (v10);
    *a6 = v8;
    *(a6 + 8) = v7;
    *(a6 + 16) = v6 & 1;
  }

  else
  {
    *a6 = a2;
    *(a6 + 8) = a3;
    *(a6 + 16) = a4 & 1;

    return sub_1D5E04CC4(a2);
  }

  return result;
}

uint64_t sub_1D5FA30E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = a2;
  v6 = *(a3 + 16);
  if (v6)
  {

    v9 = (a3 + 48);
    do
    {
      v11 = *(v9 - 1);
      v12 = *v9;
      v13 = *(v9 - 2);

      sub_1D5FB0E90(a1, v13, v11, v12, &v15);
      v14 = v15;
      if (v15)
      {

        v4 = v14;
      }

      else
      {
      }

      v9 += 3;
      --v6;
    }

    while (v6);
    *a4 = v4;
  }

  else
  {
    *a4 = a2;
  }

  return result;
}

uint64_t sub_1D5FA31F4@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = result;
    v8 = (a3 + 48);
    do
    {
      v10 = *(v8 - 2);
      v9 = *(v8 - 1);
      v11 = *v8;
      v8 += 24;

      sub_1D5FB0FDC(v7, v10, v9, v11, &v13);
      v12 = v13;

      if (v12 != 6)
      {
        a2 = v12;
      }

      --v6;
    }

    while (v6);
  }

  *a4 = a2;
  return result;
}

uint64_t sub_1D5FA3290@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = result;
    v8 = (a3 + 48);
    do
    {
      v10 = *(v8 - 2);
      v9 = *(v8 - 1);
      v11 = *v8;
      v8 += 24;

      sub_1D5FB1118(v7, v10, v9, v11, &v13);
      v12 = v13;

      if (v12 != 7)
      {
        a2 = v12;
      }

      --v6;
    }

    while (v6);
  }

  *a4 = a2;
  return result;
}

uint64_t sub_1D5FA332C@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = result;
    v8 = (a3 + 48);
    do
    {
      v10 = *(v8 - 2);
      v9 = *(v8 - 1);
      v11 = *v8;
      v8 += 24;

      sub_1D5FB1254(v7, v10, v9, v11, &v13);
      v12 = v13;

      if (v12 != 3)
      {
        a2 = v12;
      }

      --v6;
    }

    while (v6);
  }

  *a4 = a2;
  return result;
}

uint64_t sub_1D5FA33C8@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = result;
    v8 = (a3 + 48);
    do
    {
      v10 = *(v8 - 2);
      v9 = *(v8 - 1);
      v11 = *v8;
      v8 += 24;

      sub_1D5FB1390(v7, v10, v9, v11, &v13);
      v12 = v13;

      if (v12 != 4)
      {
        a2 = v12;
      }

      --v6;
    }

    while (v6);
  }

  *a4 = a2;
  return result;
}

uint64_t sub_1D5FA3464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, void *a5@<X8>)
{
  v5 = a2;
  v6 = *(a3 + 16);
  if (v6)
  {

    v10 = (a3 + 48);
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      v13 = *(v10 - 2);

      a4(&v18, a1, v13, v12, v11);
      v14 = v18;
      v15 = ~v18 & 0xF000000000000007;

      if (v15)
      {

        v5 = v14;
      }

      v10 += 3;
      --v6;
    }

    while (v6);

    *a5 = v5;
  }

  else
  {
    *a5 = a2;
  }

  return result;
}

uint64_t sub_1D5FA35D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = a2;
  v5 = *(a3 + 16);
  if (v5)
  {

    v8 = (a3 + 48);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v11 = *(v8 - 2);

      sub_1D5FB162C(a1, v11, v10, v9, &v16);
      v12 = v16;
      v13 = ~v16 & 0xF000000000000007;

      if (v13)
      {

        v4 = v12;
      }

      v8 += 3;
      --v5;
    }

    while (v5);

    *a4 = v4;
  }

  else
  {
    *a4 = a2;
  }

  return result;
}

uint64_t sub_1D5FA3704@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = result;
    v8 = (a3 + 48);
    do
    {
      v9 = *v8;
      v11 = *(v8 - 2);
      v10 = *(v8 - 1);

      sub_1D5FB177C(v7, v11, v10, v9, &v13);
      v12 = v13;

      if (v12 != 2)
      {
        a2 = v12;
      }

      v8 += 24;
      --v6;
    }

    while (v6);
  }

  *a4 = a2 & 1;
  return result;
}

uint64_t sub_1D5FA37A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = a2;
  v5 = *(a3 + 16);
  if (v5)
  {

    v8 = (a3 + 48);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v11 = *(v8 - 2);

      sub_1D5FB18C4(a1, v11, v10, v9, &v16);
      v12 = v16;
      v13 = ~v16 & 0xF000000000000007;

      if (v13)
      {

        v4 = v12;
      }

      v8 += 3;
      --v5;
    }

    while (v5);

    *a4 = v4;
  }

  else
  {
    *a4 = a2;
  }

  return result;
}

uint64_t sub_1D5FA38D0(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 61;
  if ((a3 >> 61) <= 2)
  {
    if (!v4)
    {
      v18 = *(a3 + 16);
      v19 = *(a3 + 24);
      v20 = swift_allocObject();
      *(v20 + 16) = a1;
      *(v20 + 24) = v18;
      *(v20 + 32) = v19;
      v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v42 = sub_1D5FBB18C;
      v43 = v20;
      v38 = MEMORY[0x1E69E9820];
      v39 = 1107296256;
      v9 = &block_descriptor_208;
      goto LABEL_16;
    }

    if (v4 == 1)
    {
      v5 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      *(v7 + 24) = v6;
      *(v7 + 32) = a1;
      v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v42 = sub_1D5FBB188;
      v43 = v7;
      v38 = MEMORY[0x1E69E9820];
      v39 = 1107296256;
      v9 = &block_descriptor_201;
LABEL_16:
      v40 = sub_1D6E0CD34;
      v41 = v9;
      v15 = _Block_copy(&v38);
      v36 = a1;
      v33 = [v8 initWithDynamicProvider_];
      goto LABEL_17;
    }

    v28 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v27 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v30 = swift_allocObject();
    v30[2] = a1;
    v30[3] = v28;
    v30[4] = v27;
    v30[5] = a2;
    v31 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v42 = sub_1D5FBA6C8;
    v43 = v30;
    v38 = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_1D6E0CD34;
    v41 = &block_descriptor_194;
    v15 = _Block_copy(&v38);

    v32 = a1;
    v17 = v31;
LABEL_11:
    v33 = [v17 initWithDynamicProvider_];
LABEL_17:
    v25 = v33;
    v26 = v15;
    goto LABEL_18;
  }

  if (v4 == 3)
  {
    v21 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    v23 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v42 = sub_1D5FBB254;
    v43 = v22;
    v38 = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_1D6E0CD34;
    v41 = &block_descriptor_188;
    v24 = _Block_copy(&v38);

    v25 = [v23 initWithDynamicProvider_];
    v26 = v24;
LABEL_18:
    _Block_release(v26);

    return v25;
  }

  if (v4 == 4)
  {
    v11 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v10 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v12 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = v11;
    *(v13 + 32) = v10;
    *(v13 + 40) = v12;
    v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v42 = sub_1D5FBB250;
    v43 = v13;
    v38 = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_1D6E0CD34;
    v41 = &block_descriptor_181;
    v15 = _Block_copy(&v38);

    v16 = a1;
    v17 = v14;
    goto LABEL_11;
  }

  if (a3 == 0xA000000000000000)
  {
    v35 = swift_allocObject();
    *(v35 + 16) = a1;
    v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v42 = sub_1D5FBB25C;
    v43 = v35;
    v38 = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v9 = &block_descriptor_222;
    goto LABEL_16;
  }

  if (a3 == 0xA000000000000008)
  {
    v34 = swift_allocObject();
    *(v34 + 16) = a1;
    v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v42 = sub_1D5FBB258;
    v43 = v34;
    v38 = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v9 = &block_descriptor_215;
    goto LABEL_16;
  }

  return sub_1D726355C();
}

uint64_t sub_1D5FA3E1C(void *a1, _OWORD *a2, unint64_t a3)
{
  v4 = a3 >> 61;
  if ((a3 >> 61) <= 2)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        v28 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v27 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v30 = swift_allocObject();
        v31 = a2[2];
        *(v30 + 88) = a2[3];
        v32 = a2[5];
        *(v30 + 104) = a2[4];
        *(v30 + 120) = v32;
        *(v30 + 136) = a2[6];
        v33 = a2[1];
        *(v30 + 40) = *a2;
        *(v30 + 56) = v33;
        *(v30 + 16) = a1;
        *(v30 + 24) = v28;
        *(v30 + 32) = v27;
        *(v30 + 72) = v31;
        v34 = objc_allocWithZone(MEMORY[0x1E69DC888]);
        aBlock[4] = sub_1D5FBAB04;
        aBlock[5] = v30;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D6E0CD34;
        aBlock[3] = &block_descriptor_391;
        v35 = _Block_copy(aBlock);

        v36 = a1;
        sub_1D5D056DC(a2, &v41);
        v25 = [v34 initWithDynamicProvider_];
        _Block_release(v35);
LABEL_18:

        return v25;
      }

      v5 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      *(v7 + 24) = v6;
      *(v7 + 32) = a1;
      v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v45 = sub_1D5FBB188;
      v46 = v7;
      v41 = MEMORY[0x1E69E9820];
      v42 = 1107296256;
      v9 = &block_descriptor_398;
    }

    else
    {
      v18 = *(a3 + 16);
      v19 = *(a3 + 24);
      v20 = swift_allocObject();
      *(v20 + 16) = a1;
      *(v20 + 24) = v18;
      *(v20 + 32) = v19;
      v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v45 = sub_1D5FBB18C;
      v46 = v20;
      v41 = MEMORY[0x1E69E9820];
      v42 = 1107296256;
      v9 = &block_descriptor_405;
    }

    goto LABEL_15;
  }

  if (v4 == 3)
  {
    v21 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    v23 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v45 = sub_1D5FBB254;
    v46 = v22;
    v41 = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1D6E0CD34;
    v44 = &block_descriptor_385;
    v24 = _Block_copy(&v41);

    v25 = [v23 initWithDynamicProvider_];
    v26 = v24;
LABEL_17:
    _Block_release(v26);
    goto LABEL_18;
  }

  if (v4 == 4)
  {
    v11 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v10 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v12 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = v11;
    *(v13 + 32) = v10;
    *(v13 + 40) = v12;
    v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v45 = sub_1D5FBB250;
    v46 = v13;
    v41 = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1D6E0CD34;
    v44 = &block_descriptor_378;
    v15 = _Block_copy(&v41);

    v16 = a1;
    v17 = [v14 initWithDynamicProvider_];
LABEL_16:
    v25 = v17;
    v26 = v15;
    goto LABEL_17;
  }

  if (a3 == 0xA000000000000000)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = a1;
    v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v45 = sub_1D5FBB25C;
    v46 = v38;
    v41 = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v9 = &block_descriptor_419;
    goto LABEL_15;
  }

  if (a3 == 0xA000000000000008)
  {
    v37 = swift_allocObject();
    *(v37 + 16) = a1;
    v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v45 = sub_1D5FBB258;
    v46 = v37;
    v41 = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v9 = &block_descriptor_412;
LABEL_15:
    v43 = sub_1D6E0CD34;
    v44 = v9;
    v15 = _Block_copy(&v41);
    v39 = a1;
    v17 = [v8 initWithDynamicProvider_];
    goto LABEL_16;
  }

  return sub_1D726355C();
}

uint64_t sub_1D5FA43B0(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 61;
  if ((a3 >> 61) <= 2)
  {
    if (!v4)
    {
      v18 = *(a3 + 16);
      v19 = *(a3 + 24);
      v20 = swift_allocObject();
      *(v20 + 16) = a1;
      *(v20 + 24) = v18;
      *(v20 + 32) = v19;
      v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v42 = sub_1D5FBB18C;
      v43 = v20;
      v38 = MEMORY[0x1E69E9820];
      v39 = 1107296256;
      v9 = &block_descriptor_142;
      goto LABEL_16;
    }

    if (v4 == 1)
    {
      v5 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      *(v7 + 24) = v6;
      *(v7 + 32) = a1;
      v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v42 = sub_1D5FBB188;
      v43 = v7;
      v38 = MEMORY[0x1E69E9820];
      v39 = 1107296256;
      v9 = &block_descriptor_135;
LABEL_16:
      v40 = sub_1D6E0CD34;
      v41 = v9;
      v15 = _Block_copy(&v38);
      v36 = a1;
      v33 = [v8 initWithDynamicProvider_];
      goto LABEL_17;
    }

    v28 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v27 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v30 = swift_allocObject();
    v30[2] = a1;
    v30[3] = v28;
    v30[4] = v27;
    v30[5] = a2;
    v31 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v42 = sub_1D5FBA5A8;
    v43 = v30;
    v38 = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_1D6E0CD34;
    v41 = &block_descriptor_128;
    v15 = _Block_copy(&v38);

    v32 = a1;
    v17 = v31;
LABEL_11:
    v33 = [v17 initWithDynamicProvider_];
LABEL_17:
    v25 = v33;
    v26 = v15;
    goto LABEL_18;
  }

  if (v4 == 3)
  {
    v21 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    v23 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v42 = sub_1D5FBB254;
    v43 = v22;
    v38 = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_1D6E0CD34;
    v41 = &block_descriptor_122;
    v24 = _Block_copy(&v38);

    v25 = [v23 initWithDynamicProvider_];
    v26 = v24;
LABEL_18:
    _Block_release(v26);

    return v25;
  }

  if (v4 == 4)
  {
    v11 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v10 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v12 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = v11;
    *(v13 + 32) = v10;
    *(v13 + 40) = v12;
    v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v42 = sub_1D5FBB250;
    v43 = v13;
    v38 = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_1D6E0CD34;
    v41 = &block_descriptor_115;
    v15 = _Block_copy(&v38);

    v16 = a1;
    v17 = v14;
    goto LABEL_11;
  }

  if (a3 == 0xA000000000000000)
  {
    v35 = swift_allocObject();
    *(v35 + 16) = a1;
    v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v42 = sub_1D5FBB25C;
    v43 = v35;
    v38 = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v9 = &block_descriptor_156;
    goto LABEL_16;
  }

  if (a3 == 0xA000000000000008)
  {
    v34 = swift_allocObject();
    *(v34 + 16) = a1;
    v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v42 = sub_1D5FBB258;
    v43 = v34;
    v38 = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v9 = &block_descriptor_149;
    goto LABEL_16;
  }

  return sub_1D726355C();
}

uint64_t sub_1D5FA48FC(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for FormatOptionsNodeStatementContext();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v10 = a3 >> 61;
  if ((a3 >> 61) <= 2)
  {
    if (!v10)
    {
      v22 = *(a3 + 16);
      v23 = *(a3 + 24);
      v24 = swift_allocObject();
      *(v24 + 16) = a1;
      *(v24 + 24) = v22;
      *(v24 + 32) = v23;
      v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v45 = sub_1D5FBB18C;
      v46 = v24;
      aBlock = MEMORY[0x1E69E9820];
      v42 = 1107296256;
      v15 = &block_descriptor_340;
      goto LABEL_16;
    }

    if (v10 == 1)
    {
      v11 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      *(v13 + 24) = v12;
      *(v13 + 32) = a1;
      v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v45 = sub_1D5FBB188;
      v46 = v13;
      aBlock = MEMORY[0x1E69E9820];
      v42 = 1107296256;
      v15 = &block_descriptor_333;
LABEL_16:
      v43 = sub_1D6E0CD34;
      v44 = v15;
      v21 = _Block_copy(&aBlock);
      v39 = a1;
      v36 = [v14 initWithDynamicProvider_];
      goto LABEL_17;
    }

    v32 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v31 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5D286BC(a2, &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FormatOptionsNodeStatementContext);
    v33 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v34 = swift_allocObject();
    v34[2] = a1;
    v34[3] = v32;
    v34[4] = v31;
    sub_1D5FBA968(&aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33, type metadata accessor for FormatOptionsNodeStatementContext);
    v20 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v45 = sub_1D5FBA9D0;
    v46 = v34;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1D6E0CD34;
    v44 = &block_descriptor_326;
    v21 = _Block_copy(&aBlock);

LABEL_11:
    v35 = a1;
    v36 = [v20 initWithDynamicProvider_];
LABEL_17:
    v29 = v36;
    v30 = v21;
    goto LABEL_18;
  }

  if (v10 == 3)
  {
    v25 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    v27 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v45 = sub_1D5FBB254;
    v46 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1D6E0CD34;
    v44 = &block_descriptor_320;
    v28 = _Block_copy(&aBlock);

    v29 = [v27 initWithDynamicProvider_];
    v30 = v28;
LABEL_18:
    _Block_release(v30);

    return v29;
  }

  if (v10 == 4)
  {
    v17 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v16 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v18 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = v17;
    *(v19 + 32) = v16;
    *(v19 + 40) = v18;
    v20 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v45 = sub_1D5FBB250;
    v46 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1D6E0CD34;
    v44 = &block_descriptor_313;
    v21 = _Block_copy(&aBlock);

    goto LABEL_11;
  }

  if (a3 == 0xA000000000000000)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = a1;
    v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v45 = sub_1D5FBB25C;
    v46 = v38;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v15 = &block_descriptor_354;
    goto LABEL_16;
  }

  if (a3 == 0xA000000000000008)
  {
    v37 = swift_allocObject();
    *(v37 + 16) = a1;
    v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v45 = sub_1D5FBB258;
    v46 = v37;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v15 = &block_descriptor_347;
    goto LABEL_16;
  }

  return sub_1D726355C();
}

uint64_t sub_1D5FA4EF8(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for FormatDecorationContext();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v10 = a3 >> 61;
  if ((a3 >> 61) <= 2)
  {
    if (!v10)
    {
      v22 = *(a3 + 16);
      v23 = *(a3 + 24);
      v24 = swift_allocObject();
      *(v24 + 16) = a1;
      *(v24 + 24) = v22;
      *(v24 + 32) = v23;
      v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v45 = sub_1D5FBB18C;
      v46 = v24;
      aBlock = MEMORY[0x1E69E9820];
      v42 = 1107296256;
      v15 = &block_descriptor_274;
      goto LABEL_16;
    }

    if (v10 == 1)
    {
      v11 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      *(v13 + 24) = v12;
      *(v13 + 32) = a1;
      v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v45 = sub_1D5FBB188;
      v46 = v13;
      aBlock = MEMORY[0x1E69E9820];
      v42 = 1107296256;
      v15 = &block_descriptor_267;
LABEL_16:
      v43 = sub_1D6E0CD34;
      v44 = v15;
      v21 = _Block_copy(&aBlock);
      v39 = a1;
      v36 = [v14 initWithDynamicProvider_];
      goto LABEL_17;
    }

    v32 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v31 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5D286BC(a2, &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FormatDecorationContext);
    v33 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v34 = swift_allocObject();
    v34[2] = a1;
    v34[3] = v32;
    v34[4] = v31;
    sub_1D5FBA968(&aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33, type metadata accessor for FormatDecorationContext);
    v20 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v45 = sub_1D5FBA82C;
    v46 = v34;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1D6E0CD34;
    v44 = &block_descriptor_260;
    v21 = _Block_copy(&aBlock);

LABEL_11:
    v35 = a1;
    v36 = [v20 initWithDynamicProvider_];
LABEL_17:
    v29 = v36;
    v30 = v21;
    goto LABEL_18;
  }

  if (v10 == 3)
  {
    v25 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    v27 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v45 = sub_1D5FBB254;
    v46 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1D6E0CD34;
    v44 = &block_descriptor_254;
    v28 = _Block_copy(&aBlock);

    v29 = [v27 initWithDynamicProvider_];
    v30 = v28;
LABEL_18:
    _Block_release(v30);

    return v29;
  }

  if (v10 == 4)
  {
    v17 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v16 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v18 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = v17;
    *(v19 + 32) = v16;
    *(v19 + 40) = v18;
    v20 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v45 = sub_1D5FBB250;
    v46 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1D6E0CD34;
    v44 = &block_descriptor_247;
    v21 = _Block_copy(&aBlock);

    goto LABEL_11;
  }

  if (a3 == 0xA000000000000000)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = a1;
    v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v45 = sub_1D5FBB25C;
    v46 = v38;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v15 = &block_descriptor_288;
    goto LABEL_16;
  }

  if (a3 == 0xA000000000000008)
  {
    v37 = swift_allocObject();
    *(v37 + 16) = a1;
    v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v45 = sub_1D5FBB258;
    v46 = v37;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v15 = &block_descriptor_281;
    goto LABEL_16;
  }

  return sub_1D726355C();
}

uint64_t sub_1D5FA54F4(void *a1, _OWORD *a2, unint64_t a3)
{
  v4 = a3 >> 61;
  if ((a3 >> 61) <= 2)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        v28 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v27 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v30 = swift_allocObject();
        v31 = a2[3];
        *(v30 + 72) = a2[2];
        *(v30 + 88) = v31;
        v32 = a2[5];
        *(v30 + 104) = a2[4];
        *(v30 + 120) = v32;
        v33 = a2[1];
        *(v30 + 40) = *a2;
        *(v30 + 16) = a1;
        *(v30 + 24) = v28;
        *(v30 + 32) = v27;
        *(v30 + 56) = v33;
        v34 = objc_allocWithZone(MEMORY[0x1E69DC888]);
        aBlock[4] = sub_1D5FBA388;
        aBlock[5] = v30;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D6E0CD34;
        aBlock[3] = &block_descriptor_48;
        v35 = _Block_copy(aBlock);

        v36 = a1;
        sub_1D5FBA398(a2, &v41);
        v25 = [v34 initWithDynamicProvider_];
        _Block_release(v35);
LABEL_18:

        return v25;
      }

      v5 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      *(v7 + 24) = v6;
      *(v7 + 32) = a1;
      v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v45 = sub_1D5FBA3F4;
      v46 = v7;
      v41 = MEMORY[0x1E69E9820];
      v42 = 1107296256;
      v9 = &block_descriptor_54;
    }

    else
    {
      v18 = *(a3 + 16);
      v19 = *(a3 + 24);
      v20 = swift_allocObject();
      *(v20 + 16) = a1;
      *(v20 + 24) = v18;
      *(v20 + 32) = v19;
      v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v45 = sub_1D5FBA404;
      v46 = v20;
      v41 = MEMORY[0x1E69E9820];
      v42 = 1107296256;
      v9 = &block_descriptor_60;
    }

    goto LABEL_15;
  }

  if (v4 == 3)
  {
    v21 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    v23 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v45 = sub_1D5FBA380;
    v46 = v22;
    v41 = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1D6E0CD34;
    v44 = &block_descriptor_42;
    v24 = _Block_copy(&v41);

    v25 = [v23 initWithDynamicProvider_];
    v26 = v24;
LABEL_17:
    _Block_release(v26);
    goto LABEL_18;
  }

  if (v4 == 4)
  {
    v11 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v10 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v12 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = v11;
    *(v13 + 32) = v10;
    *(v13 + 40) = v12;
    v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v45 = sub_1D5FBA37C;
    v46 = v13;
    v41 = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1D6E0CD34;
    v44 = &block_descriptor_13;
    v15 = _Block_copy(&v41);

    v16 = a1;
    v17 = [v14 initWithDynamicProvider_];
LABEL_16:
    v25 = v17;
    v26 = v15;
    goto LABEL_17;
  }

  if (a3 == 0xA000000000000000)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = a1;
    v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v45 = sub_1D5FBA41C;
    v46 = v38;
    v41 = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v9 = &block_descriptor_72;
    goto LABEL_15;
  }

  if (a3 == 0xA000000000000008)
  {
    v37 = swift_allocObject();
    *(v37 + 16) = a1;
    v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v45 = sub_1D5FBA414;
    v46 = v37;
    v41 = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v9 = &block_descriptor_66;
LABEL_15:
    v43 = sub_1D6E0CD34;
    v44 = v9;
    v15 = _Block_copy(&v41);
    v39 = a1;
    v17 = [v8 initWithDynamicProvider_];
    goto LABEL_16;
  }

  return sub_1D726355C();
}

uint64_t sub_1D5FA5A80(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 61;
  if ((a3 >> 61) <= 2)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        v28 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v27 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v30 = swift_allocObject();
        v31 = *(a2 + 112);
        *(v30 + 136) = *(a2 + 96);
        *(v30 + 152) = v31;
        *(v30 + 168) = *(a2 + 128);
        v32 = *(a2 + 48);
        *(v30 + 72) = *(a2 + 32);
        *(v30 + 88) = v32;
        v33 = *(a2 + 80);
        *(v30 + 104) = *(a2 + 64);
        *(v30 + 120) = v33;
        v34 = *(a2 + 16);
        *(v30 + 40) = *a2;
        *(v30 + 16) = a1;
        *(v30 + 24) = v28;
        *(v30 + 32) = v27;
        *(v30 + 184) = *(a2 + 144);
        *(v30 + 56) = v34;
        v35 = objc_allocWithZone(MEMORY[0x1E69DC888]);
        v48[4] = sub_1D5FBAE0C;
        v48[5] = v30;
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 1107296256;
        v48[2] = sub_1D6E0CD34;
        v48[3] = &block_descriptor_457;
        v36 = _Block_copy(v48);

        v37 = a1;
        sub_1D5FBAE1C(a2, &aBlock);
        v25 = [v35 initWithDynamicProvider_];
        _Block_release(v36);
LABEL_18:

        return v25;
      }

      v5 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      *(v7 + 24) = v6;
      *(v7 + 32) = a1;
      v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v46 = sub_1D5FBB188;
      v47 = v7;
      aBlock = MEMORY[0x1E69E9820];
      v43 = 1107296256;
      v9 = &block_descriptor_464;
    }

    else
    {
      v18 = *(a3 + 16);
      v19 = *(a3 + 24);
      v20 = swift_allocObject();
      *(v20 + 16) = a1;
      *(v20 + 24) = v18;
      *(v20 + 32) = v19;
      v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v46 = sub_1D5FBB18C;
      v47 = v20;
      aBlock = MEMORY[0x1E69E9820];
      v43 = 1107296256;
      v9 = &block_descriptor_471;
    }

    goto LABEL_15;
  }

  if (v4 == 3)
  {
    v21 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    v23 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v46 = sub_1D5FBB254;
    v47 = v22;
    aBlock = MEMORY[0x1E69E9820];
    v43 = 1107296256;
    v44 = sub_1D6E0CD34;
    v45 = &block_descriptor_451;
    v24 = _Block_copy(&aBlock);

    v25 = [v23 initWithDynamicProvider_];
    v26 = v24;
LABEL_17:
    _Block_release(v26);
    goto LABEL_18;
  }

  if (v4 == 4)
  {
    v11 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v10 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v12 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = v11;
    *(v13 + 32) = v10;
    *(v13 + 40) = v12;
    v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v46 = sub_1D5FBB250;
    v47 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v43 = 1107296256;
    v44 = sub_1D6E0CD34;
    v45 = &block_descriptor_444;
    v15 = _Block_copy(&aBlock);

    v16 = a1;
    v17 = [v14 initWithDynamicProvider_];
LABEL_16:
    v25 = v17;
    v26 = v15;
    goto LABEL_17;
  }

  if (a3 == 0xA000000000000000)
  {
    v39 = swift_allocObject();
    *(v39 + 16) = a1;
    v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v46 = sub_1D5FBB25C;
    v47 = v39;
    aBlock = MEMORY[0x1E69E9820];
    v43 = 1107296256;
    v9 = &block_descriptor_485;
    goto LABEL_15;
  }

  if (a3 == 0xA000000000000008)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = a1;
    v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v46 = sub_1D5FBB258;
    v47 = v38;
    aBlock = MEMORY[0x1E69E9820];
    v43 = 1107296256;
    v9 = &block_descriptor_478;
LABEL_15:
    v44 = sub_1D6E0CD34;
    v45 = v9;
    v15 = _Block_copy(&aBlock);
    v40 = a1;
    v17 = [v8 initWithDynamicProvider_];
    goto LABEL_16;
  }

  return sub_1D726355C();
}

unint64_t sub_1D5FA6030@<X0>(_OWORD *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a2 >> 61;
  if ((a2 >> 61) <= 2)
  {
    if ((a2 >> 61) >= 2)
    {
      v7 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v9 = swift_allocObject();

      v10 = sub_1D5FB2C1C(a1, v7, &v29);
      if (!v3)
      {
        v21 = a1[5];
        v28[4] = a1[4];
        v28[5] = v21;
        v28[6] = a1[6];
        v22 = a1[1];
        v28[0] = *a1;
        v28[1] = v22;
        v24 = a1[2];
        v23 = a1[3];
        v25 = v29;
        v28[2] = v24;
        v28[3] = v23;
        MEMORY[0x1EEE9AC00](v10, v11);
        v27[2] = v28;
        v26 = sub_1D5EC95F8(sub_1D5FBB128, v27, v8);
        *(v9 + 16) = v25;
        *(v9 + 24) = v26;

        *a3 = v9 | 0x4000000000000000;
        return result;
      }

      return swift_deallocUninitializedObject();
    }

LABEL_9:
    *a3 = a2;
    return sub_1D5ECF0E0(a2);
  }

  if (v5 == 3)
  {
    v19 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v20 = swift_allocObject();

    sub_1D5FA74A4((v20 + 16), a1, v19);

    if (v3)
    {
      return swift_deallocUninitializedObject();
    }

    *a3 = v20 | 0x6000000000000000;
  }

  else
  {
    if (v5 != 4)
    {
      goto LABEL_9;
    }

    v13 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v14 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v15 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v16 = swift_allocObject();

    sub_1D5FA74A4(v28, a1, v13);

    if (v3)
    {
      return swift_deallocUninitializedObject();
    }

    *(v16 + 16) = *&v28[0];
    *(v16 + 24) = v14;
    *(v16 + 32) = v15;
    *a3 = v16 | 0x8000000000000000;
  }

  return result;
}

unint64_t sub_1D5FA62B4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *(*a3)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, void (*a5)(uint64_t *__return_ptr, unint64_t *, uint64_t *)@<X4>, void *a6@<X8>)
{
  v8 = a2 >> 61;
  if ((a2 >> 61) <= 2)
  {
    if ((a2 >> 61) >= 2)
    {
      v11 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v14 = swift_allocObject();

      v15 = a3(&v32, a1, v11);
      if (!v6)
      {
        v28 = v32;
        v31 = a1;
        MEMORY[0x1EEE9AC00](v15, v16);
        v30[2] = &v31;
        v29 = sub_1D5EC95F8(a5, v30, v12);
        *(v14 + 16) = v28;
        *(v14 + 24) = v29;

        *a6 = v14 | 0x4000000000000000;
        return result;
      }

      return swift_deallocUninitializedObject();
    }

LABEL_9:
    *a6 = a2;
    return sub_1D5ECF0E0(a2);
  }

  if (v8 == 3)
  {
    v25 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v27 = swift_allocObject();

    a4(a1, v25);

    if (v6)
    {
      return swift_deallocUninitializedObject();
    }

    *a6 = v27 | 0x6000000000000000;
  }

  else
  {
    if (v8 != 4)
    {
      goto LABEL_9;
    }

    v18 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v19 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v20 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v22 = swift_allocObject();

    (a4)(&v32, a1, v18);

    if (v6)
    {
      return swift_deallocUninitializedObject();
    }

    *(v22 + 16) = v32;
    *(v22 + 24) = v19;
    *(v22 + 32) = v20;
    *a6 = v22 | 0x8000000000000000;
  }

  return result;
}

unint64_t sub_1D5FA6530@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *(*a3)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, void (*a5)(uint64_t *__return_ptr, unint64_t *, uint64_t *)@<X4>, void *a6@<X8>)
{
  v8 = a2 >> 61;
  if ((a2 >> 61) <= 2)
  {
    if ((a2 >> 61) >= 2)
    {
      v11 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v14 = swift_allocObject();

      v15 = a3(&v31, a1, v11);
      if (!v6)
      {
        v28 = v31;
        MEMORY[0x1EEE9AC00](v15, v16);
        v30[2] = a1;
        v29 = sub_1D5EC95F8(a5, v30, v12);
        *(v14 + 16) = v28;
        *(v14 + 24) = v29;

        *a6 = v14 | 0x4000000000000000;
        return result;
      }

      return swift_deallocUninitializedObject();
    }

LABEL_9:
    *a6 = a2;
    return sub_1D5ECF0E0(a2);
  }

  if (v8 == 3)
  {
    v25 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v27 = swift_allocObject();

    a4(a1, v25);

    if (v6)
    {
      return swift_deallocUninitializedObject();
    }

    *a6 = v27 | 0x6000000000000000;
  }

  else
  {
    if (v8 != 4)
    {
      goto LABEL_9;
    }

    v18 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v19 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v20 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v22 = swift_allocObject();

    (a4)(&v31, a1, v18);

    if (v6)
    {
      return swift_deallocUninitializedObject();
    }

    *(v22 + 16) = v31;
    *(v22 + 24) = v19;
    *(v22 + 32) = v20;
    *a6 = v22 | 0x8000000000000000;
  }

  return result;
}

unint64_t sub_1D5FA67A0@<X0>(_OWORD *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a2 >> 61;
  if ((a2 >> 61) <= 2)
  {
    if ((a2 >> 61) >= 2)
    {
      v7 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v9 = swift_allocObject();

      v10 = sub_1D5FB3678(a1, v7, &v28);
      if (!v3)
      {
        v21 = v28;
        v22 = a1[3];
        v27[2] = a1[2];
        v27[3] = v22;
        v23 = a1[5];
        v27[4] = a1[4];
        v27[5] = v23;
        v24 = a1[1];
        v27[0] = *a1;
        v27[1] = v24;
        MEMORY[0x1EEE9AC00](v10, v11);
        v26[2] = v27;
        v25 = sub_1D5EC95F8(sub_1D5FBB068, v26, v8);
        *(v9 + 16) = v21;
        *(v9 + 24) = v25;

        *a3 = v9 | 0x4000000000000000;
        return result;
      }

      return swift_deallocUninitializedObject();
    }

LABEL_9:
    *a3 = a2;
    return sub_1D5ECF0E0(a2);
  }

  if (v5 == 3)
  {
    v19 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v20 = swift_allocObject();

    sub_1D5FA94D4((v20 + 16), a1, v19);

    if (v3)
    {
      return swift_deallocUninitializedObject();
    }

    *a3 = v20 | 0x6000000000000000;
  }

  else
  {
    if (v5 != 4)
    {
      goto LABEL_9;
    }

    v13 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v14 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v15 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v16 = swift_allocObject();

    sub_1D5FA94D4(v27, a1, v13);

    if (v3)
    {
      return swift_deallocUninitializedObject();
    }

    *(v16 + 16) = *&v27[0];
    *(v16 + 24) = v14;
    *(v16 + 32) = v15;
    *a3 = v16 | 0x8000000000000000;
  }

  return result;
}

unint64_t sub_1D5FA6A1C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a2 >> 61;
  if ((a2 >> 61) <= 2)
  {
    if ((a2 >> 61) >= 2)
    {
      v7 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v9 = swift_allocObject();

      v10 = sub_1D5FB3994(a1, v7, &v30);
      if (!v3)
      {
        v29 = *(a1 + 144);
        v21 = v30;
        v22 = *(a1 + 112);
        v28[6] = *(a1 + 96);
        v28[7] = v22;
        v28[8] = *(a1 + 128);
        v23 = *(a1 + 48);
        v28[2] = *(a1 + 32);
        v28[3] = v23;
        v24 = *(a1 + 80);
        v28[4] = *(a1 + 64);
        v28[5] = v24;
        v25 = *(a1 + 16);
        v28[0] = *a1;
        v28[1] = v25;
        MEMORY[0x1EEE9AC00](v10, v11);
        v27[2] = v28;
        v26 = sub_1D5EC95F8(sub_1D5FBB158, v27, v8);
        *(v9 + 16) = v21;
        *(v9 + 24) = v26;

        *a3 = v9 | 0x4000000000000000;
        return result;
      }

      return swift_deallocUninitializedObject();
    }

LABEL_9:
    *a3 = a2;
    return sub_1D5ECF0E0(a2);
  }

  if (v5 == 3)
  {
    v19 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v20 = swift_allocObject();

    sub_1D5FA9D9C((v20 + 16), a1, v19);

    if (v3)
    {
      return swift_deallocUninitializedObject();
    }

    *a3 = v20 | 0x6000000000000000;
  }

  else
  {
    if (v5 != 4)
    {
      goto LABEL_9;
    }

    v13 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v14 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v15 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v16 = swift_allocObject();

    sub_1D5FA9D9C(v28, a1, v13);

    if (v3)
    {
      return swift_deallocUninitializedObject();
    }

    *(v16 + 16) = *&v28[0];
    *(v16 + 24) = v14;
    *(v16 + 32) = v15;
    *a3 = v16 | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1D5FA6CB0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v84 = a1;
  v5 = a2 >> 60;
  if ((a2 >> 60) <= 4)
  {
    if (v5 >= 3)
    {
      if (v5 == 3)
      {
        v13 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v14 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v15 = swift_allocObject();

        sub_1D5FA6CB0(&v83, a1, v13);
        if (v3)
        {

          return swift_deallocUninitializedObject();
        }

        else
        {
          sub_1D5FA6CB0(&v82, a1, v14);
          v23 = v82;
          *(v15 + 16) = v83;
          *(v15 + 24) = v23;

          *a3 = v15 | 0x3000000000000000;
        }
      }

      else
      {
        v18 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v19 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        swift_retain_n();

        sub_1D5FA6CB0(&v82, a1, v18);
        if (v3)
        {
        }

        else
        {

          sub_1D5FA6CB0(&v83, a1, v82);

          v25 = v83;
          v83 = a1;
          MEMORY[0x1EEE9AC00](v24, v26);
          v73 = &v83;
          v27 = sub_1D5EC95F8(sub_1D5FBA5F4, v72, v19);
          v83 = a1;
          MEMORY[0x1EEE9AC00](v27, v28);
          v73 = &v83;
          v81 = sub_1D5EC95F8(sub_1D5FBB0C8, v72, v27);

          v83 = v25;
          v30 = FormatColor.color.getter(v29);
          v31 = objc_opt_self();
          *&v76.f64[0] = v31;
          v32 = [v31 traitCollectionWithUserInterfaceStyle_];
          v33 = [(objc_class *)v30 resolvedColorWithTraitCollection:v32];
          v80 = v33;

          v83 = v25;
          v35 = FormatColor.color.getter(v34);
          v36 = [v31 traitCollectionWithUserInterfaceStyle_];
          v78 = [(objc_class *)v35 resolvedColorWithTraitCollection:v36];

          MEMORY[0x1EEE9AC00](v37, v38);
          v73 = &v84;
          v39 = v81;
          v40 = sub_1D632A694(v33, sub_1D5FBB0E0, v72, v81);
          v79 = 0;
          v41 = v76.f64[0];
          v42 = [*&v76.f64[0] traitCollectionWithUserInterfaceStyle_];
          v77 = [v40 resolvedColorWithTraitCollection_];

          MEMORY[0x1EEE9AC00](v43, v44);
          v73 = &v84;
          v46 = v78;
          v45 = v79;
          v47 = sub_1D632A694(v78, sub_1D5FBA648, v72, v39);
          v79 = v45;
          v48 = [*&v41 traitCollectionWithUserInterfaceStyle_];
          v49 = [v47 resolvedColorWithTraitCollection_];

          v50 = v77;
          sub_1D726353C();
          v74 = v52;
          v75 = v51;
          v54 = v53;
          v56 = v55;
          v57 = swift_allocObject();
          v76 = vdupq_n_s64(0x406FE00000000000uLL);
          *&v58.f64[0] = v75;
          *&v58.f64[1] = v74;
          *(v57 + 16) = vmulq_f64(v58, v76);
          *(v57 + 32) = v54 * 255.0;
          *(v57 + 40) = v56;
          *(v57 + 48) = 0;
          v59 = v57 | 0x6000000000000000;
          sub_1D726353C();
          v74 = v61;
          v75 = v60;
          v63 = v62;
          v65 = v64;

          v66 = swift_allocObject();
          *&v67.f64[0] = v75;
          *&v67.f64[1] = v74;
          *(v66 + 16) = vmulq_f64(v67, v76);
          *(v66 + 32) = v63 * 255.0;
          *(v66 + 40) = v65;
          *(v66 + 48) = 0;
          v68 = v66 | 0x6000000000000000;
          v69 = swift_allocObject();
          *(v69 + 16) = v59;
          *(v69 + 24) = v68;
          v70 = v69 | 0x3000000000000000;
          result = swift_allocObject();
          v71 = v81;
          *(result + 16) = v25;
          *(result + 24) = v71;
          *(result + 32) = v70;
          *a3 = result | 0xA000000000000000;
        }
      }

      return result;
    }

LABEL_7:
    *a3 = a2;
  }

  if (((1 << v5) & 0xE60) != 0)
  {
    goto LABEL_7;
  }

  if (v5 == 7)
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v7 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v9 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v10 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    sub_1D5F58038(v8, v7, v9, v10);
    sub_1D5FB61D8(a1, v8, v7, v9, v10, &v82);
    if (v3)
    {
      return sub_1D5F57FEC(v8, v7, v9, v10);
    }

    sub_1D5FA6CB0(&v83, a1, v82);

    v21 = v83;
    result = swift_allocObject();
    *(result + 16) = v8;
    *(result + 24) = v7;
    *(result + 32) = v9;
    *(result + 40) = v10;
    *(result + 48) = v21;
    v22 = 0x9000000000000000;
  }

  else
  {
    v16 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v17 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);

    sub_1D5F9F6DC(v16, v17, sub_1D5FAE784, &v82);
    sub_1D5FA6CB0(&v83, a1, v82);
    if (v3)
    {
    }

    v20 = v83;
    result = swift_allocObject();
    *(result + 16) = v16;
    *(result + 24) = v17;
    *(result + 32) = v20;
    v22 = 0xB000000000000000;
  }

  *a3 = result | v22;
  return result;
}

uint64_t sub_1D5FA74A4@<X0>(__int128 *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1[5];
  v107 = a1[4];
  v108 = v4;
  v109 = a1[6];
  v5 = a1[1];
  v103 = *a1;
  v104 = v5;
  v6 = a1[3];
  v7 = a2 >> 60;
  v105 = a1[2];
  v106 = v6;
  if ((a2 >> 60) > 4)
  {
    if (((1 << v7) & 0xE60) == 0)
    {
      if (v7 == 7)
      {
        v10 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v9 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v11 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v12 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v13 = a1[5];
        v113[4] = a1[4];
        v113[5] = v13;
        v113[6] = a1[6];
        v14 = a1[1];
        v113[0] = *a1;
        v113[1] = v14;
        v15 = a1[3];
        v113[2] = a1[2];
        v113[3] = v15;
        sub_1D5F58038(v10, v9, v11, v12);
        sub_1D5FB6948(v113, v10, v9, v11, v12, v99);
        if (v3)
        {
          return sub_1D5F57FEC(v10, v9, v11, v12);
        }

        else
        {
          v112[4] = v107;
          v112[5] = v108;
          v112[6] = v109;
          v112[0] = v103;
          v112[1] = v104;
          v112[2] = v105;
          v112[3] = v106;
          sub_1D5FA74A4(v100, v112, *&v99[0]);

          v36 = *&v100[0];
          result = swift_allocObject();
          *(result + 16) = v10;
          *(result + 24) = v9;
          *(result + 32) = v11;
          *(result + 40) = v12;
          *(result + 48) = v36;
          *a3 = result | 0x9000000000000000;
        }
      }

      else
      {
        v25 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v26 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v27 = a1[5];
        v115[11] = a1[4];
        v115[12] = v27;
        v115[13] = a1[6];
        v28 = a1[1];
        v115[7] = *a1;
        v115[8] = v28;
        v29 = a1[3];
        v115[9] = a1[2];
        v115[10] = v29;

        sub_1D5F9E140(v25, v26, v99);
        v115[4] = v107;
        v115[5] = v108;
        v115[6] = v109;
        v115[0] = v103;
        v115[1] = v104;
        v115[3] = v106;
        v115[2] = v105;
        sub_1D5FA74A4(v100, v115, *&v99[0]);
        if (v3)
        {
        }

        else
        {

          v30 = *&v100[0];
          result = swift_allocObject();
          *(result + 16) = v25;
          *(result + 24) = v26;
          *(result + 32) = v30;
          *a3 = result | 0xB000000000000000;
        }
      }

      return result;
    }

LABEL_7:
    *a3 = a2;
  }

  if (v7 < 3)
  {
    goto LABEL_7;
  }

  if (v7 == 3)
  {
    v18 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v19 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v21 = swift_allocObject();
    v22 = a1[5];
    v114[4] = a1[4];
    v114[5] = v22;
    v114[6] = a1[6];
    v23 = a1[1];
    v114[0] = *a1;
    v114[1] = v23;
    v24 = a1[3];
    v114[2] = a1[2];
    v114[3] = v24;

    sub_1D5FA74A4(v100, v114, v18);
    if (v3)
    {

      return swift_deallocUninitializedObject();
    }

    else
    {
      sub_1D5FA74A4(v99, v114, v19);
      v37 = *&v99[0];
      *(v21 + 16) = *&v100[0];
      *(v21 + 24) = v37;

      *a3 = v21 | 0x3000000000000000;
    }
  }

  else
  {
    v31 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v32 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v33 = a1[5];
    v111[4] = a1[4];
    v111[5] = v33;
    v111[6] = a1[6];
    v34 = a1[1];
    v111[0] = *a1;
    v111[1] = v34;
    v35 = a1[3];
    v111[2] = a1[2];
    v111[3] = v35;
    swift_retain_n();

    sub_1D5FA74A4(&v101, v111, v31);
    if (v3)
    {
    }

    else
    {

      v110[4] = v107;
      v110[5] = v108;
      v110[6] = v109;
      v110[0] = v103;
      v110[1] = v104;
      v110[2] = v105;
      v110[3] = v106;
      sub_1D5FA74A4(&v102, v110, v101);

      v39 = v102;
      v100[4] = v107;
      v100[5] = v108;
      v100[6] = v109;
      v100[0] = v103;
      v100[1] = v104;
      v100[2] = v105;
      v100[3] = v106;
      MEMORY[0x1EEE9AC00](v38, v40);
      v89[2] = v100;
      v41 = sub_1D5EC95F8(sub_1D5FBAAD4, v89, v32);
      v99[4] = v107;
      v99[5] = v108;
      v99[6] = v109;
      v99[0] = v103;
      v99[1] = v104;
      v99[2] = v105;
      v99[3] = v106;
      MEMORY[0x1EEE9AC00](v41, v42);
      v88 = v99;
      v43 = sub_1D5EC95F8(sub_1D5FBB128, v87, v41);
      v98 = 0;
      v95 = v43;

      *&v99[0] = v39;
      v45 = FormatColor.color.getter(v44);
      v46 = objc_opt_self();
      *&v92.f64[0] = v46;
      v47 = [v46 traitCollectionWithUserInterfaceStyle_];
      v96 = [(objc_class *)v45 resolvedColorWithTraitCollection:v47];

      *&v99[0] = v39;
      v49 = FormatColor.color.getter(v48);
      v50 = [v46 traitCollectionWithUserInterfaceStyle_];
      v97 = [(objc_class *)v49 resolvedColorWithTraitCollection:v50];

      MEMORY[0x1EEE9AC00](v51, v52);
      v88 = &v103;
      v53 = v95;
      v54 = v98;
      v55 = sub_1D632A694(v96, sub_1D5FBB140, v87, v95);
      v98 = v54;
      v56 = v92.f64[0];
      v57 = [*&v92.f64[0] traitCollectionWithUserInterfaceStyle_];
      v94 = &v90;
      v58 = v57;
      v93 = [v55 resolvedColorWithTraitCollection_];

      MEMORY[0x1EEE9AC00](v59, v60);
      v88 = &v103;
      v61 = v98;
      v62 = sub_1D632A694(v97, sub_1D5FBAAEC, v87, v53);
      v98 = v61;
      v63 = [*&v56 traitCollectionWithUserInterfaceStyle_];
      v64 = [v62 resolvedColorWithTraitCollection_];

      v65 = v93;
      sub_1D726353C();
      v90 = v67;
      v91 = v66;
      v69 = v68;
      v71 = v70;
      v72 = swift_allocObject();
      v92 = vdupq_n_s64(0x406FE00000000000uLL);
      *&v73.f64[0] = v91;
      *&v73.f64[1] = v90;
      *(v72 + 16) = vmulq_f64(v73, v92);
      *(v72 + 32) = v69 * 255.0;
      *(v72 + 40) = v71;
      *(v72 + 48) = 0;
      v74 = v72 | 0x6000000000000000;
      sub_1D726353C();
      v90 = v76;
      v91 = v75;
      v78 = v77;
      v80 = v79;

      v81 = swift_allocObject();
      *&v82.f64[0] = v91;
      *&v82.f64[1] = v90;
      *(v81 + 16) = vmulq_f64(v82, v92);
      *(v81 + 32) = v78 * 255.0;
      *(v81 + 40) = v80;
      *(v81 + 48) = 0;
      v83 = v81 | 0x6000000000000000;
      v84 = swift_allocObject();
      *(v84 + 16) = v74;
      *(v84 + 24) = v83;
      v85 = v84 | 0x3000000000000000;
      result = swift_allocObject();
      v86 = v95;
      *(result + 16) = v39;
      *(result + 24) = v86;
      *(result + 32) = v85;
      *a3 = result | 0xA000000000000000;
    }
  }

  return result;
}

uint64_t sub_1D5FA7DC4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v84 = a1;
  v5 = a2 >> 60;
  if ((a2 >> 60) <= 4)
  {
    if (v5 >= 3)
    {
      if (v5 == 3)
      {
        v13 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v14 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v15 = swift_allocObject();

        sub_1D5FA7DC4(&v83, a1, v13);
        if (v3)
        {

          return swift_deallocUninitializedObject();
        }

        else
        {
          sub_1D5FA7DC4(&v82, a1, v14);
          v23 = v82;
          *(v15 + 16) = v83;
          *(v15 + 24) = v23;

          *a3 = v15 | 0x3000000000000000;
        }
      }

      else
      {
        v18 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v19 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        swift_retain_n();

        sub_1D5FA7DC4(&v82, a1, v18);
        if (v3)
        {
        }

        else
        {

          sub_1D5FA7DC4(&v83, a1, v82);

          v25 = v83;
          v83 = a1;
          MEMORY[0x1EEE9AC00](v24, v26);
          v73 = &v83;
          v27 = sub_1D5EC95F8(sub_1D5FBA528, v72, v19);
          v83 = a1;
          MEMORY[0x1EEE9AC00](v27, v28);
          v73 = &v83;
          v81 = sub_1D5EC95F8(sub_1D5FBB098, v72, v27);

          v83 = v25;
          v30 = FormatColor.color.getter(v29);
          v31 = objc_opt_self();
          *&v76.f64[0] = v31;
          v32 = [v31 traitCollectionWithUserInterfaceStyle_];
          v33 = [(objc_class *)v30 resolvedColorWithTraitCollection:v32];
          v80 = v33;

          v83 = v25;
          v35 = FormatColor.color.getter(v34);
          v36 = [v31 traitCollectionWithUserInterfaceStyle_];
          v78 = [(objc_class *)v35 resolvedColorWithTraitCollection:v36];

          MEMORY[0x1EEE9AC00](v37, v38);
          v73 = &v84;
          v39 = v81;
          v40 = sub_1D632A694(v33, sub_1D5FBB0B0, v72, v81);
          v79 = 0;
          v41 = v76.f64[0];
          v42 = [*&v76.f64[0] traitCollectionWithUserInterfaceStyle_];
          v77 = [v40 resolvedColorWithTraitCollection_];

          MEMORY[0x1EEE9AC00](v43, v44);
          v73 = &v84;
          v46 = v78;
          v45 = v79;
          v47 = sub_1D632A694(v78, sub_1D5FBA57C, v72, v39);
          v79 = v45;
          v48 = [*&v41 traitCollectionWithUserInterfaceStyle_];
          v49 = [v47 resolvedColorWithTraitCollection_];

          v50 = v77;
          sub_1D726353C();
          v74 = v52;
          v75 = v51;
          v54 = v53;
          v56 = v55;
          v57 = swift_allocObject();
          v76 = vdupq_n_s64(0x406FE00000000000uLL);
          *&v58.f64[0] = v75;
          *&v58.f64[1] = v74;
          *(v57 + 16) = vmulq_f64(v58, v76);
          *(v57 + 32) = v54 * 255.0;
          *(v57 + 40) = v56;
          *(v57 + 48) = 0;
          v59 = v57 | 0x6000000000000000;
          sub_1D726353C();
          v74 = v61;
          v75 = v60;
          v63 = v62;
          v65 = v64;

          v66 = swift_allocObject();
          *&v67.f64[0] = v75;
          *&v67.f64[1] = v74;
          *(v66 + 16) = vmulq_f64(v67, v76);
          *(v66 + 32) = v63 * 255.0;
          *(v66 + 40) = v65;
          *(v66 + 48) = 0;
          v68 = v66 | 0x6000000000000000;
          v69 = swift_allocObject();
          *(v69 + 16) = v59;
          *(v69 + 24) = v68;
          v70 = v69 | 0x3000000000000000;
          result = swift_allocObject();
          v71 = v81;
          *(result + 16) = v25;
          *(result + 24) = v71;
          *(result + 32) = v70;
          *a3 = result | 0xA000000000000000;
        }
      }

      return result;
    }

LABEL_7:
    *a3 = a2;
  }

  if (((1 << v5) & 0xE60) != 0)
  {
    goto LABEL_7;
  }

  if (v5 == 7)
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v7 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v9 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v10 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    sub_1D5F58038(v8, v7, v9, v10);
    sub_1D5FB6E58(a1, v8, v7, v9, v10, &v82);
    if (v3)
    {
      return sub_1D5F57FEC(v8, v7, v9, v10);
    }

    sub_1D5FA7DC4(&v83, a1, v82);

    v21 = v83;
    result = swift_allocObject();
    *(result + 16) = v8;
    *(result + 24) = v7;
    *(result + 32) = v9;
    *(result + 40) = v10;
    *(result + 48) = v21;
    v22 = 0x9000000000000000;
  }

  else
  {
    v16 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v17 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);

    sub_1D5F9E8E0(v16, v17, &v82);
    sub_1D5FA7DC4(&v83, a1, v82);
    if (v3)
    {
    }

    v20 = v83;
    result = swift_allocObject();
    *(result + 16) = v16;
    *(result + 24) = v17;
    *(result + 32) = v20;
    v22 = 0xB000000000000000;
  }

  *a3 = result | v22;
  return result;
}

uint64_t sub_1D5FA85A4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = a2 >> 60;
  if ((a2 >> 60) > 4)
  {
    if (((1 << v5) & 0xE60) == 0)
    {
      v6 = a3;
      if (v5 == 7)
      {
        v8 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v7 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v9 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v10 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        sub_1D5F58038(v8, v7, v9, v10);
        sub_1D5FB75BC(a1, v8, v7, v9, v10, &v77);
        if (v3)
        {
          return sub_1D5F57FEC(v8, v7, v9, v10);
        }

        sub_1D5FA85A4(&v78, a1, v77);

        v20 = v78;
        result = swift_allocObject();
        *(result + 16) = v8;
        *(result + 24) = v7;
        *(result + 32) = v9;
        *(result + 40) = v10;
        *(result + 48) = v20;
        v21 = 0x9000000000000000;
      }

      else
      {
        v15 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v16 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);

        sub_1D5F9FD80(v15, v16, &v77);
        sub_1D5FA85A4(&v78, a1, v77);
        if (v3)
        {
        }

        v19 = v78;
        result = swift_allocObject();
        *(result + 16) = v15;
        *(result + 24) = v16;
        *(result + 32) = v19;
        v21 = 0xB000000000000000;
      }

LABEL_20:
      *v6 = result | v21;
      return result;
    }

LABEL_7:
    *a3 = a2;
  }

  if (v5 < 3)
  {
    goto LABEL_7;
  }

  v6 = a3;
  if (v5 != 3)
  {
    v17 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v18 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    swift_retain_n();

    sub_1D5FA85A4(&v77, a1, v17);
    if (v3)
    {
    }

    sub_1D5FA85A4(&v78, a1, v77);

    v24 = v78;
    MEMORY[0x1EEE9AC00](v23, v25);
    v69 = a1;
    v26 = sub_1D5EC95F8(sub_1D5FBA86C, v68, v18);
    MEMORY[0x1EEE9AC00](v26, v27);
    v69 = a1;
    v74 = sub_1D5EC95F8(sub_1D5FBB110, v68, v26);

    v78 = v24;
    v29 = FormatColor.color.getter(v28);
    v30 = objc_opt_self();
    v31 = [v30 traitCollectionWithUserInterfaceStyle_];
    v76 = [(objc_class *)v29 resolvedColorWithTraitCollection:v31];

    v78 = v24;
    v33 = FormatColor.color.getter(v32);
    v34 = [v30 traitCollectionWithUserInterfaceStyle_];
    v75 = [(objc_class *)v33 resolvedColorWithTraitCollection:v34];

    MEMORY[0x1EEE9AC00](v35, v36);
    v69 = a1;
    v37 = v74;
    v38 = sub_1D632A694(v76, sub_1D5FBB03C, v68, v74);
    v72.f64[0] = 0.0;
    v39 = v30;
    v40 = [v30 traitCollectionWithUserInterfaceStyle_];
    v73 = [v38 resolvedColorWithTraitCollection_];

    MEMORY[0x1EEE9AC00](v41, v42);
    v69 = a1;
    v43 = sub_1D632A694(v75, sub_1D5FBA8C0, v68, v37);
    v44 = [v39 traitCollectionWithUserInterfaceStyle_];
    v45 = [v43 resolvedColorWithTraitCollection_];

    v46 = v73;
    sub_1D726353C();
    v70 = v48;
    v71 = v47;
    v50 = v49;
    v52 = v51;
    v53 = swift_allocObject();
    v72 = vdupq_n_s64(0x406FE00000000000uLL);
    *&v54.f64[0] = v71;
    *&v54.f64[1] = v70;
    *(v53 + 16) = vmulq_f64(v54, v72);
    *(v53 + 32) = v50 * 255.0;
    *(v53 + 40) = v52;
    *(v53 + 48) = 0;
    v55 = v53 | 0x6000000000000000;
    sub_1D726353C();
    v70 = v57;
    v71 = v56;
    v59 = v58;
    v61 = v60;

    v62 = swift_allocObject();
    *&v63.f64[0] = v71;
    *&v63.f64[1] = v70;
    *(v62 + 16) = vmulq_f64(v63, v72);
    *(v62 + 32) = v59 * 255.0;
    *(v62 + 40) = v61;
    *(v62 + 48) = 0;
    v64 = v62 | 0x6000000000000000;
    v65 = swift_allocObject();
    *(v65 + 16) = v55;
    *(v65 + 24) = v64;
    v66 = v65 | 0x3000000000000000;
    result = swift_allocObject();
    v67 = v74;
    *(result + 16) = v24;
    *(result + 24) = v67;
    *(result + 32) = v66;
    v21 = 0xA000000000000000;
    goto LABEL_20;
  }

  v12 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v13 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v14 = swift_allocObject();

  sub_1D5FA85A4(&v78, a1, v12);
  if (v3)
  {

    return swift_deallocUninitializedObject();
  }

  else
  {
    sub_1D5FA85A4(&v77, a1, v13);
    v22 = v77;
    *(v14 + 16) = v78;
    *(v14 + 24) = v22;

    *v6 = v14 | 0x3000000000000000;
  }

  return result;
}

uint64_t sub_1D5FA8D3C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = a2 >> 60;
  if ((a2 >> 60) > 4)
  {
    if (((1 << v5) & 0xE60) == 0)
    {
      v6 = a3;
      if (v5 == 7)
      {
        v8 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v7 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v9 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v10 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        sub_1D5F58038(v8, v7, v9, v10);
        sub_1D5FB79AC(a1, v8, v7, v9, v10, &v77);
        if (v3)
        {
          return sub_1D5F57FEC(v8, v7, v9, v10);
        }

        sub_1D5FA8D3C(a1, v77);

        v20 = v78;
        result = swift_allocObject();
        *(result + 16) = v8;
        *(result + 24) = v7;
        *(result + 32) = v9;
        *(result + 40) = v10;
        *(result + 48) = v20;
        v21 = 0x9000000000000000;
      }

      else
      {
        v15 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v16 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);

        sub_1D5FA073C(v15, v16, &v77);
        sub_1D5FA8D3C(a1, v77);
        if (v3)
        {
        }

        v19 = v78;
        result = swift_allocObject();
        *(result + 16) = v15;
        *(result + 24) = v16;
        *(result + 32) = v19;
        v21 = 0xB000000000000000;
      }

LABEL_20:
      *v6 = result | v21;
      return result;
    }

LABEL_7:
    *a3 = a2;
  }

  if (v5 < 3)
  {
    goto LABEL_7;
  }

  v6 = a3;
  if (v5 != 3)
  {
    v17 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v18 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    swift_retain_n();

    sub_1D5FA8D3C(a1, v17);
    if (v3)
    {
    }

    sub_1D5FA8D3C(a1, v77);

    v24 = v78;
    MEMORY[0x1EEE9AC00](v23, v25);
    v69 = a1;
    v26 = sub_1D5EC95F8(sub_1D5FBA798, v68, v18);
    MEMORY[0x1EEE9AC00](v26, v27);
    v69 = a1;
    v74 = sub_1D5EC95F8(sub_1D5FBB0F8, v68, v26);

    v78 = v24;
    v29 = FormatColor.color.getter(v28);
    v30 = objc_opt_self();
    v31 = [v30 traitCollectionWithUserInterfaceStyle_];
    v76 = [(objc_class *)v29 resolvedColorWithTraitCollection:v31];

    v78 = v24;
    v33 = FormatColor.color.getter(v32);
    v34 = [v30 traitCollectionWithUserInterfaceStyle_];
    v75 = [(objc_class *)v33 resolvedColorWithTraitCollection:v34];

    MEMORY[0x1EEE9AC00](v35, v36);
    v69 = a1;
    v37 = v74;
    v38 = sub_1D632A694(v76, sub_1D5FBB024, v68, v74);
    v72.f64[0] = 0.0;
    v39 = v30;
    v40 = [v30 traitCollectionWithUserInterfaceStyle_];
    v73 = [v38 resolvedColorWithTraitCollection_];

    MEMORY[0x1EEE9AC00](v41, v42);
    v69 = a1;
    v43 = sub_1D632A694(v75, sub_1D5FBA7EC, v68, v37);
    v44 = [v39 traitCollectionWithUserInterfaceStyle_];
    v45 = [v43 resolvedColorWithTraitCollection_];

    v46 = v73;
    sub_1D726353C();
    v70 = v48;
    v71 = v47;
    v50 = v49;
    v52 = v51;
    v53 = swift_allocObject();
    v72 = vdupq_n_s64(0x406FE00000000000uLL);
    *&v54.f64[0] = v71;
    *&v54.f64[1] = v70;
    *(v53 + 16) = vmulq_f64(v54, v72);
    *(v53 + 32) = v50 * 255.0;
    *(v53 + 40) = v52;
    *(v53 + 48) = 0;
    v55 = v53 | 0x6000000000000000;
    sub_1D726353C();
    v70 = v57;
    v71 = v56;
    v59 = v58;
    v61 = v60;

    v62 = swift_allocObject();
    *&v63.f64[0] = v71;
    *&v63.f64[1] = v70;
    *(v62 + 16) = vmulq_f64(v63, v72);
    *(v62 + 32) = v59 * 255.0;
    *(v62 + 40) = v61;
    *(v62 + 48) = 0;
    v64 = v62 | 0x6000000000000000;
    v65 = swift_allocObject();
    *(v65 + 16) = v55;
    *(v65 + 24) = v64;
    v66 = v65 | 0x3000000000000000;
    result = swift_allocObject();
    v67 = v74;
    *(result + 16) = v24;
    *(result + 24) = v67;
    *(result + 32) = v66;
    v21 = 0xA000000000000000;
    goto LABEL_20;
  }

  v12 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v13 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v14 = swift_allocObject();

  sub_1D5FA8D3C(a1, v12);
  if (v3)
  {

    return swift_deallocUninitializedObject();
  }

  else
  {
    sub_1D5FA8D3C(a1, v13);
    v22 = v77;
    *(v14 + 16) = v78;
    *(v14 + 24) = v22;

    *v6 = v14 | 0x3000000000000000;
  }

  return result;
}

uint64_t sub_1D5FA94D4@<X0>(__int128 *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1[3];
  v105 = a1[2];
  v106 = v4;
  v5 = a1[5];
  v107 = a1[4];
  v108 = v5;
  v6 = a1[1];
  v103 = *a1;
  v104 = v6;
  v7 = a2 >> 60;
  if ((a2 >> 60) > 4)
  {
    if (((1 << v7) & 0xE60) == 0)
    {
      if (v7 == 7)
      {
        v10 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v9 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v11 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v12 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v13 = a1[3];
        v112[2] = a1[2];
        v112[3] = v13;
        v14 = a1[5];
        v112[4] = a1[4];
        v112[5] = v14;
        v15 = a1[1];
        v112[0] = *a1;
        v112[1] = v15;
        sub_1D5F58038(v10, v9, v11, v12);
        sub_1D5FB7E54(v112, v10, v9, v11, v12, v99);
        if (v3)
        {
          return sub_1D5F57FEC(v10, v9, v11, v12);
        }

        else
        {
          v111[2] = v105;
          v111[3] = v106;
          v111[4] = v107;
          v111[5] = v108;
          v111[0] = v103;
          v111[1] = v104;
          sub_1D5FA94D4(v100, v111, *&v99[0]);

          v36 = *&v100[0];
          result = swift_allocObject();
          *(result + 16) = v10;
          *(result + 24) = v9;
          *(result + 32) = v11;
          *(result + 40) = v12;
          *(result + 48) = v36;
          *a3 = result | 0x9000000000000000;
        }
      }

      else
      {
        v25 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v26 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v27 = a1[3];
        v115[2] = a1[2];
        v115[3] = v27;
        v28 = a1[5];
        v115[4] = a1[4];
        v115[5] = v28;
        v29 = a1[1];
        v115[0] = *a1;
        v115[1] = v29;

        sub_1D5FA0FD8(v115, v25, v26, v99);
        v114[2] = v105;
        v114[3] = v106;
        v114[4] = v107;
        v114[5] = v108;
        v114[0] = v103;
        v114[1] = v104;
        sub_1D5FA94D4(v100, v114, *&v99[0]);
        if (v3)
        {
        }

        else
        {

          v30 = *&v100[0];
          result = swift_allocObject();
          *(result + 16) = v25;
          *(result + 24) = v26;
          *(result + 32) = v30;
          *a3 = result | 0xB000000000000000;
        }
      }

      return result;
    }

LABEL_7:
    *a3 = a2;
  }

  if (v7 < 3)
  {
    goto LABEL_7;
  }

  if (v7 == 3)
  {
    v18 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v19 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v21 = swift_allocObject();
    v22 = a1[3];
    v113[2] = a1[2];
    v113[3] = v22;
    v23 = a1[5];
    v113[4] = a1[4];
    v113[5] = v23;
    v24 = a1[1];
    v113[0] = *a1;
    v113[1] = v24;

    sub_1D5FA94D4(v100, v113, v18);
    if (v3)
    {

      return swift_deallocUninitializedObject();
    }

    else
    {
      sub_1D5FA94D4(v99, v113, v19);
      v37 = *&v99[0];
      *(v21 + 16) = *&v100[0];
      *(v21 + 24) = v37;

      *a3 = v21 | 0x3000000000000000;
    }
  }

  else
  {
    v31 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v32 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v33 = a1[3];
    v110[2] = a1[2];
    v110[3] = v33;
    v34 = a1[5];
    v110[4] = a1[4];
    v110[5] = v34;
    v35 = a1[1];
    v110[0] = *a1;
    v110[1] = v35;
    swift_retain_n();

    sub_1D5FA94D4(&v101, v110, v31);
    if (v3)
    {
    }

    else
    {

      v109[2] = v105;
      v109[3] = v106;
      v109[4] = v107;
      v109[5] = v108;
      v109[0] = v103;
      v109[1] = v104;
      sub_1D5FA94D4(&v102, v109, v101);

      v39 = v102;
      v100[2] = v105;
      v100[3] = v106;
      v100[4] = v107;
      v100[5] = v108;
      v100[0] = v103;
      v100[1] = v104;
      MEMORY[0x1EEE9AC00](v38, v40);
      v89[2] = v100;
      v41 = sub_1D5EC95F8(sub_1D5FBA34C, v89, v32);
      v99[2] = v105;
      v99[3] = v106;
      v99[4] = v107;
      v99[5] = v108;
      v99[0] = v103;
      v99[1] = v104;
      MEMORY[0x1EEE9AC00](v41, v42);
      v88 = v99;
      v43 = sub_1D5EC95F8(sub_1D5FBB068, v87, v41);
      v98 = 0;
      v95 = v43;

      *&v99[0] = v39;
      v45 = FormatColor.color.getter(v44);
      v46 = objc_opt_self();
      *&v92.f64[0] = v46;
      v47 = [v46 traitCollectionWithUserInterfaceStyle_];
      v96 = [(objc_class *)v45 resolvedColorWithTraitCollection:v47];

      *&v99[0] = v39;
      v49 = FormatColor.color.getter(v48);
      v50 = [v46 traitCollectionWithUserInterfaceStyle_];
      v97 = [(objc_class *)v49 resolvedColorWithTraitCollection:v50];

      MEMORY[0x1EEE9AC00](v51, v52);
      v88 = &v103;
      v53 = v95;
      v54 = v98;
      v55 = sub_1D632A694(v96, sub_1D5FBB080, v87, v95);
      v98 = v54;
      v56 = v92.f64[0];
      v57 = [*&v92.f64[0] traitCollectionWithUserInterfaceStyle_];
      v94 = &v90;
      v58 = v57;
      v93 = [v55 resolvedColorWithTraitCollection_];

      MEMORY[0x1EEE9AC00](v59, v60);
      v88 = &v103;
      v61 = v98;
      v62 = sub_1D632A694(v97, sub_1D5FBA364, v87, v53);
      v98 = v61;
      v63 = [*&v56 traitCollectionWithUserInterfaceStyle_];
      v64 = [v62 resolvedColorWithTraitCollection_];

      v65 = v93;
      sub_1D726353C();
      v90 = v67;
      v91 = v66;
      v69 = v68;
      v71 = v70;
      v72 = swift_allocObject();
      v92 = vdupq_n_s64(0x406FE00000000000uLL);
      *&v73.f64[0] = v91;
      *&v73.f64[1] = v90;
      *(v72 + 16) = vmulq_f64(v73, v92);
      *(v72 + 32) = v69 * 255.0;
      *(v72 + 40) = v71;
      *(v72 + 48) = 0;
      v74 = v72 | 0x6000000000000000;
      sub_1D726353C();
      v90 = v76;
      v91 = v75;
      v78 = v77;
      v80 = v79;

      v81 = swift_allocObject();
      *&v82.f64[0] = v91;
      *&v82.f64[1] = v90;
      *(v81 + 16) = vmulq_f64(v82, v92);
      *(v81 + 32) = v78 * 255.0;
      *(v81 + 40) = v80;
      *(v81 + 48) = 0;
      v83 = v81 | 0x6000000000000000;
      v84 = swift_allocObject();
      *(v84 + 16) = v74;
      *(v84 + 24) = v83;
      v85 = v84 | 0x3000000000000000;
      result = swift_allocObject();
      v86 = v95;
      *(result + 16) = v39;
      *(result + 24) = v86;
      *(result + 32) = v85;
      *a3 = result | 0xA000000000000000;
    }
  }

  return result;
}

uint64_t sub_1D5FA9D9C@<X0>(__int128 *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1[7];
  v119 = a1[6];
  v120 = v4;
  v121 = a1[8];
  v122 = *(a1 + 18);
  v5 = a1[3];
  v115 = a1[2];
  v116 = v5;
  v6 = a1[5];
  v117 = a1[4];
  v118 = v6;
  v7 = a1[1];
  v8 = a2 >> 60;
  v113 = *a1;
  v114 = v7;
  if ((a2 >> 60) > 4)
  {
    if (((1 << v8) & 0xE60) == 0)
    {
      if (v8 == 7)
      {
        v11 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v10 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v12 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v13 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v14 = a1[7];
        v129[6] = a1[6];
        v129[7] = v14;
        v129[8] = a1[8];
        v130 = *(a1 + 18);
        v15 = a1[3];
        v129[2] = a1[2];
        v129[3] = v15;
        v16 = a1[5];
        v129[4] = a1[4];
        v129[5] = v16;
        v17 = a1[1];
        v129[0] = *a1;
        v129[1] = v17;
        sub_1D5F58038(v11, v10, v12, v13);
        sub_1D5FB82C8(v129, v11, v10, v13, v107);
        if (v3)
        {
          return sub_1D5F57FEC(v11, v10, v12, v13);
        }

        else
        {
          v127[7] = v120;
          v127[8] = v121;
          v128 = v122;
          v127[2] = v115;
          v127[3] = v116;
          v127[4] = v117;
          v127[5] = v118;
          v127[6] = v119;
          v127[0] = v113;
          v127[1] = v114;
          sub_1D5FA9D9C(v109, v127, *&v107[0]);

          v41 = *&v109[0];
          result = swift_allocObject();
          *(result + 16) = v11;
          *(result + 24) = v10;
          *(result + 32) = v12;
          *(result + 40) = v13;
          *(result + 48) = v41;
          *a3 = result | 0x9000000000000000;
        }
      }

      else
      {
        v28 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v29 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v30 = a1[7];
        v135[6] = a1[6];
        v135[7] = v30;
        v135[8] = a1[8];
        v136 = *(a1 + 18);
        v31 = a1[3];
        v135[2] = a1[2];
        v135[3] = v31;
        v32 = a1[5];
        v135[4] = a1[4];
        v135[5] = v32;
        v33 = a1[1];
        v135[0] = *a1;
        v135[1] = v33;

        sub_1D5FA1914(v135, v28, v29, v107);
        v133[6] = v119;
        v133[7] = v120;
        v133[8] = v121;
        v134 = v122;
        v133[2] = v115;
        v133[3] = v116;
        v133[4] = v117;
        v133[5] = v118;
        v133[0] = v113;
        v133[1] = v114;
        sub_1D5FA9D9C(v109, v133, *&v107[0]);
        if (v3)
        {
        }

        else
        {

          v34 = *&v109[0];
          result = swift_allocObject();
          *(result + 16) = v28;
          *(result + 24) = v29;
          *(result + 32) = v34;
          *a3 = result | 0xB000000000000000;
        }
      }

      return result;
    }

LABEL_7:
    *a3 = a2;
  }

  if (v8 < 3)
  {
    goto LABEL_7;
  }

  if (v8 == 3)
  {
    v20 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v21 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v23 = swift_allocObject();
    v24 = a1[7];
    v131[6] = a1[6];
    v131[7] = v24;
    v131[8] = a1[8];
    v132 = *(a1 + 18);
    v25 = a1[3];
    v131[2] = a1[2];
    v131[3] = v25;
    v26 = a1[5];
    v131[4] = a1[4];
    v131[5] = v26;
    v27 = a1[1];
    v131[0] = *a1;
    v131[1] = v27;

    sub_1D5FA9D9C(v109, v131, v20);
    if (v3)
    {

      return swift_deallocUninitializedObject();
    }

    else
    {
      sub_1D5FA9D9C(v107, v131, v21);
      v42 = *&v107[0];
      *(v23 + 16) = *&v109[0];
      *(v23 + 24) = v42;

      *a3 = v23 | 0x3000000000000000;
    }
  }

  else
  {
    v35 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v36 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v37 = a1[7];
    v125[6] = a1[6];
    v125[7] = v37;
    v125[8] = a1[8];
    v126 = *(a1 + 18);
    v38 = a1[3];
    v125[2] = a1[2];
    v125[3] = v38;
    v39 = a1[5];
    v125[4] = a1[4];
    v125[5] = v39;
    v40 = a1[1];
    v125[0] = *a1;
    v125[1] = v40;
    swift_retain_n();

    sub_1D5FA9D9C(&v111, v125, v35);
    if (v3)
    {
    }

    else
    {

      v123[6] = v119;
      v123[7] = v120;
      v123[8] = v121;
      v124 = v122;
      v123[2] = v115;
      v123[3] = v116;
      v123[4] = v117;
      v123[5] = v118;
      v123[0] = v113;
      v123[1] = v114;
      sub_1D5FA9D9C(&v112, v123, v111);

      v110 = v122;
      v44 = v112;
      v109[6] = v119;
      v109[7] = v120;
      v109[8] = v121;
      v109[2] = v115;
      v109[3] = v116;
      v109[4] = v117;
      v109[5] = v118;
      v109[0] = v113;
      v109[1] = v114;
      MEMORY[0x1EEE9AC00](v43, v45);
      v96[2] = v109;
      v46 = sub_1D5EC95F8(sub_1D5FBAD40, v96, v36);
      v108 = v122;
      v107[6] = v119;
      v107[7] = v120;
      v107[8] = v121;
      v107[2] = v115;
      v107[3] = v116;
      v107[4] = v117;
      v107[5] = v118;
      v107[0] = v113;
      v107[1] = v114;
      MEMORY[0x1EEE9AC00](v46, v47);
      v95 = v107;
      v48 = sub_1D5EC95F8(sub_1D5FBB158, v94, v46);
      v106 = 0;
      v105 = v48;

      *&v107[0] = v44;
      v50 = FormatColor.color.getter(v49);
      v99[0] = objc_opt_self();
      v103 = v44;
      v51 = [v99[0] traitCollectionWithUserInterfaceStyle_];
      v52 = [(objc_class *)v50 resolvedColorWithTraitCollection:v51];
      v102 = v52;

      *&v107[0] = v44;
      v54 = FormatColor.color.getter(v53);
      v55 = *v99;
      v56 = [v99[0] traitCollectionWithUserInterfaceStyle_];
      v101 = [(objc_class *)v54 resolvedColorWithTraitCollection:v56];

      MEMORY[0x1EEE9AC00](v57, v58);
      v95 = &v113;
      v59 = v52;
      v61 = v105;
      v60 = v106;
      v62 = sub_1D632A694(v59, sub_1D5FBB170, v94, v105);
      v106 = v60;
      v63 = [*&v55 traitCollectionWithUserInterfaceStyle_];
      v104 = &v97;
      v64 = v63;
      v100 = [v62 resolvedColorWithTraitCollection_];

      MEMORY[0x1EEE9AC00](v65, v66);
      v95 = &v113;
      v67 = v101;
      v68 = v106;
      v69 = sub_1D632A694(v101, sub_1D5FBAD58, v94, v61);
      v106 = v68;
      v70 = [*&v55 traitCollectionWithUserInterfaceStyle_];
      v71 = [v69 resolvedColorWithTraitCollection_];

      v72 = v100;
      sub_1D726353C();
      v97 = v74;
      v98 = v73;
      v76 = v75;
      v78 = v77;
      v79 = swift_allocObject();
      *v99 = vdupq_n_s64(0x406FE00000000000uLL);
      *&v80.f64[0] = v98;
      *&v80.f64[1] = v97;
      *(v79 + 16) = vmulq_f64(v80, *v99);
      *(v79 + 32) = v76 * 255.0;
      *(v79 + 40) = v78;
      *(v79 + 48) = 0;
      v81 = v79 | 0x6000000000000000;
      sub_1D726353C();
      v97 = v83;
      v98 = v82;
      v85 = v84;
      v87 = v86;

      v88 = swift_allocObject();
      *&v89.f64[0] = v98;
      *&v89.f64[1] = v97;
      *(v88 + 16) = vmulq_f64(v89, *v99);
      *(v88 + 32) = v85 * 255.0;
      *(v88 + 40) = v87;
      *(v88 + 48) = 0;
      v90 = v88 | 0x6000000000000000;
      v91 = swift_allocObject();
      *(v91 + 16) = v81;
      *(v91 + 24) = v90;
      v92 = v91 | 0x3000000000000000;
      result = swift_allocObject();
      v93 = v105;
      *(result + 16) = v103;
      *(result + 24) = v93;
      *(result + 32) = v92;
      *a3 = result | 0xA000000000000000;
    }
  }

  return result;
}

uint64_t FormatSymbolImage.name.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return sub_1D5FB995C(v2, v3, v4, v5);
}

uint64_t FormatSymbolImage.config.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 48);
  *(a1 + 16) = v4;
  return sub_1D5FB999C(v2, v3, v4);
}

uint64_t FormatSymbolImage.fill.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D5FB99B0(v2);
}

uint64_t FormatSymbolImage.internal.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1D5E04CC4(v2);
}

uint64_t sub_1D5FAA7E0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(a2 + 72);
  v7 = *(a2 + 80);
  v8 = *(a2 + 88);
  sub_1D5E04CC4(*a1);
  result = sub_1D5D2F2C4(v6, v7, v8);
  *(a2 + 72) = v3;
  *(a2 + 80) = v4;
  *(a2 + 88) = v5;
  return result;
}

uint64_t FormatSymbolImage.internal.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1D5D2F2C4(*(v1 + 72), *(v1 + 80), *(v1 + 88));
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
  *(v1 + 88) = v4;
  return result;
}

unint64_t FormatSymbolImage.color.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 96);
  *a1 = v2;
  return sub_1D5FB99FC(v2);
}

id FormatSymbolImageColor.symbolConfiguration(context:)(uint64_t a1)
{
  v4 = *v1;
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      v18 = objc_opt_self();
      if (v4 == 0xC000000000000000)
      {
        return [v18 configurationPreferringMulticolor];
      }

      else
      {
        return [v18 configurationPreferringMonochrome];
      }
    }

    v13 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v14 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5F33D5C(v13);

    sub_1D5F9ED00(v13, v14, sub_1D5F33D5C, sub_1D5FA2640, &v22);
    v15 = v22;
    v21 = v22;
    v4 = FormatSymbolImageColor.symbolConfiguration(context:)(a1);
    sub_1D5F33D8C(v15);
    sub_1D5F33D8C(v13);

    return v4;
  }

  if (v5)
  {
    v16 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

    v17 = sub_1D5FA6CB0(a1, v16, &v22);
    if (!v2)
    {
      v21 = v22;
      v19 = FormatColor.color.getter(v17);

      v20 = [objc_opt_self() configurationWithHierarchicalColor_];

      return v20;
    }

LABEL_19:

    return v4;
  }

  v6 = *(v4 + 16);
  v7 = *(v6 + 16);
  if (!v7)
  {
LABEL_9:
    sub_1D5C0B9F0();
    v12 = sub_1D726265C();

    v4 = [objc_opt_self() configurationWithPaletteColors_];

    return v4;
  }

  v22 = MEMORY[0x1E69E7CC0];

  v4 = &v22;
  result = sub_1D7263ECC();
  v9 = 0;
  while (v9 < *(v6 + 16))
  {
    v10 = *(v6 + 8 * v9 + 32);

    v11 = sub_1D5FA6CB0(a1, v10, &v21);
    if (v2)
    {

      goto LABEL_19;
    }

    ++v9;
    FormatColor.color.getter(v11);

    sub_1D7263E9C();
    sub_1D7263EDC();
    sub_1D7263EEC();
    v4 = &v22;
    result = sub_1D7263EAC();
    if (v7 == v9)
    {

      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t static FormatSymbolImageColor.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v3 >> 62 == 1)
      {
        v12 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v16[0] = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v15[0] = v12;
        sub_1D5F33D5C(v3);
        sub_1D5F33D5C(v2);
        v7 = static FormatColor.== infix(_:_:)(v16, v15);
        goto LABEL_12;
      }
    }

    else if (!(v3 >> 62))
    {
      v5 = *(v2 + 16);
      v6 = *(v3 + 16);
      sub_1D5F33D5C(*a2);
      sub_1D5F33D5C(v2);

      v7 = sub_1D6359350(v5, v6);

LABEL_12:
      sub_1D5F33D8C(v2);
      sub_1D5F33D8C(v3);
      return v7 & 1;
    }

    goto LABEL_19;
  }

  if (v4 != 2)
  {
    if (v2 == 0xC000000000000000)
    {
      if (v3 != 0xC000000000000000)
      {
        goto LABEL_19;
      }

      sub_1D5F33D8C(0xC000000000000000);
      v13 = 0xC000000000000000;
    }

    else
    {
      if (v3 != 0xC000000000000008)
      {
        goto LABEL_19;
      }

      sub_1D5F33D8C(0xC000000000000008);
      v13 = 0xC000000000000008;
    }

    sub_1D5F33D8C(v13);
    v7 = 1;
    return v7 & 1;
  }

  if (v3 >> 62 != 2)
  {
LABEL_19:
    sub_1D5F33D5C(*a2);
    sub_1D5F33D5C(v2);
LABEL_20:
    sub_1D5F33D8C(v2);
    sub_1D5F33D8C(v3);
    goto LABEL_21;
  }

  v8 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v10 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v9 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v16[0] = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v16[1] = v8;
  v15[0] = v10;
  v15[1] = v9;
  sub_1D5F33D5C(v3);
  sub_1D5F33D5C(v2);
  sub_1D5F33D5C(v10);

  if ((static FormatSymbolImageColor.== infix(_:_:)(v16, v15) & 1) == 0)
  {
    sub_1D5F33D8C(v10);

    goto LABEL_20;
  }

  v11 = sub_1D6359438(v8, v9);

  sub_1D5F33D8C(v10);

  sub_1D5F33D8C(v2);
  sub_1D5F33D8C(v3);
  if ((v11 & 1) == 0)
  {
LABEL_21:
    v7 = 0;
    return v7 & 1;
  }

  v7 = 1;
  return v7 & 1;
}

uint64_t sub_1D5FAAEB0(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5)
{
  v49[2] = *MEMORY[0x1E69E9840];
  if (qword_1EDF2AB18 != -1)
  {
    goto LABEL_96;
  }

  while (1)
  {
    v49[0] = a2;
    v49[1] = a3;

    v9 = sub_1D6844380(v49);

    v44 = *(v9 + 16);
    if (!v44)
    {
LABEL_91:

      return 0;
    }

    v39 = a5;
    v40 = a4;
    v10 = 0;
    v48 = 0;
    v43 = v9 + 32;
    v45 = v9;
    v41 = a1;
LABEL_7:
    if (v10 < *(v9 + 16))
    {
      break;
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    v37 = a2;
    swift_once();
    a2 = v37;
  }

  v46 = v10;
  v11 = (v43 + 56 * v10);
  v12 = v11[1];
  v14 = v11[3];
  v13 = v11[4];
  v15 = v11[5];
  v16 = v11[6];
  LOBYTE(v11) = *(v14 + 32);
  a3 = (v11 & 0x3F);
  v17 = ((1 << v11) + 63) >> 6;
  v18 = (8 * v17);
  swift_bridgeObjectRetain_n();

  v47 = v12;
  v19 = v13;

  if (a3 > 0xD)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v18 = swift_slowAlloc();

      v35 = v48;
      a5 = sub_1D5FB8844(v18, v17, v14, a1, sub_1D5FB88DC);

      v48 = v35;
      if (v35)
      {
        goto LABEL_98;
      }

      MEMORY[0x1DA6FD500](v18, -1, -1);
      goto LABEL_11;
    }
  }

  a3 = &v39;
  MEMORY[0x1EEE9AC00](isStackAllocationSafe, v21);
  bzero(&v39 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0), v18);
  v22 = v48;
  v23 = sub_1D5FB88DC(&v39 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0), v17, v14, a1);
  v48 = v22;
  if (!v22)
  {
    a5 = v23;

LABEL_11:
    a4 = v16;
    v24 = sub_1D5BFC390(a5, v14);

    if ((v24 & 1) == 0 || (sub_1D670EDB8(a1, v13) & 1) == 0)
    {

LABEL_49:
      v9 = v45;
      v29 = v46;
      goto LABEL_6;
    }

    v25 = *(v15 + 16);
    v42 = v19;
    if (!v25)
    {
      a3 = *(v16 + 16);
      if (!a3)
      {
        goto LABEL_92;
      }

      goto LABEL_53;
    }

    v26 = 0;
    a3 = (v15 + 40);
    while (v26 < *(v15 + 16))
    {
      a5 = *a3;

      switch(sub_1D72641CC())
      {
        case 0:
          if (qword_1EC87DB60 == -1)
          {
            goto LABEL_44;
          }

          goto LABEL_42;
        case 1:
          if (qword_1EDF05C38 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 2:
          if (qword_1EC87DB90 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 3:
          if (qword_1EDF1BBE8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 4:
          if (qword_1EC87DB70 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 5:
          if (qword_1EDF05CB8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 6:
          if (qword_1EC87DB80 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 7:
          if (qword_1EC87DB98 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 8:
          if (qword_1EC87DBA0 == -1)
          {
            goto LABEL_44;
          }

          goto LABEL_42;
        case 9:
          if (qword_1EC87DBA8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 10:
          if (qword_1EC87DBB0 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 11:
          if (qword_1EC87DBB8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 12:
          if (qword_1EC87DBC0 != -1)
          {
LABEL_42:
            swift_once();
          }

LABEL_44:

          goto LABEL_45;
        default:
          v27 = sub_1D726203C();
          v28 = [objc_opt_self() systemImageNamed_];

          if (!v28)
          {

            swift_bridgeObjectRelease_n();

LABEL_86:
            a1 = v41;
            goto LABEL_49;
          }

LABEL_45:
          ++v26;
          a3 += 2;
          if (v25 == v26)
          {

            a3 = *(a4 + 16);
            if (!a3)
            {
LABEL_92:

              return v40;
            }

LABEL_53:

            v30 = 0;
            v31 = (a4 + 40);
            while (1)
            {
              if (v30 >= *(a4 + 16))
              {
                goto LABEL_95;
              }

              a5 = *v31;
              swift_bridgeObjectRetain_n();
              v32 = sub_1D61E05F4();
              if (v32 != 13)
              {
                break;
              }

              v33 = sub_1D726203C();
              v34 = [objc_opt_self() systemImageNamed_];

              if (v34)
              {
                swift_bridgeObjectRelease_n();

                goto LABEL_86;
              }

              v30 = (v30 + 1);
              v31 += 2;
              if (a3 == v30)
              {

                goto LABEL_92;
              }
            }

            a1 = v41;
            a3 = v42;
            v9 = v45;
            v29 = v46;
            switch(v32)
            {
              case 1:
                if (qword_1EDF05C38 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 2:
                if (qword_1EC87DB90 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 3:
                if (qword_1EDF1BBE8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 4:
                if (qword_1EC87DB70 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 5:
                if (qword_1EDF05CB8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 6:
                if (qword_1EC87DB80 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 7:
                if (qword_1EC87DB98 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 8:
                if (qword_1EC87DBA0 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 9:
                if (qword_1EC87DBA8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 10:
                if (qword_1EC87DBB0 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 11:
                if (qword_1EC87DBB8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 12:
                if (qword_1EC87DBC0 != -1)
                {
                  goto LABEL_83;
                }

                break;
              default:
                if (qword_1EC87DB60 != -1)
                {
LABEL_83:
                  swift_once();
                }

                break;
            }

            swift_bridgeObjectRelease_n();

LABEL_6:
            v10 = v29 + 1;
            if (v10 == v44)
            {
              goto LABEL_91;
            }

            goto LABEL_7;
          }

          break;
      }
    }

    __break(1u);
    goto LABEL_94;
  }

  v38 = v48;
  swift_willThrow();

  __break(1u);
LABEL_98:

  result = MEMORY[0x1DA6FD500](v18, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1D5FAB9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49[2] = *MEMORY[0x1E69E9840];
  if (qword_1EDF2AB18 != -1)
  {
    goto LABEL_96;
  }

  while (1)
  {
    v49[0] = a2;
    v49[1] = a3;

    v7 = sub_1D6844380(v49);

    v44 = *(v7 + 16);
    if (!v44)
    {
LABEL_91:

      return 0;
    }

    v40 = a4;
    v41 = a1;
    v8 = 0;
    v48 = 0;
    v43 = v7 + 32;
    v45 = v7;
LABEL_7:
    if (v8 < *(v7 + 16))
    {
      break;
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    v37 = a2;
    swift_once();
    a2 = v37;
  }

  v46 = v8;
  v10 = (v43 + 56 * v8);
  v11 = v10[1];
  v13 = v10[3];
  v12 = v10[4];
  v15 = v10[5];
  v14 = v10[6];
  LOBYTE(v10) = *(v13 + 32);
  v16 = v10 & 0x3F;
  v17 = ((1 << v10) + 63) >> 6;
  v18 = (8 * v17);
  swift_bridgeObjectRetain_n();

  v47 = v11;

  if (v16 > 0xD)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v18 = swift_slowAlloc();

      v35 = v48;
      a3 = sub_1D5FB8844(v18, v17, v13, a1, sub_1D5FB88DC);

      v48 = v35;
      if (v35)
      {
        goto LABEL_98;
      }

      MEMORY[0x1DA6FD500](v18, -1, -1);
      goto LABEL_11;
    }
  }

  MEMORY[0x1EEE9AC00](isStackAllocationSafe, v20);
  bzero(&v39 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0), v18);
  v21 = v48;
  v22 = sub_1D5FB88DC(&v39 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0), v17, v13, a1);
  v48 = v21;
  if (!v21)
  {
    a3 = v22;

LABEL_11:
    a4 = v14;
    v23 = sub_1D5BFC390(a3, v13);

    if ((v23 & 1) == 0 || (sub_1D670EDB8(a1, v12) & 1) == 0)
    {

LABEL_49:
      v7 = v45;
      v9 = v46;
      goto LABEL_6;
    }

    v24 = *(v15 + 16);
    v42 = v12;
    if (!v24)
    {
      v29 = *(v14 + 16);
      if (!v29)
      {
        goto LABEL_92;
      }

      goto LABEL_53;
    }

    v25 = 0;
    v26 = (v15 + 40);
    while (v25 < *(v15 + 16))
    {
      a3 = *v26;

      switch(sub_1D72641CC())
      {
        case 0:
          if (qword_1EC87DB60 == -1)
          {
            goto LABEL_44;
          }

          goto LABEL_42;
        case 1:
          if (qword_1EDF05C38 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 2:
          if (qword_1EC87DB90 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 3:
          if (qword_1EDF1BBE8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 4:
          if (qword_1EC87DB70 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 5:
          if (qword_1EDF05CB8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 6:
          if (qword_1EC87DB80 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 7:
          if (qword_1EC87DB98 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 8:
          if (qword_1EC87DBA0 == -1)
          {
            goto LABEL_44;
          }

          goto LABEL_42;
        case 9:
          if (qword_1EC87DBA8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 10:
          if (qword_1EC87DBB0 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 11:
          if (qword_1EC87DBB8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 12:
          if (qword_1EC87DBC0 != -1)
          {
LABEL_42:
            swift_once();
          }

LABEL_44:

          goto LABEL_45;
        default:
          v27 = sub_1D726203C();
          v28 = [objc_opt_self() systemImageNamed_];

          if (!v28)
          {

            swift_bridgeObjectRelease_n();

LABEL_86:
            a1 = v41;
            goto LABEL_49;
          }

LABEL_45:
          ++v25;
          v26 += 2;
          if (v24 == v25)
          {

            v29 = *(a4 + 16);
            if (!v29)
            {
LABEL_92:

              return v40;
            }

LABEL_53:

            v30 = 0;
            v31 = (a4 + 40);
            while (1)
            {
              if (v30 >= *(a4 + 16))
              {
                goto LABEL_95;
              }

              a3 = *v31;
              swift_bridgeObjectRetain_n();
              v32 = sub_1D61E05F4();
              if (v32 != 13)
              {
                break;
              }

              v33 = sub_1D726203C();
              v34 = [objc_opt_self() systemImageNamed_];

              if (v34)
              {
                swift_bridgeObjectRelease_n();

                goto LABEL_86;
              }

              ++v30;
              v31 += 2;
              if (v29 == v30)
              {

                goto LABEL_92;
              }
            }

            a1 = v41;
            v7 = v45;
            switch(v32)
            {
              case 1:
                if (qword_1EDF05C38 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 2:
                if (qword_1EC87DB90 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 3:
                if (qword_1EDF1BBE8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 4:
                if (qword_1EC87DB70 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 5:
                if (qword_1EDF05CB8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 6:
                if (qword_1EC87DB80 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 7:
                if (qword_1EC87DB98 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 8:
                if (qword_1EC87DBA0 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 9:
                if (qword_1EC87DBA8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 10:
                if (qword_1EC87DBB0 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 11:
                if (qword_1EC87DBB8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 12:
                if (qword_1EC87DBC0 != -1)
                {
                  goto LABEL_83;
                }

                break;
              default:
                if (qword_1EC87DB60 != -1)
                {
LABEL_83:
                  swift_once();
                }

                break;
            }

            swift_bridgeObjectRelease_n();

            v9 = v46;
LABEL_6:
            v8 = v9 + 1;
            if (v8 == v44)
            {
              goto LABEL_91;
            }

            goto LABEL_7;
          }

          break;
      }
    }

    __break(1u);
    goto LABEL_94;
  }

  v38 = v48;
  swift_willThrow();

  __break(1u);
LABEL_98:

  result = MEMORY[0x1DA6FD500](v18, -1, -1);
  __break(1u);
  return result;
}