@interface JULanguageAwareTextStorage
- (JULanguageAwareTextStorage)init;
- (NSTextStorage)textStorage;
- (int64_t)writingDirectionOfLine:(int64_t)a3 maximumLinesShown:(int64_t)a4 withWidth:(double)a5 lineBreakMode:(int64_t)a6 cacheLayoutInfo:(BOOL)a7;
- (void)setTextStorage:(id)a3;
- (void)textStorage:(id)a3 didProcessEditing:(unint64_t)a4 range:(_NSRange)a5 changeInLength:(int64_t)a6;
- (void)textStorage:(id)a3 willProcessEditing:(unint64_t)a4 range:(_NSRange)a5 changeInLength:(int64_t)a6;
@end

@implementation JULanguageAwareTextStorage

- (NSTextStorage)textStorage
{
  v3 = OBJC_IVAR___JULanguageAwareTextStorage_textStorage;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTextStorage:(id)a3
{
  v5 = OBJC_IVAR___JULanguageAwareTextStorage_textStorage;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (void)textStorage:(id)a3 willProcessEditing:(unint64_t)a4 range:(_NSRange)a5 changeInLength:(int64_t)a6
{
  v6 = *(&self->super.isa + OBJC_IVAR___JULanguageAwareTextStorage_originalTextStorageDelegate);
  if (v6)
  {
    length = a5.length;
    location = a5.location;
    if ([*(&self->super.isa + OBJC_IVAR___JULanguageAwareTextStorage_originalTextStorageDelegate) respondsToSelector_])
    {

      [v6 textStorage:a3 willProcessEditing:a4 range:location changeInLength:{length, a6}];
    }
  }
}

- (void)textStorage:(id)a3 didProcessEditing:(unint64_t)a4 range:(_NSRange)a5 changeInLength:(int64_t)a6
{
  length = a5.length;
  location = a5.location;
  v11 = a3;
  v12 = self;
  sub_1BAD51644(v11, a4, location, length, a6);
}

- (int64_t)writingDirectionOfLine:(int64_t)a3 maximumLinesShown:(int64_t)a4 withWidth:(double)a5 lineBreakMode:(int64_t)a6 cacheLayoutInfo:(BOOL)a7
{
  v12 = *(&self->super.isa + OBJC_IVAR___JULanguageAwareTextStorage_languageAwareString);
  v13 = self;
  v14 = v12;
  sub_1BAD8680C(a3, a4, a6, a7, a5);
  v16 = v15;

  return v16;
}

- (JULanguageAwareTextStorage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end