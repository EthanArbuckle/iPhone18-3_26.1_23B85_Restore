@interface CKAssociatedStickerTranscriptCell
- (CKAssociatedStickerTranscriptCell)initWithFrame:(CGRect)a3;
- (double)rotation;
- (int64_t)cachedStickerReactionRandomizationSource;
- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7;
- (void)doubleTapGestureRecognized:(id)a3;
- (void)layoutSubviewsForAlignmentContents;
- (void)layoutSubviewsForDrawer;
- (void)longPressGestureRecognized:(id)a3;
- (void)performDroppedWiggle:(id)a3;
- (void)performHide:(id)a3;
- (void)performInsertion:(id)a3;
- (void)performReload:(id)a3 completion:(id)a4;
- (void)performRevealAnimated:(BOOL)a3 completion:(id)a4;
- (void)performWiggleAnimationIfNeeded;
- (void)prepareForReuse;
- (void)setAssociatedItemView:(id)a3;
- (void)setChatItemGUID:(id)a3;
- (void)setGestureRecognizersEnabled:(BOOL)a3;
- (void)setStickerViewHidden:(BOOL)a3;
@end

@implementation CKAssociatedStickerTranscriptCell

- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7
{
  v9 = a5;
  v15.receiver = self;
  v15.super_class = CKAssociatedStickerTranscriptCell;
  v12 = a3;
  [(CKAssociatedMessageTranscriptCell *)&v15 configureForChatItem:v12 context:a4 animated:v9 animationDuration:a7 animationCurve:a6];
  v13 = [v12 sticker];
  [(CKAssociatedStickerTranscriptCell *)self setSticker:v13];

  -[CKAssociatedStickerTranscriptCell setGestureRecognizersEnabled:](self, "setGestureRecognizersEnabled:", [v12 isFromMe] ^ 1);
  -[CKAssociatedStickerTranscriptCell setIsReaction:](self, "setIsReaction:", [v12 isReaction]);
  -[CKAssociatedStickerTranscriptCell setStickerReactionIndex:](self, "setStickerReactionIndex:", [v12 stickerReactionIndex]);
  v14 = [v12 guid];

  [(CKAssociatedStickerTranscriptCell *)self setChatItemGUID:v14];
}

- (CKAssociatedStickerTranscriptCell)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = CKAssociatedStickerTranscriptCell;
  v3 = [(CKTranscriptMessageContentCell *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v3 action:sel_longPressGestureRecognized_];
    longPressGestureRecognizer = v3->_longPressGestureRecognizer;
    v3->_longPressGestureRecognizer = v4;

    [(UILongPressGestureRecognizer *)v3->_longPressGestureRecognizer setMinimumPressDuration:0.5];
    [(UILongPressGestureRecognizer *)v3->_longPressGestureRecognizer setDelaysTouchesBegan:1];
    [(UILongPressGestureRecognizer *)v3->_longPressGestureRecognizer _setRequiresQuietImpulse:1];
    v6 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v3 action:sel_doubleTapGestureRecognized_];
    tapGestureRecognizer = v3->_tapGestureRecognizer;
    v3->_tapGestureRecognizer = v6;

    [(UITapGestureRecognizer *)v3->_tapGestureRecognizer setCancelsTouchesInView:0];
    [(UITapGestureRecognizer *)v3->_tapGestureRecognizer setNumberOfTapsRequired:2];
  }

  return v3;
}

- (void)setAssociatedItemView:(id)a3
{
  v4 = a3;
  v5 = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];

  if (v5 != v4)
  {
    v6 = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];

    if (v6)
    {
      v7 = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
      v8 = [(CKAssociatedStickerTranscriptCell *)self longPressGestureRecognizer];
      [v7 removeGestureRecognizer:v8];

      v9 = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
      v10 = [(CKAssociatedStickerTranscriptCell *)self tapGestureRecognizer];
      [v9 removeGestureRecognizer:v10];
    }

    v20.receiver = self;
    v20.super_class = CKAssociatedStickerTranscriptCell;
    [(CKAssociatedMessageTranscriptCell *)&v20 setAssociatedItemView:v4];
    if (v4)
    {
      [v4 setHidden:0];
      v11 = [v4 layer];
      v12 = *(MEMORY[0x1E69792E8] + 80);
      v19[4] = *(MEMORY[0x1E69792E8] + 64);
      v19[5] = v12;
      v13 = *(MEMORY[0x1E69792E8] + 112);
      v19[6] = *(MEMORY[0x1E69792E8] + 96);
      v19[7] = v13;
      v14 = *(MEMORY[0x1E69792E8] + 16);
      v19[0] = *MEMORY[0x1E69792E8];
      v19[1] = v14;
      v15 = *(MEMORY[0x1E69792E8] + 48);
      v19[2] = *(MEMORY[0x1E69792E8] + 32);
      v19[3] = v15;
      [v11 setTransform:v19];

      v16 = [v4 layer];
      [v16 removeAllAnimations];

      v17 = [(CKAssociatedStickerTranscriptCell *)self longPressGestureRecognizer];
      [v4 addGestureRecognizer:v17];

      v18 = [(CKAssociatedStickerTranscriptCell *)self tapGestureRecognizer];
      [v4 addGestureRecognizer:v18];

      [(CKAssociatedStickerTranscriptCell *)self setGestureRecognizersEnabled:1];
    }
  }
}

- (void)setGestureRecognizersEnabled:(BOOL)a3
{
  if (self->_gestureRecognizersEnabled != a3)
  {
    v3 = a3;
    self->_gestureRecognizersEnabled = a3;
    v5 = [(CKAssociatedStickerTranscriptCell *)self longPressGestureRecognizer];
    [v5 setEnabled:v3];

    gestureRecognizersEnabled = self->_gestureRecognizersEnabled;
    v7 = [(CKAssociatedStickerTranscriptCell *)self tapGestureRecognizer];
    [v7 setEnabled:gestureRecognizersEnabled];
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CKAssociatedStickerTranscriptCell;
  [(CKAssociatedMessageTranscriptCell *)&v4 prepareForReuse];
  v3 = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
  [v3 setHidden:0];

  [(CKAssociatedStickerTranscriptCell *)self setGestureRecognizersEnabled:1];
  [(CKAssociatedStickerTranscriptCell *)self setSticker:0];
}

- (double)rotation
{
  v2 = [(CKAssociatedStickerTranscriptCell *)self cachedStickerReactionRandomizationSource];

  [CKAssociatedMessageChatItem rotationForGUIDHash:v2];
  return result;
}

- (void)setChatItemGUID:(id)a3
{
  self->_cachedStickerReactionRandomizationSource = 0;
  v4 = [a3 copy];
  chatItemGUID = self->_chatItemGUID;
  self->_chatItemGUID = v4;
}

- (int64_t)cachedStickerReactionRandomizationSource
{
  result = self->_cachedStickerReactionRandomizationSource;
  if (!result)
  {
    v4 = [(CKAssociatedStickerTranscriptCell *)self chatItemGUID];
    self->_cachedStickerReactionRandomizationSource = [v4 hash];

    return self->_cachedStickerReactionRandomizationSource;
  }

  return result;
}

- (void)layoutSubviewsForAlignmentContents
{
  v3 = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
  v4 = [v3 layer];
  v5 = *(MEMORY[0x1E69792E8] + 80);
  v72 = *(MEMORY[0x1E69792E8] + 64);
  v73 = v5;
  v6 = *(MEMORY[0x1E69792E8] + 112);
  v74 = *(MEMORY[0x1E69792E8] + 96);
  v75 = v6;
  v7 = *(MEMORY[0x1E69792E8] + 16);
  v68 = *MEMORY[0x1E69792E8];
  v69 = v7;
  v8 = *(MEMORY[0x1E69792E8] + 48);
  v70 = *(MEMORY[0x1E69792E8] + 32);
  v71 = v8;
  [v4 setTransform:&v68];

  v67.receiver = self;
  v67.super_class = CKAssociatedStickerTranscriptCell;
  [(CKAssociatedMessageTranscriptCell *)&v67 layoutSubviewsForAlignmentContents];
  v9 = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
  [v9 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;

  LODWORD(v9) = [(CKAssociatedStickerTranscriptCell *)self isReaction];
  [(CKAssociatedMessageTranscriptCell *)self adjustedContentAlignmentRect];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [(CKAssociatedMessageTranscriptCell *)self size];
  [(CKAssociatedMessageChatItem *)CKAssociatedStickerChatItem adjustedParentFrameForPositioning:v17 forItemSize:v19, v21, v23, v24, v25];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  if (v9)
  {
    v34 = [(CKAssociatedStickerTranscriptCell *)self stickerReactionIndex];
    v35 = [(CKAssociatedMessageTranscriptCell *)self parentIsFromMe];
    [(CKAssociatedMessageTranscriptCell *)self stickerReactionInsetsForParent];
    [CKAssociatedMessageChatItem locationForStickerReactionWithParentFrame:v34 reactionIndex:v35 parentIsFromMe:v27 insets:v29, v31, v33, v36, v37, v38, v39];
    v41 = v40;
    [(CKAssociatedMessageTranscriptCell *)self cumulativeAssociatedOffset];
    v43 = v41 + v42;
    [(CKAssociatedMessageTranscriptCell *)self swipeToReplyLayoutOffset];
    v45 = v43 + v44;
    *&v71 = 0;
    v69 = 0u;
    v70 = 0u;
    v68 = 0u;
    [(CKAssociatedMessageTranscriptCell *)self geometryDescriptor];
    [(CKAssociatedStickerTranscriptCell *)self rotation];
    *&v71 = v46;
    *(&v70 + 1) = 0x3FF0000000000000;
    *&v68 = 12;
    v65[0] = v68;
    v65[1] = v69;
    v65[2] = v70;
    v66 = v46;
    [(CKAssociatedMessageTranscriptCell *)self setGeometryDescriptor:v65];
  }

  else
  {
    [(CKAssociatedMessageTranscriptCell *)self size];
    v64 = v15;
    v47 = v13;
    v48 = v11;
    v50 = v49;
    v52 = v51;
    [(CKAssociatedMessageTranscriptCell *)self geometryDescriptor];
    v53 = v50;
    v11 = v48;
    v13 = v47;
    v15 = v64;
    [(CKAssociatedMessageChatItem *)CKAssociatedStickerChatItem horizontalOriginForAssociatedMessageItemSize:&v68 parentFrame:v53 geometryDescriptor:v52, v27, v29, v31, v33];
    v55 = v54;
    [(CKAssociatedMessageTranscriptCell *)self cumulativeAssociatedOffset];
    v57 = v56;
    [(CKAssociatedMessageTranscriptCell *)self swipeToReplyLayoutOffset];
    v45 = v55 + v57 + v58;
  }

  v59 = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
  [(CKAssociatedMessageTranscriptCell *)self parentSize];
  v61 = v60;
  v63 = v62;
  [(CKAssociatedMessageTranscriptCell *)self geometryDescriptor];
  [CKAssociatedMessageChatItem applyTransformToView:v59 viewFrame:&v68 parentSize:v45 forGeometryDescriptor:v11, v13, v15, v61, v63];
}

- (void)layoutSubviewsForDrawer
{
  if ([(CKEditableCollectionViewCell *)self orientation]== 2 || [(CKTranscriptMessageCell *)self wantsContactImageLayout])
  {
    v3.receiver = self;
    v3.super_class = CKAssociatedStickerTranscriptCell;
    [(CKTranscriptMessageContentCell *)&v3 layoutSubviewsForDrawer];
  }
}

- (void)performHide:(id)a3
{
  v4 = a3;
  v5 = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
  [v5 ck_performHideAnimated:1 completion:v4];
}

- (void)performWiggleAnimationIfNeeded
{
  v6 = [a1 uniqueID];
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __67__CKAssociatedStickerTranscriptCell_performWiggleAnimationIfNeeded__block_invoke(uint64_t a1)
{
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __67__CKAssociatedStickerTranscriptCell_performWiggleAnimationIfNeeded__block_invoke_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained sticker];

  if (v4 && ([v4 uniqueID], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "uniqueID"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqual:", v6), v6, v5, v7))
  {
    [CKAssociatedStickerChatItem removeDroppedSticker:*(a1 + 32)];
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __67__CKAssociatedStickerTranscriptCell_performWiggleAnimationIfNeeded__block_invoke_cold_2((a1 + 32));
    }
  }

  else
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __67__CKAssociatedStickerTranscriptCell_performWiggleAnimationIfNeeded__block_invoke_cold_3(a1, v4);
    }
  }
}

- (void)performDroppedWiggle:(id)a3
{
  v21[7] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6979390];
  v4 = a3;
  v5 = [v3 animationWithKeyPath:@"transform.rotation.z"];
  [v5 setValues:&unk_1F04E70C8];
  v6 = [v5 values];
  v7 = 1.0 / [v6 count];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  v21[0] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:v7 + v7];
  v21[1] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:v7 * 3.0];
  v21[2] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v7 * 4.0];
  v21[3] = v11;
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:v7 * 5.0];
  v21[4] = v12;
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:v7 * 6.0];
  v21[5] = v13;
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:v7 * 7.0];
  v21[6] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:7];
  [v5 setKeyTimes:v15];

  v16 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v5 setTimingFunction:v16];

  [v5 setCalculationMode:*MEMORY[0x1E6979598]];
  [v5 setDuration:0.6];
  [v5 setRemovedOnCompletion:1];
  [v5 setFillMode:*MEMORY[0x1E69797E0]];
  LODWORD(v17) = 1.0;
  [v5 setSpeed:v17];
  v18 = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
  v19 = [v18 layer];
  [v19 addAnimation:v5 forKey:@"transform.rotation.z"];

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:0.6];
  [MEMORY[0x1E6979518] setCompletionBlock:v4];

  [MEMORY[0x1E6979518] commit];
}

- (void)performRevealAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
  [v7 ck_performRevealAnimated:v4 completion:v6];
}

- (void)performReload:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v8 center];
  v33 = v17;
  v31 = v18;
  if (v6)
  {
    v6[2](v6);
  }

  [(CKAssociatedStickerTranscriptCell *)self setNeedsLayout];
  [(CKAssociatedStickerTranscriptCell *)self layoutIfNeeded];
  [v8 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  [v8 center];
  v32 = v27;
  v30 = v28;
  v42.origin.x = v10;
  v42.origin.y = v12;
  v42.size.width = v14;
  v42.size.height = v16;
  v43.origin.x = v20;
  v43.origin.y = v22;
  v43.size.width = v24;
  v43.size.height = v26;
  if (CGRectEqualToRect(v42, v43) || v33 == v32 && v31 == v30)
  {
    if (v7)
    {
      v7[2](v7, 1);
    }
  }

  else
  {
    [v8 setBounds:{v10, v12, v14, v16}];
    [v8 setCenter:{v33, v31}];
    v29 = MEMORY[0x1E69DD250];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __62__CKAssociatedStickerTranscriptCell_performReload_completion___block_invoke;
    v34[3] = &unk_1E72ECB00;
    v35 = v8;
    v36 = v20;
    v37 = v22;
    v38 = v24;
    v39 = v26;
    v40 = v32;
    v41 = v30;
    [v29 animateWithDuration:0 delay:v34 options:v7 animations:0.25 completion:0.0];
  }
}

uint64_t __62__CKAssociatedStickerTranscriptCell_performReload_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBounds:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);

  return [v2 setCenter:{v3, v4}];
}

- (void)setStickerViewHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
  [v4 setHidden:v3];
}

- (void)doubleTapGestureRecognized:(id)a3
{
  v4 = [(CKAssociatedMessageTranscriptCell *)self delegate];
  [v4 associatedMessageTranscriptCellDoubleTapped:self];
}

- (void)longPressGestureRecognized:(id)a3
{
  if ([a3 state] == 1)
  {
    v4 = [(CKAssociatedMessageTranscriptCell *)self delegate];
    [v4 associatedMessageTranscriptCellLongTouched:self];
  }
}

- (void)performInsertion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 1);
  }
}

void __67__CKAssociatedStickerTranscriptCell_performWiggleAnimationIfNeeded__block_invoke_cold_1(uint64_t a1)
{
  v6 = [*(a1 + 32) uniqueID];
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __67__CKAssociatedStickerTranscriptCell_performWiggleAnimationIfNeeded__block_invoke_cold_2(id *a1)
{
  v6 = [*a1 uniqueID];
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __67__CKAssociatedStickerTranscriptCell_performWiggleAnimationIfNeeded__block_invoke_cold_3(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) uniqueID];
  v9 = [a2 uniqueID];
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

@end