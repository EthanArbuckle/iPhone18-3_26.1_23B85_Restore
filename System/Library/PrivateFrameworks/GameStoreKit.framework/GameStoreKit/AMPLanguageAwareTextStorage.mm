@interface AMPLanguageAwareTextStorage
- (AMPLanguageAwareTextStorage)init;
- (NSTextStorage)textStorage;
- (int64_t)writingDirectionOfLine:(int64_t)line maximumLinesShown:(int64_t)shown withWidth:(double)width lineBreakMode:(int64_t)mode cacheLayoutInfo:(BOOL)info;
- (void)setTextStorage:(id)storage;
- (void)textStorage:(id)storage didProcessEditing:(unint64_t)editing range:(_NSRange)range changeInLength:(int64_t)length;
- (void)textStorage:(id)storage willProcessEditing:(unint64_t)editing range:(_NSRange)range changeInLength:(int64_t)length;
@end

@implementation AMPLanguageAwareTextStorage

- (NSTextStorage)textStorage
{
  v3 = OBJC_IVAR___AMPLanguageAwareTextStorage_textStorage;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTextStorage:(id)storage
{
  v5 = OBJC_IVAR___AMPLanguageAwareTextStorage_textStorage;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = storage;
  storageCopy = storage;
}

- (void)textStorage:(id)storage willProcessEditing:(unint64_t)editing range:(_NSRange)range changeInLength:(int64_t)length
{
  v6 = *(&self->super.isa + OBJC_IVAR___AMPLanguageAwareTextStorage_originalTextStorageDelegate);
  if (v6)
  {
    length = range.length;
    location = range.location;
    if ([*(&self->super.isa + OBJC_IVAR___AMPLanguageAwareTextStorage_originalTextStorageDelegate) respondsToSelector_])
    {

      [v6 textStorage:storage willProcessEditing:editing range:location changeInLength:{length, length}];
    }
  }
}

- (void)textStorage:(id)storage didProcessEditing:(unint64_t)editing range:(_NSRange)range changeInLength:(int64_t)length
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  selfCopy = self;
  sub_24EC2F0D8(storageCopy, editing, location, length, length);
}

- (int64_t)writingDirectionOfLine:(int64_t)line maximumLinesShown:(int64_t)shown withWidth:(double)width lineBreakMode:(int64_t)mode cacheLayoutInfo:(BOOL)info
{
  v12 = *(&self->super.isa + OBJC_IVAR___AMPLanguageAwareTextStorage_languageAwareString);
  selfCopy = self;
  v14 = v12;
  sub_24EFF00E8(line, shown, mode, info, width);
  v16 = v15;

  return v16;
}

- (AMPLanguageAwareTextStorage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end