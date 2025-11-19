@interface JULanguageAwareString
+ (JULanguageAwareString)JULanguageAwareStringEmpty;
+ (JULanguageAwareStringPreprocessor)delegate;
+ (void)setDelegate:(id)a3;
- (JULanguageAwareString)init;
- (JULanguageAwareString)initWithAttributedString:(id)a3 baseParagraphStyle:(id)a4 keepStatisticsOnLanguageComponents:(BOOL)a5;
- (JULanguageAwareString)initWithLanguageAwareString:(id)a3 attributes:(id)a4 keepStatisticsOnLanguageComponents:(BOOL)a5;
- (JULanguageAwareString)initWithString:(id)a3 attributes:(id)a4 baseParagraphStyle:(id)a5 keepStatisticsOnLanguageComponents:(BOOL)a6;
- (JULanguageAwareString)initWithString:(id)a3 baseParagraphStyle:(id)a4 generateAttributedString:(BOOL)a5 keepStatisticsOnLanguageComponents:(BOOL)a6;
- (JULanguageAwareString)localizedLowercase;
- (JULanguageAwareString)localizedUppercase;
- (JULanguageAwareString)newlinesCollapsedToSpace;
- (JULanguageAwareString)trimmed;
- (NSArray)numbers;
- (NSAttributedString)attributedString;
- (NSString)string;
- (_NSRange)juFullRange;
- (int64_t)baseWritingDirectionForCharacterAtLocation:(int64_t)a3;
- (int64_t)length;
- (int64_t)numberOfCharacters;
- (int64_t)writingDirectionOfLine:(int64_t)a3 maximumLinesShown:(int64_t)a4 withWidth:(double)a5 lineBreakMode:(int64_t)a6 cacheLayoutInfo:(BOOL)a7;
- (void)setAttributedString:(id)a3;
- (void)setJuFullRange:(_NSRange)a3;
- (void)setLength:(int64_t)a3;
- (void)setLocalizedLowercase:(id)a3;
- (void)setLocalizedUppercase:(id)a3;
- (void)setNewlinesCollapsedToSpace:(id)a3;
- (void)setNumberOfCharacters:(int64_t)a3;
- (void)setThresholdBaseWritingDirection:(int64_t)a3;
- (void)setTrimmed:(id)a3;
- (void)setUtf32Length:(int64_t)a3;
@end

@implementation JULanguageAwareString

- (NSAttributedString)attributedString
{
  v2 = self;
  v3 = sub_1BAD071FC();

  return v3;
}

- (void)setAttributedString:(id)a3
{
  v4 = *(self + OBJC_IVAR___JULanguageAwareString____lazy_storage___attributedString);
  *(self + OBJC_IVAR___JULanguageAwareString____lazy_storage___attributedString) = a3;
  v3 = a3;
}

- (NSString)string
{

  v2 = sub_1BAD9CF38();

  return v2;
}

- (JULanguageAwareString)localizedLowercase
{
  v2 = self;
  v3 = sub_1BAD84780();

  return v3;
}

- (void)setLocalizedLowercase:(id)a3
{
  v4 = *(self + OBJC_IVAR___JULanguageAwareString____lazy_storage___localizedLowercase);
  *(self + OBJC_IVAR___JULanguageAwareString____lazy_storage___localizedLowercase) = a3;
  v3 = a3;
}

- (JULanguageAwareString)localizedUppercase
{
  v2 = self;
  v3 = sub_1BAD8482C();

  return v3;
}

- (void)setLocalizedUppercase:(id)a3
{
  v4 = *(self + OBJC_IVAR___JULanguageAwareString____lazy_storage___localizedUppercase);
  *(self + OBJC_IVAR___JULanguageAwareString____lazy_storage___localizedUppercase) = a3;
  v3 = a3;
}

- (JULanguageAwareString)newlinesCollapsedToSpace
{
  v2 = self;
  v3 = sub_1BAD849E8();

  return v3;
}

- (void)setNewlinesCollapsedToSpace:(id)a3
{
  v4 = *(self + OBJC_IVAR___JULanguageAwareString____lazy_storage___newlinesCollapsedToSpace);
  *(self + OBJC_IVAR___JULanguageAwareString____lazy_storage___newlinesCollapsedToSpace) = a3;
  v3 = a3;
}

- (JULanguageAwareString)trimmed
{
  v2 = self;
  v3 = sub_1BAD84BC4();

  return v3;
}

- (void)setTrimmed:(id)a3
{
  v4 = *(self + OBJC_IVAR___JULanguageAwareString____lazy_storage___trimmed);
  *(self + OBJC_IVAR___JULanguageAwareString____lazy_storage___trimmed) = a3;
  v3 = a3;
}

- (NSArray)numbers
{
  type metadata accessor for _NSRange(0);

  v2 = sub_1BAD9D168();

  return v2;
}

- (_NSRange)juFullRange
{
  v2 = self;
  v3 = sub_1BAD84F2C();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (void)setJuFullRange:(_NSRange)a3
{
  v3 = (self + OBJC_IVAR___JULanguageAwareString____lazy_storage___juFullRange);
  *v3 = a3;
  LOBYTE(v3[1].location) = 0;
}

- (int64_t)length
{
  v2 = self;
  v3 = sub_1BAD85048();

  return v3;
}

- (void)setLength:(int64_t)a3
{
  v3 = self + OBJC_IVAR___JULanguageAwareString____lazy_storage___utf16Count;
  *v3 = a3;
  v3[8] = 0;
}

- (void)setUtf32Length:(int64_t)a3
{
  v3 = self + OBJC_IVAR___JULanguageAwareString____lazy_storage___utf32Count;
  *v3 = a3;
  v3[8] = 0;
}

- (int64_t)numberOfCharacters
{
  v2 = self;
  v3 = sub_1BAD85178();

  return v3;
}

- (void)setNumberOfCharacters:(int64_t)a3
{
  v3 = self + OBJC_IVAR___JULanguageAwareString____lazy_storage___characterCount;
  *v3 = a3;
  v3[8] = 0;
}

+ (JULanguageAwareStringPreprocessor)delegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

+ (void)setDelegate:(id)a3
{
  swift_beginAccess();
  qword_1EBC2B3D8 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

+ (JULanguageAwareString)JULanguageAwareStringEmpty
{
  if (qword_1EBC29C70 != -1)
  {
    swift_once();
  }

  v3 = qword_1EBC2B3E0;

  return v3;
}

- (JULanguageAwareString)initWithAttributedString:(id)a3 baseParagraphStyle:(id)a4 keepStatisticsOnLanguageComponents:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = sub_1BAD87620(v7, a4, a5);

  return v9;
}

- (JULanguageAwareString)initWithString:(id)a3 attributes:(id)a4 baseParagraphStyle:(id)a5 keepStatisticsOnLanguageComponents:(BOOL)a6
{
  v9 = sub_1BAD9CF68();
  v11 = v10;
  if (a4)
  {
    type metadata accessor for Key(0);
    sub_1BAD30308();
    a4 = sub_1BAD9CE98();
  }

  v12 = a5;
  v13 = sub_1BAD87A3C(v9, v11, a4, a5, a6);

  return v13;
}

- (JULanguageAwareString)initWithString:(id)a3 baseParagraphStyle:(id)a4 generateAttributedString:(BOOL)a5 keepStatisticsOnLanguageComponents:(BOOL)a6
{
  if (a3)
  {
    v6 = a5;
    v8 = sub_1BAD9CF68();
    v10 = v9;
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v12 = byte_1EBC2B3D1;
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

- (JULanguageAwareString)initWithLanguageAwareString:(id)a3 attributes:(id)a4 keepStatisticsOnLanguageComponents:(BOOL)a5
{
  v6 = a4;
  if (a4)
  {
    type metadata accessor for Key(0);
    sub_1BAD30308();
    v6 = sub_1BAD9CE98();
  }

  v8 = a3;
  v9 = sub_1BAD87EDC(v8, v6, a5);

  return v9;
}

- (int64_t)baseWritingDirectionForCharacterAtLocation:(int64_t)a3
{
  v4 = self;
  v5 = sub_1BAD071FC();
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
  v3 = self + OBJC_IVAR___JULanguageAwareString____lazy_storage___thresholdBaseWritingDirection;
  *v3 = a3;
  v3[8] = 0;
}

- (int64_t)writingDirectionOfLine:(int64_t)a3 maximumLinesShown:(int64_t)a4 withWidth:(double)a5 lineBreakMode:(int64_t)a6 cacheLayoutInfo:(BOOL)a7
{
  v12 = self;
  sub_1BAD8680C(a3, a4, a6, a7, a5);
  v14 = v13;

  return v14;
}

- (JULanguageAwareString)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end