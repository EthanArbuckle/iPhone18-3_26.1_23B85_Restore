@interface ICTableTextAttachment
- ($01BB1521EC52D44A8E7628F5261DCEC8)attachmentBoundsMargins;
- (CGSize)lastAttachmentSize;
- (id)printableTextContentForAppearanceType:(unint64_t)type traitCollection:(id)collection textContainer:(id)container;
- (void)fixAttachmentForAttributedString:(id)string range:(_NSRange)range forPlainText:(BOOL)text forStandardizedText:(BOOL)standardizedText;
@end

@implementation ICTableTextAttachment

- ($01BB1521EC52D44A8E7628F5261DCEC8)attachmentBoundsMargins
{
  v26.receiver = self;
  v26.super_class = ICTableTextAttachment;
  [(ICTextAttachment *)&v26 attachmentBoundsMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    attachment = [(ICAbstractTextAttachment *)self attachment];
    preferredViewSize = [attachment preferredViewSize];

    if (!preferredViewSize)
    {
      attachment2 = [(ICAbstractTextAttachment *)self attachment];
      note = [attachment2 note];
      textStorage = [note textStorage];

      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 0;
      if ([textStorage length])
      {
        v16 = *MEMORY[0x1E69DB5F8];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __48__ICTableTextAttachment_attachmentBoundsMargins__block_invoke;
        v21[3] = &unk_1E846A510;
        v21[4] = self;
        v21[5] = &v22;
        [textStorage enumerateAttribute:v16 inRange:0 options:1 usingBlock:{0, v21}];
      }

      if (*(v23 + 24))
      {
        v8 = 10.0;
      }

      _Block_object_dispose(&v22, 8);
    }
  }

  v17 = v4;
  v18 = v6;
  v19 = v8;
  v20 = v10;
  result.var3 = v20;
  result.var2 = v19;
  result.var1 = v18;
  result.var0 = v17;
  return result;
}

uint64_t __48__ICTableTextAttachment_attachmentBoundsMargins__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (*(result + 32) == a2 && a3 == 0)
  {
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  *a5 = 1;
  return result;
}

- (void)fixAttachmentForAttributedString:(id)string range:(_NSRange)range forPlainText:(BOOL)text forStandardizedText:(BOOL)standardizedText
{
  standardizedTextCopy = standardizedText;
  length = range.length;
  location = range.location;
  v11 = MEMORY[0x1E69B78E8];
  stringCopy = string;
  attachment = [(ICAbstractTextAttachment *)self attachment];
  v21 = [v11 sharedProviderForAttachment:attachment];

  table = [v21 table];
  if (table)
  {
    if (text)
    {
      goto LABEL_7;
    }
  }

  else
  {
    objc_opt_class();
    attachment2 = [(ICAbstractTextAttachment *)self attachment];
    attachmentModel = [attachment2 attachmentModel];
    v17 = ICDynamicCast();
    table = [v17 table];

    if (text)
    {
      goto LABEL_7;
    }
  }

  if (!standardizedTextCopy)
  {
    attachment3 = [(ICAbstractTextAttachment *)self attachment];
    managedObjectContext = [attachment3 managedObjectContext];
    v20 = [table attributedStringWithNSTextTablesForColumns:0 rows:0 context:managedObjectContext];

    goto LABEL_8;
  }

LABEL_7:
  v20 = [table joinedAttributedStringForColumns:0 rows:0];
LABEL_8:
  [stringCopy replaceCharactersInRange:location withAttributedString:{length, v20}];
  [stringCopy fixAttributesInRange:{location, objc_msgSend(v20, "length")}];
}

- (id)printableTextContentForAppearanceType:(unint64_t)type traitCollection:(id)collection textContainer:(id)container
{
  v6 = MEMORY[0x1E69B78E8];
  v7 = [(ICAbstractTextAttachment *)self attachment:type];
  v8 = [v6 sharedProviderForAttachment:v7];

  table = [v8 table];
  attachment = [(ICAbstractTextAttachment *)self attachment];
  managedObjectContext = [attachment managedObjectContext];
  v12 = [table attributedStringWithNSTextTablesForColumns:0 rows:0 context:managedObjectContext forPrinting:1];

  return v12;
}

- (CGSize)lastAttachmentSize
{
  width = self->_lastAttachmentSize.width;
  height = self->_lastAttachmentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end