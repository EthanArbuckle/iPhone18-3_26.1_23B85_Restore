@interface AMPLanguageAwareString
+ (AMPLanguageAwareString)AMPLanguageAwareStringEmpty;
+ (AMPLanguageAwareStringPreprocessor)delegate;
+ (void)setDelegate:(id)a3;
- (AMPLanguageAwareString)init;
- (AMPLanguageAwareString)initWithAttributedString:(id)a3 baseParagraphStyle:(id)a4 keepStatisticsOnLanguageComponents:(BOOL)a5;
- (AMPLanguageAwareString)initWithLanguageAwareString:(id)a3 attributes:(id)a4 keepStatisticsOnLanguageComponents:(BOOL)a5;
- (AMPLanguageAwareString)initWithString:(id)a3 attributes:(id)a4 baseParagraphStyle:(id)a5 keepStatisticsOnLanguageComponents:(BOOL)a6;
- (AMPLanguageAwareString)initWithString:(id)a3 baseParagraphStyle:(id)a4 generateAttributedString:(BOOL)a5 keepStatisticsOnLanguageComponents:(BOOL)a6;
- (AMPLanguageAwareString)localizedLowercase;
- (AMPLanguageAwareString)localizedUppercase;
- (AMPLanguageAwareString)newlinesCollapsedToSpace;
- (AMPLanguageAwareString)trimmed;
- (NSArray)numbers;
- (NSAttributedString)attributedString;
- (NSString)string;
- (_NSRange)fullRange;
- (int64_t)baseWritingDirectionForCharacterAtLocation:(int64_t)a3;
- (int64_t)length;
- (int64_t)numberOfCharacters;
- (int64_t)writingDirectionOfLine:(int64_t)a3 maximumLinesShown:(int64_t)a4 withWidth:(double)a5 lineBreakMode:(int64_t)a6 cacheLayoutInfo:(BOOL)a7;
- (void)setAttributedString:(id)a3;
- (void)setFullRange:(_NSRange)a3;
- (void)setLength:(int64_t)a3;
- (void)setLocalizedLowercase:(id)a3;
- (void)setLocalizedUppercase:(id)a3;
- (void)setNewlinesCollapsedToSpace:(id)a3;
- (void)setNumberOfCharacters:(int64_t)a3;
- (void)setThresholdBaseWritingDirection:(int64_t)a3;
- (void)setTrimmed:(id)a3;
- (void)setUtf32Length:(int64_t)a3;
@end

@implementation AMPLanguageAwareString

- (NSAttributedString)attributedString
{
  v2 = self;
  v3 = sub_24EFED3B0();

  return v3;
}

- (void)setAttributedString:(id)a3
{
  v4 = *(self + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString);
  *(self + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString) = a3;
  v3 = a3;
}

- (NSString)string
{

  v2 = sub_24F92B098();

  return v2;
}

- (AMPLanguageAwareString)localizedLowercase
{
  v2 = self;
  v3 = sub_24EFEDAEC();

  return v3;
}

- (void)setLocalizedLowercase:(id)a3
{
  v4 = *(self + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase);
  *(self + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase) = a3;
  v3 = a3;
}

- (AMPLanguageAwareString)localizedUppercase
{
  v2 = self;
  v3 = sub_24EFEDC7C();

  return v3;
}

- (void)setLocalizedUppercase:(id)a3
{
  v4 = *(self + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase);
  *(self + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase) = a3;
  v3 = a3;
}

- (AMPLanguageAwareString)newlinesCollapsedToSpace
{
  v2 = self;
  v3 = sub_24EFEDEAC();

  return v3;
}

- (void)setNewlinesCollapsedToSpace:(id)a3
{
  v4 = *(self + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace);
  *(self + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace) = a3;
  v3 = a3;
}

- (AMPLanguageAwareString)trimmed
{
  v2 = self;
  v3 = sub_24EFEE0FC();

  return v3;
}

- (void)setTrimmed:(id)a3
{
  v4 = *(self + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed);
  *(self + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed) = a3;
  v3 = a3;
}

- (NSArray)numbers
{
  type metadata accessor for _NSRange(0);

  v2 = sub_24F92B588();

  return v2;
}

- (_NSRange)fullRange
{
  v2 = self;
  v3 = sub_24EFEE4D8();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (void)setFullRange:(_NSRange)a3
{
  v3 = (self + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange);
  *v3 = a3;
  LOBYTE(v3[1].location) = 0;
}

- (int64_t)length
{
  v2 = self;
  v3 = sub_24EFEE6E8();

  return v3;
}

- (void)setLength:(int64_t)a3
{
  v3 = self + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf16Count;
  *v3 = a3;
  v3[8] = 0;
}

- (void)setUtf32Length:(int64_t)a3
{
  v3 = self + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf32Count;
  *v3 = a3;
  v3[8] = 0;
}

- (int64_t)numberOfCharacters
{
  v2 = self;
  v3 = sub_24EFEE910();

  return v3;
}

- (void)setNumberOfCharacters:(int64_t)a3
{
  v3 = self + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___characterCount;
  *v3 = a3;
  v3[8] = 0;
}

+ (AMPLanguageAwareStringPreprocessor)delegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

+ (void)setDelegate:(id)a3
{
  swift_beginAccess();
  qword_27F236A30 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

+ (AMPLanguageAwareString)AMPLanguageAwareStringEmpty
{
  if (qword_27F210DD0 != -1)
  {
    swift_once();
  }

  v3 = qword_27F236A38;

  return v3;
}

- (AMPLanguageAwareString)initWithAttributedString:(id)a3 baseParagraphStyle:(id)a4 keepStatisticsOnLanguageComponents:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = sub_24EFF0E44(v7, a4, a5);

  return v9;
}

- (AMPLanguageAwareString)initWithString:(id)a3 attributes:(id)a4 baseParagraphStyle:(id)a5 keepStatisticsOnLanguageComponents:(BOOL)a6
{
  v9 = sub_24F92B0D8();
  v11 = v10;
  if (a4)
  {
    type metadata accessor for Key(0);
    sub_24EADDED4();
    a4 = sub_24F92AE38();
  }

  v12 = a5;
  v13 = sub_24EFF1BF0(v9, v11, a4, a5, a6);

  return v13;
}

- (AMPLanguageAwareString)initWithString:(id)a3 baseParagraphStyle:(id)a4 generateAttributedString:(BOOL)a5 keepStatisticsOnLanguageComponents:(BOOL)a6
{
  if (a3)
  {
    v6 = a5;
    v8 = sub_24F92B0D8();
    v10 = v9;
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v12 = byte_27F236A29;
    v13 = *(ObjectType + 504);
    v14 = a4;
    v15 = v13(v8, v10, a4, v6, v12);
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v15;
}

- (AMPLanguageAwareString)initWithLanguageAwareString:(id)a3 attributes:(id)a4 keepStatisticsOnLanguageComponents:(BOOL)a5
{
  v6 = a4;
  if (a4)
  {
    type metadata accessor for Key(0);
    sub_24EADDED4();
    v6 = sub_24F92AE38();
  }

  v8 = a3;
  v9 = sub_24EFF2004(v8, v6, a5);

  return v9;
}

- (int64_t)baseWritingDirectionForCharacterAtLocation:(int64_t)a3
{
  v4 = self;
  v5 = sub_24EFED3B0();
  v6 = NSAttributedString.baseWritingDirection(forCharacterAt:)(a3);
  v8 = v7;

  if (v8)
  {
    return -1;
  }

  else
  {
    return v6;
  }
}

- (void)setThresholdBaseWritingDirection:(int64_t)a3
{
  v3 = self + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___thresholdBaseWritingDirection;
  *v3 = a3;
  v3[8] = 0;
}

- (int64_t)writingDirectionOfLine:(int64_t)a3 maximumLinesShown:(int64_t)a4 withWidth:(double)a5 lineBreakMode:(int64_t)a6 cacheLayoutInfo:(BOOL)a7
{
  v12 = self;
  sub_24EFF00E8(a3, a4, a6, a7, a5);
  v14 = v13;

  return v14;
}

- (AMPLanguageAwareString)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end