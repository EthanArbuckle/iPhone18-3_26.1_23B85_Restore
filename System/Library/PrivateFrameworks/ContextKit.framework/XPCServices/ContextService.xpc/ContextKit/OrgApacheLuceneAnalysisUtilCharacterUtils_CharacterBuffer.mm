@interface OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer
- (OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer)initWithCharArray:(id)a3 withInt:(int)a4 withInt:(int)a5;
- (void)dealloc;
@end

@implementation OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer

- (OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer)initWithCharArray:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  JreStrongAssign(&self->buffer_, a3);
  self->offset_ = a4;
  self->length_ = a5;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer;
  [(OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer *)&v3 dealloc];
}

@end