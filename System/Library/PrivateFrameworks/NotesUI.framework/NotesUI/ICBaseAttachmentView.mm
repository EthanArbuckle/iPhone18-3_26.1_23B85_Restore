@interface ICBaseAttachmentView
- (CGSize)attachmentContentSize;
- (ICTextAttachment)textAttachment;
- (UIImage)imageForPrinting;
- (void)addKVObserversForAttachment:(id)a3;
- (void)attachmentWillBeDeleted:(id)a3;
- (void)dealloc;
- (void)didChangeSize;
- (void)mediaDidLoad:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeKVOObserversForAttachment:(id)a3;
- (void)setAttachment:(id)a3;
- (void)updateHighlights;
@end

@implementation ICBaseAttachmentView

- (void)updateHighlights
{
  v3 = [(ICBaseAttachmentView *)self selected];
  [(ICBaseAttachmentView *)self foregroundAlpha];
  if (v3)
  {
    v4 = v4 * 0.5;
  }

  [(UIView *)self ic_setAlpha:v4];
}

- (ICTextAttachment)textAttachment
{
  WeakRetained = objc_loadWeakRetained(&self->_textAttachment);
  if (WeakRetained)
  {
  }

  else if (self->_attachment)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__58;
    v19 = __Block_byref_object_dispose__58;
    v20 = 0;
    v4 = self->_attachment;
    v5 = [(ICAttachment *)v4 note];
    v6 = [v5 textStorage];

    v7 = [v6 length];
    v8 = *MEMORY[0x1E69DB5F8];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __38__ICBaseAttachmentView_textAttachment__block_invoke;
    v12[3] = &unk_1E846D378;
    v9 = v4;
    v13 = v9;
    v14 = &v15;
    [v6 enumerateAttribute:v8 inRange:0 options:v7 usingBlock:{0, v12}];
    objc_storeWeak(&self->_textAttachment, v16[5]);

    _Block_object_dispose(&v15, 8);
  }

  v10 = objc_loadWeakRetained(&self->_textAttachment);

  return v10;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  if (self->_attachment)
  {
    [(ICBaseAttachmentView *)self removeKVOObserversForAttachment:?];
  }

  v4.receiver = self;
  v4.super_class = ICBaseAttachmentView;
  [(ICBaseAttachmentView *)&v4 dealloc];
}

- (void)addKVObserversForAttachment:(id)a3
{
  v4 = a3;
  [v4 ic_addObserver:self forKeyPath:@"title" context:&compoundliteral_3];
  [v4 ic_addObserver:self forKeyPath:@"media" context:&compoundliteral_3];
  [v4 ic_addObserver:self forKeyPath:@"mergeableData" context:&compoundliteral_3];
  [v4 ic_addObserver:self forKeyPath:@"markedForDeletion" context:&compoundliteral_3];
}

- (void)removeKVOObserversForAttachment:(id)a3
{
  v4 = a3;
  [v4 ic_removeObserver:self forKeyPath:@"title" context:&compoundliteral_3];
  [v4 ic_removeObserver:self forKeyPath:@"media" context:&compoundliteral_3];
  [v4 ic_removeObserver:self forKeyPath:@"mergeableData" context:&compoundliteral_3];
  [v4 ic_removeObserver:self forKeyPath:@"markedForDeletion" context:&compoundliteral_3];
}

- (void)setAttachment:(id)a3
{
  v3 = a3;
  v26 = a3;
  if (self->_attachment != v26)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = *MEMORY[0x1E69B73F0];
    [v5 removeObserver:self name:*MEMORY[0x1E69B73F0] object:0];

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = *MEMORY[0x1E69B7420];
    [v7 removeObserver:self name:*MEMORY[0x1E69B7420] object:0];

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = *MEMORY[0x1E69B73E0];
    [v9 removeObserver:self name:*MEMORY[0x1E69B73E0] object:0];

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    v12 = *MEMORY[0x1E69B74B8];
    [v11 removeObserver:self name:*MEMORY[0x1E69B74B8] object:0];

    v13 = MEMORY[0x1E69B7468];
    if (self->_attachment)
    {
      [(ICBaseAttachmentView *)self removeKVOObserversForAttachment:?];
      v14 = [MEMORY[0x1E696AD88] defaultCenter];
      [v14 removeObserver:self name:*v13 object:self->_attachment];
    }

    if (v26)
    {
      v25 = v3;
      [(ICAttachment *)v26 ic_obtainPermanentObjectIDIfNecessary];
      [(ICBaseAttachmentView *)self addKVObserversForAttachment:v26];
      v15 = [MEMORY[0x1E696AD88] defaultCenter];
      v16 = [(ICAttachment *)v26 objectID];
      [v15 addObserver:self selector:sel_attachmentDidLoad_ name:v6 object:v16];

      v17 = [MEMORY[0x1E696AD88] defaultCenter];
      v18 = [(ICAttachment *)v26 objectID];
      [v17 addObserver:self selector:sel_attachmentPreviewImagesDidUpdate_ name:v8 object:v18];

      v19 = [MEMORY[0x1E696AD88] defaultCenter];
      v20 = [(ICAttachment *)v26 objectID];
      [v19 addObserver:self selector:sel_attachmentDidChangeSize_ name:v10 object:v20];

      v21 = [MEMORY[0x1E696AD88] defaultCenter];
      [v21 addObserver:self selector:sel_attachmentWillBeDeleted_ name:*MEMORY[0x1E69B7468] object:v26];

      v22 = [(ICAttachment *)v26 media];
      if (v22)
      {
        v23 = [MEMORY[0x1E696AD88] defaultCenter];
        v24 = [v22 ic_permanentObjectID];
        [v23 addObserver:self selector:sel_mediaDidLoad_ name:v12 object:v24];
      }

      v3 = v25;
    }

    [(ICBaseAttachmentView *)self willChangeAttachment];
    objc_storeStrong(&self->_attachment, v3);
    [(ICBaseAttachmentView *)self didChangeAttachment];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a4;
  if (([(ICBaseAttachmentView *)self ic_didAddObserverForContext:a6 inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Ironcade/SharedUI/Text/TextAttachments/ICBaseAttachmentView.m"]& 1) != 0)
  {
    v13 = [(ICBaseAttachmentView *)self ic_shouldIgnoreObserveValue:v11 ofObject:v12 forKeyPath:v10];

    if (a6 == &compoundliteral_3 && (v13 & 1) == 0)
    {
      v14 = [(ICBaseAttachmentView *)self attachment];
      v15 = [v14 faultingState];

      if (!v15)
      {
        if ([v10 isEqualToString:@"media"])
        {
          v16 = [MEMORY[0x1E696AD88] defaultCenter];
          v17 = *MEMORY[0x1E69B74B8];
          [v16 removeObserver:self name:*MEMORY[0x1E69B74B8] object:0];

          v18 = [(ICBaseAttachmentView *)self attachment];
          v19 = [v18 media];

          if (v19)
          {
            [v19 ic_obtainPermanentObjectIDIfNecessary];
            v20 = [v19 objectID];
            v21 = [MEMORY[0x1E696AD88] defaultCenter];
            [v21 addObserver:self selector:sel_mediaDidLoad_ name:v17 object:v20];
          }

          if (([v19 needsInitialFetchFromCloud] & 1) == 0)
          {
            [(ICBaseAttachmentView *)self didChangeMedia];
          }
        }

        else if ([v10 isEqualToString:@"mergeableData"])
        {
          [(ICBaseAttachmentView *)self didChangeMergeableData];
        }

        else if ([v10 isEqualToString:@"title"])
        {
          [(ICBaseAttachmentView *)self didChangeAttachmentTitle];
        }

        else if ([v10 isEqualToString:@"markedForDeletion"])
        {
          [(ICBaseAttachmentView *)self didChangeMedia];
        }
      }
    }
  }

  else
  {
    v22.receiver = self;
    v22.super_class = ICBaseAttachmentView;
    [(ICBaseAttachmentView *)&v22 observeValueForKeyPath:v10 ofObject:v12 change:v11 context:a6];
  }
}

uint64_t __38__ICBaseAttachmentView_textAttachment__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v12 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v12;
    v9 = [v8 attachment];
    v10 = *(a1 + 32);

    if (v9 == v10)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a5 = 1;
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)didChangeSize
{
  objc_opt_class();
  v3 = [(ICBaseAttachmentView *)self attachment];
  v4 = [v3 note];
  v5 = [v4 textStorage];
  v6 = ICCheckedDynamicCast();

  if (([v6 isEditing] & 1) == 0)
  {
    v7 = *MEMORY[0x1E69DB5F8];
    v8 = [v6 length];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __37__ICBaseAttachmentView_didChangeSize__block_invoke;
    v9[3] = &unk_1E8469E68;
    v9[4] = self;
    v10 = v6;
    [v10 enumerateAttribute:v7 inRange:0 options:v8 usingBlock:{0, v9}];
  }
}

void __37__ICBaseAttachmentView_didChangeSize__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 attachment];
    v9 = [*(a1 + 32) attachment];

    if (v8 == v9)
    {
      if (ICInternalSettingsIsTextKit2Enabled())
      {
        v28 = 0uLL;
        v29 = 0uLL;
        v26 = 0uLL;
        v27 = 0uLL;
        v10 = [*(a1 + 40) textLayoutManagers];
        v11 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v27;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v27 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v26 + 1) + 8 * i);
              v16 = [v15 ic_textRangeForRange:{a3, a4}];
              [v15 invalidateLayoutForRange:v16];
            }

            v12 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
          }

          while (v12);
        }
      }

      else
      {
        v24 = 0uLL;
        v25 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        v10 = [*(a1 + 40) layoutManagers];
        v17 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v23;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v23 != v19)
              {
                objc_enumerationMutation(v10);
              }

              v21 = *(*(&v22 + 1) + 8 * j);
              [v21 invalidateLayoutForCharacterRange:a3 actualCharacterRange:{a4, 0}];
              [v21 ensureLayoutForCharacterRange:{a3, a4}];
            }

            v18 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v18);
        }
      }
    }
  }
}

- (UIImage)imageForPrinting
{
  [(ICBaseAttachmentView *)self layoutIfNeeded];

  return [(UIView *)self ic_imageRenderedFromLayer];
}

- (void)mediaDidLoad:(id)a3
{
  v4 = [a3 object];
  v5 = [(ICBaseAttachmentView *)self attachment];
  v6 = [v5 media];
  v7 = [v6 objectID];

  if (v4 == v7)
  {

    [(ICBaseAttachmentView *)self didChangeMedia];
  }

  else
  {
    v8 = os_log_create("com.apple.notes", "Media");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [ICBaseAttachmentView mediaDidLoad:v8];
    }
  }
}

- (void)attachmentWillBeDeleted:(id)a3
{
  v4 = a3;
  v5 = [(ICBaseAttachmentView *)self attachment];
  v6 = [v4 object];

  if (v5 == v6)
  {
    [(ICBaseAttachmentView *)self willDeleteAttachment];

    [(ICBaseAttachmentView *)self setAttachment:0];
  }
}

- (CGSize)attachmentContentSize
{
  width = self->_attachmentContentSize.width;
  height = self->_attachmentContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end