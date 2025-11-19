id sub_24ED00E7C()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit15LegacyLocalizer____lazy_storage___relativeDateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit15LegacyLocalizer____lazy_storage___relativeDateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit15LegacyLocalizer____lazy_storage___relativeDateFormatter);
  }

  else
  {
    v4 = sub_24ED00EE0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_24ED00EE0()
{
  v0 = sub_24F91F7C8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v4 setDoesRelativeDateFormatting_];
  [v4 setDateStyle_];
  [v4 setTimeStyle_];
  Locale.normalizedLocale.getter(v3);
  v5 = sub_24F91F738();
  (*(v1 + 8))(v3, v0);
  [v4 setLocale_];

  return v4;
}

id sub_24ED01034()
{
  v1 = v0;
  v2 = sub_24F91F7C8();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2);
  v37 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v36 = &v33 - v5;
  v6 = sub_24F9299D8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = OBJC_IVAR____TtC12GameStoreKit15LegacyLocalizer_dateFormatters;
  v14 = MEMORY[0x277D84F90];
  *&v0[v13] = sub_24E60CAC8(MEMORY[0x277D84F90]);
  v15 = OBJC_IVAR____TtC12GameStoreKit15LegacyLocalizer_dynamicDateFormatters;
  *&v0[v15] = sub_24E60CAC8(v14);
  *&v0[OBJC_IVAR____TtC12GameStoreKit15LegacyLocalizer____lazy_storage___relativeDateFormatter] = 0;
  v16 = [objc_opt_self() mainBundle];

  v17 = v12;
  sub_24F9299B8();
  if (qword_27F2103D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18 = qword_27F22B5B8;
  sub_24F9299B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213918);
  v19 = *(v7 + 72);
  v20 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_24F93A400;
  v22 = v21 + v20;
  v23 = *(v7 + 16);
  v35 = v17;
  v23(v22, v17, v6);
  v23(v22 + v19, v9, v6);
  *&v1[OBJC_IVAR____TtC12GameStoreKit15LegacyLocalizer_localizedStringTables] = v21;
  v24 = v36;
  sub_24F9299C8();
  v25 = v38;
  v26 = v39;
  v27 = *(v38 + 32);
  v33 = v6;
  v34 = v27;
  v27(&v1[OBJC_IVAR____TtC12GameStoreKit15LegacyLocalizer_locale], v24, v39);
  v28 = type metadata accessor for LegacyLocalizer();
  v29 = v37;
  sub_24F9299C8();
  sub_24ED0140C();
  (*(v25 + 8))(v29, v26);
  v30 = *(v7 + 8);
  v31 = v33;
  v30(v9, v33);
  v30(v35, v31);
  v34(&v1[OBJC_IVAR____TtC12GameStoreKit15LegacyLocalizer_extendedLocale], v24, v26);
  v40.receiver = v1;
  v40.super_class = v28;
  return objc_msgSendSuper2(&v40, sel_init);
}

uint64_t sub_24ED0140C()
{
  v0 = sub_24F91F7D8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F91F8A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F91F708();
  v9 = MEMORY[0x253045060](v8);

  v14 = 0;
  v15 = 0xE000000000000000;
  sub_24F91F888();
  sub_24F91F7F8();
  (*(v5 + 8))(v7, v4);
  sub_24F92CA38();
  (*(v1 + 8))(v3, v0);
  v10 = v14;
  v11 = v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v9;
  sub_24E81D324(v10, v11, 0x7261646E656C6163, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  MEMORY[0x253045070](v14);

  return sub_24F91F6F8();
}

uint64_t sub_24ED01684(void *a1, uint64_t a2)
{
  v4 = sub_24F91F7C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = objc_allocWithZone(MEMORY[0x277CCABB8]);
    v9 = a1;
    v10 = [v8 init];
    [v10 setNumberStyle_];
    [v10 setFormatterBehavior_];
    Locale.normalizedLocale.getter(v7);
    v11 = sub_24F91F738();
    (*(v5 + 8))(v7, v4);
    [v10 setLocale_];

    [v10 setMinimumFractionDigits_];
    v12 = [v10 stringFromNumber_];
    if (v12)
    {
      v13 = v12;
      v14 = sub_24F92B0D8();

      return v14;
    }
  }

  return 0;
}

void sub_24ED018E0(uint64_t a1, uint64_t a2)
{
  v13[2] = a1;
  v13[3] = a2;
  v3 = sub_24F9299D8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = *(v2 + OBJC_IVAR____TtC12GameStoreKit15LegacyLocalizer_localizedStringTables);
  v10 = *(v9 + 16);
  v13[1] = v4 + 16;
  while (1)
  {
    if (v10 == v8)
    {

      return;
    }

    if (v8 >= *(v9 + 16))
    {
      break;
    }

    (*(v4 + 16))(v7, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v8++, v3, v5);
    sub_24F9299A8();
    v12 = v11;
    (*(v4 + 8))(v7, v3);
    if (v12)
    {
      return;
    }
  }

  __break(1u);
}

uint64_t *sub_24ED01BB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v39 = a1;
  v40 = a2;
  v7 = sub_24F9299D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - v14;
  v41 = MEMORY[0x277D84F90];
  if (a4)
  {
    v37 = v13;
    v38 = v4;
    v16 = objc_opt_self();

    v17 = [v16 mainBundle];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0);
    v18 = swift_allocObject();
    v36 = xmmword_24F93DE60;
    *(v18 + 16) = xmmword_24F93DE60;
    *(v18 + 32) = a3;
    *(v18 + 40) = a4;

    sub_24F9299B8();
    v19 = a3;
    if (qword_27F2103D8 != -1)
    {
LABEL_11:
      swift_once();
    }

    swift_beginAccess();
    v20 = qword_27F22B5B8;
    v21 = swift_allocObject();
    *(v21 + 16) = v36;
    *(v21 + 32) = v19;
    *(v21 + 40) = a4;
    v22 = v20;
    v23 = v37;
    sub_24F9299B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213918);
    v24 = *(v8 + 72);
    v25 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_24F93A400;
    v27 = v26 + v25;
    v28 = *(v8 + 16);
    v28(v27, v15, v7);
    v28(v27 + v24, v23, v7);
    sub_24EA0ACF4(v26);
    v29 = *(v8 + 8);
    v29(v23, v7);
    v29(v15, v7);
  }

  v19 = &v41;
  sub_24EA0ACF4(v30);
  v15 = 0;
  v31 = v41;
  v32 = *(v41 + 16);
  a4 = v8 + 16;
  while (v32 != v15)
  {
    if (v15 >= *(v31 + 16))
    {
      __break(1u);
      goto LABEL_11;
    }

    (*(v8 + 16))(v10, v31 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v15++, v7);
    v19 = sub_24F9299A8();
    v34 = v33;
    (*(v8 + 8))(v10, v7);
    if (v34)
    {

      return v19;
    }
  }

  return v39;
}

void sub_24ED02030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v25 = a1;
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FAD8);
  MEMORY[0x28223BE20](v4 - 8);
  v23 = &v21 - v5;
  v6 = sub_24F9299D8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v21 = v3;
  v12 = *(v3 + OBJC_IVAR____TtC12GameStoreKit15LegacyLocalizer_localizedStringTables);
  v13 = *(v12 + 16);
  v24 = v7 + 16;
  while (1)
  {
    if (v13 == v11)
    {

LABEL_7:
      v16 = v23;
      Locale.normalizedLocale.getter(v23);
      v17 = sub_24F91F7C8();
      (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0);
      v18 = swift_allocObject();
      v19 = MEMORY[0x277D83B88];
      *(v18 + 16) = xmmword_24F93DE60;
      v20 = MEMORY[0x277D83C10];
      *(v18 + 56) = v19;
      *(v18 + 64) = v20;
      *(v18 + 32) = v22;
      sub_24F92B108();

      sub_24E601704(v16, &qword_27F21FAD8);
      return;
    }

    if (v11 >= *(v12 + 16))
    {
      break;
    }

    (*(v7 + 16))(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11++, v6, v8);
    sub_24F9299A8();
    v15 = v14;
    (*(v7 + 8))(v10, v6);
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_24ED02384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v22 = a1;
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FAD8);
  MEMORY[0x28223BE20](v4 - 8);
  v20 = &v18 - v5;
  v6 = sub_24F9299D8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v18 = v3;
  v12 = *(v3 + OBJC_IVAR____TtC12GameStoreKit15LegacyLocalizer_localizedStringTables);
  v13 = *(v12 + 16);
  v21 = v7 + 16;
  while (1)
  {
    if (v13 == v11)
    {

LABEL_7:
      v16 = v20;
      Locale.normalizedLocale.getter(v20);
      v17 = sub_24F91F7C8();
      (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
      sub_24E8E86A4(v19);
      sub_24F92B108();

      sub_24E601704(v16, &qword_27F21FAD8);
      return;
    }

    if (v11 >= *(v12 + 16))
    {
      break;
    }

    (*(v7 + 16))(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11++, v6, v8);
    sub_24F9299A8();
    v15 = v14;
    (*(v7 + 8))(v10, v6);
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_24ED026BC(uint64_t a1)
{
  v4 = sub_24F91F7C8();
  v5 = *(v4 - 8);
  *&v7 = MEMORY[0x28223BE20](a1).n128_u64[0];
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6)
  {
    [v6 doubleValue];
    v11 = qword_2861C0AC8;
    if (*&qword_2861C0AC8 <= v10)
    {
      v23 = 0;
    }

    else
    {
      v11 = qword_2861C0AD0;
      if (*&qword_2861C0AD0 <= v10)
      {
        v23 = 1;
      }

      else
      {
        v11 = qword_2861C0AD8;
        if (*&qword_2861C0AD8 <= v10)
        {
          v23 = 2;
        }

        else
        {
          v11 = qword_2861C0AE0;
          if (*&qword_2861C0AE0 > v10)
          {
            v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
            if (v12)
            {
              v13 = v12;
              v14 = objc_allocWithZone(MEMORY[0x277CCABB8]);
              v1 = v13;
              v2 = [v14 init];
              [v2 setNumberStyle_];
              [v2 setFormatterBehavior_];
              Locale.normalizedLocale.getter(v9);
              v15 = sub_24F91F738();
              (*(v5 + 8))(v9, v4);
              [v2 setLocale_];

              [v2 setMinimumFractionDigits_];
              v16 = [v2 stringFromNumber_];
              if (v16)
              {
                v17 = v16;
                v18 = sub_24F92B0D8();
                v20 = v19;

                v21._object = 0x800000024FA5A8E0;
                v21._countAndFlagsBits = 0xD000000000000012;
                v22._countAndFlagsBits = 0;
                v22._object = 0xE000000000000000;
                localizedString(_:comment:)(v21, v22);
LABEL_17:
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0);
                v38 = swift_allocObject();
                *(v38 + 16) = xmmword_24F93DE60;
                *(v38 + 56) = MEMORY[0x277D837D0];
                *(v38 + 64) = sub_24E90A06C();
                *(v38 + 32) = v18;
                *(v38 + 40) = v20;
                sub_24F92B118();

                return;
              }

              goto LABEL_21;
            }

LABEL_20:
            __break(1u);
LABEL_21:

            __break(1u);
            return;
          }

          v23 = 3;
        }
      }
    }

    v24 = &unk_2861C0AE8 + 16 * v23;
    v2 = *(v24 + 4);
    v1 = *(v24 + 5);
    v25 = round(v10 / *&v11 * 10.0) / 10.0;
    v26 = objc_allocWithZone(MEMORY[0x277CCABB0]);

    v27 = [v26 initWithDouble_];
    if (v27)
    {
      v28 = v27;
      v29 = objc_allocWithZone(MEMORY[0x277CCABB8]);
      v30 = v28;
      v31 = [v29 init];
      [v31 setNumberStyle_];
      [v31 setFormatterBehavior_];
      Locale.normalizedLocale.getter(v9);
      v32 = sub_24F91F738();
      (*(v5 + 8))(v9, v4);
      [v31 setLocale_];

      [v31 setMinimumFractionDigits_];
      v33 = [v31 stringFromNumber_];
      if (v33)
      {
        v34 = v33;
        v18 = sub_24F92B0D8();
        v20 = v35;

        v36._countAndFlagsBits = v2;
        v36._object = v1;
        v37._countAndFlagsBits = 0;
        v37._object = 0xE000000000000000;
        localizedString(_:comment:)(v36, v37);

        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_20;
  }
}

void sub_24ED02D38(uint64_t a1)
{
  v2 = sub_24F91F7C8();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x28223BE20](a1).n128_u64[0];
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4)
  {
    v8 = [v4 longLongValue];
    sub_24F92B1B8();
    v9 = ASKFormattedCountCreate();

    if (v9)
    {
      sub_24F92B2A8();
      free(v9);
      return;
    }

    v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
    if (v10)
    {
      v11 = v10;
      v12 = objc_allocWithZone(MEMORY[0x277CCABB8]);
      v13 = v11;
      v14 = [v12 init];
      [v14 setNumberStyle_];
      [v14 setFormatterBehavior_];
      Locale.normalizedLocale.getter(v7);
      v15 = sub_24F91F738();
      (*(v3 + 8))(v7, v2);
      [v14 setLocale_];

      [v14 setMinimumFractionDigits_];
      v16 = [v14 stringFromNumber_];
      if (v16)
      {
        v17 = v16;
        sub_24F92B0D8();

        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24ED03048(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  sub_24E728A00(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_24E601704(v7, &unk_27F22EC30);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    sub_24F91F638();
    (*(v9 + 16))(v4, v14, v8);
    (*(v9 + 56))(v4, 0, 1, v8);
    v16 = sub_24ED032DC(v4, 0xD000000000000013, 0x800000024FA3FB80);
    sub_24E601704(v4, &unk_27F22EC30);
    v17 = *(v9 + 8);
    v17(v11, v8);
    v17(v14, v8);
    return v16;
  }
}

uint64_t sub_24ED032DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  v12 = sub_24F91F648();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  sub_24F91F638();
  sub_24E728A00(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    (*(v13 + 8))(v18, v12);
    sub_24E601704(v11, &unk_27F22EC30);
    return 0;
  }

  (*(v13 + 32))(v15, v11, v12);
  result = sub_24F91F558();
  v21 = floor(v20 / 31536000.0);
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v21 >= 1)
  {
    sub_24ED02030(0xD000000000000012, 0x800000024FA5A8C0, v21);
    v23 = v22;
    v24 = *(v13 + 8);
    v24(v15, v12);
    v24(v18, v12);
    return v23;
  }

  v25 = floor(v20 / 86400.0);
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_29;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v25 >= 7)
  {
    (*(v13 + 16))(v8, v15, v12);
    (*(v13 + 56))(v8, 0, 1, v12);
    v26 = 0x64204D4D4DLL;
    v27 = 0xE500000000000000;
    goto LABEL_16;
  }

  if (v25 < 1)
  {
    v29 = floor(v20 / 3600.0);
    if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v29 > -9.22337204e18)
      {
        if (v29 < 9.22337204e18)
        {
          v30 = (v13 + 8);
          if (v29 < 1)
          {
            v32._countAndFlagsBits = 0xD000000000000011;
            v32._object = 0x800000024FA5A820;
            v33._countAndFlagsBits = 0;
            v33._object = 0xE000000000000000;
            countAndFlagsBits = localizedString(_:comment:)(v32, v33)._countAndFlagsBits;
          }

          else
          {
            sub_24ED02030(0xD000000000000012, 0x800000024FA5A840, v29);
          }

          v23 = countAndFlagsBits;
          v34 = *v30;
          (*v30)(v15, v12);
          v34(v18, v12);
          return v23;
        }

LABEL_34:
        __break(1u);
        return result;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  (*(v13 + 16))(v8, v15, v12);
  (*(v13 + 56))(v8, 0, 1, v12);
  v26 = 69;
  v27 = 0xE100000000000000;
LABEL_16:
  v23 = sub_24ED04240(v26, v27, v8, a2, a3);
  sub_24E601704(v8, &unk_27F22EC30);
  v28 = *(v13 + 8);
  v28(v15, v12);
  v28(v18, v12);
  return v23;
}

uint64_t sub_24ED03990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v53 = a4;
  v54 = a1;
  v55 = a3;
  v9 = sub_24F91F7C8();
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F91F8A8();
  v50 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v47 - v16;
  v18 = sub_24F91F648();
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a5;
  v23 = v22;
  sub_24E728A00(v21, v17);
  if ((*(v23 + 48))(v17, 1, v18) == 1)
  {
    sub_24E601704(v17, &unk_27F22EC30);
    return 0;
  }

  v48 = v20;
  v49 = a2;
  v47 = v23;
  (*(v23 + 32))(v20, v17, v18);
  v25 = OBJC_IVAR____TtC12GameStoreKit15LegacyLocalizer_dynamicDateFormatters;
  swift_beginAccess();
  v26 = *(v6 + v25);
  v27 = v18;
  v28 = v53;
  if (!*(v26 + 16))
  {
    goto LABEL_7;
  }

  v29 = sub_24E76D644(v55, v28);
  if ((v30 & 1) == 0)
  {

LABEL_7:
    v32 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v32 setFormattingContext_];
    sub_24F91F7B8();
    v33 = sub_24F91F838();
    (*(v50 + 8))(v14, v12);
    [v32 setCalendar_];

    Locale.normalizedLocale.getter(v11);
    v34 = sub_24F91F738();
    (*(v51 + 8))(v11, v52);
    [v32 setLocale_];

    v35 = v55;
    v36 = sub_24F92B098();
    [v32 setLocalizedDateFormatFromTemplate_];

    swift_beginAccess();

    v31 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = *(v6 + v25);
    *(v6 + v25) = 0x8000000000000000;
    sub_24E820824(v31, v35, v28, isUniquelyReferenced_nonNull_native);

    *(v6 + v25) = v56;
    swift_endAccess();
    goto LABEL_8;
  }

  v31 = *(*(v26 + 56) + 8 * v29);

LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_24F93DE60;
  v39 = v31;
  v40 = v48;
  v41 = sub_24F91F578();
  v42 = [v39 stringFromDate_];

  v43 = sub_24F92B0D8();
  v45 = v44;

  *(v38 + 56) = MEMORY[0x277D837D0];
  *(v38 + 64) = sub_24E90A06C();
  *(v38 + 32) = v43;
  *(v38 + 40) = v45;
  v46 = sub_24F92B118();

  (*(v47 + 8))(v40, v27);
  return v46;
}

uint64_t sub_24ED04240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v53 = a2;
  v11 = sub_24F91F7C8();
  v51 = *(v11 - 8);
  v52 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F91F8A8();
  v49 = *(v14 - 8);
  v50 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v46 - v18;
  v20 = sub_24F91F648();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a3;
  v26 = v25;
  sub_24E728A00(v24, v19);
  if ((*(v21 + 48))(v19, 1, v26) == 1)
  {
    sub_24E601704(v19, &unk_27F22EC30);
    return 0;
  }

  v28 = *(v21 + 32);
  v47 = v26;
  v48 = v23;
  v28(v23, v19, v26);
  v46[1] = a4;
  v46[2] = a5;
  v57 = a4;
  v58 = a5;
  v46[3] = a1;
  v55 = a1;
  v56 = v53;

  v55 = sub_24F92B3C8();
  v56 = v29;
  sub_24F92B278();
  v31 = v55;
  v30 = v56;
  v32 = OBJC_IVAR____TtC12GameStoreKit15LegacyLocalizer_dateFormatters;
  swift_beginAccess();
  v33 = *(v6 + v32);
  if (!*(v33 + 16))
  {
    goto LABEL_7;
  }

  v34 = sub_24E76D644(v31, v30);
  if ((v35 & 1) == 0)
  {

LABEL_7:
    v37 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];

    [v37 setFormattingContext_];
    sub_24F91F7B8();
    v38 = sub_24F91F838();
    (*(v49 + 8))(v16, v50);
    [v37 setCalendar_];

    Locale.normalizedLocale.getter(v13);
    v39 = sub_24F91F738();
    (*(v51 + 8))(v13, v52);
    [v37 setLocale_];

    v40 = sub_24F92B098();
    [v37 setLocalizedDateFormatFromTemplate_];

    swift_beginAccess();
    v36 = v37;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = *(v6 + v32);
    *(v6 + v32) = 0x8000000000000000;
    sub_24E820824(v36, v31, v30, isUniquelyReferenced_nonNull_native);

    *(v6 + v32) = v54;
    swift_endAccess();
    goto LABEL_8;
  }

  v36 = *(*(v33 + 56) + 8 * v34);

LABEL_8:
  v42 = v48;
  v43 = sub_24F91F578();
  v44 = [v36 stringFromDate_];

  v45 = sub_24F92B0D8();
  (*(v21 + 8))(v42, v47);
  return v45;
}

uint64_t sub_24ED0493C(uint64_t a1)
{
  v3 = sub_24F91F8A8();
  v68 = *(v3 - 8);
  v69 = v3;
  MEMORY[0x28223BE20](v3);
  v72 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F91F7C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F91ED78();
  v10 = *(v9 - 8);
  v70 = v9;
  v71 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v65 - v14;
  v16 = sub_24F91F648();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v65 - v21;
  v23 = a1;
  v25 = v24;
  sub_24E728A00(v23, v15);
  if ((*(v17 + 48))(v15, 1, v25) == 1)
  {
    sub_24E601704(v15, &unk_27F22EC30);
    return 0;
  }

  v66 = v25;
  v67 = v17;
  (*(v17 + 32))(v22, v15, v25);
  sub_24F91F638();
  v65 = v1;
  Locale.normalizedLocale.getter(v8);
  sub_24F91F7B8();
  (*(v6 + 8))(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E080);
  v27 = sub_24F91F898();
  v28 = *(v27 - 8);
  v29 = *(v28 + 72);
  v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_24F93A070;
  v32 = *(v28 + 104);
  v32(v31 + v30, *MEMORY[0x277CC9988], v27);
  v32(v31 + v30 + v29, *MEMORY[0x277CC9998], v27);
  v32(v31 + v30 + 2 * v29, *MEMORY[0x277CC9940], v27);
  v32(v31 + v30 + 3 * v29, *MEMORY[0x277CC9968], v27);
  v32(v31 + v30 + 4 * v29, *MEMORY[0x277CC9980], v27);
  v32(v31 + v30 + 5 * v29, *MEMORY[0x277CC99A8], v27);
  sub_24E8026A0(v31);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v33 = v72;
  sub_24F91F808();

  (*(v68 + 8))(v33, v69);
  v34 = sub_24F91ECE8();
  if ((v35 & 1) != 0 || (v36 = v34, v34 < 1))
  {
    v39 = sub_24F91ED08();
    if ((v40 & 1) == 0)
    {
      v36 = v39;
      if (v39 >= 1)
      {
        v38 = 0xD000000000000013;
        v37 = 0x800000024FA5A8A0;
        goto LABEL_9;
      }
    }

    v44 = sub_24F91EC88();
    v43 = v67;
    if ((v45 & 1) != 0 || (v46 = v44, v44 < 1))
    {
      v50 = sub_24F91ECA8();
      if ((v51 & 1) == 0)
      {
        v46 = v50;
        if (v50 >= 1)
        {
          v49 = 0xD000000000000011;
          v48 = 0x800000024FA5A860;
          goto LABEL_17;
        }
      }

      v56 = sub_24F91ECC8();
      if ((v57 & 1) != 0 || (v46 = v56, v56 < 1))
      {
        v58 = sub_24F91ED48();
        if ((v59 & 1) != 0 || v58 < 1)
        {
          v62 = sub_24ED00E7C();
          v63 = sub_24F91F578();
          v64 = [v62 stringFromDate_];

          v42 = sub_24F92B0D8();
          goto LABEL_19;
        }

        v60._countAndFlagsBits = 0xD000000000000011;
        v60._object = 0x800000024FA5A820;
        v61._countAndFlagsBits = 0;
        v61._object = 0xE000000000000000;
        countAndFlagsBits = localizedString(_:comment:)(v60, v61)._countAndFlagsBits;
LABEL_18:
        v42 = countAndFlagsBits;
LABEL_19:
        (*(v71 + 8))(v12, v70);
        goto LABEL_20;
      }

      v47 = "TIME_AGO_HOURS_AGO";
    }

    else
    {
      v47 = "TIME_AGO_WEEKS_AGO";
    }

    v48 = (v47 - 32) | 0x8000000000000000;
    v49 = 0xD000000000000012;
LABEL_17:
    sub_24ED02030(v49, v48, v46);
    goto LABEL_18;
  }

  v37 = 0x800000024FA5A8C0;
  v38 = 0xD000000000000012;
LABEL_9:
  sub_24ED02030(v38, v37, v36);
  v42 = v41;
  (*(v71 + 8))(v12, v70);
  v43 = v67;
LABEL_20:
  v53 = *(v43 + 8);
  v54 = v19;
  v55 = v66;
  v53(v54, v66);
  v53(v22, v55);
  return v42;
}

id sub_24ED050AC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  if (a3)
  {
    sub_24F91F608();
    v10 = sub_24F91F648();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_24F91F648();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = a1;
  a4(v9);
  v14 = v13;

  sub_24E601704(v9, &unk_27F22EC30);
  if (v14)
  {
    v15 = sub_24F92B098();
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void sub_24ED05224(uint64_t a1)
{
  v2 = 0xD000000000000011;

  v3 = sub_24ED0585C();
  v4 = "IAP_DURATION_MONTH";
  if (v3 > 2u)
  {
    if (v3 != 3)
    {
      return;
    }

    goto LABEL_14;
  }

  v5 = sub_24F92CE08();

  if (v5)
  {
LABEL_15:
    sub_24ED02030(v2, v4 | 0x8000000000000000, a1);
    return;
  }

  v4 = "IAP_DURATION_WEEK";
  if (v3 > 1u)
  {
    v2 = 0xD000000000000012;
    goto LABEL_14;
  }

  v6 = sub_24F92CE08();

  if (v6)
  {
    v2 = 0xD000000000000012;
    goto LABEL_15;
  }

  v4 = "IAP_DURATION_DAY";
  if (v3 == 1)
  {
    goto LABEL_14;
  }

  v7 = sub_24F92CE08();

  if (v7)
  {
    goto LABEL_15;
  }

  v2 = 0xD000000000000010;
  v4 = "GameStoreKit.ModernLocalizer";
  if (!v3)
  {
LABEL_14:

    goto LABEL_15;
  }

  v8 = sub_24F92CE08();

  if (v8)
  {
    goto LABEL_15;
  }
}

id LegacyLocalizer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LegacyLocalizer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LegacyLocalizer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for LegacyLocalizer()
{
  result = qword_27F22E070;
  if (!qword_27F22E070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ED0574C()
{
  result = sub_24F91F7C8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24ED05810()
{
  v0 = sub_24F92CB88();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24ED0585C()
{
  v0 = sub_24F92CB88();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24ED058B8()
{
  if (*v0)
  {
    return 0x4449726579616C70;
  }

  else
  {
    return 0x646E7542656D6167;
  }
}

uint64_t sub_24ED05900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x646E7542656D6167 && a2 == 0xED0000734449656CLL;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4449726579616C70 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24ED059E4(uint64_t a1)
{
  v2 = sub_24ED05CB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ED05A20(uint64_t a1)
{
  v2 = sub_24ED05CB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ED05A7C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24ED05AAC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_24ED05AAC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E088);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_24ED05CB0();
  sub_24F92D108();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
    v9[7] = 0;
    sub_24E7C1498();
    sub_24F92CC18();
    v7 = v10;
    v9[6] = 1;
    sub_24F92CC28();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_24ED05CB0()
{
  result = qword_27F22E090;
  if (!qword_27F22E090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E090);
  }

  return result;
}

unint64_t sub_24ED05D18()
{
  result = qword_27F22E098;
  if (!qword_27F22E098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E098);
  }

  return result;
}

unint64_t sub_24ED05D70()
{
  result = qword_27F22E0A0;
  if (!qword_27F22E0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E0A0);
  }

  return result;
}

unint64_t sub_24ED05DC8()
{
  result = qword_27F22E0A8;
  if (!qword_27F22E0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E0A8);
  }

  return result;
}

uint64_t ArcadeSeeAllGamesContentPresenter.__allocating_init(objectGraph:pageUrl:facetsPresenter:displayStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = swift_allocObject();
  v9 = *a4;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves) = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84FA0];
  *(v8 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelfContentTypes) = MEMORY[0x277D84FA0];
  *(v8 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_presentationOptions) = 0;
  v11 = (v8 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken);
  *v11 = 0u;
  v11[1] = 0u;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_selectedFacetOptions) = 0;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage) = 0;
  v12 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_pageUrl;
  v13 = sub_24F91F4A8();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v8 + v12, a2, v13);
  *(v8 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_facetsPresenter) = a3;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_displayStyle) = v9;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = v10;
  v15 = sub_24EC8415C(a1, 0, 0, 0);

  (*(v14 + 8))(a2, v13);
  return v15;
}

uint64_t ArcadeSeeAllGamesContentPresenter.init(objectGraph:pageUrl:facetsPresenter:displayStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = *a4;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves) = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84FA0];
  *(v4 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelfContentTypes) = MEMORY[0x277D84FA0];
  *(v4 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_presentationOptions) = 0;
  v10 = (v4 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken);
  *v10 = 0u;
  v10[1] = 0u;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_selectedFacetOptions) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage) = 0;
  v11 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_pageUrl;
  v12 = sub_24F91F4A8();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v4 + v11, a2, v12);
  *(v4 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_facetsPresenter) = a3;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_displayStyle) = v8;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = v9;
  v14 = sub_24EC8415C(a1, 0, 0, 0);

  (*(v13 + 8))(a2, v12);
  return v14;
}

uint64_t sub_24ED0620C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24ED06278(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EB09F58;
}

uint64_t sub_24ED06378()
{
  v1 = v0 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v4 = *(v2 + 16);
    v5 = *(v4 + 32);

    v5(v6, ObjectType, v4);

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v1 + 8);
    v8 = swift_getObjectType();
    (*(v7 + 24))(*(v0 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_presentationOptions), v8, v7);
    swift_unknownObjectRelease();
  }

  return sub_24F01DD24();
}

uint64_t sub_24ED0649C(char a1)
{
  result = swift_beginAccess();
  if (*(v1 + 32))
  {
    return result;
  }

  v4 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
  result = swift_beginAccess();
  if (*(v1 + v4) & 1) != 0 || (*(v1 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves))
  {
    return result;
  }

  v5 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (v6 >> 62)
  {
    if (sub_24F92C738())
    {
LABEL_6:
      if ((a1 & 1) == 0)
      {
        v7 = v1 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
        swift_beginAccess();
        result = swift_unknownObjectWeakLoadStrong();
        if (result)
        {
          v8 = *(v7 + 8);
          ObjectType = swift_getObjectType();
          (*(*(*(v8 + 16) + 16) + 8))(ObjectType);
          return swift_unknownObjectRelease();
        }

        return result;
      }
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_6;
  }

  v10 = *(v1 + 32);
  *(v1 + 32) = 1;
  v11 = v1 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 8);
    v13 = swift_getObjectType();
    (*(*(*(v12 + 16) + 24) + 8))(v13);
    swift_unknownObjectRelease();
  }

  sub_24F01DFD8(v10);
  v14 = sub_24F91F398();
  v16 = v15;
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_displayStyle) == 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_24F92CE08();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A658);
  sub_24F92BF18();
  v18 = _s12GameStoreKit10PageFacetsV24serializeSelectedOptionsySDySSSaySDyS2SSgGGGSDyAC5FacetVShyAJ6OptionVGGFZ_0(v24);

  v19 = v17 & 1;
  type metadata accessor for JSIntentDispatcher();
  v20 = *(v1 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_objectGraph);
  sub_24F928FD8();
  sub_24F92A758();
  *&v24 = 0xD00000000000001BLL;
  *(&v24 + 1) = 0x800000024FA5A900;
  v25 = v14;
  v26 = v16;
  v27 = v19;
  v28 = v18;
  sub_24EB479C0(&v24, v20, "GameStoreKit/ArcadeSeeAllGamesContentPresenter.swift", 52, 2);
  sub_24ED08798(&v24);
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  v21 = sub_24E74EC40();

  v22 = sub_24F92BEF8();
  v23[3] = v21;
  v23[4] = MEMORY[0x277D225C0];
  v23[0] = v22;
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_24ED068AC(uint64_t *a1)
{
  v2 = sub_24F91F648();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v47 = v3;
    v48 = v2;
    sub_24ED07248(v6);
    swift_beginAccess();
    v9 = *(v8 + 32);
    *(v8 + 32) = 0;
    v10 = v8 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v10 + 8);
      ObjectType = swift_getObjectType();
      v13 = *(*(v11 + 16) + 24);
      v14 = *(v13 + 16);

      v14(ObjectType, v13);
      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_24F01DFD8(v9);

    v15 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
    swift_beginAccess();
    v16 = *(v8 + v15);
    if (v16 >> 62)
    {
      v17 = sub_24F92C738();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      if (Strong)
      {
        v19 = *(v10 + 8);
        v20 = swift_getObjectType();
        (*(v19 + 48))(v20, v19);
        swift_unknownObjectRelease();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v21 = *(v10 + 8);
        v22 = swift_getObjectType();
        swift_beginAccess();
        v23 = *(v21 + 16);
        v24 = *(v23 + 32);

        v24(v25, v22, v23);

        swift_unknownObjectRelease();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v26 = *(v10 + 8);
        v27 = swift_getObjectType();
        (*(v26 + 24))(*(v8 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_presentationOptions), v27, v26);
        swift_unknownObjectRelease();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v28 = *(v10 + 8);
        v29 = swift_getObjectType();
        (*(*(*(v28 + 16) + 16) + 8))(v29);
        swift_unknownObjectRelease();
      }

      v30 = sub_24EC4064C();
      sub_24F01B85C(v30, 0);

      swift_beginAccess();
      if (*(v8 + 16))
      {
        v49[3] = type metadata accessor for ArcadeSeeAllGamesPage();
        v49[4] = &protocol witness table for BasePage;
        v49[5] = sub_24ED08DB4(qword_27F22E110, type metadata accessor for ArcadeSeeAllGamesPage);
        v49[0] = v6;

        PendingPageRender.use(pageRenderEventFrom:)(v49);

        sub_24E601704(v49, &qword_27F224F98);
        v31 = *(v8 + 16);
      }

      else
      {

        v31 = 0;
      }

      v40 = v48;
      v41 = v47;

      if (v31)
      {
        sub_24F91F638();
        sub_24F91F5E8();
        v43 = v42;
        (*(v41 + 8))(v5, v40);
        v44 = v31 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
        swift_beginAccess();
        *v44 = v43;
        *(v44 + 8) = 0;
        v45 = *(v31 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
        swift_beginAccess();
        *(v45 + 40) = 1;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_24EA6BFA0();
        }
      }
    }

    else if (Strong)
    {
      v32 = *(v10 + 8);
      v33 = swift_getObjectType();
      v34._object = 0x800000024FA5AA20;
      v34._countAndFlagsBits = 0xD00000000000001CLL;
      v35._countAndFlagsBits = 0;
      v35._object = 0xE000000000000000;
      v36 = localizedString(_:comment:)(v34, v35);
      v37._countAndFlagsBits = 0xD000000000000022;
      v37._object = 0x800000024FA5AA40;
      v38._countAndFlagsBits = 0;
      v38._object = 0xE000000000000000;
      v39 = localizedString(_:comment:)(v37, v38);
      (*(v32 + 40))(v36._countAndFlagsBits, v36._object, v39._countAndFlagsBits, v39._object, v33, v32);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_24ED06E84(void *a1)
{
  v2 = type metadata accessor for PresenterError();
  MEMORY[0x28223BE20](v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    v7 = *(v6 + 32);
    *(v6 + 32) = 0;
    v8 = v6 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    v33 = v8;
    if (v9)
    {
      v10 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      v12 = *(*(v10 + 16) + 24);
      v13 = v2;
      v14 = a1;
      v15 = *(v12 + 16);

      v15(ObjectType, v12);
      a1 = v14;
      v2 = v13;
      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_24F01DFD8(v7);

    v16 = *(v2 + 20);
    v17 = sub_24F91F4A8();
    (*(*(v17 - 8) + 56))(&v4[v16], 1, 1, v17);
    *v4 = a1;
    swift_beginAccess();
    v18 = *(v6 + 16);
    if (v18)
    {
      sub_24ED08DB4(&qword_27F22B028, type metadata accessor for PresenterError);
      v19 = swift_allocError();
      sub_24EBDEC38(v4, v20);
      v21 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v22 = *(v18 + v21);
      v23 = a1;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v18 + v21) = v22;
      v25 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = sub_24E617130(0, v22[2] + 1, 1, v22);
        *(v18 + v21) = v22;
      }

      v27 = v22[2];
      v26 = v22[3];
      if (v27 >= v26 >> 1)
      {
        v22 = sub_24E617130((v26 > 1), v27 + 1, 1, v22);
      }

      v22[2] = v27 + 1;
      v22[v27 + 4] = v19;
      *(v18 + v21) = v22;
      swift_endAccess();
    }

    else
    {
      v28 = a1;
      v25 = v33;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v29 = *(v25 + 8);
      v30 = swift_getObjectType();
      sub_24ED08DB4(&qword_27F22B028, type metadata accessor for PresenterError);
      v31 = swift_allocError();
      sub_24EBDEC38(v4, v32);
      (*(*(*(v29 + 16) + 24) + 24))(v31, v30);

      swift_unknownObjectRelease();
      sub_24EBDECA4(v4);
    }

    else
    {

      sub_24EBDECA4(v4);
    }
  }
}

uint64_t sub_24ED07248(uint64_t result)
{
  if (result)
  {
    v2 = v1;
    v3 = result;
    *(v1 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_presentationOptions) = *(result + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions);

    v4 = sub_24EC4064C();
    swift_beginAccess();
    sub_24EA0AE3C(v4);
    swift_endAccess();
    v5 = sub_24EC9C8C4();
    swift_beginAccess();
    sub_24EAE423C(v5);
    swift_endAccess();
    sub_24E94E17C(v3 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, _);
    v6 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken;
    swift_beginAccess();
    sub_24E8E7708(_, v2 + v6);
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      *&_[24] = type metadata accessor for ArcadeSeeAllGamesPage();
      *&_[32] = &protocol witness table for BasePage;
      v15 = sub_24ED08DB4(qword_27F22E110, type metadata accessor for ArcadeSeeAllGamesPage);
      *_ = v3;
      sub_24E8F997C(_, v13);
      swift_beginAccess();

      sub_24EA095A4(v13, v8 + 40);
      swift_endAccess();
      sub_24EC832DC();
      swift_unknownObjectRelease();
      sub_24E601704(v13, &qword_27F224F98);
      __swift_destroy_boxed_opaque_existential_1(_);
    }

    v9 = *(v3 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets + 8);
    v10 = *(v3 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets + 16);
    v11 = *(v3 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets + 24);
    *_ = *(v3 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets);
    *&_[8] = v9;
    *&_[16] = v10;
    _[24] = v11;
    v12._rawValue = *(v3 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_selectedFacetOptions);
    sub_24E903680(*_);
    PageFacetsPresenter.setFacets(_:selectedFacetOptions:)(_, v12);
    sub_24E9036C4(*_);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A658);
    sub_24F92BF18();

    *(v2 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_selectedFacetOptions) = *_;
  }

  return result;
}

uint64_t sub_24ED07500()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24ED07544(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = v1 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  if (a1)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v6 + 8) + 8))(ObjectType);
  }

  else
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v8 = *(v4 + 8);
    v9 = swift_getObjectType();
    (*(*(v8 + 8) + 16))(v9);
  }

  return swift_unknownObjectRelease();
}

void (*sub_24ED07628(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  swift_beginAccess();
  return sub_24ED076B0;
}

void sub_24ED076B0(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[6];
    v5 = v4 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
    if (*(v4 + v3[7]) == 1)
    {
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_8;
      }

      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      v8 = (*(v6 + 8) + 8);
    }

    else
    {
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_8;
      }

      v9 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      v8 = (*(v9 + 8) + 16);
    }

    (*v8)(ObjectType);
    swift_unknownObjectRelease();
  }

LABEL_8:

  free(v3);
}

BOOL sub_24ED077A4()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken;
  swift_beginAccess();
  sub_24E94E17C(v0 + v1, v4);
  v2 = v5 != 0;
  sub_24E601704(v4, &qword_27F2129B0);
  return v2;
}

uint64_t sub_24ED07818()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken;
  swift_beginAccess();
  sub_24E94E17C(v0 + v1, &v11);
  if (!v12[1])
  {
    return sub_24E601704(&v11, &qword_27F2129B0);
  }

  sub_24E612B0C(&v11, v13);
  v2 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
  swift_beginAccess();
  if (*(v0 + v2))
  {
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  *(v0 + v2) = 1;
  v4 = v0 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v5 + 8) + 8))(ObjectType);
    swift_unknownObjectRelease();
  }

  sub_24E643A9C(v13, v12);
  *&v11 = 0xD00000000000001FLL;
  *(&v11 + 1) = 0x800000024FA5A960;
  type metadata accessor for JSIntentDispatcher();
  v7 = *(v0 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_objectGraph);
  sub_24F928FD8();
  sub_24F92A758();
  sub_24EB47E18(&v11, v7, "GameStoreKit/ArcadeSeeAllGamesContentPresenter.swift", 52, 2);
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  v8 = sub_24E74EC40();

  v9 = sub_24F92BEF8();
  v10[3] = v8;
  v10[4] = MEMORY[0x277D225C0];
  v10[0] = v9;
  sub_24F92A958();

  sub_24ED08844(&v11);
  __swift_destroy_boxed_opaque_existential_1(v13);
  __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t sub_24ED07AC8(unint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_24E94E17C(v1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, v9);
    v4 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken;
    swift_beginAccess();
    sub_24E8E7708(v9, v3 + v4);
    swift_endAccess();
    sub_24ED07D00(v1);
    v5 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
    swift_beginAccess();
    *(v3 + v5) = 0;
    v6 = v3 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      (*(*(v7 + 8) + 16))(ObjectType);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_24ED07BF4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
    swift_beginAccess();
    *(v1 + v2) = 0;
    v3 = v1 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      (*(*(v4 + 8) + 16))(ObjectType);
      swift_unknownObjectRelease();
    }

    memset(v7, 0, sizeof(v7));
    v6 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken;
    swift_beginAccess();
    sub_24E8E7708(v7, v1 + v6);
    swift_endAccess();
  }

  return result;
}

unint64_t sub_24ED07D00(unint64_t a1)
{
  v2 = v1;
  v4 = sub_24F91F968();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  swift_beginAccess();
  v9 = *(v2 + v8);
  if (v9 >> 62)
  {
    goto LABEL_16;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v11 = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
    goto LABEL_18;
  }

LABEL_3:
  v24 = v5;
  v26 = MEMORY[0x277D84F90];
  sub_24ED08DB4(&qword_27F22E100, MEMORY[0x277CC9A28]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218050);
  sub_24ED08D48();
  sub_24F92C6A8();
  v27 = *(v2 + v8);

  result = sub_24EC4064C();
  a1 = result;
  v25 = v4;
  v23 = v2;
  if (result >> 62)
  {
    while (1)
    {
      result = sub_24F92C738();
      v13 = result;
      if (!result)
      {
        break;
      }

LABEL_5:
      if (v13 < 1)
      {
        __break(1u);
        return result;
      }

      v4 = 0;
      v14 = v11 & ~(v11 >> 63);
      v2 = v14 + 1;
      v8 = 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x253052270](v4, a1);
        }

        else
        {
        }

        v5 = &v27;
        MEMORY[0x253050F00](v15);
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v22[1] = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_24F92B5E8();
        }

        sub_24F92B638();
        if ((v14 ^ v4) == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        ++v4;
        sub_24F91F8F8();

        ++v2;
        if (v13 == v4)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_16:
      v16 = sub_24F92C738();
      v11 = v16 - 1;
      if (!__OFSUB__(v16, 1))
      {
        goto LABEL_3;
      }

LABEL_18:
      __break(1u);
    }
  }

  else
  {
    v13 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_5;
    }
  }

LABEL_20:

  v17 = v23 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = *(v17 + 8);
    swift_getObjectType();
    v19 = swift_allocObject();
    v20 = swift_weakInit();
    v21 = MEMORY[0x28223BE20](v20);
    v22[-2] = v19;
    v22[-1] = &v27;
    (*(v18 + 32))(MEMORY[0x277D84F90], v7, sub_24ED08DAC, v21);
    swift_unknownObjectRelease();
    (v24[1])(v7, v25);
  }

  else
  {
    (v24[1])(v7, v25);
  }
}

uint64_t sub_24ED080DC(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *a2;
    v6 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
    swift_beginAccess();
    *(v4 + v6) = v5;

    sub_24F01B85C(v7, 0);
  }

  return result;
}

uint64_t sub_24ED08190()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    return sub_24F92C738();
  }

  else
  {
    return *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_24ED081F8(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = MEMORY[0x253052270](a1, v5);

    return v6;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v6 = *(v5 + 8 * a1 + 32);

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_24ED082A4(unint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  swift_beginAccess();
  v6 = *(v2 + v5);

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *(v2 + v5) = v6;
  if (!result || v6 < 0 || (v6 & 0x4000000000000000) != 0)
  {
    result = sub_24ECDE964(v6);
    v6 = result;
    *(v2 + v5) = result;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20) = a2;
    *(v2 + v5) = v6;
    swift_endAccess();
  }

  __break(1u);
  return result;
}

BOOL sub_24ED0836C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    v5 = sub_24F92C738();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5 > a1;
}

unint64_t sub_24ED083E8()
{
  v1 = sub_24F91FA18();
  v2 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3 >> 62)
  {
    if (v1 < sub_24F92C738())
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (v1 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

LABEL_3:
  result = sub_24F91FA18();
  v5 = *(v0 + v2);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v9 = result;

    v6 = MEMORY[0x253052270](v9, v5);

    goto LABEL_7;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 8 * result + 32);

LABEL_7:
    v7 = *(v6 + 24);

    v8 = *(v7 + 16);

    return sub_24F91FA08() < v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_24ED0853C()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_pageUrl;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken, &qword_27F2129B0);

  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view);
  v3 = v0 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_delegate;

  return sub_24E883630(v3);
}

uint64_t ArcadeSeeAllGamesContentPresenter.deinit()
{
  v0 = BasePresenter.deinit();

  v1 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_pageUrl;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken, &qword_27F2129B0);

  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view);
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_delegate);
  return v0;
}

uint64_t ArcadeSeeAllGamesContentPresenter.__deallocating_deinit()
{
  ArcadeSeeAllGamesContentPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24ED087EC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24ED08898(uint64_t a1)
{
  result = sub_24ED08DB4(&qword_27F22E0E8, type metadata accessor for ArcadeSeeAllGamesContentPresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ArcadeSeeAllGamesContentPresenter()
{
  result = qword_27F22E0F0;
  if (!qword_27F22E0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ED0893C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24ED08998(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24ED089FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24ED08AD4()
{
  result = sub_24F91F4A8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_24ED08D48()
{
  result = qword_27F22E108;
  if (!qword_27F22E108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E108);
  }

  return result;
}

uint64_t sub_24ED08DB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24ED08E24()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24ED08FE8()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t sub_24ED090AC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BaseComponentViewModel();
  result = sub_24F922FA8();
  *a1 = result;
  return result;
}

uint64_t sub_24ED09178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a4;
  v13[1] = a5;
  sub_24F921888();
  v6 = sub_24F9271C8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  v11 = *(v7 + 16);
  v11(v13 - v9, a1, v6, v8);
  sub_24F921AD8();
  (v11)(v10, a1, v6);
  type metadata accessor for AlertActionImplementation();
  sub_24F921B18();
  return (*(v7 + 8))(a1, v6);
}

uint64_t sub_24ED09314()
{
  result = sub_24F921AE8();
  if (v1 <= 0x3F)
  {
    result = sub_24F921B28();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24ED093B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F921AE8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_24F921B28();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24ED094C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24F921AE8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_24F921B28();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24ED09610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_style))
  {
    return sub_24ED0A768(a1, a2, a3);
  }

  else
  {
    return sub_24ED0962C(a1, a2, a3);
  }
}

uint64_t sub_24ED0962C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v124 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F40);
  MEMORY[0x28223BE20](v5 - 8);
  v108 = v95 - v6;
  v113 = sub_24F92A638();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v111 = v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_24F9289E8();
  v110 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v107 = v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v109 = v95 - v10;
  v123 = a3;
  v12 = *(a3 - 8);
  v11 = a3 - 8;
  v119 = v12;
  MEMORY[0x28223BE20](v13);
  v103 = v14;
  v118 = v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_24F928AD8();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v128 = v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_24F928B08();
  v121 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v122 = v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F92A618();
  v18 = *(v17 - 8);
  v129 = v17;
  v130 = v18;
  MEMORY[0x28223BE20](v17);
  v117 = v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v116 = v95 - v21;
  MEMORY[0x28223BE20](v22);
  v115 = v95 - v23;
  MEMORY[0x28223BE20](v24);
  v114 = v95 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E218);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = (v95 - v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  v106 = sub_24F92A9E8();
  v131 = a1;
  v32 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_buttonActions);
  v33 = *(v32 + 16);
  v134 = v32;
  if (v33)
  {
    v11 = 0;
    v34 = (v32 + 64);
    v35 = MEMORY[0x277D84F90];
    v101 = v33;
    v102 = (v32 + 64);
    do
    {
      v120 = v35;
      v36 = (v33 - v11);
      v37 = &v34[5 * v11];
      while (1)
      {
        v38 = *(v32 + 16);
        if (v11 >= v38)
        {
          __break(1u);
          goto LABEL_60;
        }

        v39 = v28;
        v40 = *(v37 - 3);
        v41 = *(v37 - 2);
        v42 = *(v37 - 1);
        v132 = *(v37 - 4);
        v133 = v41;
        v43 = *v37;
        if (v42)
        {
          v44 = swift_allocObject();
          *(v44 + 16) = v42;
          *(v44 + 24) = v43;
          v45 = sub_24E9A0188;
        }

        else
        {
          v45 = 0;
        }

        sub_24E5FCA4C(v42);
        if (v40)
        {
          break;
        }

        sub_24E824448(v45);
        v37 += 5;
        ++v11;
        --v36;
        v32 = v134;
        v28 = v39;
        if (!v36)
        {
          v35 = v120;
          goto LABEL_18;
        }
      }

      sub_24E5FCA4C(v42);

      sub_24E824448(v45);
      v35 = v120;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v137 = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24F458928(0, *(v35 + 16) + 1, 1);
        v35 = v137;
      }

      v34 = v102;
      v48 = *(v35 + 16);
      v47 = *(v35 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_24F458928((v47 > 1), v48 + 1, 1);
        v34 = v102;
        v35 = v137;
      }

      ++v11;
      *(v35 + 16) = v48 + 1;
      v49 = (v35 + 40 * v48);
      v50 = v133;
      v49[4] = v132;
      v49[5] = v40;
      v49[6] = v50;
      v49[7] = v42;
      v49[8] = v43;
      v32 = v134;
      v28 = v39;
      v33 = v101;
    }

    while (v36 != 1);
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
  }

LABEL_18:
  if ((*(v131 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_isCancelable) & 1) == 0)
  {

    v36 = 0;
    v133 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  v51 = *(v35 + 16);

  v52 = v127;
  if (v51)
  {
    if (!*(v131 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_cancelTitle + 8))
    {
      v56._countAndFlagsBits = 0x432E6E6F69746341;
      v56._object = 0xED00006C65636E61;
      v57._countAndFlagsBits = 0;
      v57._object = 0xE000000000000000;
      localizedString(_:comment:)(v56, v57);
    }

    v55 = v121;
  }

  else
  {
    v53._countAndFlagsBits = 0x4F2E6E6F69746341;
    v53._object = 0xE90000000000004BLL;
    v54._countAndFlagsBits = 0;
    v54._object = 0xE000000000000000;
    localizedString(_:comment:)(v53, v54);
    v55 = v121;
  }

  if (*(v131 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_cancelAction))
  {
    *&v137 = *(v131 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_cancelAction);
    v58 = *(v123 + 16);

    v59 = v58;
    v36 = 0;
    sub_24ED0AB9C(&v137, v125, v124, v59, v31);
    v52 = v127;

    (v55[7])(v31, 0, 1, v52);
  }

  else
  {
    (v55[7])(v31, 1, 1, v52);
    v36 = 0;
  }

  sub_24F92A5D8();
  sub_24ED0B1A4(v31, v28);
  if ((v55[6])(v28, 1, v52) == 1)
  {
    sub_24ED0B214(v28);
    v137 = 0u;
    v138 = 0u;
    v139 = 0;
  }

  else
  {
    *(&v138 + 1) = v52;
    v139 = MEMORY[0x277D21CB8];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v137);
    (v55[4])(boxed_opaque_existential_1, v28, v52);
  }

  v61 = v114;
  sub_24F92A5F8();
  (*(v130 + 16))(v115, v61, v129);
  v62 = sub_24E61909C(0, 1, 1, MEMORY[0x277D84F90]);
  v11 = v62[2];
  v38 = v62[3];
  v133 = v62;
  v37 = (v11 + 1);
  if (v11 >= v38 >> 1)
  {
    goto LABEL_61;
  }

  while (1)
  {
    v64 = v129;
    v63 = v130;
    (*(v130 + 8))(v114, v129);
    sub_24ED0B214(v31);
    v65 = v133;
    v133[2] = v37;
    (*(v63 + 32))(v65 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v11, v115, v64);
LABEL_34:
    v37 = *(v32 + 16);
    if (!v37)
    {
      break;
    }

    v95[1] = v36;
    v66 = 0;
    v132 = v131 + OBJC_IVAR____TtC12GameStoreKit11AlertAction_destructiveActionIndex;
    v120 = v119 + 16;
    v115 = v103 + 7;
    v114 = (v119 + 32);
    v103 = (v121 + 2);
    v102 = (v130 + 16);
    v101 = v130 + 8;
    ++v121;
    v100 = v130 + 32;
    v99 = v37 - 1;
    v67 = v32 + 64;
    v98 = v32 + 64;
LABEL_36:
    v31 = (v67 + 40 * v66);
    v36 = v66;
    while (1)
    {
      v38 = *(v32 + 16);
      if (v36 >= v38)
      {
        break;
      }

      v69 = *(v31 - 4);
      v68 = *(v31 - 3);
      v71 = *(v31 - 2);
      v70 = *(v31 - 1);
      v72 = *v31;
      if (v70)
      {
        v73 = swift_allocObject();
        *(v73 + 16) = v70;
        *(v73 + 24) = v72;
        v11 = sub_24ED0B4D0;
        if (v68)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v11 = 0;
        v73 = 0;
        if (v68)
        {
LABEL_44:

          swift_bridgeObjectRetain_n();
          sub_24E5FCA4C(v70);
          sub_24F928A98();
          v74 = v119;
          v75 = v123;
          (*(v119 + 16))(v118, v125, v123);
          v96 = (*(v74 + 80) + 64) & ~*(v74 + 80);
          v97 = &v115[v96] & 0xFFFFFFFFFFFFFFF8;
          v76 = swift_allocObject();
          *(v76 + 2) = *(v75 + 16);
          *(v76 + 3) = v69;
          *(v76 + 4) = v68;
          *(v76 + 5) = v71;
          *(v76 + 6) = v11;
          *(v76 + 7) = v73;
          (*(v74 + 32))(&v76[v96], v118, v75);
          *&v76[v97] = v124;

          sub_24E5FCA4C(v11);
          sub_24F928AF8();
          if ((*(v132 + 8) & 1) == 0 && *v132 == v36)
          {
            sub_24F92A5C8();
          }

          v77 = v127;
          *(&v138 + 1) = v127;
          v139 = MEMORY[0x277D21CB8];
          v78 = __swift_allocate_boxed_opaque_existential_1(&v137);
          (*v103)(v78, v122, v77);
          v79 = v116;
          sub_24F92A5F8();
          (*v102)(v117, v79, v129);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v133 = sub_24E61909C(0, v133[2] + 1, 1, v133);
          }

          v81 = v133[2];
          v80 = v133[3];
          if (v81 >= v80 >> 1)
          {
            v133 = sub_24E61909C(v80 > 1, v81 + 1, 1, v133);
          }

          v66 = v36 + 1;

          sub_24E824448(v11);
          v11 = v129;
          v82 = v130;
          (*(v130 + 8))(v116, v129);
          (*v121)(v122, v127);
          v83 = v133;
          v133[2] = v81 + 1;
          (*(v82 + 32))(v83 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v81, v117, v11);
          v32 = v134;
          v67 = v98;
          if (v99 != v36)
          {
            goto LABEL_36;
          }

          goto LABEL_52;
        }
      }

      ++v36;
      sub_24E5FCA4C(v70);
      sub_24E824448(v11);
      v31 += 5;
      v32 = v134;
      if (v37 == v36)
      {
        goto LABEL_52;
      }
    }

LABEL_60:
    __break(1u);
LABEL_61:
    v133 = sub_24E61909C(v38 > 1, v37, 1, v133);
  }

LABEL_52:
  v84 = *(v131 + 32);
  if (!v84)
  {
    goto LABEL_57;
  }

  v85 = *(v84 + 16);
  v86 = *(v84 + 24);
  *&v137 = v85;
  *(&v137 + 1) = v86;

  if (!Artwork.URLTemplate.isBundleImage.getter())
  {
    v135 = v85;
    v136 = v86;
    if (!Artwork.URLTemplate.isSystemImage.getter())
    {

LABEL_57:
      v87 = v109;
      sub_24F9289D8();
      goto LABEL_58;
    }
  }

  sub_24F3E5448(MEMORY[0x277D84F90]);
  v87 = v109;
  sub_24F928948();

LABEL_58:
  (*(v104 + 16))(v128, v131 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v105);
  v88 = sub_24F92A628();
  (*(*(v88 - 8) + 56))(v108, 1, 1, v88);
  v89 = v110;
  (*(v110 + 16))(v107, v87, v126);

  v90 = v111;
  sub_24F92A5E8();
  sub_24F921AE8();
  swift_getWitnessTable();
  sub_24F92A028();
  v91 = sub_24E74EC40();
  v92 = v106;
  swift_retain_n();
  v93 = sub_24F92BEF8();
  *(&v138 + 1) = v91;
  v139 = MEMORY[0x277D225C0];
  *&v137 = v93;
  sub_24F92A958();

  (*(v112 + 8))(v90, v113);
  (*(v89 + 8))(v87, v126);
  __swift_destroy_boxed_opaque_existential_1(&v137);
  return v92;
}

uint64_t sub_24ED0A768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v28 = a2;
  v25 = sub_24F928AD8();
  v4 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v26 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F92A658();
  v31 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v30 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_24F9289E8();
  v8 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  v14 = sub_24F92A9E8();
  v15 = *(a1 + 32);
  v32 = v6;
  if (!v15)
  {
    goto LABEL_6;
  }

  v16 = v13;
  v18 = *(v15 + 16);
  v17 = *(v15 + 24);
  v35[0] = v18;
  v35[1] = v17;

  if (!Artwork.URLTemplate.isBundleImage.getter())
  {
    v33 = v18;
    v34 = v17;
    if (!Artwork.URLTemplate.isSystemImage.getter())
    {

      v13 = v16;
LABEL_6:
      sub_24F9289D8();
      goto LABEL_7;
    }
  }

  sub_24F3E5448(MEMORY[0x277D84F90]);
  v13 = v16;
  sub_24F928948();

LABEL_7:
  v24 = v13;
  (*(v4 + 16))(v26, a1 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v25);
  v19 = v29;
  (*(v8 + 16))(v10, v13, v29);

  v20 = v30;
  sub_24F92A648();
  sub_24F921B28();
  sub_24F921B08();
  v21 = sub_24E74EC40();
  swift_retain_n();
  v22 = sub_24F92BEF8();
  v35[3] = v21;
  v35[4] = MEMORY[0x277D225C0];
  v35[0] = v22;
  sub_24F92A958();

  (*(v31 + 8))(v20, v32);
  (*(v8 + 8))(v24, v19);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return v14;
}

uint64_t sub_24ED0AB9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a4;
  v20 = a3;
  v21 = a5;
  v7 = type metadata accessor for AlertActionImplementation();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v12 = sub_24F928AD8();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = *a1;
  sub_24F928A98();
  (*(v8 + 16))(v11, a2, v7);
  v14 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v15 = (v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v19;
  (*(v8 + 32))(v16 + v14, v11, v7);
  *(v16 + v15) = v13;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;

  return sub_24F928AF8();
}

uint64_t sub_24ED0AD80(uint64_t a1, uint64_t a2)
{
  v4[3] = type metadata accessor for Action();
  v4[4] = sub_24ED0B478(&qword_27F216DE8, type metadata accessor for Action);
  v4[0] = a2;
  type metadata accessor for AlertActionImplementation();

  swift_getWitnessTable();
  sub_24F1489C4(v4);

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_24ED0AE48(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {

    v1(v2);
    return sub_24E824448(v1);
  }

  else
  {
    v3 = *(result + 16);
    if (v3)
    {
      v4[3] = type metadata accessor for Action();
      v4[4] = sub_24ED0B478(&qword_27F216DE8, type metadata accessor for Action);
      v4[0] = v3;
      type metadata accessor for AlertActionImplementation();
      swift_retain_n();
      swift_getWitnessTable();
      sub_24F1489C4(v4);

      return __swift_destroy_boxed_opaque_existential_1(v4);
    }
  }

  return result;
}

uint64_t sub_24ED0AF54()
{

  return swift_deallocObject();
}

uint64_t sub_24ED0AF8C()
{
  v1 = type metadata accessor for AlertActionImplementation();
  v2 = *(*(v1 - 8) + 80);

  if (*(v0 + 48))
  {
  }

  v3 = v0 + ((v2 + 64) & ~v2);
  v4 = sub_24F921AE8();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = *(v1 + 28);
  v6 = sub_24F921B28();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_24ED0B0E8()
{
  type metadata accessor for AlertActionImplementation();
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v4[0] = *(v0 + 24);
  v4[1] = v2;
  v5 = v1;
  return sub_24ED0AE48(v4);
}

uint64_t sub_24ED0B1A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E218);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ED0B214(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E218);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24ED0B27C()
{
  v1 = (type metadata accessor for AlertActionImplementation() - 8);
  v2 = v0 + ((*(*v1 + 80) + 24) & ~*(*v1 + 80));
  v3 = sub_24F921AE8();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[9];
  v5 = sub_24F921B28();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_24ED0B3D0()
{
  v1 = *(type metadata accessor for AlertActionImplementation() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  return sub_24ED0AD80(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_24ED0B478(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PageGrid.DirectionalValue.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, a2, v7);
  v10 = *(v6 + 32);
  v10(a3, v9, a2);
  v11 = type metadata accessor for PageGrid.DirectionalValue();
  return (v10)(a3 + *(v11 + 36), a1, a2);
}

__n128 PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)@<Q0>(_OWORD *a1@<X0>, char *a2@<X1>, _OWORD *a3@<X2>, _OWORD *a4@<X3>, _OWORD *a5@<X4>, __n128 *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>, double a13@<D5>)
{
  v13 = *a2;
  v14 = a2[1];
  v15 = a6[1].n128_u8[0];
  *a7 = a8;
  *(a7 + 8) = a9;
  *(a7 + 16) = vdupq_n_s64(0xC0C81C8000000000);
  *(a7 + 32) = v13;
  *(a7 + 33) = v14;
  *(a7 + 40) = *a3;
  *(a7 + 56) = *a1;
  *(a7 + 72) = *a4;
  *(a7 + 88) = *a5;
  result = *a6;
  *(a7 + 104) = *a6;
  *(a7 + 120) = v15;
  *(a7 + 128) = a10;
  *(a7 + 136) = a11;
  *(a7 + 144) = a12;
  *(a7 + 152) = a13;
  return result;
}

uint64_t sub_24ED0B658(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24E861840(v2);
  }

  v3 = *(v2 + 2);
  v45[0] = (v2 + 32);
  v45[1] = v3;
  result = sub_24F92CD78();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 192;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 - 160;
          if (*v12 >= *(v12 - 20))
          {
            break;
          }

          v14 = *(v12 + 1);
          v35 = *v12;
          v36 = v14;
          v15 = *(v12 + 2);
          v16 = *(v12 + 3);
          v17 = *(v12 + 5);
          v39 = *(v12 + 4);
          v40 = v17;
          v37 = v15;
          v38 = v16;
          v18 = *(v12 + 6);
          v19 = *(v12 + 7);
          v20 = *(v12 + 9);
          v43 = *(v12 + 8);
          v44 = v20;
          v41 = v18;
          v42 = v19;
          v21 = *(v12 - 5);
          *(v12 + 4) = *(v12 - 6);
          *(v12 + 5) = v21;
          v22 = *(v12 - 7);
          *(v12 + 2) = *(v12 - 8);
          *(v12 + 3) = v22;
          v23 = *(v12 - 1);
          *(v12 + 8) = *(v12 - 2);
          *(v12 + 9) = v23;
          v24 = *(v12 - 3);
          *(v12 + 6) = *(v12 - 4);
          *(v12 + 7) = v24;
          v25 = *(v12 - 9);
          *v12 = *v13;
          *(v12 + 1) = v25;
          v12 -= 160;
          v26 = v36;
          *v13 = v35;
          *(v13 + 1) = v26;
          v27 = v37;
          v28 = v38;
          v29 = v40;
          *(v13 + 4) = v39;
          *(v13 + 5) = v29;
          *(v13 + 2) = v27;
          *(v13 + 3) = v28;
          v30 = v41;
          v31 = v42;
          v32 = v44;
          *(v13 + 8) = v43;
          *(v13 + 9) = v32;
          *(v13 + 6) = v30;
          *(v13 + 7) = v31;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 160;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_24F92B618();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    *&v35 = v7 + 32;
    *(&v35 + 1) = v6;
    sub_24ED0D864(&v35, v34, v45, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

double PageGrid.componentMeasuringSize(spanning:)(double a1)
{
  if (a1 == -1.0)
  {
    return v1[3] - (v1[44] + v1[42]);
  }

  v3 = fmax(a1, 1.0);
  return (v3 + -1.0) * v1[39] + v3 * v1[36];
}

uint64_t PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, char a4@<W3>, char *a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>, double a12@<D5>, double a13@<D6>, float64_t a14@<D7>, uint64_t a15, double a16)
{
  v24 = *a3;
  v154 = a5;

  sub_24ED0B658(&v154);

  v25 = v154;
  v26 = *(v154 + 2);
  if (!v26)
  {
    goto LABEL_139;
  }

  v27 = 0;
  v28 = a7 - a14 - a16;
  v29 = *(v154 + 2);
  v133 = a9;
  do
  {
    v30 = &v154[v27];
    v31 = *&v154[v27 + 32];
    v32 = *&v154[v27 + 40];
    if (v31 <= v28 && v28 < v32)
    {
      v39 = *(v30 + 3);
      v38 = v30[64];
      v37 = v30[65];
      v138 = *(v30 + 72);
      v148 = *(v30 + 88);
      v36 = *(v30 + 104);
      v141 = *(v30 + 120);
      v35 = *(v30 + 136);
      v34 = v30[152];
      v41 = *(v30 + 10);
      v40 = *(v30 + 11);
      v152 = *(v30 + 66);
      v153 = *(v30 + 35);
      v42 = *(v30 + 153);
      v43 = *(v30 + 39);
      goto LABEL_11;
    }

    v27 += 160;
    --v29;
  }

  while (v29);
  v31 = *(v154 + 4);
  if (v28 < v31)
  {
    v34 = v154[152];
    v35 = *(v154 + 136);
    v141 = *(v154 + 120);
    v36 = *(v154 + 104);
    v148 = *(v154 + 88);
    v138 = *(v154 + 72);
    v37 = v154[65];
    v38 = v154[64];
    v39 = *(v154 + 3);
    v32 = *(v154 + 5);
    v41 = *(v154 + 10);
    v40 = *(v154 + 11);
    v152 = *(v154 + 66);
    v153 = *(v154 + 35);
    v42 = *(v154 + 153);
    v43 = *(v154 + 39);
LABEL_11:
    *&v151[3] = v43;
    *v151 = v42;
    goto LABEL_13;
  }

  v44 = &v154[160 * v26];
  v31 = *(v44 - 16);
  v32 = *(v44 - 15);
  v39 = *(v44 - 7);
  v38 = *(v44 - 96);
  v37 = *(v44 - 95);
  v152 = *(v44 - 94);
  v153 = *(v44 - 45);
  v138 = *(v44 - 88);
  v148 = *(v44 - 72);
  v36 = *(v44 - 56);
  v141 = *(v44 - 40);
  v35 = *(v44 - 24);
  v34 = *(v44 - 8);
  *&v151[3] = *(v44 - 1);
  *v151 = *(v44 - 7);
  v41 = *v44;
  v40 = *(v44 + 1);
LABEL_13:
  v140 = v39;
  v134 = a11;
  v132 = a13;
  v142 = v36;
  if (v24)
  {
    v45 = *&v36.i64[1];
  }

  else
  {
    v45 = *v36.i64;
  }

  v46 = MEMORY[0x277D768C8];
  v143 = v41;
  v144 = v40;
  v139 = v35;
  v130 = v35.f64[1];
  if (v34 >= 2)
  {
    v47 = 1580.0;
    if (a7 <= 1580.0)
    {
      v47 = a7;
    }

    sub_24E6B00B4(v47);
  }

  v149 = a7;

  sub_24F92C228();
  v49 = *(&v148 + 1);
  if (*&v148 == -12345.0 && *(&v148 + 1) == -12345.0)
  {
    if (v24)
    {
      v50 = *(&v140 + 1);
    }

    else
    {
      v50 = *&v140;
    }

    for (i = 0.0; v48 > 0.0; v48 = v48 - v52)
    {
      if (i == 0.0)
      {
        v52 = v50;
      }

      else
      {
        v52 = v45 + v50;
      }

      if (v52 >= v48)
      {
        break;
      }

      i = i + 1.0;
    }
  }

  else
  {
    v53 = *&v138;
    if (v24)
    {
      v53 = *(&v138 + 1);
    }

    if (v53 <= 0.0)
    {
      if (v24)
      {
        v58 = v37;
      }

      else
      {
        v58 = v38;
      }

      i = 1.0;
      if ((v58 & 1) == 0)
      {
        i = *(&v148 + 1);
        if (!v24)
        {
          v137 = vzip1q_s64(v142, v141);
          i = *&v148;
          goto LABEL_57;
        }

        goto LABEL_54;
      }
    }

    else
    {
      for (j = 0.0; v48 > 0.0; v48 = v48 - v56)
      {
        if (j == 0.0)
        {
          v55 = -0.0;
        }

        else
        {
          v55 = v45;
        }

        v56 = v53 + v55;
        if (v56 >= v48)
        {
          break;
        }

        j = j + 1.0;
      }

      if (v24)
      {
        v57 = *(&v148 + 1);
      }

      else
      {
        j = j + (v48 - *v142.i64) / *&v138;
        v57 = *&v148;
      }

      if (v57 >= j)
      {
        i = j;
      }

      else
      {
        i = v57;
      }
    }
  }

  if ((v24 & 1) == 0)
  {
    v59 = vzip1q_s64(v142, v141);
    goto LABEL_56;
  }

LABEL_54:
  v59 = vzip2q_s64(v142, v141);
LABEL_56:
  v137 = v59;
LABEL_57:
  if (*&v140 != -12345.0 || *(&v140 + 1) != -12345.0)
  {
    if (v24)
    {
      v61 = *(&v140 + 1);
    }

    else
    {
      v61 = *&v140;
    }

LABEL_96:
    v77 = v61;
    goto LABEL_97;
  }

  if (a4)
  {
    v62 = *(&v143 + 1);
  }

  else
  {
    v62 = *(v46 + 8);
  }

  if (a4)
  {
    v63 = *(&v144 + 1);
  }

  else
  {
    v63 = *(v46 + 24);
  }

  v64 = v139.f64[0];
  v65 = v130;
  if (v34 >= 2)
  {
    v66 = 1580.0;
    if (v149 <= 1580.0)
    {
      v66 = v149;
    }

    v67 = sub_24E6B00B4(v66);
    v49 = *(&v148 + 1);
    v65 = dbl_24F9980E8[v67];
    v64 = a10;
    if (v65 > a10)
    {
      v64 = dbl_24F9980E8[v67];
    }

    if (v65 <= a12)
    {
      v65 = a12;
    }
  }

  v68 = v62 + v64 + v63 + v65;
  v69 = v45 * ceil(i + -1.0);
  if (v28 >= v32)
  {
    v70 = v32;
  }

  else
  {
    v70 = v28;
  }

  v61 = (v70 - v69 - v68) / i;
  if (v24)
  {
    v71 = v37;
  }

  else
  {
    v71 = v38;
  }

  if ((v71 & 1) == 0)
  {
    goto LABEL_96;
  }

  if (v24)
  {
    v72 = v49;
  }

  else
  {
    v72 = *&v148;
  }

  v73 = v139.f64[0];
  if (v34 >= 2)
  {
    v74 = 1580.0;
    if (v149 <= 1580.0)
    {
      v74 = v149;
    }

    v135 = v61;
    v128 = v72;
    v75 = sub_24E6B00B4(v74);
    v61 = v135;
    v76 = dbl_24F9980E8[v75];
    v73 = a10;
    if (v76 > a10)
    {
      v73 = dbl_24F9980E8[v75];
    }

    if (v76 <= a12)
    {
      v76 = a12;
    }

    v72 = v128;
    v130 = v76;
  }

  v77 = (v70 - v45 * ceil(v72 + -1.0) - (v62 + v73 + v63 + v130)) / v72;
LABEL_97:
  v78 = *(v25 + 2);
  if (!v78)
  {
    __break(1u);
LABEL_139:
    __break(1u);

    __break(1u);
    return result;
  }

  v127 = v77;
  v136 = v61;
  v129 = v34;
  v131 = v37;
  v79 = v38;
  v80 = a1;
  v81 = a2;
  v82 = &v25[160 * v78];
  v83 = *(v82 - 14);
  v84 = *(v82 - 13);
  v85 = *(v82 - 6);
  v126 = *(v82 - 7);
  v87 = *(v82 - 3);
  v86 = *(v82 - 2);
  v88 = *(v82 - 8);
  v89 = *(v82 + 1);
  v124 = *(v82 - 15);
  v125 = *(v82 + 3);

  if (v83 == -12345.0 && v84 == -12345.0)
  {
    if (!v24)
    {
      v85 = v126;
    }

    if (a4)
    {
      v101 = v89;
    }

    else
    {
      v101 = *(MEMORY[0x277D768C8] + 8);
    }

    if (a4)
    {
      v102 = v125;
    }

    else
    {
      v102 = *(MEMORY[0x277D768C8] + 24);
    }

    v100 = v143;
    v99 = v144;
    if (v88 > 1)
    {
      v105 = 1580.0;
      if (v149 <= 1580.0)
      {
        v105 = v149;
      }

      result = sub_24E6B00B4(v105);
      v100 = v143;
      v99 = v144;
      v104 = dbl_24F9980E8[result];
      v103 = a10;
      if (v104 > a10)
      {
        v103 = dbl_24F9980E8[result];
      }

      if (v104 <= a12)
      {
        v104 = a12;
      }
    }

    else
    {
      v103 = v87;
      v104 = v86;
    }

    v93 = a14;
    v94 = v132;
    v95 = v81;
    v96 = v79;
    v106 = v124;
    v107 = v101 + v103 + v102 + v104;
    v108 = ceil(i + -1.0) * v85;
    if (v28 < v124)
    {
      v106 = v28;
    }

    v92 = (v106 - v108 - v107) / i;
    v97 = v131;
    v98 = v129;
  }

  else
  {
    if (v24)
    {
      v92 = v84;
    }

    else
    {
      v92 = v83;
    }

    v93 = a14;
    v94 = v132;
    v95 = v81;
    v96 = v79;
    v97 = v131;
    v98 = v129;
    v100 = v143;
    v99 = v144;
  }

  if (v98)
  {
    if (v98 == 1)
    {
      v109.f64[0] = v93;
      v110 = a16;
      v109.f64[1] = a16;
      v112 = v139;
      v111 = v140;
      v113 = vaddq_f64(v139, v109);
    }

    else
    {
      v120 = 1580.0;
      if (v149 <= 1580.0)
      {
        v120 = v149;
      }

      result = sub_24E6B00B4(v120);
      v100 = v143;
      v99 = v144;
      v93 = a14;
      v121 = &dbl_24F9980E8[result];
      v122 = vld1q_dup_f64(v121);
      v123.f64[0] = a10;
      v123.f64[1] = a12;
      v113 = vbslq_s8(vcgeq_f64(v123, v122), v123, v122);
      v110 = a16;
      v112 = v139;
      v111 = v140;
    }

    v119 = v142;
    v115 = v136;
  }

  else
  {
    sub_24F92C228();
    result = sub_24F92C228();
    v110 = a16;
    v100 = v143;
    v99 = v144;
    v93 = a14;
    v115 = v136;
    v116 = i + -1.0;
    if (i + -1.0 < 0.0)
    {
      v116 = 0.0;
    }

    v117 = (v114 - ceil(v116 * *v137.i64 + i * v136)) * 0.5;
    if (v117 < 0.0)
    {
      v117 = 0.0;
    }

    v118 = vdupq_lane_s64(*&v117, 0);
    v112 = v139;
    v111 = v140;
    v113 = vbslq_s8(vcgeq_f64(v118, v139), v118, v139);
    v119 = v142;
  }

  *a6 = v80;
  *(a6 + 8) = v95;
  *(a6 + 16) = v24;
  *(a6 + 24) = v149;
  *(a6 + 32) = a8;
  *(a6 + 40) = v133;
  *(a6 + 48) = a10;
  *(a6 + 56) = v134;
  *(a6 + 64) = a12;
  *(a6 + 72) = v94;
  *(a6 + 80) = v93;
  *(a6 + 88) = a15;
  *(a6 + 96) = v110;
  *(a6 + 104) = v31;
  *(a6 + 112) = v32;
  *(a6 + 120) = v111;
  *(a6 + 136) = v96;
  *(a6 + 137) = v97;
  *(a6 + 142) = v153;
  *(a6 + 138) = v152;
  *(a6 + 144) = v138;
  *(a6 + 160) = v148;
  *(a6 + 176) = v119;
  *(a6 + 192) = v141;
  *(a6 + 208) = v112;
  *(a6 + 224) = v98;
  *(a6 + 228) = *&v151[3];
  *(a6 + 225) = *v151;
  *(a6 + 232) = v100;
  *(a6 + 248) = v99;
  *(a6 + 264) = v25;
  *(a6 + 272) = a4 & 1;
  *(a6 + 280) = i;
  *(a6 + 288) = v115;
  *(a6 + 296) = v127;
  *(a6 + 304) = v92;
  *(a6 + 312) = v137;
  *(a6 + 328) = 0;
  *(a6 + 336) = v113.f64[0];
  *(a6 + 344) = 0;
  *(a6 + 352) = v113.f64[1];
  *(a6 + 360) = 0;
  *(a6 + 368) = v113.f64[0];
  *(a6 + 376) = 0;
  *(a6 + 384) = v113.f64[1];
  return result;
}

uint64_t PageGrid.Direction.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

int64x2_t static PageGrid.DirectionalValue.dynamicValue.getter@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(0xC0C81C8000000000);
  *a1 = result;
  return result;
}

uint64_t PageGrid.DirectionalValue.init(horizontal:vertical:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(*(a3 - 8) + 32);
  v9(a3 - 8, a4, a1);
  v7 = a4 + *(type metadata accessor for PageGrid.DirectionalValue() + 36);

  return v9(v7, a2, a3);
}

uint64_t PageGrid.DirectionalValue.debugDescription.getter()
{
  sub_24F92CDC8();
  MEMORY[0x253050C20](0x202C29482820, 0xE600000000000000);
  sub_24F92CDC8();
  MEMORY[0x253050C20](693512224, 0xE400000000000000);
  return 0;
}

uint64_t static PageGrid.DirectionalValue.== infix(_:_:)()
{
  if ((sub_24F92AFF8() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PageGrid.DirectionalValue();
  return sub_24F92AFF8() & 1;
}

uint64_t PageGrid.DirectionalValue.hashValue.getter()
{
  sub_24F92D068();
  sub_24F92AEF8();
  sub_24F92AEF8();
  return sub_24F92D0B8();
}

uint64_t sub_24ED0C4FC()
{
  sub_24F92D068();
  PageGrid.DirectionalValue.hash(into:)();
  return sub_24F92D0B8();
}

void static PageGrid.HorizontalMargins.zero.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t PageGrid.HorizontalMargins.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      return MEMORY[0x253052A00](2);
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x253052A00](v3);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x253052A30](v4);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = v1;
  }

  else
  {
    v5 = 0;
  }

  return MEMORY[0x253052A30](v5);
}

uint64_t PageGrid.HorizontalMargins.hashValue.getter()
{
  sub_24F92D068();
  PageGrid.HorizontalMargins.hash(into:)();
  return sub_24F92D0B8();
}

uint64_t sub_24ED0C62C()
{
  sub_24F92D068();
  PageGrid.HorizontalMargins.hash(into:)();
  return sub_24F92D0B8();
}

uint64_t sub_24ED0C684()
{
  sub_24F92D068();
  PageGrid.HorizontalMargins.hash(into:)();
  return sub_24F92D0B8();
}

__n128 PageGrid.Breakpoint.init(range:columnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)@<Q0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>, double a11@<D5>)
{
  v11 = a4[1].n128_u8[0];
  *a5 = a6;
  *(a5 + 8) = a7;
  *(a5 + 16) = *a1;
  *(a5 + 32) = 0;
  v12 = vdupq_n_s64(0xC0C81C8000000000);
  *(a5 + 40) = v12;
  *(a5 + 56) = v12;
  *(a5 + 72) = *a2;
  *(a5 + 88) = *a3;
  result = *a4;
  *(a5 + 104) = *a4;
  *(a5 + 120) = v11;
  *(a5 + 128) = a8;
  *(a5 + 136) = a9;
  *(a5 + 144) = a10;
  *(a5 + 152) = a11;
  return result;
}

__n128 PageGrid.Breakpoint.init(range:centeredColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)@<Q0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>, double a11@<D5>)
{
  v11 = a4[1].n128_u8[0];
  *a5 = a6;
  *(a5 + 8) = a7;
  *(a5 + 16) = *a1;
  *(a5 + 32) = 0;
  v12 = vdupq_n_s64(0xC0C81C8000000000);
  if (v11 == 1)
  {
    LOBYTE(v11) = 0;
  }

  *(a5 + 40) = v12;
  __asm { FMOV            V0.2D, #1.0 }

  *(a5 + 56) = _Q0;
  *(a5 + 72) = *a2;
  *(a5 + 88) = *a3;
  result = *a4;
  *(a5 + 104) = *a4;
  *(a5 + 120) = v11;
  *(a5 + 128) = a8;
  *(a5 + 136) = a9;
  *(a5 + 144) = a10;
  *(a5 + 152) = a11;
  return result;
}

void PageGrid.HorizontalMargins.centered.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2 == 1)
  {
    LOBYTE(v2) = 0;
  }

  *a1 = *v1;
  *(a1 + 16) = v2;
}

uint64_t PageGrid.Breakpoint.debugDescription.getter()
{
  sub_24F92C888();
  MEMORY[0x253050C20](0xD000000000000017, 0x800000024FA5AA70);
  sub_24F92CA38();
  MEMORY[0x253050C20](3943982, 0xE300000000000000);
  sub_24F92CA38();
  MEMORY[0x253050C20](0, 0xE000000000000000);

  MEMORY[0x253050C20](0xD000000000000012, 0x800000024FA5AA90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E230);
  sub_24F92CA38();
  MEMORY[0x253050C20](0xD000000000000019, 0x800000024FA5AAB0);
  sub_24F92CA38();
  MEMORY[0x253050C20](0xD000000000000012, 0x800000024FA5AAD0);
  sub_24F92CA38();
  MEMORY[0x253050C20](0xD000000000000017, 0x800000024FA5AAF0);
  sub_24F92CA38();
  MEMORY[0x253050C20](0xD000000000000014, 0x800000024FA5AB10);
  sub_24F92CA38();
  MEMORY[0x253050C20](0xD000000000000018, 0x800000024FA5AB30);
  sub_24F92CA38();
  MEMORY[0x253050C20](0xD00000000000002ALL, 0x800000024FA5AB50);
  type metadata accessor for UIEdgeInsets(0);
  sub_24F92CA38();
  return 0;
}

uint64_t PageGrid.Breakpoint.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[5];
  v6 = v0[6];
  v8 = v0[7];
  v7 = v0[8];
  v21 = v0[9];
  v22 = v0[10];
  v23 = v0[11];
  v24 = v0[12];
  v27 = v0[17];
  v28 = v0[16];
  v25 = v0[19];
  v26 = v0[18];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x253052A30](*&v1);
  if (v2 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v2;
  }

  MEMORY[0x253052A30](*&v9);
  if (v3 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v3;
  }

  MEMORY[0x253052A30](*&v10);
  if (v4 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x253052A30](*&v11);
  sub_24F92D088();
  sub_24F92D088();
  if (v5 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v5;
  }

  MEMORY[0x253052A30](*&v12);
  if (v6 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v6;
  }

  MEMORY[0x253052A30](*&v13);
  if (v8 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v8;
  }

  MEMORY[0x253052A30](*&v14);
  if (v7 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v7;
  }

  MEMORY[0x253052A30](*&v15);
  v16 = v21;
  if (v21 == 0.0)
  {
    v16 = 0.0;
  }

  MEMORY[0x253052A30](*&v16);
  v17 = v22;
  if (v22 == 0.0)
  {
    v17 = 0.0;
  }

  MEMORY[0x253052A30](*&v17);
  v18 = v23;
  if (v23 == 0.0)
  {
    v18 = 0.0;
  }

  MEMORY[0x253052A30](*&v18);
  v19 = v24;
  if (v24 == 0.0)
  {
    v19 = 0.0;
  }

  MEMORY[0x253052A30](*&v19);
  PageGrid.HorizontalMargins.hash(into:)();

  return UIEdgeInsets.hash(into:)(v28, v27, v26, v25);
}

uint64_t PageGrid.Breakpoint.hashValue.getter()
{
  sub_24F92D068();
  PageGrid.Breakpoint.hash(into:)();
  return sub_24F92D0B8();
}

uint64_t sub_24ED0CCCC()
{
  sub_24F92D068();
  PageGrid.Breakpoint.hash(into:)();
  return sub_24F92D0B8();
}

uint64_t sub_24ED0CD10()
{
  sub_24F92D068();
  PageGrid.Breakpoint.hash(into:)();
  return sub_24F92D0B8();
}

uint64_t PageGrid.name.getter()
{
  v1 = *v0;

  return v1;
}

__n128 PageGrid.activeBreakPoint.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 216);
  *(a1 + 96) = *(v1 + 200);
  *(a1 + 112) = v2;
  v3 = *(v1 + 248);
  *(a1 + 128) = *(v1 + 232);
  *(a1 + 144) = v3;
  v4 = *(v1 + 152);
  *(a1 + 32) = *(v1 + 136);
  *(a1 + 48) = v4;
  v5 = *(v1 + 184);
  *(a1 + 64) = *(v1 + 168);
  *(a1 + 80) = v5;
  result = *(v1 + 104);
  v7 = *(v1 + 120);
  *a1 = result;
  *(a1 + 16) = v7;
  return result;
}

double PageGrid.largestPossibleComponentMeasuringSize(spanning:)(double a1)
{
  if (a1 == -1.0)
  {
    return v1[3] - (v1[44] + v1[42]);
  }

  v3 = fmax(a1, 1.0);
  return (v3 + -1.0) * v1[39] + v3 * v1[38];
}

uint64_t PageGrid.debugDescription.getter()
{
  v13 = *(v0 + 264);
  v1 = *(v0 + 272);
  sub_24F92C888();
  MEMORY[0x253050C20](0xD000000000000014, 0x800000024FA5AB80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  sub_24F92CA38();
  MEMORY[0x253050C20](0xD000000000000010, 0x800000024FA5ABA0);
  sub_24F92CA38();
  MEMORY[0x253050C20](0xD000000000000015, 0x800000024FA5ABC0);
  v2 = sub_24F92BA38();
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v2);

  MEMORY[0x253050C20](0xD000000000000016, 0x800000024FA5ABE0);
  v5 = sub_24F92BA38();
  MEMORY[0x253050C20](v5);

  MEMORY[0x253050C20](0xD000000000000015, 0x800000024FA5AC00);
  type metadata accessor for UIEdgeInsets(0);
  sub_24F92CA38();
  MEMORY[0x253050C20](0xD000000000000028, 0x800000024FA5AC20);
  MEMORY[0x253050C20](v3, v4);

  MEMORY[0x253050C20](0xD000000000000012, 0x800000024FA5AAD0);
  v6 = sub_24F92BA38();
  MEMORY[0x253050C20](v6);

  MEMORY[0x253050C20](0xD000000000000012, 0x800000024FA5AA90);
  v7 = sub_24F92BA38();
  MEMORY[0x253050C20](v7);

  MEMORY[0x253050C20](0xD000000000000021, 0x800000024FA5AC50);
  v8 = sub_24F92BA38();
  MEMORY[0x253050C20](v8);

  MEMORY[0x253050C20](0xD000000000000017, 0x800000024FA5AAF0);
  v9 = sub_24F92BA38();
  MEMORY[0x253050C20](v9);

  MEMORY[0x253050C20](0xD000000000000014, 0x800000024FA5AB10);
  v10 = sub_24F92BA38();
  MEMORY[0x253050C20](v10);

  MEMORY[0x253050C20](0xD000000000000018, 0x800000024FA5AB30);
  sub_24F92CA38();
  MEMORY[0x253050C20](0xD000000000000017, 0x800000024FA5AC80);
  sub_24F92CA38();
  MEMORY[0x253050C20](0xD000000000000012, 0x800000024FA5ACA0);
  v11 = MEMORY[0x253050F40](v13, &type metadata for PageGrid.Breakpoint);
  MEMORY[0x253050C20](v11);

  return 0;
}

__n128 PageGrid.Breakpoint.centered.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  if (v2 == 1)
  {
    LOBYTE(v2) = 0;
  }

  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = *(v1 + 56);
  *(a1 + 72) = *(v1 + 72);
  *(a1 + 88) = *(v1 + 88);
  *(a1 + 104) = *(v1 + 104);
  *(a1 + 120) = v2;
  result = *(v1 + 128);
  v5 = *(v1 + 144);
  *(a1 + 128) = result;
  *(a1 + 144) = v5;
  return result;
}

uint64_t PageGrid.centered.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v42 = *(v1 + 32);
  v43 = *(v1 + 24);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 72);
  v10 = *(v1 + 80);
  v11 = *(v1 + 88);
  v12 = *(v1 + 96);
  v13 = *(v1 + 264);
  v14 = *(v1 + 272);
  v49[0] = *(v1 + 16);
  v15 = *(v13 + 16);
  if (v15)
  {
    v41 = v3;
    v47 = MEMORY[0x277D84F90];

    sub_24F45855C(0, v15, 0);
    v16 = 0;
    v17 = v47;
    v18 = *(v47 + 16);
    v19 = 160 * v18;
    do
    {
      v20 = *(v13 + v16 + 32);
      v21 = *(v13 + v16 + 48);
      v22 = *(v13 + v16 + 88);
      v23 = *(v13 + v16 + 104);
      v24 = *(v13 + v16 + 120);
      v25 = *(v13 + v16 + 136);
      v26 = *(v13 + v16 + 160);
      v27 = *(v13 + v16 + 176);
      if (*(v13 + v16 + 152) == 1)
      {
        v28 = 0;
      }

      else
      {
        v28 = *(v13 + v16 + 152);
      }

      v48 = v17;
      v29 = *(v17 + 24);
      v30 = v18 + 1;
      if (v18 >= v29 >> 1)
      {
        v39 = *(v13 + v16 + 176);
        v40 = *(v13 + v16 + 160);
        v37 = *(v13 + v16 + 104);
        v38 = *(v13 + v16 + 88);
        v35 = *(v13 + v16 + 136);
        v36 = *(v13 + v16 + 120);
        v33 = *(v13 + v16 + 48);
        v34 = *(v13 + v16 + 32);
        sub_24F45855C((v29 > 1), v18 + 1, 1);
        v21 = v33;
        v20 = v34;
        v25 = v35;
        v24 = v36;
        v23 = v37;
        v22 = v38;
        v27 = v39;
        v26 = v40;
        v17 = v48;
      }

      *(v17 + 16) = v30;
      v31 = v17 + v19 + v16;
      *(v31 + 32) = v20;
      *(v31 + 48) = v21;
      *(v31 + 64) = 0;
      *(v31 + 66) = v45;
      *(v31 + 70) = v46;
      *(v31 + 72) = 0;
      *(v31 + 80) = 0;
      *(v31 + 88) = v22;
      *(v31 + 104) = v23;
      *(v31 + 120) = v24;
      *(v31 + 136) = v25;
      *(v31 + 152) = v28;
      *(v31 + 156) = *&v44[3];
      *(v31 + 153) = *v44;
      *(v31 + 160) = v26;
      *(v31 + 176) = v27;
      v16 += 160;
      v18 = v30;
      --v15;
    }

    while (v15);
    v3 = v41;
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  return PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(v3, v4, v49, v14, v17, a1, v43, v42, v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t UIEdgeInsets.hash(into:)(double a1, double a2, double a3, double a4)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x253052A30](*&a1);
  if (a2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a2;
  }

  MEMORY[0x253052A30](*&v7);
  if (a3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a3;
  }

  MEMORY[0x253052A30](*&v8);
  if (a4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a4;
  }

  return MEMORY[0x253052A30](*&v9);
}

uint64_t UIEdgeInsets.hashValue.getter(double a1, double a2, double a3, double a4)
{
  sub_24F92D068();
  UIEdgeInsets.hash(into:)(a1, a2, a3, a4);
  return sub_24F92D0B8();
}

uint64_t sub_24ED0D714()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_24F92D068();
  UIEdgeInsets.hash(into:)(v1, v2, v3, v4);
  return sub_24F92D0B8();
}

uint64_t sub_24ED0D788()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_24F92D068();
  UIEdgeInsets.hash(into:)(v1, v2, v3, v4);
  return sub_24F92D0B8();
}

double static PageGrid.DirectionalValue<>.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_27F210640 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_27F22E220;
  *a1 = xmmword_27F22E220;
  return result;
}

uint64_t sub_24ED0D864(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v91 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v92 = *v91;
    if (!*v91)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_24E86164C(v7);
      v7 = result;
    }

    v83 = (v7 + 16);
    v84 = *(v7 + 16);
    if (v84 >= 2)
    {
      while (*a3)
      {
        v85 = (v7 + 16 * v84);
        v86 = *v85;
        v87 = &v83[2 * v84];
        v88 = v87[1];
        sub_24ED0DEBC((*a3 + 160 * *v85), (*a3 + 160 * *v87), (*a3 + 160 * v88), v92);
        if (v4)
        {
        }

        if (v88 < v86)
        {
          goto LABEL_114;
        }

        if (v84 - 2 >= *v83)
        {
          goto LABEL_115;
        }

        *v85 = v86;
        v85[1] = v88;
        v89 = *v83 - v84;
        if (*v83 < v84)
        {
          goto LABEL_116;
        }

        v84 = *v83 - 1;
        result = memmove(v87, v87 + 2, 16 * v89);
        *v83 = v84;
        if (v84 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 160 * v6);
      v10 = 160 * v8;
      v11 = (*a3 + 160 * v8);
      v12 = *v11;
      v13 = v8 + 2;
      v14 = v11 + 40;
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 20;
        v17 = v16 >= v15;
        ++v13;
        v15 = v16;
        if ((((v9 < v12) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 160 * v6 - 160;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v22 + v18);
            v105 = *(v22 + v10 + 96);
            v107 = *(v22 + v10 + 112);
            v109 = *(v22 + v10 + 128);
            v111 = *(v22 + v10 + 144);
            v97 = *(v22 + v10 + 32);
            v99 = *(v22 + v10 + 48);
            v101 = *(v22 + v10 + 64);
            v103 = *(v22 + v10 + 80);
            v93 = *(v22 + v10);
            v95 = *(v22 + v10 + 16);
            result = memmove((v22 + v10), (v22 + v18), 0xA0uLL);
            v21[6] = v105;
            v21[7] = v107;
            v21[8] = v109;
            v21[9] = v111;
            v21[2] = v97;
            v21[3] = v99;
            v21[4] = v101;
            v21[5] = v103;
            *v21 = v93;
            v21[1] = v95;
          }

          ++v20;
          v18 -= 160;
          v10 += 160;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24E615ED8(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v36 = *(v7 + 16);
    v35 = *(v7 + 24);
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      result = sub_24E615ED8((v35 > 1), v36 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v37;
    v38 = v7 + 32;
    v39 = (v7 + 32 + 16 * v36);
    *v39 = v8;
    v39[1] = v6;
    v92 = *v91;
    if (!*v91)
    {
      goto LABEL_127;
    }

    if (v36)
    {
      while (1)
      {
        v40 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v41 = *(v7 + 32);
          v42 = *(v7 + 40);
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_57:
          if (v44)
          {
            goto LABEL_104;
          }

          v57 = (v7 + 16 * v37);
          v59 = *v57;
          v58 = v57[1];
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_106;
          }

          v63 = (v38 + 16 * v40);
          v65 = *v63;
          v64 = v63[1];
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_111;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v40 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v67 = (v7 + 16 * v37);
        v69 = *v67;
        v68 = v67[1];
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_72:
        if (v62)
        {
          goto LABEL_108;
        }

        v70 = (v38 + 16 * v40);
        v72 = *v70;
        v71 = v70[1];
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_110;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v40 - 1 >= v37)
        {
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
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v78 = (v38 + 16 * (v40 - 1));
        v79 = *v78;
        v80 = (v38 + 16 * v40);
        v81 = v80[1];
        sub_24ED0DEBC((*a3 + 160 * *v78), (*a3 + 160 * *v80), (*a3 + 160 * v81), v92);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_99;
        }

        if (v40 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *(v7 + 16);
        if (v40 >= v82)
        {
          goto LABEL_101;
        }

        v37 = v82 - 1;
        result = memmove((v38 + 16 * v40), v80 + 2, 16 * (v82 - 1 - v40));
        *(v7 + 16) = v82 - 1;
        if (v82 <= 2)
        {
          goto LABEL_3;
        }
      }

      v45 = v38 + 16 * v37;
      v46 = *(v45 - 64);
      v47 = *(v45 - 56);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_102;
      }

      v50 = *(v45 - 48);
      v49 = *(v45 - 40);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_103;
      }

      v52 = (v7 + 16 * v37);
      v54 = *v52;
      v53 = v52[1];
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_105;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_107;
      }

      if (v56 >= v48)
      {
        v74 = (v38 + 16 * v40);
        v76 = *v74;
        v75 = v74[1];
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_113;
        }

        if (v43 < v77)
        {
          v40 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 160 * v6;
  v25 = v8 - v6;
LABEL_30:
  v26 = v25;
  v27 = v24;
  while (1)
  {
    v28 = (v27 - 160);
    if (*v27 >= *(v27 - 160))
    {
LABEL_29:
      ++v6;
      v24 += 160;
      --v25;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v106 = *(v27 + 96);
    v108 = *(v27 + 112);
    v110 = *(v27 + 128);
    v112 = *(v27 + 144);
    v98 = *(v27 + 32);
    v100 = *(v27 + 48);
    v102 = *(v27 + 64);
    v104 = *(v27 + 80);
    v94 = *v27;
    v96 = *(v27 + 16);
    v29 = *(v27 - 48);
    *(v27 + 96) = *(v27 - 64);
    *(v27 + 112) = v29;
    v30 = *(v27 - 16);
    *(v27 + 128) = *(v27 - 32);
    *(v27 + 144) = v30;
    v31 = *(v27 - 112);
    *(v27 + 32) = *(v27 - 128);
    *(v27 + 48) = v31;
    v32 = *(v27 - 80);
    *(v27 + 64) = *(v27 - 96);
    *(v27 + 80) = v32;
    v33 = *(v27 - 144);
    *v27 = *v28;
    *(v27 + 16) = v33;
    v27 -= 160;
    v28[6] = v106;
    v28[7] = v108;
    v28[8] = v110;
    v28[9] = v112;
    v28[2] = v98;
    v28[3] = v100;
    v28[4] = v102;
    v28[5] = v104;
    *v28 = v94;
    v28[1] = v96;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_24ED0DEBC(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 160;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 160;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[20 * v9] <= a4)
    {
      memmove(a4, __dst, 160 * v9);
    }

    v12 = &v4[20 * v9];
    if (v8 < 160)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 20;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 20;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 20;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0xA0uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[20 * v11] <= a4)
  {
    memmove(a4, __src, 160 * v11);
  }

  v12 = &v4[20 * v11];
  if (v10 >= 160 && v6 > v7)
  {
LABEL_20:
    v15 = v6 - 20;
    v5 -= 20;
    v16 = v12;
    do
    {
      v17 = v5 + 20;
      v18 = *(v16 - 20);
      v16 -= 20;
      if (v18 < *v15)
      {
        if (v17 != v6)
        {
          memmove(v5, v6 - 20, 0xA0uLL);
        }

        if (v12 <= v4 || (v6 -= 20, v15 <= v7))
        {
          v6 = v15;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v17 != v12)
      {
        memmove(v5, v16, 0xA0uLL);
      }

      v5 -= 20;
      v12 = v16;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v19 = (v12 - v4) / 160;
  if (v6 != v4 || v6 >= &v4[20 * v19])
  {
    memmove(v6, v4, 160 * v19);
  }

  return 1;
}

uint64_t _s12GameStoreKit8PageGridV10BreakpointV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (*(a1 + 32) == *(a2 + 32))
  {
    v3 = ~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 72), *(a2 + 72)), vceqq_f64(*(a1 + 88), *(a2 + 88))), xmmword_24F997D20)) & 0xF;
    v4 = vaddvq_s16(vandq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), vuzp1q_s32(vceqq_f64(*(a1 + 40), *(a2 + 40)), vceqq_f64(*(a1 + 56), *(a2 + 56)))), xmmword_24F997D10)) == 255 && v3 == 0;
    if (v4 && ((*(a1 + 33) ^ *(a2 + 33)) & 1) == 0)
    {
      v6 = *(a2 + 104);
      v5 = *(a2 + 112);
      v7 = *(a2 + 120);
      if (!*(a1 + 120))
      {
        v2 = 0;
        if (*(a2 + 120))
        {
          return v2 & 1;
        }

LABEL_13:
        if (*(a1 + 104) != v6 || *(a1 + 112) != v5)
        {
          return v2 & 1;
        }

LABEL_18:
        v2 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 128), *(a2 + 128)), vceqq_f64(*(a1 + 144), *(a2 + 144)))));
        return v2 & 1;
      }

      if (*(a1 + 120) == 1)
      {
        if (v7 != 1)
        {
          v2 = 0;
          return v2 & 1;
        }

        v2 = 0;
        goto LABEL_13;
      }

      v2 = 0;
      if (v7 == 2 && !(*&v5 | *&v6))
      {
        goto LABEL_18;
      }
    }
  }

  return v2 & 1;
}

BOOL _s12GameStoreKit8PageGridV17HorizontalMarginsO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      return 0;
    }

LABEL_6:
    if (*a1 == v3)
    {
      return *(a1 + 8) == v2;
    }

    return 0;
  }

  if (*(a1 + 16) == 1)
  {
    if (v4 != 1)
    {
      return 0;
    }

    goto LABEL_6;
  }

  return v4 == 2 && (*&v2 | *&v3) == 0;
}

unint64_t sub_24ED0E2DC()
{
  result = qword_27F22E238;
  if (!qword_27F22E238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E238);
  }

  return result;
}

unint64_t sub_24ED0E350()
{
  result = qword_27F22E240;
  if (!qword_27F22E240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E240);
  }

  return result;
}

unint64_t sub_24ED0E3A8()
{
  result = qword_27F22E248;
  if (!qword_27F22E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E248);
  }

  return result;
}

unint64_t sub_24ED0E400()
{
  result = qword_27F22E250[0];
  if (!qword_27F22E250[0])
  {
    type metadata accessor for UIEdgeInsets(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F22E250);
  }

  return result;
}

uint64_t sub_24ED0E460(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 392))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 264);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24ED0E4A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 376) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 392) = 1;
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
      *(result + 264) = (a2 - 1);
      return result;
    }

    *(result + 392) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24ED0E56C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24ED0E5DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_24ED0E72C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_24ED0E944(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_24ED0E96C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 160))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24ED0E9C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

__n128 OnDeviceAdvertFetchResponse.init(clientRequestId:iAdId:ad:failureReason:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a6;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  v8 = *(a5 + 80);
  *(a7 + 96) = *(a5 + 64);
  *(a7 + 112) = v8;
  *(a7 + 128) = *(a5 + 96);
  *(a7 + 144) = *(a5 + 112);
  v9 = *(a5 + 16);
  *(a7 + 32) = *a5;
  *(a7 + 48) = v9;
  result = *(a5 + 32);
  v11 = *(a5 + 48);
  *(a7 + 64) = result;
  *(a7 + 80) = v11;
  *(a7 + 152) = v7;
  return result;
}

uint64_t OnDeviceAdvertFetchResponse.clientRequestId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t OnDeviceAdvertFetchResponse.iAdId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t OnDeviceAdvertFetchResponse.ad.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v4 = *(v1 + 128);
  v12 = *(v1 + 112);
  v3 = v12;
  v13 = v4;
  v14 = *(v1 + 144);
  v5 = v14;
  v6 = *(v1 + 48);
  v11[0] = *(v1 + 32);
  v7 = *(v1 + 64);
  v8 = *(v1 + 80);
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v2;
  *a1 = v11[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  return sub_24ED0EB4C(v11, v10);
}

uint64_t sub_24ED0EB4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E2D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

JSValue __swiftcall OnDeviceAdvertFetchResponse.makeValue(in:)(JSContext in)
{
  v2 = v1;
  v4 = *(v1 + 8);
  v5 = *(v2 + 24);
  v6 = *(v2 + 40);
  v7 = *(v2 + 152);
  v8 = objc_opt_self();
  result.super.isa = [v8 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  isa = result.super.isa;
  if (v4)
  {

    v11 = [v8 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (!v11)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    sub_24F92C328();
  }

  if (!v5)
  {
LABEL_8:
    if (v6)
    {
      OnDeviceAdvert.makeValue(in:)(in);
      sub_24F92C328();
    }

    if (v7 > 2)
    {
      return isa;
    }

    v13 = [v8 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v13)
    {
      sub_24F92C328();
      return isa;
    }

    goto LABEL_15;
  }

  v12 = [v8 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (v12)
  {
    sub_24F92C328();
    goto LABEL_8;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t OnDeviceAdFetchFailReason.rawValue.getter()
{
  v1 = 0x74756F656D6974;
  if (*v0 != 1)
  {
    v1 = 0x64417963696C6F70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6961764164416F6ELL;
  }
}

GameStoreKit::OnDeviceAdFetchFailReason_optional __swiftcall OnDeviceAdFetchFailReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24ED0EF60(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x74756F656D6974;
  if (v2 != 1)
  {
    v4 = 0x64417963696C6F70;
    v3 = 0xEC000000706F7244;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6961764164416F6ELL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xED0000656C62616CLL;
  }

  v7 = 0xE700000000000000;
  v8 = 0x74756F656D6974;
  if (*a2 != 1)
  {
    v8 = 0x64417963696C6F70;
    v7 = 0xEC000000706F7244;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6961764164416F6ELL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xED0000656C62616CLL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

unint64_t sub_24ED0F080()
{
  result = qword_27F22E2E0;
  if (!qword_27F22E2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E2E0);
  }

  return result;
}

uint64_t sub_24ED0F0D4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24ED0F18C()
{
  sub_24F92B218();
}

uint64_t sub_24ED0F230()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24ED0F2F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000656C62616CLL;
  v4 = 0xE700000000000000;
  v5 = 0x74756F656D6974;
  if (v2 != 1)
  {
    v5 = 0x64417963696C6F70;
    v4 = 0xEC000000706F7244;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6961764164416F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit14OnDeviceAdvertVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24ED0F37C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 153))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24ED0F3D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 153) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 153) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_24ED0F474(uint64_t a1)
{
  sub_24E60169C(a1, v6, &qword_27F235830);
  if (!v7)
  {
    sub_24E601704(v6, &qword_27F235830);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v4 = sub_24F92B098();
    [v1 removeObjectForKey_];
    goto LABEL_6;
  }

  v3 = sub_24F92B098();

  v4 = sub_24F92B098();
  [v1 setObject:v3 forKey:v4];

LABEL_6:
  return sub_24E601704(a1, &qword_27F235830);
}

uint64_t sub_24ED0F5A8()
{
  v1 = sub_24F92B098();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_24E601704(v7, &qword_27F2129B0);
    return 0;
  }
}

uint64_t sub_24ED0F6A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F92B098();
  v4 = [v1 objectForKey_];

  if (v4)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    sub_24E601704(v11, &qword_27F2129B0);
    goto LABEL_8;
  }

  sub_24E9421D0();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v5 = 1;
    goto LABEL_9;
  }

  [v8 doubleValue];
  sub_24F91F508();

  v5 = 0;
LABEL_9:
  v6 = sub_24F91F648();
  return (*(*(v6 - 8) + 56))(a1, v5, 1, v6);
}

uint64_t sub_24ED0F7FC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, v6, &unk_27F22EC30);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24E601704(v6, &unk_27F22EC30);
    v11 = sub_24F92B098();
    [v2 removeObjectForKey_];

    return sub_24E601704(a1, &unk_27F22EC30);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_24F91F518();
    v14 = v13;
    v15 = sub_24F92B098();
    [v2 setDouble:v15 forKey:v14];

    sub_24E601704(a1, &unk_27F22EC30);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_24ED0FA4C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224128);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_24F91F9B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, v6, &qword_27F224128);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24E601704(v6, &qword_27F224128);
    v11 = sub_24F92B098();
    [v2 removeObjectForKey_];

    return sub_24E601704(a1, &qword_27F224128);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_24F91F988();
    v13 = sub_24F92B098();

    v14 = sub_24F92B098();
    [v2 setObject:v13 forKey:v14];

    sub_24E601704(a1, &qword_27F224128);
    return (*(v8 + 8))(v10, v7);
  }
}

id NSUserDefaults.launchCountSinceLastRequestedUserNotificationsAuthorization.getter()
{
  v1 = sub_24F92B098();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_24E9421D0();
    if (swift_dynamicCast())
    {
      v3 = [v5 integerValue];

      return v3;
    }
  }

  else
  {
    sub_24E601704(v8, &qword_27F2129B0);
  }

  return 0;
}

void sub_24ED0FDB8(uint64_t a1, void **a2)
{
  v2 = *a2;
  sub_24E9421D0();
  v3 = sub_24F92C3E8();
  v4 = sub_24F92B098();
  [v2 setObject:v3 forKey:v4];
}

void NSUserDefaults.launchCountSinceLastRequestedUserNotificationsAuthorization.setter()
{
  v1 = v0;
  sub_24E9421D0();
  v2 = sub_24F92C3E8();
  v3 = sub_24F92B098();
  [v1 setObject:v2 forKey:v3];
}

void (*NSUserDefaults.launchCountSinceLastRequestedUserNotificationsAuthorization.modify(id *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = NSUserDefaults.launchCountSinceLastRequestedUserNotificationsAuthorization.getter();
  return sub_24ED0FF34;
}

void sub_24ED0FF34(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_24E9421D0();
  v3 = sub_24F92C3E8();
  v2 = sub_24F92B098();
  [v1 setObject:v3 forKey:v2];
}

id sub_24ED0FFC8@<X0>(void *a1@<X8>)
{
  result = NSUserDefaults.launchCountSinceLastRequestedUserNotificationsAuthorization.getter();
  *a1 = result;
  return result;
}

uint64_t sub_24ED10010(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E2F0);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E2F8);
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  swift_storeEnumTagMultiPayload();
  sub_24ED10314();
  return sub_24F924E28();
}

uint64_t View.bentoBackdrop(cornerRadius:opacity:enabled:backDropWidth:backDropHeight:)(uint64_t a1, char a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, double a9, uint64_t a10)
{
  if (a2)
  {
    *&a1 = 24.0;
  }

  v12[0] = a1;
  *&v12[1] = a9;
  v13 = a3;
  v14 = a4;
  v15 = a5 & 1;
  v16 = a6;
  v17 = a7 & 1;
  return MEMORY[0x25304C420](v12, a8, &type metadata for BentoBackdropModifier, a10);
}

uint64_t sub_24ED10188()
{
  sub_24F924038();
  sub_24ED101EC();
  return swift_getWitnessTable();
}

unint64_t sub_24ED101EC()
{
  result = qword_27F22E2E8;
  if (!qword_27F22E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E2E8);
  }

  return result;
}

uint64_t sub_24ED10240(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24ED10294(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_24ED10314()
{
  result = qword_27F22E300;
  if (!qword_27F22E300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E2F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E300);
  }

  return result;
}

unint64_t sub_24ED1037C()
{
  result = qword_27F22E308;
  if (!qword_27F22E308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E310);
    sub_24ED10314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E308);
  }

  return result;
}

double sub_24ED10400()
{
  result = 0.0;
  xmmword_27F39C5F0 = xmmword_24F998330;
  return result;
}

double sub_24ED10414()
{
  *&result = 1054280253;
  xmmword_27F39C600 = xmmword_24F998340;
  return result;
}

uint64_t tryToFetch(artworkFor:into:on:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24E643A9C(a2, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E318);
  if (swift_dynamicCast())
  {
    v8 = *(&v18 + 1);
    sub_24ED1080C(a1, v16);
    if (v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E348);
      if (swift_dynamicCast())
      {
        if (*(&v19 + 1))
        {
          sub_24E612C80(&v18, v21);
          swift_getObjectType();
          v9 = v22;
          v10 = v23;
          __swift_project_boxed_opaque_existential_1(v21, v22);
          (*(v10 + 8))(v9, v10);
          (*(v8 + 8))();
          swift_unknownObjectRelease();

          return __swift_destroy_boxed_opaque_existential_1(v21);
        }
      }

      else
      {
        v20 = 0;
        v18 = 0u;
        v19 = 0u;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      sub_24E601704(v16, &qword_27F2171D0);
      v18 = 0u;
      v19 = 0u;
      v20 = 0;
    }

    sub_24E601704(&v18, &qword_27F22E340);
  }

  sub_24E643A9C(a2, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E320);
  if (swift_dynamicCast())
  {
    v11 = *(&v18 + 1);
    sub_24ED1080C(a1, v16);
    if (v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E338);
      if (swift_dynamicCast())
      {
        if (*(&v19 + 1))
        {
          sub_24E612C80(&v18, v21);
          ObjectType = swift_getObjectType();
          (*(v11 + 8))(v21, a3, a4, ObjectType, v11);
LABEL_22:
          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_1(v21);
        }
      }

      else
      {
        v20 = 0;
        v18 = 0u;
        v19 = 0u;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      sub_24E601704(v16, &qword_27F2171D0);
      v18 = 0u;
      v19 = 0u;
      v20 = 0;
    }

    sub_24E601704(&v18, &qword_27F22E330);
  }

  sub_24E643A9C(a2, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E328);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v14 = *(&v18 + 1);
  sub_24ED1080C(a1, &v18);
  if (*(&v19 + 1))
  {
    sub_24E612C80(&v18, v21);
    v15 = swift_getObjectType();
    (*(v14 + 8))(v21, a3, v15, v14);
    goto LABEL_22;
  }

  swift_unknownObjectRelease();
  return sub_24E601704(&v18, &qword_27F2171D0);
}

uint64_t sub_24ED1080C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2171D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t tryToCancelArtworkFetch(into:on:asPartOf:deprioritizingFetches:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_24E643A9C(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E318);
  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  sub_24E643A9C(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E320);
  if (swift_dynamicCast())
  {
    ObjectType = swift_getObjectType();
    (*(v11 + 16))(a2, a3, a4 & 1, ObjectType);
    return swift_unknownObjectRelease();
  }

  sub_24E643A9C(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E328);
  result = swift_dynamicCast();
  if (result)
  {
LABEL_2:
    v8 = swift_getObjectType();
    (*(v11 + 16))(a2, a4 & 1, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

int *PickGameActivityPageIntent.init(gameInfo:shouldUseGameIconHeader:isChallengeOnly:challengeDefinitions:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_24ED10AA4(a1, a5);
  result = type metadata accessor for PickGameActivityPageIntent();
  *(a5 + result[5]) = a2;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

uint64_t sub_24ED10AA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameActivityDraftGameInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for PickGameActivityPageIntent()
{
  result = qword_27F22E388;
  if (!qword_27F22E388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t PickGameActivityPageIntent.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x6F666E49656D6167;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 72) = type metadata accessor for GameActivityDraftGameInfo(0);
  *(inited + 80) = sub_24ED11488(&qword_27F22E350, type metadata accessor for GameActivityDraftGameInfo);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24ED114D0(v2, boxed_opaque_existential_1, type metadata accessor for GameActivityDraftGameInfo);
  *(inited + 88) = 0xD000000000000017;
  *(inited + 96) = 0x800000024FA5AD60;
  v6 = type metadata accessor for PickGameActivityPageIntent();
  v7 = *(v2 + v6[5]);
  v8 = MEMORY[0x277D839B0];
  v9 = MEMORY[0x277D22598];
  *(inited + 128) = MEMORY[0x277D839B0];
  *(inited + 136) = v9;
  *(inited + 104) = v7;
  *(inited + 144) = 0x656C6C6168437369;
  *(inited + 152) = 0xEF796C6E4F65676ELL;
  v10 = *(v2 + v6[6]);
  *(inited + 184) = v8;
  *(inited + 192) = v9;
  *(inited + 160) = v10;
  *(inited + 200) = 0xD000000000000014;
  *(inited + 208) = 0x800000024FA41C50;
  v11 = *(v2 + v6[7]);
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E358);
  *(inited + 248) = sub_24ED10D8C();
  *(inited + 216) = v11;

  v12 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v13 = sub_24E80FFAC(v12);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v13;
  return result;
}

unint64_t sub_24ED10D8C()
{
  result = qword_27F22E360;
  if (!qword_27F22E360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E358);
    sub_24ED10E48(&qword_27F22E368, &qword_27F21B758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E360);
  }

  return result;
}

uint64_t sub_24ED10E48(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D990);
    sub_24ED11488(a2, type metadata accessor for ChallengeDefinitionDetail);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24ED10EE4()
{
  v1 = 0x6F666E49656D6167;
  v2 = 0x656C6C6168437369;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24ED10F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24ED11950(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24ED10F98(uint64_t a1)
{
  v2 = sub_24ED11434();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ED10FD4(uint64_t a1)
{
  v2 = sub_24ED11434();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PickGameActivityPageIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for GameActivityDraftGameInfo(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E370);
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for PickGameActivityPageIntent();
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v22 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24ED11434();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v14 = v20;
  v15 = v12;
  v27 = 0;
  sub_24ED11488(&qword_27F22E380, type metadata accessor for GameActivityDraftGameInfo);
  v16 = v21;
  sub_24F92CC68();
  sub_24ED10AA4(v6, v15);
  v26 = 1;
  *(v15 + v10[5]) = sub_24F92CC38() & 1;
  v25 = 2;
  *(v15 + v10[6]) = sub_24F92CC38() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D990);
  v24 = 3;
  sub_24ED10E48(&qword_27F21D998, &qword_27F21B790);
  sub_24F92CC18();
  (*(v14 + 8))(v9, v16);
  *(v15 + v10[7]) = v23;
  sub_24ED114D0(v15, v19, type metadata accessor for PickGameActivityPageIntent);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return sub_24ED11538(v15, type metadata accessor for PickGameActivityPageIntent);
}

unint64_t sub_24ED11434()
{
  result = qword_27F22E378;
  if (!qword_27F22E378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E378);
  }

  return result;
}

uint64_t sub_24ED11488(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24ED114D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24ED11538(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24ED115AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GameActivityDraftGameInfo(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24ED11688(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GameActivityDraftGameInfo(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

void sub_24ED11740()
{
  type metadata accessor for GameActivityDraftGameInfo(319);
  if (v0 <= 0x3F)
  {
    sub_24ED117D4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24ED117D4()
{
  if (!qword_27F22E398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D990);
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F22E398);
    }
  }
}

unint64_t sub_24ED1184C()
{
  result = qword_27F22E3A0;
  if (!qword_27F22E3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E3A0);
  }

  return result;
}

unint64_t sub_24ED118A4()
{
  result = qword_27F22E3A8;
  if (!qword_27F22E3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E3A8);
  }

  return result;
}

unint64_t sub_24ED118FC()
{
  result = qword_27F22E3B0;
  if (!qword_27F22E3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E3B0);
  }

  return result;
}

uint64_t sub_24ED11950(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F666E49656D6167 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024FA5AD60 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C6C6168437369 && a2 == 0xEF796C6E4F65676ELL || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA41C50 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t MetricsFieldsContext.contextualAction.getter()
{
  if (qword_27F2106B0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224460);
  __swift_project_value_buffer(v0, qword_27F22E4C0);
  type metadata accessor for Action();
  sub_24F929AD8();
  return v2;
}

uint64_t static MetricsFieldsContext.createFieldsContext(impressionsTracker:adamIdString:pageContextOverride:referrer:participatingInCrossfireReferral:pageFields:preloaded:advertRotationData:searchGhostHintData:contextualAction:deviceWindowData:impressionsAppendixData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v54 = a3;
  v55 = a7;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225030);
  v57 = *(v26 - 8);
  v58 = v26;
  MEMORY[0x28223BE20](v26);
  v56 = &v52 - v27;
  v28 = sub_24F929AB8();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v52 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F929AA8();
  if (a1)
  {
    v53 = a6;
    v32 = a5;
    v33 = a8;
    v34 = qword_27F210660;
    swift_unknownObjectRetain();
    if (v34 != -1)
    {
      swift_once();
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225038);
    __swift_project_value_buffer(v35, qword_27F22E3D0);
    v61 = a1;
    v62 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225040);
    sub_24F929A48();
    (*(v29 + 8))(a9, v28);
    swift_unknownObjectRelease();
    (*(v29 + 32))(a9, v31, v28);
    a8 = v33;
    a5 = v32;
    a6 = v53;
  }

  if (a4)
  {
    v61 = v54;
    v62 = a4;
    if (qword_27F210668 != -1)
    {
      swift_once();
    }

    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910);
    __swift_project_value_buffer(v36, qword_27F22E3E8);
    sub_24F929A48();
    (*(v29 + 8))(a9, v28);
    (*(v29 + 32))(a9, v31, v28);
  }

  if (a6)
  {
    v61 = a5;
    v62 = a6;
    if (qword_27F210670 != -1)
    {
      swift_once();
    }

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910);
    __swift_project_value_buffer(v37, qword_27F22E400);
    sub_24F929A48();
    (*(v29 + 8))(a9, v28);
    (*(v29 + 32))(a9, v31, v28);
  }

  if (a8)
  {
    v61 = v55;
    v62 = a8;
    if (qword_27F210678 != -1)
    {
      swift_once();
    }

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910);
    __swift_project_value_buffer(v38, qword_27F22E418);
    sub_24F929A48();
    (*(v29 + 8))(a9, v28);
    (*(v29 + 32))(a9, v31, v28);
  }

  if (a10 != 2)
  {
    LOBYTE(v61) = a10 & 1;
    if (qword_27F210680 != -1)
    {
      swift_once();
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225048);
    __swift_project_value_buffer(v39, qword_27F22E430);
    sub_24F929A48();
    (*(v29 + 8))(a9, v28);
    (*(v29 + 32))(a9, v31, v28);
  }

  if (a11)
  {
    v61 = a11;
    v40 = v56;
    sub_24F929A78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
    sub_24F929A48();
    (*(v57 + 8))(v40, v58);
    (*(v29 + 8))(a9, v28);
    (*(v29 + 32))(a9, v31, v28);
  }

  if (a12 != 2)
  {
    LOBYTE(v61) = a12 & 1;
    if (qword_27F210688 != -1)
    {
      swift_once();
    }

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225048);
    __swift_project_value_buffer(v41, qword_27F22E448);
    sub_24F929A48();
    (*(v29 + 8))(a9, v28);
    (*(v29 + 32))(a9, v31, v28);
  }

  sub_24E60169C(a13, &v59, &qword_27F224FA0);
  if (v60)
  {
    sub_24E612C80(&v59, &v61);
    if (qword_27F210690 != -1)
    {
      swift_once();
    }

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225078);
    __swift_project_value_buffer(v42, qword_27F22E460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225080);
    sub_24F929A48();
    __swift_destroy_boxed_opaque_existential_1(&v61);
    (*(v29 + 8))(a9, v28);
    (*(v29 + 32))(a9, v31, v28);
  }

  else
  {
    sub_24E601704(&v59, &qword_27F224FA0);
  }

  sub_24E60169C(a14, &v59, qword_27F224FA8);
  if (!v60)
  {
    result = sub_24E601704(&v59, qword_27F224FA8);
    v45 = a18;
    if (!a15)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  sub_24E612C80(&v59, &v61);
  if (qword_27F210698 != -1)
  {
    swift_once();
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225068);
  __swift_project_value_buffer(v43, qword_27F22E478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225070);
  sub_24F929A48();
  __swift_destroy_boxed_opaque_existential_1(&v61);
  (*(v29 + 8))(a9, v28);
  result = (*(v29 + 32))(a9, v31, v28);
  v45 = a18;
  if (a15)
  {
LABEL_38:
    v61 = a15;
    v46 = qword_27F2106B0;

    if (v46 != -1)
    {
      swift_once();
    }

    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224460);
    __swift_project_value_buffer(v47, qword_27F22E4C0);
    type metadata accessor for Action();
    sub_24F929A48();
    (*(v29 + 8))(a9, v28);

    result = (*(v29 + 32))(a9, v31, v28);
  }

LABEL_41:
  if (v45)
  {
    v61 = v45;
    v62 = a19;
    v48 = qword_27F2106A8;
    swift_unknownObjectRetain();
    if (v48 != -1)
    {
      swift_once();
    }

    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225058);
    __swift_project_value_buffer(v49, qword_27F22E4A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225060);
    sub_24F929A48();
    (*(v29 + 8))(a9, v28);
    swift_unknownObjectRelease();
    result = (*(v29 + 32))(a9, v31, v28);
  }

  if (a16)
  {
    v61 = a16;
    v62 = a17;
    v50 = qword_27F2106A0;
    swift_unknownObjectRetain();
    if (v50 != -1)
    {
      swift_once();
    }

    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225050);
    __swift_project_value_buffer(v51, qword_27F22E490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F90);
    sub_24F929A48();
    (*(v29 + 8))(a9, v28);
    swift_unknownObjectRelease();
    return (*(v29 + 32))(a9, v31, v28);
  }

  return result;
}

uint64_t MetricsFieldsContext.adamIdString.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E4D8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C8E8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  sub_24F929A58();
  v7 = sub_24F9294C8();
  sub_24F929AD8();
  (*(v1 + 8))(v3, v0);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24E601704(v6, &qword_27F21C8E8);
  }

  else
  {
    v9 = sub_24F929498();
    v11 = v10;
    (*(v8 + 8))(v6, v7);
    if (v11)
    {
      return v9;
    }
  }

  if (qword_27F210668 != -1)
  {
    swift_once();
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910);
  __swift_project_value_buffer(v13, qword_27F22E3E8);
  sub_24F929AD8();

  return v14;
}

uint64_t sub_24ED1291C(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225048);
  __swift_project_value_buffer(v3, a2);
  sub_24F929AD8();
  return v5;
}

uint64_t sub_24ED129D4(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910);
  __swift_project_value_buffer(v3, a2);
  sub_24F929AD8();
  return v5;
}

uint64_t MetricsFieldsContext.impressionsAppendixData.getter()
{
  if (qword_27F2106A8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225058);
  __swift_project_value_buffer(v0, qword_27F22E4A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225060);
  sub_24F929AC8();
  return v2;
}

uint64_t MetricsFieldsContext.searchGhostHintData.getter()
{
  if (qword_27F210698 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225068);
  __swift_project_value_buffer(v0, qword_27F22E478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225070);

  return sub_24F929AC8();
}

uint64_t sub_24ED12B90()
{
  v0 = sub_24F929AB8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v13 - v6;
  __swift_allocate_value_buffer(v5, qword_27F22E3B8);
  v8 = __swift_project_value_buffer(v0, qword_27F22E3B8);
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_24F929AA8();
  sub_24E60169C(v18, &v13, &qword_27F224FA0);
  if (v14)
  {
    sub_24E612C80(&v13, v15);
    if (qword_27F210690 != -1)
    {
      swift_once();
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225078);
    __swift_project_value_buffer(v9, qword_27F22E460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225080);
    sub_24F929A48();
    __swift_destroy_boxed_opaque_existential_1(v15);
    (*(v1 + 8))(v7, v0);
    (*(v1 + 32))(v7, v4, v0);
  }

  else
  {
    sub_24E601704(&v13, &qword_27F224FA0);
  }

  sub_24E60169C(v16, &v13, qword_27F224FA8);
  if (v14)
  {
    sub_24E612C80(&v13, v15);
    if (qword_27F210698 != -1)
    {
      swift_once();
    }

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225068);
    __swift_project_value_buffer(v10, qword_27F22E478);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225070);
    sub_24F929A48();
    __swift_destroy_boxed_opaque_existential_1(v15);
    (*(v1 + 8))(v7, v0);
    v11 = *(v1 + 32);
    v11(v7, v4, v0);
  }

  else
  {
    sub_24E601704(&v13, qword_27F224FA8);
    v11 = *(v1 + 32);
  }

  v11(v8, v7, v0);
  sub_24E601704(v16, qword_27F224FA8);
  return sub_24E601704(v18, &qword_27F224FA0);
}

uint64_t static MetricsFieldsContext.emptyContext.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210658 != -1)
  {
    swift_once();
  }

  v2 = sub_24F929AB8();
  v3 = __swift_project_value_buffer(v2, qword_27F22E3B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24ED12FB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225038);
  __swift_allocate_value_buffer(v0, qword_27F22E3D0);
  __swift_project_value_buffer(v0, qword_27F22E3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225040);
  return sub_24F929A88();
}

uint64_t static MetricsFieldsContext.impressionsTrackerKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210660 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225038);
  v3 = __swift_project_value_buffer(v2, qword_27F22E3D0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static MetricsFieldsContext.adamIdStringKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210668 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910);
  v3 = __swift_project_value_buffer(v2, qword_27F22E3E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24ED131CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910);
  __swift_allocate_value_buffer(v0, qword_27F22E400);
  __swift_project_value_buffer(v0, qword_27F22E400);
  return sub_24F929A88();
}

uint64_t static MetricsFieldsContext.pageContextOverrideKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210670 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910);
  v3 = __swift_project_value_buffer(v2, qword_27F22E400);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24ED13318(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910);
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_24F929A88();
}

uint64_t static MetricsFieldsContext.referrerKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210678 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910);
  v3 = __swift_project_value_buffer(v2, qword_27F22E418);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24ED13440()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225048);
  __swift_allocate_value_buffer(v0, qword_27F22E430);
  __swift_project_value_buffer(v0, qword_27F22E430);
  return sub_24F929A88();
}

uint64_t static MetricsFieldsContext.participatingInCrossfireReferralKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210680 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225048);
  v3 = __swift_project_value_buffer(v2, qword_27F22E430);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24ED1356C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225048);
  __swift_allocate_value_buffer(v0, qword_27F22E448);
  __swift_project_value_buffer(v0, qword_27F22E448);
  return sub_24F929A88();
}

uint64_t static MetricsFieldsContext.preloadedKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210688 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225048);
  v3 = __swift_project_value_buffer(v2, qword_27F22E448);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24ED1369C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225078);
  __swift_allocate_value_buffer(v0, qword_27F22E460);
  __swift_project_value_buffer(v0, qword_27F22E460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225080);
  return sub_24F929A88();
}

uint64_t static MetricsFieldsContext.advertRotationDataKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210690 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225078);
  v3 = __swift_project_value_buffer(v2, qword_27F22E460);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24ED137DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225068);
  __swift_allocate_value_buffer(v0, qword_27F22E478);
  __swift_project_value_buffer(v0, qword_27F22E478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225070);
  return sub_24F929A88();
}

uint64_t static MetricsFieldsContext.searchGhostHintDataKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210698 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225068);
  v3 = __swift_project_value_buffer(v2, qword_27F22E478);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24ED1391C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225050);
  __swift_allocate_value_buffer(v0, qword_27F22E490);
  __swift_project_value_buffer(v0, qword_27F22E490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F90);
  return sub_24F929A88();
}

uint64_t static MetricsFieldsContext.deviceWindowDataKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F2106A0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225050);
  v3 = __swift_project_value_buffer(v2, qword_27F22E490);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24ED13A5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225058);
  __swift_allocate_value_buffer(v0, qword_27F22E4A8);
  __swift_project_value_buffer(v0, qword_27F22E4A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225060);
  return sub_24F929A88();
}

uint64_t static MetricsFieldsContext.impressionsAppendixKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F2106A8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225058);
  v3 = __swift_project_value_buffer(v2, qword_27F22E4A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24ED13B9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224460);
  __swift_allocate_value_buffer(v0, qword_27F22E4C0);
  __swift_project_value_buffer(v0, qword_27F22E4C0);
  type metadata accessor for Action();
  return sub_24F929A88();
}

uint64_t static MetricsFieldsContext.contextualActionKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F2106B0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224460);
  v3 = __swift_project_value_buffer(v2, qword_27F22E4C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t MetricsFieldsContext.impressionsTracker.getter()
{
  if (qword_27F210660 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225038);
  __swift_project_value_buffer(v0, qword_27F22E3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225040);
  sub_24F929AC8();
  return v2;
}

uint64_t MetricsFieldsContext.advertRotationData.getter()
{
  if (qword_27F210690 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225078);
  __swift_project_value_buffer(v0, qword_27F22E460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225080);

  return sub_24F929AC8();
}

uint64_t MetricsFieldsContext.deviceWindowData.getter()
{
  if (qword_27F2106A0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225050);
  __swift_project_value_buffer(v0, qword_27F22E490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F90);
  sub_24F929AC8();
  return v2;
}

uint64_t sub_24ED13ED8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for GameSource();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = type metadata accessor for Player(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_24ED14064(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for GameSource();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = type metadata accessor for Player(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for LeaderboardsCountHeaderItemIntent()
{
  result = qword_27F22E4E0;
  if (!qword_27F22E4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24ED14228()
{
  sub_24E7D231C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for GameSource();
    if (v1 <= 0x3F)
    {
      sub_24E6BCB04();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Player(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24ED142F4@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A070;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x756F72676B636162;
  *(inited + 96) = 0xEA0000000000646ELL;
  v7 = type metadata accessor for LeaderboardsCountHeaderItemIntent();
  v8 = v7[5];
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  *(inited + 136) = sub_24E7D17FC();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E7D14D8(v1 + v8, boxed_opaque_existential_1);
  *(inited + 144) = 0x72756F53656D6167;
  *(inited + 152) = 0xEA00000000006563;
  v10 = v7[6];
  *(inited + 184) = type metadata accessor for GameSource();
  *(inited + 192) = sub_24ED151C4(&qword_27F221F68, type metadata accessor for GameSource);
  v11 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24ED1520C(v1 + v10, v11, type metadata accessor for GameSource);
  *(inited + 200) = 0xD000000000000010;
  *(inited + 208) = 0x800000024FA4D4E0;
  v12 = (v1 + v7[7]);
  v14 = *v12;
  v13 = v12[1];
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  v15 = sub_24E605DB4();
  *(inited + 216) = v14;
  *(inited + 224) = v13;
  *(inited + 248) = v15;
  *(inited + 256) = 0x726579616C70;
  *(inited + 264) = 0xE600000000000000;
  v16 = v7[8];
  *(inited + 296) = type metadata accessor for Player(0);
  *(inited + 304) = sub_24ED151C4(&qword_27F215388, type metadata accessor for Player);
  v17 = __swift_allocate_boxed_opaque_existential_1((inited + 272));
  sub_24ED1520C(v1 + v16, v17, type metadata accessor for Player);
  *(inited + 312) = 0xD000000000000010;
  *(inited + 320) = 0x800000024FA46670;
  v18 = *(v1 + v7[9]);
  v19 = MEMORY[0x277D22598];
  *(inited + 352) = MEMORY[0x277D839B0];
  *(inited + 360) = v19;
  *(inited + 328) = v18;

  v20 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v21 = sub_24E80FFAC(v20);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v21;
  return result;
}

uint64_t sub_24ED14614(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E500);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ED15110();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for LeaderboardsCountHeaderItemIntent();
    v8[14] = 1;
    type metadata accessor for Page.Background(0);
    sub_24ED151C4(&qword_27F21D920, type metadata accessor for Page.Background);
    sub_24F92CCF8();
    v8[13] = 2;
    type metadata accessor for GameSource();
    sub_24ED151C4(&qword_27F221F60, type metadata accessor for GameSource);
    sub_24F92CD48();
    v8[12] = 3;
    sub_24F92CCA8();
    v8[11] = 4;
    type metadata accessor for Player(0);
    sub_24ED151C4(&qword_27F213E28, type metadata accessor for Player);
    sub_24F92CD48();
    v8[10] = 5;
    sub_24F92CD18();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24ED14914@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v28);
  v29 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for GameSource();
  MEMORY[0x28223BE20](v30);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E4F0);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for LeaderboardsCountHeaderItemIntent();
  MEMORY[0x28223BE20](v12);
  v14 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24ED15110();
  v16 = v33;
  sub_24F92D108();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  v33 = v5;
  v18 = v31;
  v17 = v32;
  v40 = 0;
  v19 = v11;
  *v14 = sub_24F92CC28();
  v14[1] = v20;
  type metadata accessor for Page.Background(0);
  v39 = 1;
  sub_24ED151C4(&qword_27F21D930, type metadata accessor for Page.Background);
  sub_24F92CC18();
  sub_24E7DF71C(v8, v14 + v12[5]);
  v38 = 2;
  sub_24ED151C4(&qword_27F221F50, type metadata accessor for GameSource);
  v21 = v33;
  sub_24F92CC68();
  sub_24E92E098(v21, v14 + v12[6], type metadata accessor for GameSource);
  v37 = 3;
  v22 = sub_24F92CBC8();
  v23 = (v14 + v12[7]);
  *v23 = v22;
  v23[1] = v24;
  v36 = 4;
  sub_24ED151C4(&qword_27F213E38, type metadata accessor for Player);
  v25 = v29;
  sub_24F92CC68();
  sub_24E92E098(v25, v14 + MEMORY[0x20], type metadata accessor for Player);
  v35 = 5;
  LOBYTE(v25) = sub_24F92CC38();
  (*(v18 + 8))(v19, v17);
  *(v14 + MEMORY[0x24]) = v25 & 1;
  sub_24ED1520C(v14, v27, type metadata accessor for LeaderboardsCountHeaderItemIntent);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return sub_24ED15164(v14, type metadata accessor for LeaderboardsCountHeaderItemIntent);
}

unint64_t sub_24ED14F48()
{
  v1 = *v0;
  v2 = 0x444965676170;
  v3 = 0xD000000000000010;
  v4 = 0x726579616C70;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x756F72676B636162;
  if (v1 != 1)
  {
    v5 = 0x72756F53656D6167;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24ED15008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24ED1538C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24ED15030(uint64_t a1)
{
  v2 = sub_24ED15110();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ED1506C(uint64_t a1)
{
  v2 = sub_24ED15110();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24ED15110()
{
  result = qword_27F22E4F8;
  if (!qword_27F22E4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E4F8);
  }

  return result;
}

uint64_t sub_24ED15164(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24ED151C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24ED1520C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24ED15288()
{
  result = qword_27F22E508;
  if (!qword_27F22E508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E508);
  }

  return result;
}

unint64_t sub_24ED152E0()
{
  result = qword_27F22E510;
  if (!qword_27F22E510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E510);
  }

  return result;
}

unint64_t sub_24ED15338()
{
  result = qword_27F22E518;
  if (!qword_27F22E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E518);
  }

  return result;
}

uint64_t sub_24ED1538C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72756F53656D6167 && a2 == 0xEA00000000006563 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA4D4E0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA46670 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24ED155A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24ED156C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_24ED157F8()
{
  sub_24ED19F18(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24ED19F18(319, &qword_27F2168D0, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24ED1595C()
{
  if ((sub_24E747804() & 1) == 0)
  {
    return 0;
  }

  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC12GameStoreKit5Brick_collectionIcons;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Brick_collectionIcons);
  if (!v3)
  {
    return 0;
  }

  v4 = v3 >> 62 ? sub_24F92C738() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (sub_24EAC4868(v4) == 5)
  {
    return 0;
  }

  v5 = *(v1 + v2);
  if (!v5)
  {
    return 0;
  }

  v6 = v5 >> 62 ? sub_24F92C738() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (sub_24EAC4868(v6) == 5)
  {
    return 0;
  }

  v7 = *(v1 + v2);
  if (!v7)
  {
    return 0;
  }

  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

    goto LABEL_13;
  }

  result = sub_24F92C738();
  if (result)
  {
    result = sub_24F92C738();
LABEL_13:
    v9 = sub_24EAC4868(result);
    if (v9 != 5)
    {
      v10 = v9;

      v12 = sub_24EAC4674(v11, v10);

      return v12;
    }

    return 0;
  }

  return result;
}

uint64_t sub_24ED15AB8()
{
  if (!sub_24EA12978())
  {
    return 0;
  }

  v1 = *(v0 + 16);
  v2 = *(v1 + 80);
  if (!v2)
  {
    return 0;
  }

  v3 = v2 >> 62 ? sub_24F92C738() : *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (sub_24EAC4868(v3) == 5)
  {
    return 0;
  }

  v4 = *(v1 + 80);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 >> 62 ? sub_24F92C738() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (sub_24EAC4868(v5) == 5)
  {
    return 0;
  }

  v6 = *(v1 + 80);
  if (!v6)
  {
    return 0;
  }

  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

    goto LABEL_13;
  }

  result = sub_24F92C738();
  if (result)
  {
    result = sub_24F92C738();
LABEL_13:
    v8 = sub_24EAC4868(result);
    if (v8 != 5)
    {
      v9 = v8;

      v11 = sub_24EAC4674(v10, v9);

      return v11;
    }

    return 0;
  }

  return result;
}

uint64_t sub_24ED15C14()
{
  v1 = *(v0 + 16);
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_artwork))
  {
    return 0;
  }

  v3 = OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_collectionIcons;
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_collectionIcons);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 >> 62 ? sub_24F92C738() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (sub_24EAC4868(v5) == 5)
  {
    return 0;
  }

  v6 = *(v1 + v3);
  if (!v6)
  {
    return 0;
  }

  v7 = v6 >> 62 ? sub_24F92C738() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v8 = sub_24EAC4868(v7);
  if (v8 == 5)
  {
    return 0;
  }

  v9 = *(v1 + v3);
  if (!v9)
  {
    return 0;
  }

  if (v9 >> 62)
  {
    v16 = v8;
    result = sub_24F92C738();
    if (!result)
    {
      return result;
    }

    v10 = sub_24F92C738();
    v8 = v16;
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return 0;
    }
  }

  v11 = v8;
  v12 = sub_24EAC4868(v10);
  if (v12 == 5)
  {
    return 0;
  }

  if (v11 == 3)
  {
    v13 = 4;
  }

  else
  {
    v13 = v12;
  }

  v15 = sub_24EAC4674(v14, v13);

  return v15;
}

double sub_24ED15DA0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v34[-v10];
  v12 = type metadata accessor for BrickView(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  sub_24ED192B4(v3, &v34[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for BrickView);
  v15 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  sub_24ED1919C(&v34[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], v16 + v15);
  v17 = qword_27F20FE88;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = sub_24F922348();
  v19 = __swift_project_value_buffer(v18, qword_27F39ABD0);
  v20 = *(v18 - 8);
  (*(v20 + 16))(v11, v19, v18);
  (*(v20 + 56))(v11, 0, 1, v18);
  sub_24E60169C(v11, v8, &qword_27F214148);
  v21 = (*(v20 + 48))(v8, 1, v18);
  if (v21 == 1)
  {
    sub_24E601704(v11, &qword_27F214148);
    sub_24E601704(v8, &qword_27F214148);
    v22 = 0;
  }

  else
  {
    sub_24F9222E8();
    v22 = v23;
    sub_24E601704(v11, &qword_27F214148);
    (*(v20 + 8))(v8, v18);
  }

  sub_24F927618();
  sub_24F9242E8();
  *&v35[54] = v40;
  *&v35[70] = v41;
  *&v35[86] = v42;
  *&v35[102] = v43;
  *&v35[6] = v37;
  *&v35[22] = v38;
  v36 = v21 == 1;
  *&v35[38] = v39;
  v24 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E540) + 36);
  v25 = type metadata accessor for RoundedRectWithOutsetsModifer(0);
  v26 = v25[6];
  v27 = *MEMORY[0x277CE0118];
  v28 = sub_24F924B38();
  (*(*(v28 - 8) + 104))(v24 + v26, v27, v28);
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0x4036000000000000;
  *(v24 + v25[7]) = 1;
  v29 = v24 + v25[8];
  *v29 = 0;
  *(v29 + 8) = 1;
  *a2 = sub_24ED19200;
  *(a2 + 8) = v16;
  *(a2 + 16) = v22;
  *(a2 + 24) = v21 == 1;
  *(a2 + 25) = 1;
  v30 = *&v35[80];
  *(a2 + 90) = *&v35[64];
  *(a2 + 106) = v30;
  *(a2 + 122) = *&v35[96];
  *(a2 + 136) = *&v35[110];
  v31 = *&v35[16];
  *(a2 + 26) = *v35;
  *(a2 + 42) = v31;
  result = *&v35[32];
  v33 = *&v35[48];
  *(a2 + 58) = *&v35[32];
  *(a2 + 74) = v33;
  return result;
}

uint64_t sub_24ED1624C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = sub_24F9275C8();
  a4[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E548);
  sub_24ED1636C(a2, a3, a1, a4 + *(v9 + 44));
  v10 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E550) + 36);
  v11 = *(sub_24F924258() + 20);
  v12 = *MEMORY[0x277CE0118];
  v13 = sub_24F924B38();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  __asm { FMOV            V0.2D, #22.0 }

  *v10 = _Q0;
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8) + 36)] = 256;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E558);
  *(a4 + *(result + 36)) = 0x4036000000000000;
  return result;
}

uint64_t sub_24ED1636C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v107 = a3;
  v104 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E560);
  MEMORY[0x28223BE20](v6 - 8);
  v110 = &v89 - v7;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E568);
  MEMORY[0x28223BE20](v96);
  v99 = &v89 - v8;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E570);
  MEMORY[0x28223BE20](v98);
  v101 = &v89 - v9;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E578);
  MEMORY[0x28223BE20](v97);
  v103 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v100 = &v89 - v12;
  MEMORY[0x28223BE20](v13);
  v102 = &v89 - v14;
  v106 = sub_24F923E98();
  v114 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v90 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v95 = &v89 - v17;
  v18 = sub_24F923F78();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = (type metadata accessor for BrickView.BackgroundView(0) - 8);
  MEMORY[0x28223BE20](v105);
  v113 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v89 - v24;
  v26 = *(type metadata accessor for BrickView(0) + 20);
  sub_24F7699B0(v21);
  v94 = sub_24E747690();
  v27 = *(v19 + 8);
  v27(v21, v18);
  v108 = v26;
  v28 = a1;
  v29 = v21;
  sub_24F7699B0(v21);
  v30 = sub_24EE6BFC4(v115);
  v111 = v19 + 8;
  v112 = v18;
  v109 = v27;
  (v27)(v21, v18, v30);
  sub_24F923998();
  v31 = v115[6];
  *(v25 + 120) = v115[7];
  v32 = v115[9];
  *(v25 + 136) = v115[8];
  *(v25 + 152) = v32;
  *(v25 + 168) = v115[10];
  v33 = v115[2];
  *(v25 + 56) = v115[3];
  v34 = v115[5];
  *(v25 + 72) = v115[4];
  *(v25 + 88) = v34;
  *(v25 + 104) = v31;
  v35 = v115[1];
  *(v25 + 8) = v115[0];
  *(v25 + 24) = v35;
  *v25 = v94;
  *(v25 + 40) = v33;
  *(v25 + 23) = v36;
  *(v25 + 24) = v37;
  v38 = *(v105 + 9);
  v39 = a2;
  *&v25[v38] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  v105 = v25;
  swift_storeEnumTagMultiPayload();
  v40 = v95;
  sub_24F769788(v95);
  LOBYTE(v38) = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  v41 = v40;
  v42 = *(v114 + 8);
  v114 += 8;
  v42(v41, v106);
  if (v38)
  {
    v43 = v28;
    if (sub_24E7474C4())
    {
      sub_24F7699B0(v21);
      v44 = sub_24E747690();
      v45 = v21;
      v46 = v112;
      v47 = v109;
      v109(v45, v112);
      v95 = v44;

      goto LABEL_7;
    }

    v95 = 1;
  }

  else
  {
    v95 = 1;
    v43 = v28;
  }

  v46 = v112;
  v47 = v109;
LABEL_7:
  sub_24F7699B0(v29);
  v48 = sub_24E747804();
  v47(v29, v46);
  if (v48)
  {
    sub_24F7699B0(v29);
    v91 = sub_24ED1595C();
    v93 = v50;
    v94 = v49;
    v92 = v51;
    v47(v29, v46);
  }

  else
  {
    v93 = 0;
    v94 = 0;
    v92 = 0;
    v91 = 1;
  }

  sub_24F923998();
  if (qword_27F20FE88 != -1)
  {
    swift_once();
  }

  v52 = sub_24F922348();
  __swift_project_value_buffer(v52, qword_27F39ABD0);
  v53 = v90;
  v107 = v39;
  sub_24F769788(v90);
  _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  v42(v53, v106);
  v114 = v43;
  sub_24ED16E50(v43, v110);
  sub_24F9275C8();
  sub_24F9242E8();
  v54 = v99;
  sub_24E6009C8(v110, v99, &qword_27F22E560);
  v55 = (v54 + *(v96 + 36));
  v56 = v115[16];
  v55[4] = v115[15];
  v55[5] = v56;
  v55[6] = v115[17];
  v57 = v115[12];
  *v55 = v115[11];
  v55[1] = v57;
  v58 = v115[14];
  v55[2] = v115[13];
  v55[3] = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v60 = sub_24F9257F8();
  *(inited + 32) = v60;
  v61 = sub_24F925828();
  *(inited + 33) = v61;
  v62 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v60)
  {
    v62 = sub_24F925848();
  }

  sub_24F925848();
  v63 = sub_24F925848();
  v64 = v112;
  if (v63 != v61)
  {
    v62 = sub_24F925848();
  }

  sub_24F923318();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v73 = v54;
  v74 = v101;
  sub_24E6009C8(v73, v101, &qword_27F22E568);
  v75 = v74 + *(v98 + 36);
  *v75 = v62;
  *(v75 + 8) = v66;
  *(v75 + 16) = v68;
  *(v75 + 24) = v70;
  *(v75 + 32) = v72;
  *(v75 + 40) = 0;
  sub_24F7699B0(v29);
  v76 = v100;
  v77 = &v100[*(v97 + 36)];
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212858);
  sub_24E747318(v29, v77 + *(v78 + 28));
  v109(v29, v64);
  *v77 = swift_getKeyPath();
  sub_24E6009C8(v74, v76, &qword_27F22E570);
  v79 = v102;
  sub_24E6009C8(v76, v102, &qword_27F22E578);
  v80 = v113;
  sub_24ED192B4(v105, v113, type metadata accessor for BrickView.BackgroundView);
  v81 = v103;
  sub_24E60169C(v79, v103, &qword_27F22E578);
  v82 = v104;
  sub_24ED192B4(v80, v104, type metadata accessor for BrickView.BackgroundView);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E580);
  v84 = v94;
  v85 = v95;
  *(v82 + v83[12]) = v95;
  v86 = v82 + v83[16];
  v87 = v91;
  *v86 = v91;
  *(v86 + 8) = v84;
  *(v86 + 16) = v93;
  *(v86 + 24) = v92;
  sub_24E60169C(v81, v82 + v83[20], &qword_27F22E578);
  sub_24ED1931C(v85);
  sub_24ED1932C(v87);
  sub_24ED1933C(v85);
  sub_24E601704(v79, &qword_27F22E578);
  sub_24ED194A8(v105, type metadata accessor for BrickView.BackgroundView);
  sub_24E601704(v81, &qword_27F22E578);
  sub_24ED1934C(v87);
  sub_24ED1933C(v85);
  return sub_24ED194A8(v113, type metadata accessor for BrickView.BackgroundView);
}

uint64_t sub_24ED16E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = type metadata accessor for BrickView.LargeTextStack(0);
  MEMORY[0x28223BE20](v28);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for BrickView.MediumTextStack(0);
  MEMORY[0x28223BE20](v24);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E588);
  MEMORY[0x28223BE20](v25);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E590);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E598);
  MEMORY[0x28223BE20](v26);
  v13 = &v23 - v12;
  v14 = type metadata accessor for BrickView.SmallTextStack(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  if (*(a1 + 24))
  {
    if (*(a1 + 24) == 1)
    {
      sub_24E60169C(v17 + OBJC_IVAR____TtC12GameStoreKit5Brick_caption, v6, &qword_27F215340);
      sub_24E60169C(v17 + OBJC_IVAR____TtC12GameStoreKit5Brick_title, &v6[*(v24 + 20)], &qword_27F215340);
      sub_24ED192B4(v6, v11, type metadata accessor for BrickView.MediumTextStack);
      swift_storeEnumTagMultiPayload();
      sub_24ED18F1C(&qword_27F22E5A8, type metadata accessor for BrickView.SmallTextStack);
      sub_24ED18F1C(&qword_27F22E5B0, type metadata accessor for BrickView.MediumTextStack);
      sub_24F924E28();
      sub_24E60169C(v13, v8, &qword_27F22E598);
      swift_storeEnumTagMultiPayload();
      sub_24ED193BC();
      sub_24ED18F1C(&qword_27F22E5B8, type metadata accessor for BrickView.LargeTextStack);
      sub_24F924E28();
      sub_24E601704(v13, &qword_27F22E598);
      v18 = type metadata accessor for BrickView.MediumTextStack;
      v19 = v6;
    }

    else
    {
      sub_24E60169C(v17 + OBJC_IVAR____TtC12GameStoreKit5Brick_caption, v4, &qword_27F215340);
      v20 = v28;
      sub_24E60169C(v17 + OBJC_IVAR____TtC12GameStoreKit5Brick_title, &v4[*(v28 + 20)], &qword_27F215340);
      sub_24E60169C(v17 + OBJC_IVAR____TtC12GameStoreKit5Brick_subtitle, &v4[*(v20 + 24)], &qword_27F215340);
      v21 = *(v20 + 28);
      *&v4[v21] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
      swift_storeEnumTagMultiPayload();
      sub_24ED192B4(v4, v8, type metadata accessor for BrickView.LargeTextStack);
      swift_storeEnumTagMultiPayload();
      sub_24ED193BC();
      sub_24ED18F1C(&qword_27F22E5B8, type metadata accessor for BrickView.LargeTextStack);
      sub_24F924E28();
      v18 = type metadata accessor for BrickView.LargeTextStack;
      v19 = v4;
    }
  }

  else
  {
    sub_24E60169C(v17 + OBJC_IVAR____TtC12GameStoreKit5Brick_title, v16, &qword_27F215340);
    sub_24ED192B4(v16, v11, type metadata accessor for BrickView.SmallTextStack);
    swift_storeEnumTagMultiPayload();
    sub_24ED18F1C(&qword_27F22E5A8, type metadata accessor for BrickView.SmallTextStack);
    sub_24ED18F1C(&qword_27F22E5B0, type metadata accessor for BrickView.MediumTextStack);
    sub_24F924E28();
    sub_24E60169C(v13, v8, &qword_27F22E598);
    swift_storeEnumTagMultiPayload();
    sub_24ED193BC();
    sub_24ED18F1C(&qword_27F22E5B8, type metadata accessor for BrickView.LargeTextStack);
    sub_24F924E28();
    sub_24E601704(v13, &qword_27F22E598);
    v18 = type metadata accessor for BrickView.SmallTextStack;
    v19 = v16;
  }

  return sub_24ED194A8(v19, v18);
}

uint64_t sub_24ED1753C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 15);
  v5 = *(v1 + 19);
  v31 = *(v1 + 17);
  v32 = v5;
  v33 = *(v1 + 21);
  v6 = *(v1 + 7);
  v7 = *(v1 + 11);
  v27 = *(v1 + 9);
  v28 = v7;
  v29 = *(v1 + 13);
  v30 = v4;
  v8 = *(v1 + 3);
  v23 = *(v1 + 1);
  v24 = v8;
  v25 = *(v1 + 5);
  v26 = v6;
  v9 = type metadata accessor for ArtworkWithFallbackView();
  v10 = v9[7];
  v11 = *MEMORY[0x277CE1010];
  v12 = sub_24F926E68();
  v21 = *(v1 + 23);
  (*(*(v12 - 8) + 104))(a1 + v10, v11, v12);
  *a1 = v3;
  *(a1 + 24) = v21;
  *(a1 + 8) = v21;
  v13 = a1 + v9[8];
  *v13 = 1;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  v14 = (a1 + v9[9]);
  v15 = v32;
  v14[8] = v31;
  v14[9] = v15;
  v14[10] = v33;
  v16 = v28;
  v14[4] = v27;
  v14[5] = v16;
  v17 = v30;
  v14[6] = v29;
  v14[7] = v17;
  v18 = v24;
  *v14 = v23;
  v14[1] = v18;
  v19 = v26;
  v14[2] = v25;
  v14[3] = v19;
  *(a1 + v9[10]) = 0;
  *(a1 + v9[11]) = 0;

  return sub_24E60169C(&v23, v22, &qword_27F22E660);
}

double sub_24ED176C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && (v3 = *(a1 + 48)) != 0)
  {
    v4 = v3;
    sub_24F926BF8();
    v5 = sub_24F926D08();
  }

  else
  {
    v5 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24F93A400;
  sub_24F926C88();
  v7 = sub_24F926D08();

  *(v6 + 32) = v7;
  sub_24F926C88();
  v8 = sub_24F926D08();

  *(v6 + 40) = v8;
  MEMORY[0x25304CD70](v6);
  sub_24F927878();
  sub_24F927898();
  sub_24F923BD8();
  *a2 = v5;
  *(a2 + 8) = v10;
  result = *&v11;
  *(a2 + 16) = v11;
  *(a2 + 32) = v12;
  return result;
}

__n128 sub_24ED17800@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_24F927618();
  v6 = v5;
  sub_24ED176C8(v3, v11);
  v7 = v11[0];
  v8 = v11[1];
  result = v12;
  v10 = v13;
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = result;
  *(a1 + 48) = v10;
  return result;
}

uint64_t sub_24ED17860@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_24F91F008();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  sub_24E60169C(v2, v6, &qword_27F215340);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24E601704(v6, &qword_27F215340);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    result = 0;
    v19 = 0;
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v10, v13, v7);
    v20 = sub_24F925DF8();
    v22 = v21;
    v24 = v23;
    sub_24F925998();
    v25 = sub_24F925C98();
    v29 = v26;
    v30 = v25;
    v31 = v27;
    v17 = v28;

    sub_24E600B40(v20, v22, v24 & 1);

    (*(v8 + 8))(v13, v7);
    result = swift_getKeyPath();
    v15 = v29;
    v14 = v30;
    v33 = v31 & 1;
    v32 = 0;
    v16 = v31 & 1;
    v19 = 3;
  }

  *a1 = v14;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16;
  *(a1 + 24) = v17;
  *(a1 + 32) = result;
  *(a1 + 40) = v19;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_24ED17AFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v78 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v71 - v7;
  v9 = sub_24F91F008();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v76 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v71 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v71 - v16;
  sub_24E60169C(a1, v8, &qword_27F215340);
  v18 = *(v10 + 48);
  v19 = v18(v8, 1, v9);
  v75 = v14;
  if (v19 == 1)
  {
    sub_24E601704(v8, &qword_27F215340);
    v82 = 0;
    v83 = 0;
    v77 = 0;
    v80 = 0;
    v81 = 0;
    v20 = 0;
  }

  else
  {
    (*(v10 + 32))(v17, v8, v9);
    (*(v10 + 16))(v14, v17, v9);
    v21 = sub_24F925DF8();
    v73 = v18;
    v74 = a1;
    v23 = v22;
    v25 = v24;
    sub_24F925A18();
    v26 = sub_24F925C98();
    v82 = v27;
    v83 = v26;
    v79 = v10;
    v29 = v28;
    v81 = v30;

    sub_24E600B40(v21, v23, v25 & 1);

    v84 = 1;
    sub_24ED1A304();
    v31 = v82;
    v32 = v83;
    v33 = sub_24F925C58();
    v72 = v5;
    v34 = v33;
    v36 = v35;
    LODWORD(v80) = v37;
    v39 = v38;
    LOBYTE(v37) = v29 & 1;
    v10 = v79;
    sub_24E600B40(v32, v31, v37);

    (*(v10 + 8))(v17, v9);
    KeyPath = swift_getKeyPath();
    v82 = v36;
    v83 = v34;
    v41 = v34;
    a1 = v74;
    v42 = v36;
    v5 = v72;
    v18 = v73;
    v77 = v80 & 1;
    sub_24E5FD138(v41, v42, v77);
    v81 = v39;
    v20 = 1;

    v80 = KeyPath;
  }

  v43 = type metadata accessor for BrickView.MediumTextStack(0);
  sub_24E60169C(a1 + *(v43 + 20), v5, &qword_27F215340);
  v44 = v18(v5, 1, v9);
  v79 = v20;
  if (v44 == 1)
  {
    sub_24E601704(v5, &qword_27F215340);
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
  }

  else
  {
    v51 = v76;
    (*(v10 + 32))(v76, v5, v9);
    (*(v10 + 16))(v75, v51, v9);
    v52 = sub_24F925DF8();
    v54 = v53;
    v56 = v55;
    sub_24F925998();
    v57 = sub_24F925C98();
    v59 = v58;
    LODWORD(v74) = v60;
    v75 = v61;

    sub_24E600B40(v52, v54, v56 & 1);

    (*(v10 + 8))(v51, v9);
    v62 = swift_getKeyPath();
    v86 = v74 & 1;
    v85 = 0;
    v47 = v74 & 1;
    v45 = v57;
    v46 = v59;
    sub_24E5FD138(v57, v59, v74 & 1);
    v48 = v75;

    v49 = v62;

    v50 = 2;
  }

  v63 = v83;
  v64 = v77;
  sub_24ED1A264(v83, v82, v77, v81);
  sub_24ED1A264(v45, v46, v47, v48);
  v83 = v63;
  v65 = v82;
  v66 = v79;
  sub_24ED1A2B4(v63, v82, v64, v81);
  sub_24ED1A2B4(v45, v46, v47, v48);
  v67 = v78;
  *v78 = v63;
  v67[1] = v65;
  v69 = v80;
  v68 = v81;
  v67[2] = v64;
  v67[3] = v68;
  v67[4] = v69;
  v67[5] = v66;
  *(v67 + 48) = 0;
  v67[7] = v45;
  v67[8] = v46;
  v67[9] = v47;
  v67[10] = v48;
  v67[11] = v49;
  v67[12] = v50;
  *(v67 + 52) = 0;
  sub_24ED1A2B4(v45, v46, v47, v48);
  return sub_24ED1A2B4(v83, v82, v64, v68);
}

double sub_24ED180F4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924C98();
  v18 = 0;
  sub_24ED17AFC(v2, &v11);
  v23 = v15;
  v24[0] = v16[0];
  *(v24 + 10) = *(v16 + 10);
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v25[0] = v11;
  v25[1] = v12;
  v25[2] = v13;
  v25[3] = v14;
  v25[4] = v15;
  v26[0] = v16[0];
  *(v26 + 10) = *(v16 + 10);
  sub_24E60169C(&v19, &v10, &qword_27F22E648);
  sub_24E601704(v25, &qword_27F22E648);
  *&v17[55] = v22;
  *&v17[71] = v23;
  *&v17[87] = v24[0];
  *&v17[97] = *(v24 + 10);
  *&v17[7] = v19;
  *&v17[23] = v20;
  *&v17[39] = v21;
  v5 = *&v17[80];
  *(a1 + 81) = *&v17[64];
  *(a1 + 97) = v5;
  *(a1 + 113) = *&v17[96];
  v6 = *&v17[16];
  *(a1 + 17) = *v17;
  *(a1 + 33) = v6;
  result = *&v17[32];
  v8 = *&v17[48];
  *(a1 + 49) = *&v17[32];
  v9 = v18;
  *a1 = v4;
  *(a1 + 8) = 0x4018000000000000;
  *(a1 + 16) = v9;
  *(a1 + 129) = v17[112];
  *(a1 + 65) = v8;
  return result;
}

uint64_t sub_24ED1822C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v119 = a2;
  v118 = sub_24F923E98();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v116 = v115 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  MEMORY[0x28223BE20](v4 - 8);
  v121 = v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v132 = v115 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = v115 - v9;
  v11 = sub_24F91F008();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v122 = v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v131 = v115 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v115 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v115 - v20;
  v126 = a1;
  sub_24E60169C(a1, v10, &qword_27F215340);
  v22 = v12 + 48;
  v23 = *(v12 + 48);
  v24 = v23(v10, 1, v11);
  v120 = v18;
  v125 = v11;
  v123 = v12;
  if (v24 == 1)
  {
    sub_24E601704(v10, &qword_27F215340);
    v136 = 0;
    v137 = 0;
    v133 = 0;
    v134 = 0;
    v135 = 0;
    v25 = 0;
  }

  else
  {
    (*(v12 + 32))(v21, v10, v11);
    (*(v12 + 16))(v18, v21, v11);
    v26 = sub_24F925DF8();
    v130 = v23;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    sub_24F925A18();
    v32 = sub_24F925C98();
    v34 = v33;
    v36 = v35;
    v137 = v37;

    sub_24E600B40(v27, v29, v31 & 1);

    v138 = 1;
    sub_24ED1A304();
    v38 = sub_24F925C58();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v45 = v32;
    v11 = v125;
    v46 = v34;
    v12 = v123;
    sub_24E600B40(v45, v46, v36 & 1);
    v25 = 1;

    (*(v12 + 8))(v21, v11);
    KeyPath = swift_getKeyPath();
    v136 = v40;
    v137 = v38;
    v48 = v40;
    v23 = v130;
    v133 = v42 & 1;
    sub_24E5FD138(v38, v48, v42 & 1);
    v135 = v44;

    v134 = KeyPath;
  }

  v49 = type metadata accessor for BrickView.LargeTextStack(0);
  v50 = v132;
  sub_24E60169C(v126 + *(v49 + 20), v132, &qword_27F215340);
  v51 = v23(v50, 1, v11);
  v124 = v25;
  if (v51 == 1)
  {
    sub_24E601704(v50, &qword_27F215340);
    v131 = 0;
    v132 = 0;
    v128 = 0;
    v129 = 0;
    v130 = 0;
    v127 = 0;
  }

  else
  {
    v52 = v131;
    (*(v12 + 32))(v131, v50, v11);
    (*(v12 + 16))(v120, v52, v11);
    v53 = sub_24F925DF8();
    v55 = v54;
    v57 = v56;
    v115[0] = v49;
    sub_24F925988();
    v58 = sub_24F925C98();
    v115[1] = v22;
    v60 = v59;
    LODWORD(v132) = v61;
    v63 = v62;

    v64 = v53;
    v11 = v125;
    v65 = v55;
    v12 = v123;
    sub_24E600B40(v64, v65, v57 & 1);
    v49 = v115[0];

    (*(v12 + 8))(v52, v11);
    v66 = swift_getKeyPath();
    v67 = v132 & 1;
    v140 = v132 & 1;
    v139 = 0;
    v128 = v132 & 1;
    v131 = v60;
    v132 = v58;
    sub_24E5FD138(v58, v60, v67);
    v130 = v63;

    v129 = v66;

    v127 = 2;
  }

  v68 = v121;
  sub_24E60169C(v126 + *(v49 + 24), v121, &qword_27F215340);
  if (v23(v68, 1, v11) == 1)
  {
    sub_24E601704(v68, &qword_27F215340);
    v69 = 0;
    v70 = 0;
    v125 = 0;
    v122 = 0;
    v123 = 0;
    v126 = 0;
  }

  else
  {
    v71 = v122;
    (*(v12 + 32))(v122, v68, v11);
    (*(v12 + 16))(v120, v71, v11);
    v72 = sub_24F925DF8();
    v74 = v73;
    v76 = v75;
    sub_24F925A18();
    v77 = sub_24F925C98();
    v79 = v78;
    v81 = v80;

    sub_24E600B40(v72, v74, v76 & 1);

    v141 = 1;
    sub_24ED1A304();
    v82 = sub_24F925C58();
    v84 = v83;
    v86 = v85;
    v88 = v87;
    sub_24E600B40(v77, v79, v81 & 1);

    v89 = v116;
    sub_24F769788(v116);
    LOBYTE(v72) = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
    (*(v117 + 8))(v89, v118);
    (*(v123 + 8))(v122, v125);
    if (v72)
    {
      v90 = 2;
    }

    else
    {
      v90 = 1;
    }

    v126 = v90;
    v91 = swift_getKeyPath();
    v69 = v82;
    v70 = v84;
    v125 = v86 & 1;
    sub_24E5FD138(v82, v84, v86 & 1);
    v122 = v88;

    v123 = v91;
  }

  v92 = v124;
  sub_24ED1A264(v137, v136, v133, v135);
  v94 = v131;
  v93 = v132;
  v95 = v128;
  v96 = v130;
  sub_24ED1A264(v132, v131, v128, v130);
  v97 = v125;
  sub_24ED1A264(v69, v70, v125, v122);
  sub_24ED1A2B4(v93, v94, v95, v96);
  v98 = v136;
  v99 = v137;
  v101 = v133;
  v100 = v134;
  v102 = v135;
  sub_24ED1A2B4(v137, v136, v133, v135);
  v103 = v97;
  v104 = v122;
  v105 = v123;
  sub_24ED1A2B4(v69, v70, v103, v122);
  v106 = v119;
  *v119 = v99;
  v106[1] = v98;
  v106[2] = v101;
  v106[3] = v102;
  v106[4] = v100;
  v106[5] = v92;
  *(v106 + 48) = 0;
  v107 = v131;
  v108 = v132;
  v106[7] = v132;
  v106[8] = v107;
  LOBYTE(v98) = v128;
  v109 = v129;
  v110 = v130;
  v106[9] = v128;
  v106[10] = v110;
  v111 = v126;
  v112 = v127;
  v106[11] = v109;
  v106[12] = v112;
  *(v106 + 52) = 0;
  v106[14] = v69;
  v106[15] = v70;
  v113 = v125;
  v106[16] = v125;
  v106[17] = v104;
  v106[18] = v105;
  v106[19] = v111;
  *(v106 + 160) = 0;
  sub_24ED1A2B4(v69, v70, v113, v104);
  sub_24ED1A2B4(v108, v107, v98, v110);
  return sub_24ED1A2B4(v137, v136, v133, v135);
}