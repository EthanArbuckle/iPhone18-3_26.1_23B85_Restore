@interface ICCalculateResultTextAttachment
- (NSString)expression;
- (NSString)localizedError;
- (_NSRange)expressionRangeInTextStorage;
- (id)calculateDocumentController;
@end

@implementation ICCalculateResultTextAttachment

- (NSString)expression
{
  calculateDocumentController = [(ICCalculateResultTextAttachment *)self calculateDocumentController];
  attachment = [(ICAbstractTextAttachment *)self attachment];
  v5 = [calculateDocumentController expressionStringForResultAttachment:attachment];

  return v5;
}

- (_NSRange)expressionRangeInTextStorage
{
  calculateDocumentController = [(ICCalculateResultTextAttachment *)self calculateDocumentController];
  attachment = [(ICAbstractTextAttachment *)self attachment];
  v5 = [calculateDocumentController expressionRangeForResultAttachment:attachment];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

- (NSString)localizedError
{
  calculateDocumentController = [(ICCalculateResultTextAttachment *)self calculateDocumentController];
  attachment = [(ICAbstractTextAttachment *)self attachment];
  v5 = [calculateDocumentController errorFullStringForResultAttachment:attachment];

  return v5;
}

- (id)calculateDocumentController
{
  attachment = [(ICAbstractTextAttachment *)self attachment];
  note = [attachment note];
  calculateDocumentController = [note calculateDocumentController];

  return calculateDocumentController;
}

@end