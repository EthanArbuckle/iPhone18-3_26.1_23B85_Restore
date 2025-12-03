@interface ModernLocalizer
- (NSString)identifier;
- (_TtC12GameStoreKit15ModernLocalizer)init;
- (id)decimal:(id)decimal :(int64_t)a4;
- (id)fileSize:(id)size;
- (id)formatDate:(id)date :(id)a4;
- (id)formatDateInSentence:(id)sentence :(id)a4 :(id)a5;
- (id)formatDateWithContext:(id)context :(id)a4 :(id)a5;
- (id)formatDuration:(int64_t)duration :(id)a4;
- (id)formattedCount:(id)count;
- (id)formattedCountForPreferredLocale:(id)locale :(id)a4;
- (id)relativeDate:(id)date;
- (id)string:(id)string;
- (id)string:(id)string with:(id)with;
- (id)stringForPreferredLocale:(id)locale :(id)a4;
- (id)stringWithCount:(id)count :(int64_t)a4;
- (id)stringWithCounts:(id)counts :(id)a4;
- (id)timeAgo:(id)ago;
- (id)timeAgoWithContext:(id)context :(id)a4;
@end

@implementation ModernLocalizer

- (id)decimal:(id)decimal :(int64_t)a4
{
  v6 = sub_24F9293A8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (decimal)
  {
    __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC12GameStoreKit15ModernLocalizer_localizer), *&self->localizer[OBJC_IVAR____TtC12GameStoreKit15ModernLocalizer_localizer + 16]);
    (*(v7 + 104))(v9, *MEMORY[0x277D21E80], v6);
    selfCopy = self;
    decimalCopy = decimal;
    sub_24F92ACE8();

    (*(v7 + 8))(v9, v6);
    v12 = sub_24F92B098();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)string:(id)string
{
  v4 = sub_24F929EE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F92B0D8();
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC12GameStoreKit15ModernLocalizer_localizer), *&self->localizer[OBJC_IVAR____TtC12GameStoreKit15ModernLocalizer_localizer + 16]);
  (*(v5 + 104))(v7, *MEMORY[0x277D221D0], v4);
  selfCopy = self;
  sub_24F92ACC8();

  (*(v5 + 8))(v7, v4);
  v9 = sub_24F92B098();

  return v9;
}

- (id)string:(id)string with:(id)with
{
  v6 = sub_24F929EE8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = sub_24F92B0D8();
  if (with)
  {
    sub_24F92AE38();
  }

  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC12GameStoreKit15ModernLocalizer_localizer), *&self->localizer[OBJC_IVAR____TtC12GameStoreKit15ModernLocalizer_localizer + 16]);
  (*(v7 + 104))(v9, *MEMORY[0x277D221D0], v6);
  v10 = v6;
  selfCopy = self;
  sub_24F92ACC8();

  (*(v7 + 8))(v9, v10);
  v12 = sub_24F92B098();

  return v12;
}

- (id)stringWithCount:(id)count :(int64_t)a4
{
  v6 = sub_24F92B0D8();
  v8 = v7;
  selfCopy = self;
  sub_24E9EFBA8(v6, v8, a4);

  v10 = sub_24F92B098();

  return v10;
}

- (id)fileSize:(id)size
{
  sizeCopy = size;
  if (size)
  {
    selfCopy = self;
    v5 = sizeCopy;
    [v5 doubleValue];
    __swift_project_boxed_opaque_existential_1((&selfCopy->super.isa + OBJC_IVAR____TtC12GameStoreKit15ModernLocalizer_localizer), *&selfCopy->localizer[OBJC_IVAR____TtC12GameStoreKit15ModernLocalizer_localizer + 16]);
    sub_24F92ACF8();

    sizeCopy = sub_24F92B098();
  }

  return sizeCopy;
}

- (id)formattedCount:(id)count
{
  countCopy = count;
  if (count)
  {
    selfCopy = self;
    v5 = countCopy;
    [v5 integerValue];
    __swift_project_boxed_opaque_existential_1((&selfCopy->super.isa + OBJC_IVAR____TtC12GameStoreKit15ModernLocalizer_localizer), *&selfCopy->localizer[OBJC_IVAR____TtC12GameStoreKit15ModernLocalizer_localizer + 16]);
    sub_24F92ACB8();

    countCopy = sub_24F92B098();
  }

  return countCopy;
}

- (id)formatDate:(id)date :(id)a4
{
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  sub_24F92B0D8();
  if (a4)
  {
    sub_24F91F608();
    (*(v7 + 56))(v15, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v15, 1, 1, v6);
  }

  sub_24E728A00(v15, v12);
  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {

    sub_24E601704(v15, &unk_27F22EC30);
    sub_24E601704(v12, &unk_27F22EC30);
    v16 = 0;
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC12GameStoreKit15ModernLocalizer_localizer), *&self->localizer[OBJC_IVAR____TtC12GameStoreKit15ModernLocalizer_localizer + 16]);
    selfCopy = self;
    sub_24F92AD28();

    (*(v7 + 8))(v9, v6);
    sub_24E601704(v15, &unk_27F22EC30);
    v18 = sub_24F92B098();

    v16 = v18;
  }

  return v16;
}

- (id)formatDateWithContext:(id)context :(id)a4 :(id)a5
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_24F92B0D8();
  v12 = v11;
  if (a4)
  {
    sub_24F91F608();
    v13 = sub_24F91F648();
    (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  }

  else
  {
    v14 = sub_24F91F648();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  }

  v15 = sub_24F92B0D8();
  selfCopy = self;
  sub_24E9F0240(v10, v12, v9, v15);
  v18 = v17;

  sub_24E601704(v9, &unk_27F22EC30);
  if (v18)
  {
    v19 = sub_24F92B098();
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)formatDateInSentence:(id)sentence :(id)a4 :(id)a5
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_24F92B0D8();
  v12 = v11;
  v13 = sub_24F92B0D8();
  v15 = v14;
  if (a5)
  {
    sub_24F91F608();
    v16 = sub_24F91F648();
    (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
  }

  else
  {
    v17 = sub_24F91F648();
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  }

  selfCopy = self;
  sub_24E9F0798(v10, v12, v13, v15, v9);
  v20 = v19;

  sub_24E601704(v9, &unk_27F22EC30);
  if (v20)
  {
    v21 = sub_24F92B098();
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)relativeDate:(id)date
{
  v5 = sub_24F91F648();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  if (date)
  {
    sub_24F91F608();
    (*(v6 + 56))(v14, 0, 1, v5);
  }

  else
  {
    (*(v6 + 56))(&v19 - v13, 1, 1, v5);
  }

  sub_24E728A00(v14, v11);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    sub_24E601704(v14, &unk_27F22EC30);
    sub_24E601704(v11, &unk_27F22EC30);
    v15 = 0;
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC12GameStoreKit15ModernLocalizer_localizer), *&self->localizer[OBJC_IVAR____TtC12GameStoreKit15ModernLocalizer_localizer + 16]);
    selfCopy = self;
    sub_24F92AD18();

    (*(v6 + 8))(v8, v5);
    sub_24E601704(v14, &unk_27F22EC30);
    v17 = sub_24F92B098();

    v15 = v17;
  }

  return v15;
}

- (NSString)identifier
{
  v3 = sub_24F91F7C8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, *(&self->super.isa + OBJC_IVAR____TtC12GameStoreKit15ModernLocalizer_legacyLocalizer) + OBJC_IVAR____TtC12GameStoreKit15LegacyLocalizer_locale, v3, v5);
  sub_24F91F708();
  (*(v4 + 8))(v7, v3);
  v8 = sub_24F92B098();

  return v8;
}

- (id)stringWithCounts:(id)counts :(id)a4
{
  v5 = sub_24F92B0D8();
  v7 = v6;
  v8 = sub_24F92B5A8();
  selfCopy = self;
  sub_24ED02384(v5, v7, v8);

  v10 = sub_24F92B098();

  return v10;
}

- (id)stringForPreferredLocale:(id)locale :(id)a4
{
  v6 = sub_24F92B0D8();
  v8 = v7;
  if (a4)
  {
    v9 = sub_24F92B0D8();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  selfCopy = self;
  sub_24ED01BB0(v6, v8, v9, a4);

  v12 = sub_24F92B098();

  return v12;
}

- (id)formattedCountForPreferredLocale:(id)locale :(id)a4
{
  sub_24F92B0D8();
  selfCopy = self;
  localeCopy = locale;
  sub_24ED02D38(locale);
  v9 = v8;

  if (v9)
  {
    v10 = sub_24F92B098();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)timeAgo:(id)ago
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  if (ago)
  {
    sub_24F91F608();
    v8 = sub_24F91F648();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_24F91F648();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  selfCopy = self;
  sub_24E9F1180(v7);
  v12 = v11;

  sub_24E601704(v7, &unk_27F22EC30);
  if (v12)
  {
    v13 = sub_24F92B098();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)timeAgoWithContext:(id)context :(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  if (context)
  {
    sub_24F91F608();
    v9 = sub_24F91F648();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_24F91F648();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = sub_24F92B0D8();
  selfCopy = self;
  sub_24E9F13C0(v8, v11);
  v14 = v13;

  sub_24E601704(v8, &unk_27F22EC30);
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

- (id)formatDuration:(int64_t)duration :(id)a4
{
  sub_24F92B0D8();
  selfCopy = self;
  sub_24E9F1BA8(duration);
  v8 = v7;

  if (v8)
  {
    v9 = sub_24F92B098();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (_TtC12GameStoreKit15ModernLocalizer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end