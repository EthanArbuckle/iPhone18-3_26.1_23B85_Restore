@interface ICTK2TextController
- (void)setNote:(id)a3 firstVisibleLocation:(unint64_t)a4;
- (void)updateAttachmentsSelectionStateInTextStorage:(id)a3 forSelectedRanges:(id)a4 textView:(id)a5;
- (void)updateHighlightsInRange:(_NSRange)a3 inTextStorage:(id)a4;
@end

@implementation ICTK2TextController

- (void)setNote:(id)a3 firstVisibleLocation:(unint64_t)a4
{
  v5 = a3;
  [(ICTextController *)self setNote:v5];
  v6 = [v5 textStorage];

  [v6 setStyler:self];
  [v6 setWantsUndoCommands:0];
  [(ICTextController *)self refreshTextStylingForTextStorage:v6 withTextController:self];
  [v6 setWantsUndoCommands:1];
}

- (void)updateAttachmentsSelectionStateInTextStorage:(id)a3 forSelectedRanges:(id)a4 textView:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = *MEMORY[0x1E69DB5F8];
  v10 = a3;
  v11 = [v10 ic_range];
  v13 = v12;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __95__ICTK2TextController_updateAttachmentsSelectionStateInTextStorage_forSelectedRanges_textView___block_invoke;
  v16[3] = &unk_1E8469E68;
  v17 = v7;
  v18 = v8;
  v14 = v8;
  v15 = v7;
  [v10 enumerateAttribute:v9 inRange:v11 options:v13 usingBlock:{0, v16}];
}

void __95__ICTK2TextController_updateAttachmentsSelectionStateInTextStorage_forSelectedRanges_textView___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v8 = *(a1 + 32);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __95__ICTK2TextController_updateAttachmentsSelectionStateInTextStorage_forSelectedRanges_textView___block_invoke_2;
    v20[3] = &__block_descriptor_48_e24_B32__0__NSValue_8Q16_B24l;
    v20[4] = a3;
    v20[5] = a4;
    v9 = [v8 ic_containsObjectPassingTest:v20];
    v10 = [*(a1 + 40) textLayoutManager];
    objc_opt_class();
    v11 = ICDynamicCast();
    v12 = [v11 viewIdentifier];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v10 existingAttachmentViewForIdentifier:v12];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        [v13 setSelected:v9];
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_8;
    }

    if ([MEMORY[0x1E69B7A58] deviceIsMac])
    {
      v15 = [v7 fileType];
      if ([v15 isEqualToString:*MEMORY[0x1E69B7450]])
      {

LABEL_8:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v10 existingAttachmentViewForIdentifier:v12];
        }

        else
        {
          v16 = [*(a1 + 40) _pk_viewProviderForAttachment:v7 atCharacterIndex:a3 createIfNeeded:0];
          v14 = [v16 view];
        }

        v17 = 1.0;
        if (v9)
        {
          v17 = 0.5;
        }

        [v14 ic_setAlpha:v17];

        goto LABEL_17;
      }

      v18 = [v7 fileType];
      v19 = [v18 isEqualToString:*MEMORY[0x1E69B7438]];

      if (v19)
      {
        goto LABEL_8;
      }
    }

LABEL_17:
  }
}

BOOL __95__ICTK2TextController_updateAttachmentsSelectionStateInTextStorage_forSelectedRanges_textView___block_invoke_2(NSRange *a1, void *a2)
{
  v5.location = [a2 rangeValue];
  v5.length = v3;
  return NSIntersectionRange(a1[32], v5).length != 0;
}

- (void)updateHighlightsInRange:(_NSRange)a3 inTextStorage:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = [(ICTextController *)self authorHighlightsController];
  [v8 performHighlightUpdatesForRange:location inTextStorage:length updates:{v7, 0}];
}

@end