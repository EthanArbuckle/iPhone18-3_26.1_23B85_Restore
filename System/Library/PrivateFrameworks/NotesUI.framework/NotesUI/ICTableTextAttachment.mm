@interface ICTableTextAttachment
- ($01BB1521EC52D44A8E7628F5261DCEC8)attachmentBoundsMargins;
- (CGSize)lastAttachmentSize;
- (id)printableTextContentForAppearanceType:(unint64_t)a3 traitCollection:(id)a4 textContainer:(id)a5;
- (void)fixAttachmentForAttributedString:(id)a3 range:(_NSRange)a4 forPlainText:(BOOL)a5 forStandardizedText:(BOOL)a6;
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
    v11 = [(ICAbstractTextAttachment *)self attachment];
    v12 = [v11 preferredViewSize];

    if (!v12)
    {
      v13 = [(ICAbstractTextAttachment *)self attachment];
      v14 = [v13 note];
      v15 = [v14 textStorage];

      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 0;
      if ([v15 length])
      {
        v16 = *MEMORY[0x1E69DB5F8];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __48__ICTableTextAttachment_attachmentBoundsMargins__block_invoke;
        v21[3] = &unk_1E846A510;
        v21[4] = self;
        v21[5] = &v22;
        [v15 enumerateAttribute:v16 inRange:0 options:1 usingBlock:{0, v21}];
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

- (void)fixAttachmentForAttributedString:(id)a3 range:(_NSRange)a4 forPlainText:(BOOL)a5 forStandardizedText:(BOOL)a6
{
  v6 = a6;
  length = a4.length;
  location = a4.location;
  v11 = MEMORY[0x1E69B78E8];
  v12 = a3;
  v13 = [(ICAbstractTextAttachment *)self attachment];
  v21 = [v11 sharedProviderForAttachment:v13];

  v14 = [v21 table];
  if (v14)
  {
    if (a5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    objc_opt_class();
    v15 = [(ICAbstractTextAttachment *)self attachment];
    v16 = [v15 attachmentModel];
    v17 = ICDynamicCast();
    v14 = [v17 table];

    if (a5)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
    v18 = [(ICAbstractTextAttachment *)self attachment];
    v19 = [v18 managedObjectContext];
    v20 = [v14 attributedStringWithNSTextTablesForColumns:0 rows:0 context:v19];

    goto LABEL_8;
  }

LABEL_7:
  v20 = [v14 joinedAttributedStringForColumns:0 rows:0];
LABEL_8:
  [v12 replaceCharactersInRange:location withAttributedString:{length, v20}];
  [v12 fixAttributesInRange:{location, objc_msgSend(v20, "length")}];
}

- (id)printableTextContentForAppearanceType:(unint64_t)a3 traitCollection:(id)a4 textContainer:(id)a5
{
  v6 = MEMORY[0x1E69B78E8];
  v7 = [(ICAbstractTextAttachment *)self attachment:a3];
  v8 = [v6 sharedProviderForAttachment:v7];

  v9 = [v8 table];
  v10 = [(ICAbstractTextAttachment *)self attachment];
  v11 = [v10 managedObjectContext];
  v12 = [v9 attributedStringWithNSTextTablesForColumns:0 rows:0 context:v11 forPrinting:1];

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