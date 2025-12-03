@interface _CNAtomTextView
+ (id)os_log;
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)hostRecipientViewHasSearchResults;
- (BOOL)hostRecipientViewHasSearchTextOrTokensAndNoSearchResults;
- (BOOL)notifyDelegateWithSelector:(SEL)selector checkReturnValue:(BOOL)value;
- (BOOL)resignFirstResponder;
- (CGRect)convertGlyphRect:(CGRect)rect;
- (CNComposeRecipientTextView)hostRecipientView;
- (NSArray)atoms;
- (_CNAtomTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)keyCommands;
- (id)selectionRectsForRange:(id)range;
- (id)textStylingAtPosition:(id)position inDirection:(int64_t)direction;
- (id)undoManager;
- (int64_t)baseWritingDirection;
- (void)batchTextStorageUpdates:(id)updates;
- (void)commaPressed;
- (void)copy:(id)copy;
- (void)cut:(id)cut;
- (void)delete:(id)delete;
- (void)downArrowPressed;
- (void)enumerateAtomAttachments:(id)attachments;
- (void)enumerateAtoms:(id)atoms;
- (void)enumerateAtomsInCharacterRange:(_NSRange)range withBlock:(id)block;
- (void)escKeyPressed;
- (void)leftArrowPressed;
- (void)makeTextWritingDirectionLeftToRight:(id)right;
- (void)makeTextWritingDirectionRightToLeft:(id)left;
- (void)paste:(id)paste;
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

- (_CNAtomTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  v9.receiver = self;
  v9.super_class = _CNAtomTextView;
  v4 = [(_CNAtomTextView *)&v9 initWithFrame:container textContainer:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    v8.receiver = v4;
    v8.super_class = _CNAtomTextView;
    undoManager = [(_CNAtomTextView *)&v8 undoManager];
    [undoManager disableUndoRegistration];

    v5->_textStorageEditingDepth = 0;
    [(_CNAtomTextView *)v5 setContentInsetAdjustmentBehavior:2];
    [(_CNAtomTextView *)v5 setClipsToBounds:0];
  }

  return v5;
}

- (NSArray)atoms
{
  array = [MEMORY[0x1E695DF70] array];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __24___CNAtomTextView_atoms__block_invoke;
  v6[3] = &unk_1E7CD2990;
  v4 = array;
  v7 = v4;
  [(_CNAtomTextView *)self enumerateAtoms:v6];

  return v4;
}

- (CGRect)convertGlyphRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
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

- (void)enumerateAtoms:(id)atoms
{
  atomsCopy = atoms;
  textStorage = [(_CNAtomTextView *)self textStorage];
  -[_CNAtomTextView enumerateAtomsInCharacterRange:withBlock:](self, "enumerateAtomsInCharacterRange:withBlock:", 0, [textStorage length], atomsCopy);
}

- (void)enumerateAtomsInCharacterRange:(_NSRange)range withBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  textStorage = [(_CNAtomTextView *)self textStorage];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60___CNAtomTextView_enumerateAtomsInCharacterRange_withBlock___block_invoke;
  v10[3] = &unk_1E7CD2CA0;
  v11 = blockCopy;
  v9 = blockCopy;
  [textStorage enumerateAttributesInRange:location options:length usingBlock:{0, v10}];
}

- (void)enumerateAtomAttachments:(id)attachments
{
  attachmentsCopy = attachments;
  textStorage = [(_CNAtomTextView *)self textStorage];
  textStorage2 = [(_CNAtomTextView *)self textStorage];
  v7 = [textStorage2 length];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44___CNAtomTextView_enumerateAtomAttachments___block_invoke;
  v9[3] = &unk_1E7CD2CA0;
  v10 = attachmentsCopy;
  v8 = attachmentsCopy;
  [textStorage enumerateAttributesInRange:0 options:v7 usingBlock:{0, v9}];
}

- (void)batchTextStorageUpdates:(id)updates
{
  ++self->_textStorageEditingDepth;
  updatesCopy = updates;
  textStorage = [(_CNAtomTextView *)self textStorage];
  [textStorage beginEditing];

  updatesCopy[2](updatesCopy);
  --self->_textStorageEditingDepth;
  textStorage2 = [(_CNAtomTextView *)self textStorage];
  [textStorage2 endEditing];

  hostRecipientView = [(_CNAtomTextView *)self hostRecipientView];
  [hostRecipientView _recomputeTextContainerExclusionPaths];
}

- (BOOL)becomeFirstResponder
{
  v8.receiver = self;
  v8.super_class = _CNAtomTextView;
  becomeFirstResponder = [(_CNAtomTextView *)&v8 becomeFirstResponder];
  hostRecipientView = [(_CNAtomTextView *)self hostRecipientView];
  v5 = hostRecipientView;
  if (becomeFirstResponder && hostRecipientView != 0)
  {
    [hostRecipientView atomTextViewDidBecomeFirstResponder:self];
  }

  return becomeFirstResponder;
}

- (BOOL)resignFirstResponder
{
  v8.receiver = self;
  v8.super_class = _CNAtomTextView;
  resignFirstResponder = [(_CNAtomTextView *)&v8 resignFirstResponder];
  hostRecipientView = [(_CNAtomTextView *)self hostRecipientView];
  v5 = hostRecipientView;
  if (resignFirstResponder && hostRecipientView != 0)
  {
    [hostRecipientView atomTextViewDidResignFirstResponder:self];
  }

  return resignFirstResponder;
}

- (id)selectionRectsForRange:(id)range
{
  array = [MEMORY[0x1E695DF70] array];
  selectedRange = [(_CNAtomTextView *)self selectedRange];
  v7 = v6;
  textStorage = [(_CNAtomTextView *)self textStorage];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42___CNAtomTextView_selectionRectsForRange___block_invoke;
  v13[3] = &unk_1E7CD2CC8;
  v15 = selectedRange;
  v16 = v7;
  v13[4] = self;
  v9 = array;
  v14 = v9;
  [textStorage enumerateAttributesInRange:selectedRange options:v7 usingBlock:{0, v13}];

  v10 = v14;
  v11 = v9;

  return v9;
}

- (id)textStylingAtPosition:(id)position inDirection:(int64_t)direction
{
  v8.receiver = self;
  v8.super_class = _CNAtomTextView;
  v4 = [(_CNAtomTextView *)&v8 textStylingAtPosition:position inDirection:direction];
  v5 = [v4 mutableCopy];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v5 setObject:clearColor forKey:*MEMORY[0x1E69DB600]];

  return v5;
}

- (void)makeTextWritingDirectionLeftToRight:(id)right
{
  v5.receiver = self;
  v5.super_class = _CNAtomTextView;
  [(_CNAtomTextView *)&v5 makeTextWritingDirectionLeftToRight:right];
  hostRecipientView = [(_CNAtomTextView *)self hostRecipientView];
  [hostRecipientView atomTextView:self didChangeWritingDirection:0];
}

- (void)makeTextWritingDirectionRightToLeft:(id)left
{
  v5.receiver = self;
  v5.super_class = _CNAtomTextView;
  [(_CNAtomTextView *)&v5 makeTextWritingDirectionRightToLeft:left];
  hostRecipientView = [(_CNAtomTextView *)self hostRecipientView];
  [hostRecipientView atomTextView:self didChangeWritingDirection:1];
}

- (int64_t)baseWritingDirection
{
  textStorage = [(_CNAtomTextView *)self textStorage];
  v4 = [textStorage length];

  v5 = MEMORY[0x1E69DB688];
  if (!v4 || -[_CNAtomTextView selectedRange](self, "selectedRange") == 0x7FFFFFFFFFFFFFFFLL || (-[_CNAtomTextView textStorage](self, "textStorage"), v6 = objc_claimAutoreleasedReturnValue(), [v6 attributesAtIndex:0 effectiveRange:0], v7 = objc_claimAutoreleasedReturnValue(), v6, objc_msgSend(v7, "objectForKey:", *v5), v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    typingAttributes = [(_CNAtomTextView *)self typingAttributes];
    v8 = [typingAttributes objectForKey:*v5];

    if (!v8)
    {
      return -1;
    }
  }

  baseWritingDirection = [v8 baseWritingDirection];

  return baseWritingDirection;
}

- (void)copy:(id)copy
{
  v31 = *MEMORY[0x1E69E9840];
  [(_CNAtomTextView *)self selectedRange];
  if (v4)
  {
    generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    selectedRange = [(_CNAtomTextView *)self selectedRange];
    v8 = v7;
    string = [MEMORY[0x1E696AD60] string];
    if (selectedRange < selectedRange + v8)
    {
      v11 = *MEMORY[0x1E69DB5F8];
      *&v10 = 138412290;
      v25 = v10;
      do
      {
        textStorage = [(_CNAtomTextView *)self textStorage];
        string2 = [textStorage string];
        v14 = [string2 characterAtIndex:selectedRange];

        v28 = v14;
        if (v14 == 65532)
        {
          if ([string length])
          {
            v15 = [string copy];
            [array2 addObject:v15];
            [string setString:&stru_1F3002C60];
          }

          textStorage2 = [(_CNAtomTextView *)self textStorage];
          v17 = [textStorage2 attributesAtIndex:selectedRange effectiveRange:0];

          v18 = [v17 objectForKey:v11];
          if (v18)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              recipient = [v18 recipient];
              pasteboardString = [recipient pasteboardString];
              [array2 addObject:pasteboardString];

              if ([recipient supportsPasteboardUnarchiving])
              {
                [recipient addRecipientToPasteboard:array];
                os_log = [objc_opt_class() os_log];
                if (os_log_type_enabled(os_log, OS_LOG_TYPE_INFO))
                {
                  *buf = v25;
                  v30 = recipient;
                  _os_log_impl(&dword_1B8106000, os_log, OS_LOG_TYPE_INFO, "Pasteboard archived recipient:%@", buf, 0xCu);
                }
              }
            }
          }
        }

        else
        {
          v17 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v28 length:1];
          [string appendString:v17];
        }

        ++selectedRange;
        --v8;
      }

      while (v8);
    }

    if ([string length])
    {
      v22 = [string copy];
      [array2 addObject:v22];
    }

    v23 = [array2 componentsJoinedByString:{@", "}];
    v24 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:v23];
    [array addObject:v24];
    [generalPasteboard setItemProviders:array];
  }
}

- (void)paste:(id)paste
{
  v55[1] = *MEMORY[0x1E69E9840];
  pasteCopy = paste;
  hostRecipientView = [(_CNAtomTextView *)self hostRecipientView];
  if ([hostRecipientView enabled])
  {
    isEditable = [(_CNAtomTextView *)self isEditable];

    if (isEditable)
    {
      generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
      v55[0] = @"kCNPasteboardTypeComposeRecipient";
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:1];
      v9 = [generalPasteboard containsPasteboardTypes:v8 inItemSet:0];

      if (v9)
      {
        v10 = [generalPasteboard valuesForPasteboardType:@"kCNPasteboardTypeComposeRecipient" inItemSet:0];
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v48 objects:v54 count:16];
        if (v11)
        {
          v12 = v11;
          v40 = generalPasteboard;
          v41 = pasteCopy;
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
              os_log = [objc_opt_class() os_log];
              if (os_log_type_enabled(os_log, OS_LOG_TYPE_INFO))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v16;
                _os_log_impl(&dword_1B8106000, os_log, OS_LOG_TYPE_INFO, "Pasteboard recipient:%@", &buf, 0xCu);
              }

              if (v16)
              {
                address = [v16 address];

                if (address)
                {
                  hostRecipientView2 = [(_CNAtomTextView *)self hostRecipientView];
                  [hostRecipientView2 addRecipient:v16];

                  v13 = 1;
                }
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v48 objects:v54 count:16];
          }

          while (v12);

          generalPasteboard = v40;
          pasteCopy = v41;
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
      itemProviders = [generalPasteboard itemProviders];
      LOBYTE(v20) = (*(v20 + 16))(v20, itemProviders);

      if ((v20 & 1) == 0)
      {
        itemProviders2 = [generalPasteboard itemProviders];
        v23 = [itemProviders2 _cn_filter:&__block_literal_global_751];

        if ([v23 count])
        {
          hostRecipientView3 = [(_CNAtomTextView *)self hostRecipientView];
          [hostRecipientView3 addRecipientsFromContactItemProviders:v23];

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
        v28 = [generalPasteboard valueForPasteboardType:*p_buf];
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
          hostRecipientView4 = [(_CNAtomTextView *)self hostRecipientView];
          delegate = [hostRecipientView4 delegate];
          if (objc_opt_respondsToSelector())
          {
            [delegate dismissSearchResultsForComposeRecipientView:hostRecipientView4];
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

                  [delegate composeRecipientView:hostRecipientView4 didFinishEnteringAddress:*(*(&v43 + 1) + 8 * j)];
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
          [(_CNAtomTextView *)&v47 paste:pasteCopy];
        }

        v28 = v30;
      }

      else
      {
        v42.receiver = self;
        v42.super_class = _CNAtomTextView;
        [(_CNAtomTextView *)&v42 paste:pasteCopy];
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

- (void)delete:(id)delete
{
  array = [MEMORY[0x1E695DF70] array];
  selectedRange = [(_CNAtomTextView *)self selectedRange];
  v7 = v6;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __26___CNAtomTextView_delete___block_invoke;
  v21[3] = &unk_1E7CD2990;
  v8 = array;
  v22 = v8;
  [(_CNAtomTextView *)self enumerateAtomsInCharacterRange:selectedRange withBlock:v7, v21];
  textStorage = [(_CNAtomTextView *)self textStorage];
  selectedRange2 = [(_CNAtomTextView *)self selectedRange];
  [textStorage deleteCharactersInRange:{selectedRange2, v11}];

  [(_CNAtomTextView *)self setSelectedRange:0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL];
  hostRecipientView = [(_CNAtomTextView *)self hostRecipientView];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __26___CNAtomTextView_delete___block_invoke_2;
  v19 = &unk_1E7CD2D10;
  v13 = hostRecipientView;
  v20 = v13;
  [v8 _cn_each:&v16];
  delegate = [v13 delegate];
  if (objc_opt_respondsToSelector())
  {
    text = [(_CNAtomTextView *)self text];
    [delegate composeRecipientView:v13 textDidChange:text];
  }
}

- (void)cut:(id)cut
{
  cutCopy = cut;
  [(_CNAtomTextView *)self copy:cutCopy];
  [(_CNAtomTextView *)self delete:cutCopy];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  v14[3] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = _CNAtomTextView;
  v6 = [(_CNAtomTextView *)&v13 canPerformAction:action withSender:sender];
  if (sel_paste_ == action)
  {
    generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
    v10 = *MEMORY[0x1E6963870];
    v14[0] = *MEMORY[0x1E69638B0];
    v14[1] = v10;
    v14[2] = @"kCNPasteboardTypeComposeRecipient";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
    v7 = [generalPasteboard containsPasteboardTypes:v11 inItemSet:0];
  }

  else
  {
    v7 = v6;
    if (sel_delete_ == action)
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
  hostRecipientView = [(_CNAtomTextView *)self hostRecipientView];
  undoManager = [hostRecipientView undoManager];

  return undoManager;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  x = test.x;
  y = test.y;
  eventCopy = event;
  hostRecipientView = [(_CNAtomTextView *)self hostRecipientView];
  atomContainerView = [hostRecipientView atomContainerView];

  v50.receiver = self;
  v50.super_class = _CNAtomTextView;
  v8 = [(_CNAtomTextView *)&v50 hitTest:eventCopy withEvent:x, y];
  v9 = [atomContainerView hitTest:eventCopy withEvent:{x, y}];

  v10 = v8;
  selectedRange = [(_CNAtomTextView *)self selectedRange];
  if (v12)
  {
    v13 = selectedRange;
    v14 = v12;
    textStorage = [(_CNAtomTextView *)self textStorage];
    v16 = [textStorage attributesAtIndex:v13 effectiveRange:0];

    textStorage2 = [(_CNAtomTextView *)self textStorage];
    v18 = [textStorage2 attributesAtIndex:v14 + v13 - 1 effectiveRange:0];

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
            atomView = [v24 atomView];

            [atomView frame];
            v27 = v26;
            v29 = v28;
            CGAffineTransformMakeTranslation(&v49, 0.0, -6.0);
            v30 = v49.tx + v29 * v49.c + v49.a * v27;
            v31 = v49.ty + v29 * v49.d + v49.b * v27;
            v32 = [v18 objectForKey:v19];
            atomView2 = [v32 atomView];

            [atomView2 frame];
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
  hostRecipientView = [(_CNAtomTextView *)self hostRecipientView];
  delegate = [hostRecipientView delegate];
  if (!v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate presentSearchResultsForComposeRecipientView:hostRecipientView];
  }
}

- (void)leftArrowPressed
{
  effectiveUserInterfaceLayoutDirection = [(_CNAtomTextView *)self effectiveUserInterfaceLayoutDirection];
  v4 = &selRef_collapseSelectedSearchResultForComposeRecipientView_;
  if (effectiveUserInterfaceLayoutDirection)
  {
    v4 = &selRef_expandSelectedSearchResultForComposeRecipientView_;
  }

  if (![(_CNAtomTextView *)self notifyDelegateWithBooleanSelector:*v4])
  {
    selectedRange = [(_CNAtomTextView *)self selectedRange];
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = selectedRange == 0;
    }

    v8 = !v7;

    [(_CNAtomTextView *)self setSelectedRange:selectedRange - v8, 0];
  }
}

- (void)rightArrowPressed
{
  effectiveUserInterfaceLayoutDirection = [(_CNAtomTextView *)self effectiveUserInterfaceLayoutDirection];
  v4 = &selRef_expandSelectedSearchResultForComposeRecipientView_;
  if (effectiveUserInterfaceLayoutDirection)
  {
    v4 = &selRef_collapseSelectedSearchResultForComposeRecipientView_;
  }

  if (![(_CNAtomTextView *)self notifyDelegateWithBooleanSelector:*v4])
  {
    selectedRange = [(_CNAtomTextView *)self selectedRange];
    if (v6)
    {
      v7 = selectedRange + v6;
    }

    else
    {
      v7 = selectedRange + 1;
    }

    [(_CNAtomTextView *)self setSelectedRange:v7, 0];
  }
}

- (void)returnPressed
{
  if ([(_CNAtomTextView *)self hostRecipientViewHasSearchResults])
  {
    hostRecipientView = [(_CNAtomTextView *)self hostRecipientView];
    delegate = [hostRecipientView delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      hostRecipientView2 = [(_CNAtomTextView *)self hostRecipientView];
      delegate2 = [hostRecipientView2 delegate];
      hostRecipientView3 = [(_CNAtomTextView *)self hostRecipientView];
      v9 = [delegate2 chooseSelectedSearchResultForComposeRecipientView:hostRecipientView3 context:2];

      if ((v9 & 1) == 0)
      {
        hostRecipientView4 = [(_CNAtomTextView *)self hostRecipientView];
        [hostRecipientView4 finishEnteringRecipient];
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

    hostRecipientView5 = [(_CNAtomTextView *)self hostRecipientView];
    finishEnteringRecipient = [hostRecipientView5 finishEnteringRecipient];

    if (finishEnteringRecipient)
    {
      return;
    }

    v12 = sel_composeRecipientViewReturnPressed_;
  }

  [(_CNAtomTextView *)self notifyDelegateWithVoidSelector:v12];
}

- (void)tabPressed
{
  hostRecipientViewHasSearchResults = [(_CNAtomTextView *)self hostRecipientViewHasSearchResults];
  hostRecipientView = [(_CNAtomTextView *)self hostRecipientView];
  v5 = hostRecipientView;
  if (hostRecipientViewHasSearchResults)
  {
    delegate = [hostRecipientView delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      hostRecipientView2 = [(_CNAtomTextView *)self hostRecipientView];
      delegate2 = [hostRecipientView2 delegate];
      hostRecipientView3 = [(_CNAtomTextView *)self hostRecipientView];
      [delegate2 chooseSelectedSearchResultForComposeRecipientView:hostRecipientView3 context:1];

      return;
    }

    v11 = sel_chooseSelectedSearchResultForComposeRecipientView_;
    goto LABEL_12;
  }

  finishEnteringRecipient = [hostRecipientView finishEnteringRecipient];

  if (finishEnteringRecipient)
  {
    return;
  }

  hostRecipientView4 = [(_CNAtomTextView *)self hostRecipientView];
  delegate3 = [hostRecipientView4 delegate];
  v14 = objc_opt_respondsToSelector();

  if ((v14 & 1) == 0)
  {
    v11 = sel_composeRecipientViewReturnPressed_;
LABEL_12:
    selfCopy2 = self;
    goto LABEL_13;
  }

  selfCopy2 = self;
  v11 = sel_composeRecipientViewTabPressed_;
LABEL_13:

  [(_CNAtomTextView *)selfCopy2 notifyDelegateWithVoidSelector:v11];
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

  hostRecipientView = [(_CNAtomTextView *)self hostRecipientView];
  delegate = [hostRecipientView delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    hostRecipientView2 = [(_CNAtomTextView *)self hostRecipientView];
    delegate2 = [hostRecipientView2 delegate];
    hostRecipientView3 = [(_CNAtomTextView *)self hostRecipientView];
    v9 = [delegate2 chooseSelectedSearchResultForComposeRecipientView:hostRecipientView3 context:3];

    if (v9)
    {
      return;
    }

LABEL_4:
    hostRecipientView4 = [(_CNAtomTextView *)self hostRecipientView];
    [hostRecipientView4 finishEnteringRecipient];

    return;
  }

  [(_CNAtomTextView *)self notifyDelegateWithVoidSelector:sel_chooseSelectedSearchResultForComposeRecipientView_];
}

- (void)escKeyPressed
{
  hostRecipientView = [(_CNAtomTextView *)self hostRecipientView];
  delegate = [hostRecipientView delegate];

  if ([(_CNAtomTextView *)self hostRecipientViewHasSearchResults]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    hostRecipientView2 = [(_CNAtomTextView *)self hostRecipientView];
    [delegate dismissSearchResultsForComposeRecipientView:hostRecipientView2];
  }

  else
  {
    hostRecipientView3 = [(_CNAtomTextView *)self hostRecipientView];
    hasClearableText = [hostRecipientView3 hasClearableText];

    if (hasClearableText)
    {
      hostRecipientView2 = [(_CNAtomTextView *)self hostRecipientView];
      [hostRecipientView2 clearText];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_9;
      }

      hostRecipientView2 = [(_CNAtomTextView *)self hostRecipientView];
      [delegate composeRecipientViewEscapePressed:hostRecipientView2];
    }
  }

LABEL_9:
}

- (BOOL)notifyDelegateWithSelector:(SEL)selector checkReturnValue:(BOOL)value
{
  valueCopy = value;
  v15 = 0;
  hostRecipientView = [(_CNAtomTextView *)self hostRecipientView];
  delegate = [hostRecipientView delegate];
  if ([(_CNAtomTextView *)self hostRecipientViewHasSearchResults]|| (sel_composeRecipientViewReturnPressed_ != selector ? (v8 = sel_composeRecipientViewTabPressed_ == selector) : (v8 = 1), v8)) && (objc_opt_respondsToSelector())
  {
    v9 = MEMORY[0x1E695DF50];
    v10 = [objc_opt_class() instanceMethodSignatureForSelector:selector];
    v11 = [v9 invocationWithMethodSignature:v10];

    [v11 setSelector:selector];
    [v11 setTarget:delegate];
    [v11 setArgument:&hostRecipientView atIndex:2];
    [v11 invoke];
    if (valueCopy)
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
  hostRecipientView = [(_CNAtomTextView *)self hostRecipientView];
  delegate = [hostRecipientView delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate composeRecipientViewShowingSearchResults:hostRecipientView];
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

  hostRecipientView = [(_CNAtomTextView *)self hostRecipientView];
  text = [hostRecipientView text];
  if ([text length])
  {
    v3 = 1;
  }

  else
  {
    atoms = [(_CNAtomTextView *)self atoms];
    v3 = [atoms count] != 0;
  }

  return v3;
}

- (CNComposeRecipientTextView)hostRecipientView
{
  WeakRetained = objc_loadWeakRetained(&self->_hostRecipientView);

  return WeakRetained;
}

@end