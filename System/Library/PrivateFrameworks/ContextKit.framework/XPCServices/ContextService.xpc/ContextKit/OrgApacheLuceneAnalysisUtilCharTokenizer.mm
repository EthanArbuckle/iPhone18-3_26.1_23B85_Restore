@interface OrgApacheLuceneAnalysisUtilCharTokenizer
- (BOOL)incrementToken;
- (void)dealloc;
- (void)end;
- (void)reset;
@end

@implementation OrgApacheLuceneAnalysisUtilCharTokenizer

- (BOOL)incrementToken
{
  [(OrgApacheLuceneUtilAttributeSource *)self clearAttributes];
  v24 = 72;
  termAtt = self->termAtt_;
  if (!termAtt)
  {
    goto LABEL_25;
  }

  v26 = [(OrgApacheLuceneAnalysisTokenattributesCharTermAttribute *)termAtt buffer];
  v4 = 0;
  v25 = -1;
  v27 = -1;
  while (1)
  {
    dataLen = self->dataLen_;
    if (self->bufferIndex_ < dataLen)
    {
      goto LABEL_8;
    }

    self->offset_ += dataLen;
    charUtils = self->charUtils_;
    if (!charUtils)
    {
      goto LABEL_25;
    }

    [(OrgApacheLuceneAnalysisUtilCharacterUtils *)charUtils fillWithOrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer:self->ioBuffer_ withJavaIoReader:self->super.input_];
    ioBuffer = self->ioBuffer_;
    if (!ioBuffer)
    {
      goto LABEL_25;
    }

    if (![(OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer *)ioBuffer getLength])
    {
      break;
    }

    self->dataLen_ = [(OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer *)self->ioBuffer_ getLength];
    self->bufferIndex_ = 0;
LABEL_8:
    v8 = self->charUtils_;
    if (!v8)
    {
      goto LABEL_25;
    }

    v9 = self->ioBuffer_;
    if (!v9)
    {
      goto LABEL_25;
    }

    v10 = [(OrgApacheLuceneAnalysisUtilCharacterUtils *)v8 codePointAtWithCharArray:[(OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer *)v9 getBuffer] withInt:self->bufferIndex_ withInt:[(OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer *)self->ioBuffer_ getLength]];
    v11 = JavaLangCharacter_charCountWithInt_(v10);
    self->bufferIndex_ += v11;
    if ([(OrgApacheLuceneAnalysisUtilCharTokenizer *)self isTokenCharWithInt:v10])
    {
      if (v4)
      {
        if (!v26)
        {
          goto LABEL_25;
        }

        if (v4 >= v26[2] - 1)
        {
          v26 = [*(&self->super.super.super.super.isa + v24) resizeBufferWithInt:(v4 + 2)];
        }

        v12 = v27;
      }

      else
      {
        v12 = self->offset_ - v11 + self->bufferIndex_;
        v25 = v12;
      }

      v27 = v12 + v11;
      v13 = [(OrgApacheLuceneAnalysisUtilCharTokenizer *)self normalizeWithInt:v10, v24];
      v4 = JavaLangCharacter_toCharsWithInt_withCharArray_withInt_(v13, v26, v4, v14, v15, v16, v17, v18) + v4;
      if (v4 > 254)
      {
        goto LABEL_22;
      }
    }

    else if (v4 >= 1)
    {
      goto LABEL_22;
    }
  }

  self->dataLen_ = 0;
  if (v4 > 0)
  {
LABEL_22:
    [*(&self->super.super.super.super.isa + v24) setLengthWithInt:{v4, v24}];
    offsetAtt = self->offsetAtt_;
    if (offsetAtt)
    {
      v20 = [(OrgApacheLuceneAnalysisTokenizer *)self correctOffsetWithInt:v25];
      v21 = [(OrgApacheLuceneAnalysisTokenizer *)self correctOffsetWithInt:v27];
      self->finalOffset_ = v21;
      [(OrgApacheLuceneAnalysisTokenattributesOffsetAttribute *)offsetAtt setOffsetWithInt:v20 withInt:v21];
      return 1;
    }

LABEL_25:
    JreThrowNullPointerException();
  }

  v23 = [(OrgApacheLuceneAnalysisTokenizer *)self correctOffsetWithInt:self->offset_];
  result = 0;
  self->finalOffset_ = v23;
  return result;
}

- (void)end
{
  v4.receiver = self;
  v4.super_class = OrgApacheLuceneAnalysisUtilCharTokenizer;
  [(OrgApacheLuceneAnalysisTokenStream *)&v4 end];
  offsetAtt = self->offsetAtt_;
  if (!offsetAtt)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneAnalysisTokenattributesOffsetAttribute *)offsetAtt setOffsetWithInt:self->finalOffset_ withInt:self->finalOffset_];
}

- (void)reset
{
  v4.receiver = self;
  v4.super_class = OrgApacheLuceneAnalysisUtilCharTokenizer;
  [(OrgApacheLuceneAnalysisTokenizer *)&v4 reset];
  self->bufferIndex_ = 0;
  self->offset_ = 0;
  self->dataLen_ = 0;
  self->finalOffset_ = 0;
  ioBuffer = self->ioBuffer_;
  if (!ioBuffer)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer *)ioBuffer reset];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneAnalysisUtilCharTokenizer;
  [(OrgApacheLuceneAnalysisTokenizer *)&v3 dealloc];
}

@end