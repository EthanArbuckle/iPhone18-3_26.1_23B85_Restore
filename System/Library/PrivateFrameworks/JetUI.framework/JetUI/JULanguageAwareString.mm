@interface JULanguageAwareString
+ (JULanguageAwareString)JULanguageAwareStringEmpty;
+ (JULanguageAwareStringPreprocessor)delegate;
+ (void)setDelegate:(id)delegate;
- (JULanguageAwareString)init;
- (JULanguageAwareString)initWithAttributedString:(id)string baseParagraphStyle:(id)style keepStatisticsOnLanguageComponents:(BOOL)components;
- (JULanguageAwareString)initWithLanguageAwareString:(id)string attributes:(id)attributes keepStatisticsOnLanguageComponents:(BOOL)components;
- (JULanguageAwareString)initWithString:(id)string attributes:(id)attributes baseParagraphStyle:(id)style keepStatisticsOnLanguageComponents:(BOOL)components;
- (JULanguageAwareString)initWithString:(id)string baseParagraphStyle:(id)style generateAttributedString:(BOOL)attributedString keepStatisticsOnLanguageComponents:(BOOL)components;
- (JULanguageAwareString)localizedLowercase;
- (JULanguageAwareString)localizedUppercase;
- (JULanguageAwareString)newlinesCollapsedToSpace;
- (JULanguageAwareString)trimmed;
- (NSArray)numbers;
- (NSAttributedString)attributedString;
- (NSString)string;
- (_NSRange)juFullRange;
- (int64_t)baseWritingDirectionForCharacterAtLocation:(int64_t)location;
- (int64_t)length;
- (int64_t)numberOfCharacters;
- (int64_t)writingDirectionOfLine:(int64_t)line maximumLinesShown:(int64_t)shown withWidth:(double)width lineBreakMode:(int64_t)mode cacheLayoutInfo:(BOOL)info;
- (void)setAttributedString:(id)string;
- (void)setJuFullRange:(_NSRange)range;
- (void)setLength:(int64_t)length;
- (void)setLocalizedLowercase:(id)lowercase;
- (void)setLocalizedUppercase:(id)uppercase;
- (void)setNewlinesCollapsedToSpace:(id)space;
- (void)setNumberOfCharacters:(int64_t)characters;
- (void)setThresholdBaseWritingDirection:(int64_t)direction;
- (void)setTrimmed:(id)trimmed;
- (void)setUtf32Length:(int64_t)length;
@end

@implementation JULanguageAwareString

- (NSAttributedString)attributedString
{
  selfCopy = self;
  v3 = sub_1BAD071FC();

  return v3;
}

- (void)setAttributedString:(id)string
{
  v4 = *(self + OBJC_IVAR___JULanguageAwareString____lazy_storage___attributedString);
  *(self + OBJC_IVAR___JULanguageAwareString____lazy_storage___attributedString) = string;
  stringCopy = string;
}

- (NSString)string
{

  v2 = sub_1BAD9CF38();

  return v2;
}

- (JULanguageAwareString)localizedLowercase
{
  selfCopy = self;
  v3 = sub_1BAD84780();

  return v3;
}

- (void)setLocalizedLowercase:(id)lowercase
{
  v4 = *(self + OBJC_IVAR___JULanguageAwareString____lazy_storage___localizedLowercase);
  *(self + OBJC_IVAR___JULanguageAwareString____lazy_storage___localizedLowercase) = lowercase;
  lowercaseCopy = lowercase;
}

- (JULanguageAwareString)localizedUppercase
{
  selfCopy = self;
  v3 = sub_1BAD8482C();

  return v3;
}

- (void)setLocalizedUppercase:(id)uppercase
{
  v4 = *(self + OBJC_IVAR___JULanguageAwareString____lazy_storage___localizedUppercase);
  *(self + OBJC_IVAR___JULanguageAwareString____lazy_storage___localizedUppercase) = uppercase;
  uppercaseCopy = uppercase;
}

- (JULanguageAwareString)newlinesCollapsedToSpace
{
  selfCopy = self;
  v3 = sub_1BAD849E8();

  return v3;
}

- (void)setNewlinesCollapsedToSpace:(id)space
{
  v4 = *(self + OBJC_IVAR___JULanguageAwareString____lazy_storage___newlinesCollapsedToSpace);
  *(self + OBJC_IVAR___JULanguageAwareString____lazy_storage___newlinesCollapsedToSpace) = space;
  spaceCopy = space;
}

- (JULanguageAwareString)trimmed
{
  selfCopy = self;
  v3 = sub_1BAD84BC4();

  return v3;
}

- (void)setTrimmed:(id)trimmed
{
  v4 = *(self + OBJC_IVAR___JULanguageAwareString____lazy_storage___trimmed);
  *(self + OBJC_IVAR___JULanguageAwareString____lazy_storage___trimmed) = trimmed;
  trimmedCopy = trimmed;
}

- (NSArray)numbers
{
  type metadata accessor for _NSRange(0);

  v2 = sub_1BAD9D168();

  return v2;
}

- (_NSRange)juFullRange
{
  selfCopy = self;
  v3 = sub_1BAD84F2C();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (void)setJuFullRange:(_NSRange)range
{
  v3 = (self + OBJC_IVAR___JULanguageAwareString____lazy_storage___juFullRange);
  *v3 = range;
  LOBYTE(v3[1].location) = 0;
}

- (int64_t)length
{
  selfCopy = self;
  v3 = sub_1BAD85048();

  return v3;
}

- (void)setLength:(int64_t)length
{
  v3 = self + OBJC_IVAR___JULanguageAwareString____lazy_storage___utf16Count;
  *v3 = length;
  v3[8] = 0;
}

- (void)setUtf32Length:(int64_t)length
{
  v3 = self + OBJC_IVAR___JULanguageAwareString____lazy_storage___utf32Count;
  *v3 = length;
  v3[8] = 0;
}

- (int64_t)numberOfCharacters
{
  selfCopy = self;
  v3 = sub_1BAD85178();

  return v3;
}

- (void)setNumberOfCharacters:(int64_t)characters
{
  v3 = self + OBJC_IVAR___JULanguageAwareString____lazy_storage___characterCount;
  *v3 = characters;
  v3[8] = 0;
}

+ (JULanguageAwareStringPreprocessor)delegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

+ (void)setDelegate:(id)delegate
{
  swift_beginAccess();
  qword_1EBC2B3D8 = delegate;
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

- (JULanguageAwareString)initWithAttributedString:(id)string baseParagraphStyle:(id)style keepStatisticsOnLanguageComponents:(BOOL)components
{
  stringCopy = string;
  styleCopy = style;
  v9 = sub_1BAD87620(stringCopy, style, components);

  return v9;
}

- (JULanguageAwareString)initWithString:(id)string attributes:(id)attributes baseParagraphStyle:(id)style keepStatisticsOnLanguageComponents:(BOOL)components
{
  v9 = sub_1BAD9CF68();
  v11 = v10;
  if (attributes)
  {
    type metadata accessor for Key(0);
    sub_1BAD30308();
    attributes = sub_1BAD9CE98();
  }

  styleCopy = style;
  v13 = sub_1BAD87A3C(v9, v11, attributes, style, components);

  return v13;
}

- (JULanguageAwareString)initWithString:(id)string baseParagraphStyle:(id)style generateAttributedString:(BOOL)attributedString keepStatisticsOnLanguageComponents:(BOOL)components
{
  if (string)
  {
    attributedStringCopy = attributedString;
    v8 = sub_1BAD9CF68();
    v10 = v9;
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v12 = byte_1EBC2B3D1;
    v13 = *(ObjectType + 504);
    styleCopy = style;
    v15 = v13(v8, v10, style, attributedStringCopy, v12);
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

- (JULanguageAwareString)initWithLanguageAwareString:(id)string attributes:(id)attributes keepStatisticsOnLanguageComponents:(BOOL)components
{
  attributesCopy = attributes;
  if (attributes)
  {
    type metadata accessor for Key(0);
    sub_1BAD30308();
    attributesCopy = sub_1BAD9CE98();
  }

  stringCopy = string;
  v9 = sub_1BAD87EDC(stringCopy, attributesCopy, components);

  return v9;
}

- (int64_t)baseWritingDirectionForCharacterAtLocation:(int64_t)location
{
  selfCopy = self;
  v5 = sub_1BAD071FC();
  v6 = NSAttributedString.baseWritingDirection(forCharacterAt:)(location);
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

- (void)setThresholdBaseWritingDirection:(int64_t)direction
{
  v3 = self + OBJC_IVAR___JULanguageAwareString____lazy_storage___thresholdBaseWritingDirection;
  *v3 = direction;
  v3[8] = 0;
}

- (int64_t)writingDirectionOfLine:(int64_t)line maximumLinesShown:(int64_t)shown withWidth:(double)width lineBreakMode:(int64_t)mode cacheLayoutInfo:(BOOL)info
{
  selfCopy = self;
  sub_1BAD8680C(line, shown, mode, info, width);
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