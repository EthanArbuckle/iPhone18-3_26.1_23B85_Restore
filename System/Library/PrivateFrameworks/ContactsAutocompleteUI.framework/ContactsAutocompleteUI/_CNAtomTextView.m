@interface _CNAtomTextView
+ (id)os_log;
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)hostRecipientViewHasSearchResults;
- (BOOL)hostRecipientViewHasSearchTextOrTokensAndNoSearchResults;
- (BOOL)notifyDelegateWithSelector:(SEL)a3 checkReturnValue:(BOOL)a4;
- (BOOL)resignFirstResponder;
- (CGRect)convertGlyphRect:(CGRect)a3;
- (CNComposeRecipientTextView)hostRecipientView;
- (NSArray)atoms;
- (_CNAtomTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)keyCommands;
- (id)selectionRectsForRange:(id)a3;
- (id)textStylingAtPosition:(id)a3 inDirection:(int64_t)a4;
- (id)undoManager;
- (int64_t)baseWritingDirection;
- (void)batchTextStorageUpdates:(id)a3;
- (void)commaPressed;
- (void)copy:(id)a3;
- (void)cut:(id)a3;
- (void)delete:(id)a3;
- (void)downArrowPressed;
- (void)enumerateAtomAttachments:(id)a3;
- (void)enumerateAtoms:(id)a3;
- (void)enumerateAtomsInCharacterRange:(_NSRange)a3 withBlock:(id)a4;
- (void)escKeyPressed;
- (void)leftArrowPressed;
- (void)makeTextWritingDirectionLeftToRight:(id)a3;
- (void)makeTextWritingDirectionRightToLeft:(id)a3;
- (void)paste:(id)a3;
- (void)returnPressed;
- (void)rightArrowPressed;
- (void)tabPressed;
@end

@implementation _CNAtomTextView

+ (id)os_log
{
  if (os_log_cn_once_token_13 != -1)
  {
    +[_CNAtomTextView os_log];
  }

  v3 = os_log_cn_once_object_13;

  return v3;
}

- (_CNAtomTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  v9.receiver = self;
  v9.super_class = _CNAtomTextView;
  v4 = [(_CNAtomTextView *)&v9 initWithFrame:a4 textContainer:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    v8.receiver = v4;
    v8.super_class = _CNAtomTextView;
    v6 = [(_CNAtomTextView *)&v8 undoManager];
    [v6 disableUndoRegistration];

    v5->_textStorageEditingDepth = 0;
    [(_CNAtomTextView *)v5 setContentInsetAdjustmentBehavior:2];
    [(_CNAtomTextView *)v5 setClipsToBounds:0];
  }

  return v5;
}

- (NSArray)atoms
{
  v3 = [MEMORY[0x1E695DF70] array];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __24___CNAtomTextView_atoms__block_invoke;
  v6[3] = &unk_1E7CD2990;
  v4 = v3;
  v7 = v4;
  [(_CNAtomTextView *)self enumerateAtoms:v6];

  return v4;
}

- (CGRect)convertGlyphRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(_CNAtomTextView *)self textContainerInset];
  v9 = y + v8;
  [(_CNAtomTextView *)self textContainerInset];
  v11 = x + v10;
  v12 = v9;
  v13 = width;
  v14 = height;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)enumerateAtoms:(id)a3
{
  v4 = a3;
  v5 = [(_CNAtomTextView *)self textStorage];
  -[_CNAtomTextView enumerateAtomsInCharacterRange:withBlock:](self, "enumerateAtomsInCharacterRange:withBlock:", 0, [v5 length], v4);
}

- (void)enumerateAtomsInCharacterRange:(_NSRange)a3 withBlock:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = [(_CNAtomTextView *)self textStorage];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60___CNAtomTextView_enumerateAtomsInCharacterRange_withBlock___block_invoke;
  v10[3] = &unk_1E7CD2CA0;
  v11 = v7;
  v9 = v7;
  [v8 enumerateAttributesInRange:location options:length usingBlock:{0, v10}];
}

- (void)enumerateAtomAttachments:(id)a3
{
  v4 = a3;
  v5 = [(_CNAtomTextView *)self textStorage];
  v6 = [(_CNAtomTextView *)self textStorage];
  v7 = [v6 length];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44___CNAtomTextView_enumerateAtomAttachments___block_invoke;
  v9[3] = &unk_1E7CD2CA0;
  v10 = v4;
  v8 = v4;
  [v5 enumerateAttributesInRange:0 options:v7 usingBlock:{0, v9}];
}

- (void)batchTextStorageUpdates:(id)a3
{
  ++self->_textStorageEditingDepth;
  v4 = a3;
  v5 = [(_CNAtomTextView *)self textStorage];
  [v5 beginEditing];

  v4[2](v4);
  --self->_textStorageEditingDepth;
  v6 = [(_CNAtomTextView *)self textStorage];
  [v6 endEditing];

  v7 = [(_CNAtomTextView *)self hostRecipientView];
  [v7 _recomputeTextContainerExclusionPaths];
}

- (BOOL)becomeFirstResponder
{
  v8.receiver = self;
  v8.super_class = _CNAtomTextView;
  v3 = [(_CNAtomTextView *)&v8 becomeFirstResponder];
  v4 = [(_CNAtomTextView *)self hostRecipientView];
  v5 = v4;
  if (v3 && v4 != 0)
  {
    [v4 atomTextViewDidBecomeFirstResponder:self];
  }

  return v3;
}

- (BOOL)resignFirstResponder
{
  v8.receiver = self;
  v8.super_class = _CNAtomTextView;
  v3 = [(_CNAtomTextView *)&v8 resignFirstResponder];
  v4 = [(_CNAtomTextView *)self hostRecipientView];
  v5 = v4;
  if (v3 && v4 != 0)
  {
    [v4 atomTextViewDidResignFirstResponder:self];
  }

  return v3;
}

- (id)selectionRectsForRange:(id)a3
{
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [(_CNAtomTextView *)self selectedRange];
  v7 = v6;
  v8 = [(_CNAtomTextView *)self textStorage];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42___CNAtomTextView_selectionRectsForRange___block_invoke;
  v13[3] = &unk_1E7CD2CC8;
  v15 = v5;
  v16 = v7;
  v13[4] = self;
  v9 = v4;
  v14 = v9;
  [v8 enumerateAttributesInRange:v5 options:v7 usingBlock:{0, v13}];

  v10 = v14;
  v11 = v9;

  return v9;
}

- (id)textStylingAtPosition:(id)a3 inDirection:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = _CNAtomTextView;
  v4 = [(_CNAtomTextView *)&v8 textStylingAtPosition:a3 inDirection:a4];
  v5 = [v4 mutableCopy];

  v6 = [MEMORY[0x1E69DC888] clearColor];
  [v5 setObject:v6 forKey:*MEMORY[0x1E69DB600]];

  return v5;
}

- (void)makeTextWritingDirectionLeftToRight:(id)a3
{
  v5.receiver = self;
  v5.super_class = _CNAtomTextView;
  [(_CNAtomTextView *)&v5 makeTextWritingDirectionLeftToRight:a3];
  v4 = [(_CNAtomTextView *)self hostRecipientView];
  [v4 atomTextView:self didChangeWritingDirection:0];
}

- (void)makeTextWritingDirectionRightToLeft:(id)a3
{
  v5.receiver = self;
  v5.super_class = _CNAtomTextView;
  [(_CNAtomTextView *)&v5 makeTextWritingDirectionRightToLeft:a3];
  v4 = [(_CNAtomTextView *)self hostRecipientView];
  [v4 atomTextView:self didChangeWritingDirection:1];
}

- (int64_t)baseWritingDirection
{
  v3 = [(_CNAtomTextView *)self textStorage];
  v4 = [v3 length];

  v5 = MEMORY[0x1E69DB688];
  if (!v4 || -[_CNAtomTextView selectedRange](self, "selectedRange") == 0x7FFFFFFFFFFFFFFFLL || (-[_CNAtomTextView textStorage](self, "textStorage"), v6 = objc_claimAutoreleasedReturnValue(), [v6 attributesAtIndex:0 effectiveRange:0], v7 = objc_claimAutoreleasedReturnValue(), v6, objc_msgSend(v7, "objectForKey:", *v5), v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v9 = [(_CNAtomTextView *)self typingAttributes];
    v8 = [v9 objectForKey:*v5];

    if (!v8)
    {
      return -1;
    }
  }

  v10 = [v8 baseWritingDirection];

  return v10;
}

- (void)copy:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  [(_CNAtomTextView *)self selectedRange];
  if (v4)
  {
    v26 = [MEMORY[0x1E69DCD50] generalPasteboard];
    v27 = [MEMORY[0x1E695DF70] array];
    v5 = [MEMORY[0x1E695DF70] array];
    v6 = [(_CNAtomTextView *)self selectedRange];
    v8 = v7;
    v9 = [MEMORY[0x1E696AD60] string];
    if (v6 < v6 + v8)
    {
      v11 = *MEMORY[0x1E69DB5F8];
      *&v10 = 138412290;
      v25 = v10;
      do
      {
        v12 = [(_CNAtomTextView *)self textStorage];
        v13 = [v12 string];
        v14 = [v13 characterAtIndex:v6];

        v28 = v14;
        if (v14 == 65532)
        {
          if ([v9 length])
          {
            v15 = [v9 copy];
            [v5 addObject:v15];
            [v9 setString:&stru_1F3002C60];
          }

          v16 = [(_CNAtomTextView *)self textStorage];
          v17 = [v16 attributesAtIndex:v6 effectiveRange:0];

          v18 = [v17 objectForKey:v11];
          if (v18)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [v18 recipient];
              v20 = [v19 pasteboardString];
              [v5 addObject:v20];

              if ([v19 supportsPasteboardUnarchiving])
              {
                [v19 addRecipientToPasteboard:v27];
                v21 = [objc_opt_class() os_log];
                if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                {
                  *buf = v25;
                  v30 = v19;
                  _os_log_impl(&dword_1B8106000, v21, OS_LOG_TYPE_INFO, "Pasteboard archived recipient:%@", buf, 0xCu);
                }
              }
            }
          }
        }

        else
        {
          v17 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v28 length:1];
          [v9 appendString:v17];
        }

        ++v6;
        --v8;
      }

      while (v8);
    }

    if ([v9 length])
    {
      v22 = [v9 copy];
      [v5 addObject:v22];
    }

    v23 = [v5 componentsJoinedByString:{@", "}];
    v24 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:v23];
    [v27 addObject:v24];
    [v26 setItemProviders:v27];
  }
}

- (void)paste:(id)a3
{
  v55[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_CNAtomTextView *)self hostRecipientView];
  if ([v5 enabled])
  {
    v6 = [(_CNAtomTextView *)self isEditable];

    if (v6)
    {
      v7 = [MEMORY[0x1E69DCD50] generalPasteboard];
      v55[0] = @"kCNPasteboardTypeComposeRecipient";
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:1];
      v9 = [v7 containsPasteboardTypes:v8 inItemSet:0];

      if (v9)
      {
        v10 = [v7 valuesForPasteboardType:@"kCNPasteboardTypeComposeRecipient" inItemSet:0];
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v48 objects:v54 count:16];
        if (v11)
        {
          v12 = v11;
          v40 = v7;
          v41 = v4;
          v13 = 0;
          v14 = *v49;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v49 != v14)
              {
                objc_enumerationMutation(v10);
              }

              v16 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:*(*(&v48 + 1) + 8 * i) error:0];
              v17 = [objc_opt_class() os_log];
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v16;
                _os_log_impl(&dword_1B8106000, v17, OS_LOG_TYPE_INFO, "Pasteboard recipient:%@", &buf, 0xCu);
              }

              if (v16)
              {
                v18 = [v16 address];

                if (v18)
                {
                  v19 = [(_CNAtomTextView *)self hostRecipientView];
                  [v19 addRecipient:v16];

                  v13 = 1;
                }
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v48 objects:v54 count:16];
          }

          while (v12);

          v7 = v40;
          v4 = v41;
          if (v13)
          {
            goto LABEL_48;
          }
        }

        else
        {
        }
      }

      v20 = *MEMORY[0x1E6996530];
      v21 = [v7 itemProviders];
      LOBYTE(v20) = (*(v20 + 16))(v20, v21);

      if ((v20 & 1) == 0)
      {
        v22 = [v7 itemProviders];
        v23 = [v22 _cn_filter:&__block_literal_global_751];

        if ([v23 count])
        {
          v24 = [(_CNAtomTextView *)self hostRecipientView];
          [v24 addRecipientsFromContactItemProviders:v23];

LABEL_48:
          goto LABEL_49;
        }
      }

      *&buf = *MEMORY[0x1E6963870];
      *(&buf + 1) = *MEMORY[0x1E69638B0];
      p_buf = &buf;
      v26 = 1;
      do
      {
        v27 = v26;
        v28 = [v7 valueForPasteboardType:*p_buf];
        if (v28)
        {
          break;
        }

        v26 = 0;
        p_buf = (&buf + 8);
      }

      while ((v27 & 1) != 0);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v28 encoding:4];

        v28 = v29;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = [v28 stringByReplacingOccurrencesOfString:@"\n" withString:{@", "}];

        v31 = [MEMORY[0x1E69AD6F8] addressListFromEncodedString:v30];
        if ([v31 count] > 1)
        {
          v32 = [(_CNAtomTextView *)self hostRecipientView];
          v33 = [v32 delegate];
          if (objc_opt_respondsToSelector())
          {
            [v33 dismissSearchResultsForComposeRecipientView:v32];
          }

          if (objc_opt_respondsToSelector())
          {
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v34 = v31;
            v35 = [v34 countByEnumeratingWithState:&v43 objects:v52 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v44;
              do
              {
                for (j = 0; j != v36; ++j)
                {
                  if (*v44 != v37)
                  {
                    objc_enumerationMutation(v34);
                  }

                  [v33 composeRecipientView:v32 didFinishEnteringAddress:*(*(&v43 + 1) + 8 * j)];
                }

                v36 = [v34 countByEnumeratingWithState:&v43 objects:v52 count:16];
              }

              while (v36);
            }
          }
        }

        else
        {
          v47.receiver = self;
          v47.super_class = _CNAtomTextView;
          [(_CNAtomTextView *)&v47 paste:v4];
        }

        v28 = v30;
      }

      else
      {
        v42.receiver = self;
        v42.super_class = _CNAtomTextView;
        [(_CNAtomTextView *)&v42 paste:v4];
      }

      for (k = 8; k != -8; k -= 8)
      {
      }

      goto LABEL_48;
    }
  }

  else
  {
  }

LABEL_49:
}

- (void)delete:(id)a3
{
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [(_CNAtomTextView *)self selectedRange];
  v7 = v6;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __26___CNAtomTextView_delete___block_invoke;
  v21[3] = &unk_1E7CD2990;
  v8 = v4;
  v22 = v8;
  [(_CNAtomTextView *)self enumerateAtomsInCharacterRange:v5 withBlock:v7, v21];
  v9 = [(_CNAtomTextView *)self textStorage];
  v10 = [(_CNAtomTextView *)self selectedRange];
  [v9 deleteCharactersInRange:{v10, v11}];

  [(_CNAtomTextView *)self setSelectedRange:0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL];
  v12 = [(_CNAtomTextView *)self hostRecipientView];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __26___CNAtomTextView_delete___block_invoke_2;
  v19 = &unk_1E7CD2D10;
  v13 = v12;
  v20 = v13;
  [v8 _cn_each:&v16];
  v14 = [v13 delegate];
  if (objc_opt_respondsToSelector())
  {
    v15 = [(_CNAtomTextView *)self text];
    [v14 composeRecipientView:v13 textDidChange:v15];
  }
}

- (void)cut:(id)a3
{
  v4 = a3;
  [(_CNAtomTextView *)self copy:v4];
  [(_CNAtomTextView *)self delete:v4];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v14[3] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = _CNAtomTextView;
  v6 = [(_CNAtomTextView *)&v13 canPerformAction:a3 withSender:a4];
  if (sel_paste_ == a3)
  {
    v9 = [MEMORY[0x1E69DCD50] generalPasteboard];
    v10 = *MEMORY[0x1E6963870];
    v14[0] = *MEMORY[0x1E69638B0];
    v14[1] = v10;
    v14[2] = @"kCNPasteboardTypeComposeRecipient";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
    v7 = [v9 containsPasteboardTypes:v11 inItemSet:0];
  }

  else
  {
    v7 = v6;
    if (sel_delete_ == a3)
    {
      if (CNComposeIsAppDesignedForVisionOS())
      {
        [(_CNAtomTextView *)self selectedRange];
        return v8 != 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return v7;
}

- (id)undoManager
{
  v2 = [(_CNAtomTextView *)self hostRecipientView];
  v3 = [v2 undoManager];

  return v3;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  x = a3.x;
  y = a3.y;
  v5 = a4;
  v6 = [(_CNAtomTextView *)self hostRecipientView];
  v7 = [v6 atomContainerView];

  v50.receiver = self;
  v50.super_class = _CNAtomTextView;
  v8 = [(_CNAtomTextView *)&v50 hitTest:v5 withEvent:x, y];
  v9 = [v7 hitTest:v5 withEvent:{x, y}];

  v10 = v8;
  v11 = [(_CNAtomTextView *)self selectedRange];
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    v15 = [(_CNAtomTextView *)self textStorage];
    v16 = [v15 attributesAtIndex:v13 effectiveRange:0];

    v17 = [(_CNAtomTextView *)self textStorage];
    v18 = [v17 attributesAtIndex:v14 + v13 - 1 effectiveRange:0];

    v19 = *MEMORY[0x1E69DB5F8];
    v20 = [v16 objectForKey:*MEMORY[0x1E69DB5F8]];
    v21 = [v18 objectForKey:v19];
    v22 = v21;
    v23 = v10;
    if (v20)
    {
      v23 = v10;
      if (v21)
      {
        objc_opt_class();
        v23 = v10;
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          v23 = v10;
          if (objc_opt_isKindOfClass())
          {
            v24 = [v16 objectForKey:v19];
            v25 = [v24 atomView];

            [v25 frame];
            v27 = v26;
            v29 = v28;
            CGAffineTransformMakeTranslation(&v49, 0.0, -6.0);
            v30 = v49.tx + v29 * v49.c + v49.a * v27;
            v31 = v49.ty + v29 * v49.d + v49.b * v27;
            v32 = [v18 objectForKey:v19];
            v33 = [v32 atomView];

            [v33 frame];
            v34 = v52.origin.x;
            v35 = v52.origin.y;
            width = v52.size.width;
            height = v52.size.height;
            MaxX = CGRectGetMaxX(v52);
            v53.origin.x = v34;
            v53.origin.y = v35;
            v53.size.width = width;
            v53.size.height = height;
            MaxY = CGRectGetMaxY(v53);
            CGAffineTransformMakeTranslation(&v49, 0.0, 6.0);
            v38.f64[0] = x;
            v38.f64[1] = y;
            v39 = vsubq_f64(vaddq_f64(*&v49.tx, vmlaq_n_f64(vmulq_n_f64(*&v49.c, MaxY), *&v49.a, MaxX)), v38);
            v40 = sqrt(vaddvq_f64(vmulq_f64(v39, v39)));
            v41 = sqrt((v30 - x) * (v30 - x) + (v31 - y) * (v31 - y)) <= 14.0 || v40 <= 14.0;
            v23 = v10;
            if (!v41)
            {
              if (v9)
              {
                v42 = v9;
              }

              else
              {
                v42 = v10;
              }

              v23 = v42;
            }
          }
        }
      }
    }
  }

  else
  {
    if (v9)
    {
      v43 = v9;
    }

    else
    {
      v43 = v10;
    }

    v23 = v43;
    v16 = v10;
  }

  return v23;
}

- (id)keyCommands
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30___CNAtomTextView_keyCommands__block_invoke;
  block[3] = &unk_1E7CD1F90;
  block[4] = self;
  if (keyCommands_onceToken != -1)
  {
    dispatch_once(&keyCommands_onceToken, block);
  }

  return keyCommands_keyCommands;
}

- (void)downArrowPressed
{
  v3 = [(_CNAtomTextView *)self notifyDelegateWithVoidSelector:sel_selectNextSearchResultForComposeRecipientView_];
  v5 = [(_CNAtomTextView *)self hostRecipientView];
  v4 = [v5 delegate];
  if (!v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 presentSearchResultsForComposeRecipientView:v5];
  }
}

- (void)leftArrowPressed
{
  v3 = [(_CNAtomTextView *)self effectiveUserInterfaceLayoutDirection];
  v4 = &selRef_collapseSelectedSearchResultForComposeRecipientView_;
  if (v3)
  {
    v4 = &selRef_expandSelectedSearchResultForComposeRecipientView_;
  }

  if (![(_CNAtomTextView *)self notifyDelegateWithBooleanSelector:*v4])
  {
    v5 = [(_CNAtomTextView *)self selectedRange];
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = v5 == 0;
    }

    v8 = !v7;

    [(_CNAtomTextView *)self setSelectedRange:v5 - v8, 0];
  }
}

- (void)rightArrowPressed
{
  v3 = [(_CNAtomTextView *)self effectiveUserInterfaceLayoutDirection];
  v4 = &selRef_expandSelectedSearchResultForComposeRecipientView_;
  if (v3)
  {
    v4 = &selRef_collapseSelectedSearchResultForComposeRecipientView_;
  }

  if (![(_CNAtomTextView *)self notifyDelegateWithBooleanSelector:*v4])
  {
    v5 = [(_CNAtomTextView *)self selectedRange];
    if (v6)
    {
      v7 = v5 + v6;
    }

    else
    {
      v7 = v5 + 1;
    }

    [(_CNAtomTextView *)self setSelectedRange:v7, 0];
  }
}

- (void)returnPressed
{
  if ([(_CNAtomTextView *)self hostRecipientViewHasSearchResults])
  {
    v3 = [(_CNAtomTextView *)self hostRecipientView];
    v4 = [v3 delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(_CNAtomTextView *)self hostRecipientView];
      v7 = [v6 delegate];
      v8 = [(_CNAtomTextView *)self hostRecipientView];
      v9 = [v7 chooseSelectedSearchResultForComposeRecipientView:v8 context:2];

      if ((v9 & 1) == 0)
      {
        v13 = [(_CNAtomTextView *)self hostRecipientView];
        [v13 finishEnteringRecipient];
      }

      return;
    }

    v12 = sel_chooseSelectedSearchResultForComposeRecipientView_;
  }

  else
  {
    if (![(_CNAtomTextView *)self hostRecipientViewHasSearchTextOrTokensAndNoSearchResults])
    {
      return;
    }

    v10 = [(_CNAtomTextView *)self hostRecipientView];
    v11 = [v10 finishEnteringRecipient];

    if (v11)
    {
      return;
    }

    v12 = sel_composeRecipientViewReturnPressed_;
  }

  [(_CNAtomTextView *)self notifyDelegateWithVoidSelector:v12];
}

- (void)tabPressed
{
  v3 = [(_CNAtomTextView *)self hostRecipientViewHasSearchResults];
  v4 = [(_CNAtomTextView *)self hostRecipientView];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v16 = [(_CNAtomTextView *)self hostRecipientView];
      v8 = [v16 delegate];
      v9 = [(_CNAtomTextView *)self hostRecipientView];
      [v8 chooseSelectedSearchResultForComposeRecipientView:v9 context:1];

      return;
    }

    v11 = sel_chooseSelectedSearchResultForComposeRecipientView_;
    goto LABEL_12;
  }

  v10 = [v4 finishEnteringRecipient];

  if (v10)
  {
    return;
  }

  v12 = [(_CNAtomTextView *)self hostRecipientView];
  v13 = [v12 delegate];
  v14 = objc_opt_respondsToSelector();

  if ((v14 & 1) == 0)
  {
    v11 = sel_composeRecipientViewReturnPressed_;
LABEL_12:
    v15 = self;
    goto LABEL_13;
  }

  v15 = self;
  v11 = sel_composeRecipientViewTabPressed_;
LABEL_13:

  [(_CNAtomTextView *)v15 notifyDelegateWithVoidSelector:v11];
}

- (void)commaPressed
{
  if (![(_CNAtomTextView *)self hostRecipientViewHasSearchResults])
  {
    if (![(_CNAtomTextView *)self hostRecipientViewHasSearchTextOrTokensAndNoSearchResults])
    {
      return;
    }

    goto LABEL_4;
  }

  v3 = [(_CNAtomTextView *)self hostRecipientView];
  v4 = [v3 delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(_CNAtomTextView *)self hostRecipientView];
    v7 = [v6 delegate];
    v8 = [(_CNAtomTextView *)self hostRecipientView];
    v9 = [v7 chooseSelectedSearchResultForComposeRecipientView:v8 context:3];

    if (v9)
    {
      return;
    }

LABEL_4:
    v10 = [(_CNAtomTextView *)self hostRecipientView];
    [v10 finishEnteringRecipient];

    return;
  }

  [(_CNAtomTextView *)self notifyDelegateWithVoidSelector:sel_chooseSelectedSearchResultForComposeRecipientView_];
}

- (void)escKeyPressed
{
  v3 = [(_CNAtomTextView *)self hostRecipientView];
  v7 = [v3 delegate];

  if ([(_CNAtomTextView *)self hostRecipientViewHasSearchResults]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [(_CNAtomTextView *)self hostRecipientView];
    [v7 dismissSearchResultsForComposeRecipientView:v4];
  }

  else
  {
    v5 = [(_CNAtomTextView *)self hostRecipientView];
    v6 = [v5 hasClearableText];

    if (v6)
    {
      v4 = [(_CNAtomTextView *)self hostRecipientView];
      [v4 clearText];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_9;
      }

      v4 = [(_CNAtomTextView *)self hostRecipientView];
      [v7 composeRecipientViewEscapePressed:v4];
    }
  }

LABEL_9:
}

- (BOOL)notifyDelegateWithSelector:(SEL)a3 checkReturnValue:(BOOL)a4
{
  v4 = a4;
  v15 = 0;
  v14 = [(_CNAtomTextView *)self hostRecipientView];
  v7 = [v14 delegate];
  if ([(_CNAtomTextView *)self hostRecipientViewHasSearchResults]|| (sel_composeRecipientViewReturnPressed_ != a3 ? (v8 = sel_composeRecipientViewTabPressed_ == a3) : (v8 = 1), v8)) && (objc_opt_respondsToSelector())
  {
    v9 = MEMORY[0x1E695DF50];
    v10 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
    v11 = [v9 invocationWithMethodSignature:v10];

    [v11 setSelector:a3];
    [v11 setTarget:v7];
    [v11 setArgument:&v14 atIndex:2];
    [v11 invoke];
    if (v4)
    {
      [v11 getReturnValue:&v15];
    }

    v12 = v15;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

- (BOOL)hostRecipientViewHasSearchResults
{
  v2 = [(_CNAtomTextView *)self hostRecipientView];
  v3 = [v2 delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 composeRecipientViewShowingSearchResults:v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hostRecipientViewHasSearchTextOrTokensAndNoSearchResults
{
  if ([(_CNAtomTextView *)self hostRecipientViewHasSearchResults])
  {
    return 0;
  }

  v4 = [(_CNAtomTextView *)self hostRecipientView];
  v5 = [v4 text];
  if ([v5 length])
  {
    v3 = 1;
  }

  else
  {
    v6 = [(_CNAtomTextView *)self atoms];
    v3 = [v6 count] != 0;
  }

  return v3;
}

- (CNComposeRecipientTextView)hostRecipientView
{
  WeakRetained = objc_loadWeakRetained(&self->_hostRecipientView);

  return WeakRetained;
}

@end