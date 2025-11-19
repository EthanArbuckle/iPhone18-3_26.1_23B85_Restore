@interface ICCalculateResultTextAttachment
- (NSString)expression;
- (NSString)localizedError;
- (_NSRange)expressionRangeInTextStorage;
- (id)calculateDocumentController;
@end

@implementation ICCalculateResultTextAttachment

- (NSString)expression
{
  v3 = [(ICCalculateResultTextAttachment *)self calculateDocumentController];
  v4 = [(ICAbstractTextAttachment *)self attachment];
  v5 = [v3 expressionStringForResultAttachment:v4];

  return v5;
}

- (_NSRange)expressionRangeInTextStorage
{
  v3 = [(ICCalculateResultTextAttachment *)self calculateDocumentController];
  v4 = [(ICAbstractTextAttachment *)self attachment];
  v5 = [v3 expressionRangeForResultAttachment:v4];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

- (NSString)localizedError
{
  v3 = [(ICCalculateResultTextAttachment *)self calculateDocumentController];
  v4 = [(ICAbstractTextAttachment *)self attachment];
  v5 = [v3 errorFullStringForResultAttachment:v4];

  return v5;
}

- (id)calculateDocumentController
{
  v2 = [(ICAbstractTextAttachment *)self attachment];
  v3 = [v2 note];
  v4 = [v3 calculateDocumentController];

  return v4;
}

@end