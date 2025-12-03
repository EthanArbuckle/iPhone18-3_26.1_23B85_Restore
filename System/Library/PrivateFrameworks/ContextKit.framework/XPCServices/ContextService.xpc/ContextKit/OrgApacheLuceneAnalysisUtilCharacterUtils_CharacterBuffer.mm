@interface OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer
- (OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer)initWithCharArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)dealloc;
@end

@implementation OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer

- (OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer)initWithCharArray:(id)array withInt:(int)int withInt:(int)withInt
{
  JreStrongAssign(&self->buffer_, array);
  self->offset_ = int;
  self->length_ = withInt;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer;
  [(OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer *)&v3 dealloc];
}

@end