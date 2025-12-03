@interface ICBaseAttachmentView
- (CGSize)attachmentContentSize;
- (ICTextAttachment)textAttachment;
- (UIImage)imageForPrinting;
- (void)addKVObserversForAttachment:(id)attachment;
- (void)attachmentWillBeDeleted:(id)deleted;
- (void)dealloc;
- (void)didChangeSize;
- (void)mediaDidLoad:(id)load;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeKVOObserversForAttachment:(id)attachment;
- (void)setAttachment:(id)attachment;
- (void)updateHighlights;
@end

@implementation ICBaseAttachmentView

- (void)updateHighlights
{
  selected = [(ICBaseAttachmentView *)self selected];
  [(ICBaseAttachmentView *)self foregroundAlpha];
  if (selected)
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
    note = [(ICAttachment *)v4 note];
    textStorage = [note textStorage];

    v7 = [textStorage length];
    v8 = *MEMORY[0x1E69DB5F8];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __38__ICBaseAttachmentView_textAttachment__block_invoke;
    v12[3] = &unk_1E846D378;
    v9 = v4;
    v13 = v9;
    v14 = &v15;
    [textStorage enumerateAttribute:v8 inRange:0 options:v7 usingBlock:{0, v12}];
    objc_storeWeak(&self->_textAttachment, v16[5]);

    _Block_object_dispose(&v15, 8);
  }

  v10 = objc_loadWeakRetained(&self->_textAttachment);

  return v10;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  if (self->_attachment)
  {
    [(ICBaseAttachmentView *)self removeKVOObserversForAttachment:?];
  }

  v4.receiver = self;
  v4.super_class = ICBaseAttachmentView;
  [(ICBaseAttachmentView *)&v4 dealloc];
}

- (void)addKVObserversForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  [attachmentCopy ic_addObserver:self forKeyPath:@"title" context:&compoundliteral_3];
  [attachmentCopy ic_addObserver:self forKeyPath:@"media" context:&compoundliteral_3];
  [attachmentCopy ic_addObserver:self forKeyPath:@"mergeableData" context:&compoundliteral_3];
  [attachmentCopy ic_addObserver:self forKeyPath:@"markedForDeletion" context:&compoundliteral_3];
}

- (void)removeKVOObserversForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  [attachmentCopy ic_removeObserver:self forKeyPath:@"title" context:&compoundliteral_3];
  [attachmentCopy ic_removeObserver:self forKeyPath:@"media" context:&compoundliteral_3];
  [attachmentCopy ic_removeObserver:self forKeyPath:@"mergeableData" context:&compoundliteral_3];
  [attachmentCopy ic_removeObserver:self forKeyPath:@"markedForDeletion" context:&compoundliteral_3];
}

- (void)setAttachment:(id)attachment
{
  attachmentCopy = attachment;
  attachmentCopy2 = attachment;
  if (self->_attachment != attachmentCopy2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = *MEMORY[0x1E69B73F0];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69B73F0] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = *MEMORY[0x1E69B7420];
    [defaultCenter2 removeObserver:self name:*MEMORY[0x1E69B7420] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = *MEMORY[0x1E69B73E0];
    [defaultCenter3 removeObserver:self name:*MEMORY[0x1E69B73E0] object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    v12 = *MEMORY[0x1E69B74B8];
    [defaultCenter4 removeObserver:self name:*MEMORY[0x1E69B74B8] object:0];

    v13 = MEMORY[0x1E69B7468];
    if (self->_attachment)
    {
      [(ICBaseAttachmentView *)self removeKVOObserversForAttachment:?];
      defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter5 removeObserver:self name:*v13 object:self->_attachment];
    }

    if (attachmentCopy2)
    {
      v25 = attachmentCopy;
      [(ICAttachment *)attachmentCopy2 ic_obtainPermanentObjectIDIfNecessary];
      [(ICBaseAttachmentView *)self addKVObserversForAttachment:attachmentCopy2];
      defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
      objectID = [(ICAttachment *)attachmentCopy2 objectID];
      [defaultCenter6 addObserver:self selector:sel_attachmentDidLoad_ name:v6 object:objectID];

      defaultCenter7 = [MEMORY[0x1E696AD88] defaultCenter];
      objectID2 = [(ICAttachment *)attachmentCopy2 objectID];
      [defaultCenter7 addObserver:self selector:sel_attachmentPreviewImagesDidUpdate_ name:v8 object:objectID2];

      defaultCenter8 = [MEMORY[0x1E696AD88] defaultCenter];
      objectID3 = [(ICAttachment *)attachmentCopy2 objectID];
      [defaultCenter8 addObserver:self selector:sel_attachmentDidChangeSize_ name:v10 object:objectID3];

      defaultCenter9 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter9 addObserver:self selector:sel_attachmentWillBeDeleted_ name:*MEMORY[0x1E69B7468] object:attachmentCopy2];

      media = [(ICAttachment *)attachmentCopy2 media];
      if (media)
      {
        defaultCenter10 = [MEMORY[0x1E696AD88] defaultCenter];
        ic_permanentObjectID = [media ic_permanentObjectID];
        [defaultCenter10 addObserver:self selector:sel_mediaDidLoad_ name:v12 object:ic_permanentObjectID];
      }

      attachmentCopy = v25;
    }

    [(ICBaseAttachmentView *)self willChangeAttachment];
    objc_storeStrong(&self->_attachment, attachmentCopy);
    [(ICBaseAttachmentView *)self didChangeAttachment];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  objectCopy = object;
  if (([(ICBaseAttachmentView *)self ic_didAddObserverForContext:context inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Ironcade/SharedUI/Text/TextAttachments/ICBaseAttachmentView.m"]& 1) != 0)
  {
    v13 = [(ICBaseAttachmentView *)self ic_shouldIgnoreObserveValue:changeCopy ofObject:objectCopy forKeyPath:pathCopy];

    if (context == &compoundliteral_3 && (v13 & 1) == 0)
    {
      attachment = [(ICBaseAttachmentView *)self attachment];
      faultingState = [attachment faultingState];

      if (!faultingState)
      {
        if ([pathCopy isEqualToString:@"media"])
        {
          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          v17 = *MEMORY[0x1E69B74B8];
          [defaultCenter removeObserver:self name:*MEMORY[0x1E69B74B8] object:0];

          attachment2 = [(ICBaseAttachmentView *)self attachment];
          media = [attachment2 media];

          if (media)
          {
            [media ic_obtainPermanentObjectIDIfNecessary];
            objectID = [media objectID];
            defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
            [defaultCenter2 addObserver:self selector:sel_mediaDidLoad_ name:v17 object:objectID];
          }

          if (([media needsInitialFetchFromCloud] & 1) == 0)
          {
            [(ICBaseAttachmentView *)self didChangeMedia];
          }
        }

        else if ([pathCopy isEqualToString:@"mergeableData"])
        {
          [(ICBaseAttachmentView *)self didChangeMergeableData];
        }

        else if ([pathCopy isEqualToString:@"title"])
        {
          [(ICBaseAttachmentView *)self didChangeAttachmentTitle];
        }

        else if ([pathCopy isEqualToString:@"markedForDeletion"])
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
    [(ICBaseAttachmentView *)&v22 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
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
  attachment = [(ICBaseAttachmentView *)self attachment];
  note = [attachment note];
  textStorage = [note textStorage];
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

- (void)mediaDidLoad:(id)load
{
  object = [load object];
  attachment = [(ICBaseAttachmentView *)self attachment];
  media = [attachment media];
  objectID = [media objectID];

  if (object == objectID)
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

- (void)attachmentWillBeDeleted:(id)deleted
{
  deletedCopy = deleted;
  attachment = [(ICBaseAttachmentView *)self attachment];
  object = [deletedCopy object];

  if (attachment == object)
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