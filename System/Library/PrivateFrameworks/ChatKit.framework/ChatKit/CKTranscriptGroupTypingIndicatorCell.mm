@interface CKTranscriptGroupTypingIndicatorCell
- (CGRect)avatarFrameForContact:(id)a3;
- (CGRect)contactImageViewFrame;
- (CGRect)lastRemovedContactImageFrame;
- (CKTranscriptGroupTypingIndicatorCell)initWithFrame:(CGRect)a3;
- (id)getContactsFromHandles:(id)a3;
- (void)applyAccessibilityStringsFor:(id)a3;
- (void)applyTransforms;
- (void)layoutLayer:(id)a3 at:(CGRect)a4 within:(CGRect)a5 withAvatarIndex:(int64_t)a6;
- (void)layoutSubviews;
- (void)performAvatarAnimation;
- (void)prepareForAvatarAnimationWithNewHandles:(id)a3;
- (void)prepareForReuse;
- (void)setGroupAvatarViewFromCurrentViewController;
- (void)setTypingHandles:(id)a3 pluginIconLayer:(id)a4 shouldAnimateRemovals:(BOOL)a5;
@end

@implementation CKTranscriptGroupTypingIndicatorCell

- (CKTranscriptGroupTypingIndicatorCell)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = CKTranscriptGroupTypingIndicatorCell;
  v3 = [(CKTranscriptTypingIndicatorCell *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    [(CKTranscriptGroupTypingIndicatorCell *)v3 contactImageViewFrame];
    v5 = [v4 initWithFrame:?];
    avatarView = v3->_avatarView;
    v3->_avatarView = v5;

    v7 = [(CKTranscriptGroupTypingIndicatorCell *)v3 avatarView];
    v8 = +[CKUIBehavior sharedBehaviors];
    v9 = [v8 transcriptGroupTypingIndicatorBackgroundColor];
    [v7 setBackgroundColor:v9];

    v10 = [(CKEditableCollectionViewCell *)v3 contentView];
    [v10 addSubview:v3->_avatarView];
  }

  [(UIView *)v3->_avatarView setAccessibilityIdentifier:@"groupTypingIndicator"];
  return v3;
}

- (CGRect)contactImageViewFrame
{
  v2 = [(CKTranscriptMessageCell *)self isReplyContextPreview];
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = v3;
  if (v2)
  {
    [v3 transcriptReplyPreviewContextContactImageDiameter];
  }

  else
  {
    [v3 transcriptGroupTypingContactImageDiameter];
  }

  v6 = v5;

  v7 = 0.0;
  v8 = 0.0;
  v9 = v6;
  v10 = v6;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (void)setGroupAvatarViewFromCurrentViewController
{
  v3 = [(CNGroupAvatarViewController *)self->_groupAvatarViewController view];
  avatarView = self->_avatarView;
  if (avatarView != v3)
  {
    obj = v3;
    [(UIView *)avatarView removeFromSuperview];
    objc_storeStrong(&self->_avatarView, obj);
    v5 = self->_avatarView;
    v6 = +[CKUIBehavior sharedBehaviors];
    v7 = [v6 transcriptGroupTypingIndicatorBackgroundColor];
    [(UIView *)v5 setBackgroundColor:v7];

    v8 = [(CKEditableCollectionViewCell *)self contentView];
    [v8 addSubview:self->_avatarView];

    [(CKTranscriptGroupTypingIndicatorCell *)self setNeedsLayout];
    v3 = obj;
  }
}

- (void)prepareForAvatarAnimationWithNewHandles:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E695DFA8]);
  v6 = [(CKTranscriptGroupTypingIndicatorCell *)self typingHandles];
  v7 = [v5 initWithArray:v6];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 removeObject:{*(*(&v25 + 1) + 8 * v12++), v25}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  if ([v7 count] == 1)
  {
    if (objc_opt_respondsToSelector())
    {
      v13 = [v7 anyObject];
      v29 = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
      v15 = [(CKTranscriptGroupTypingIndicatorCell *)self getContactsFromHandles:v14];
      v16 = [v15 firstObject];
      v17 = [v16 identifier];

      v18 = [(CNGroupAvatarViewController *)self->_groupAvatarViewController avatarLayerForIdentifier:v17];
      [v18 frame];
      [(CKTranscriptGroupTypingIndicatorCell *)self setLastRemovedContactImageFrame:?];
    }

    else
    {
      v19 = [(CKTranscriptGroupTypingIndicatorCell *)self typingHandles];
      v20 = [v7 anyObject];
      v21 = [v19 indexOfObject:v20];

      v22 = [(CNGroupAvatarViewController *)self->_groupAvatarViewController avatarLayers];
      v23 = [(CNGroupAvatarViewController *)self->_groupAvatarViewController avatarLayers];
      v24 = [v22 objectAtIndex:{objc_msgSend(v23, "count") + ~v21}];
      [v24 frame];
      [(CKTranscriptGroupTypingIndicatorCell *)self setLastRemovedContactImageFrame:?];
    }
  }

  else
  {
    [(CKTranscriptGroupTypingIndicatorCell *)self setLastRemovedContactImageFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  [(CKTranscriptGroupTypingIndicatorCell *)self setPendingTypingHandles:v8, v25];
}

- (void)performAvatarAnimation
{
  v3 = [(CKTranscriptGroupTypingIndicatorCell *)self pendingTypingHandles];

  if (v3)
  {
    v4 = [(CKTranscriptGroupTypingIndicatorCell *)self pendingTypingHandles];
    [(CKTranscriptGroupTypingIndicatorCell *)self setTypingHandles:v4 pluginIconLayer:0 shouldAnimateRemovals:0];

    [(CKTranscriptGroupTypingIndicatorCell *)self setPendingTypingHandles:0];
  }
}

- (void)setTypingHandles:(id)a3 pluginIconLayer:(id)a4 shouldAnimateRemovals:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  [(CKTranscriptGroupTypingIndicatorCell *)self setPendingTypingHandles:0];
  v10 = [(CKTranscriptGroupTypingIndicatorCell *)self currentTypingCount];
  v11 = [v9 reverseObjectEnumerator];

  v12 = [v11 allObjects];

  v13 = [v12 count];
  if (v13 >= 7)
  {
    v14 = 7;
  }

  else
  {
    v14 = v13;
  }

  v15 = [v12 subarrayWithRange:{0, v14}];

  -[CKTranscriptGroupTypingIndicatorCell setCurrentTypingCount:](self, "setCurrentTypingCount:", [v15 count]);
  v16 = [(CKTranscriptTypingIndicatorCell *)self indicatorLayer];
  if ([v15 count] < 2)
  {
    if (v8)
    {
      v85.receiver = self;
      v85.super_class = CKTranscriptGroupTypingIndicatorCell;
      [(CKTranscriptTypingIndicatorCell *)&v85 setIndicatorLayer:v8];
      goto LABEL_10;
    }

    v17 = +[CKTypingChatItem defaultIndicatorLayer];
    v84.receiver = self;
    v84.super_class = CKTranscriptGroupTypingIndicatorCell;
    [(CKTranscriptTypingIndicatorCell *)&v84 setIndicatorLayer:v17];
  }

  else
  {
    v17 = +[CKTypingChatItem defaultIndicatorLayer];
    v86.receiver = self;
    v86.super_class = CKTranscriptGroupTypingIndicatorCell;
    [(CKTranscriptTypingIndicatorCell *)&v86 setIndicatorLayer:v17];
  }

LABEL_10:
  v68 = v8;
  v18 = [(CKTranscriptTypingIndicatorCell *)self indicatorLayer];

  v67 = v16;
  if (v18 != v16)
  {
    [(CKTranscriptTypingIndicatorCell *)self startPulseAnimation];
  }

  v19 = [(CKTranscriptGroupTypingIndicatorCell *)self getContactsFromHandles:v15];
  v20 = [objc_alloc(MEMORY[0x1E695D158]) initGroupWithName:0 photo:0 contacts:v19];
  groupAvatarViewController = self->_groupAvatarViewController;
  if (!groupAvatarViewController)
  {
    v22 = IMLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.m11) = 0;
      _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "GroupAvatarViewController is nil. Creating a new one.", &buf, 2u);
    }

    v23 = [objc_opt_class() instancesRespondToSelector:sel_initWithGroup_avatarViewControllerSettings_avatarLayoutType_withLayoutDelegate_];
    v24 = objc_alloc(MEMORY[0x1E695D150]);
    if (v23)
    {
      v25 = [v24 initWithGroup:v20 avatarViewControllerSettings:0 avatarLayoutType:3 withLayoutDelegate:self];
    }

    else
    {
      v25 = [v24 initWithGroup:v20 avatarLayoutType:3];
    }

    v26 = self->_groupAvatarViewController;
    self->_groupAvatarViewController = v25;
  }

  v27 = +[CKUIBehavior sharedBehaviors];
  [v27 transcriptContactImageDiameter];
  v29 = v28;

  v30 = +[CKUIBehavior sharedBehaviors];
  [v30 transcriptGroupTypingContactImageDiameter];
  v32 = v31;

  v33 = [v15 count];
  v34 = v29 / v32;
  memset(&buf.m21, 0, 96);
  if (v33 > 1)
  {
    v34 = 1.0;
  }

  memset(&buf, 0, 32);
  CATransform3DMakeScale(&buf, v34, v34, 1.0);
  memset(&v82, 0, sizeof(v82));
  v81 = buf;
  CATransform3DTranslate(&v82, &v81, 0.0, 0.0, 0.0);
  memset(&v81, 0, sizeof(v81));
  v35 = MEMORY[0x1E69792E8];
  v65 = *(MEMORY[0x1E69792E8] + 80);
  v66 = *(MEMORY[0x1E69792E8] + 64);
  *&v80.m31 = v66;
  *&v80.m33 = v65;
  v63 = *(MEMORY[0x1E69792E8] + 112);
  v64 = *(MEMORY[0x1E69792E8] + 96);
  *&v80.m41 = v64;
  *&v80.m43 = v63;
  v61 = *(MEMORY[0x1E69792E8] + 16);
  v62 = *MEMORY[0x1E69792E8];
  *&v80.m11 = *MEMORY[0x1E69792E8];
  *&v80.m13 = v61;
  v59 = *(MEMORY[0x1E69792E8] + 48);
  v60 = *(MEMORY[0x1E69792E8] + 32);
  *&v80.m21 = v60;
  *&v80.m23 = v59;
  CATransform3DTranslate(&v81, &v80, (v32 - v29) * -0.5, 0.0, 0.0);
  if (groupAvatarViewController)
  {
    v36 = objc_opt_respondsToSelector();
    v37 = self->_groupAvatarViewController;
    if (v36)
    {
      [(CNGroupAvatarViewController *)v37 groupIdentityDidUpdate:v20 shouldAnimateRemovals:v5];
    }

    else
    {
      [(CNGroupAvatarViewController *)v37 groupIdentityDidUpdate:v20];
    }

    if (v10 == 1 && [(CKTranscriptGroupTypingIndicatorCell *)self currentTypingCount]> 1 || [(CKTranscriptGroupTypingIndicatorCell *)self currentTypingCount:v59]== 1 && v10 >= 2)
    {
      v38 = [MEMORY[0x1E69794A8] animationWithKeyPath:{@"transform", v59, v60, v61, v62, v63, v64, v65, v66}];
      [v38 setDuration:0.5];
      [v38 setMass:2.0];
      [v38 setStiffness:350.0];
      [v38 setDamping:40.0];
      [v38 setInitialVelocity:0.0];
      v39 = MEMORY[0x1E696B098];
      v40 = [v15 count];
      if (v40 == 1)
      {
        v76 = v66;
        v77 = v65;
        v78 = v64;
        v79 = v63;
        v72 = v62;
        v73 = v61;
        v74 = v60;
        v75 = v59;
      }

      else
      {
        groupAvatarViewController = [(CKTranscriptGroupTypingIndicatorCell *)self contactImageView];
        v41 = [groupAvatarViewController layer];
        v30 = v41;
        if (v41)
        {
          [v41 transform];
        }

        else
        {
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
        }
      }

      v42 = [v39 valueWithBytes:&v72 objCType:"{CATransform3D=dddddddddddddddd}"];
      [v38 setFromValue:v42];

      if (v40 != 1)
      {
      }

      v43 = MEMORY[0x1E696B098];
      if ([v15 count] == 1)
      {
        v71 = v82;
      }

      else
      {
        *&v71.m31 = v66;
        *&v71.m33 = v65;
        *&v71.m41 = v64;
        *&v71.m43 = v63;
        *&v71.m11 = v62;
        *&v71.m13 = v61;
        *&v71.m21 = v60;
        *&v71.m23 = v59;
      }

      v44 = [v43 valueWithBytes:&v71 objCType:"{CATransform3D=dddddddddddddddd}"];
      [v38 setToValue:v44];

      v45 = [(CKTranscriptGroupTypingIndicatorCell *)self contactImageView];
      v46 = [v45 layer];
      [v46 addAnimation:v38 forKey:@"transform"];

      v47 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform"];
      [v47 setDuration:0.5];
      [v47 setMass:2.0];
      [v47 setStiffness:350.0];
      [v47 setDamping:40.0];
      [v47 setInitialVelocity:0.0];
      v48 = MEMORY[0x1E696B098];
      if ([v15 count] < 2)
      {
        *&v70.m31 = v66;
        *&v70.m33 = v65;
        *&v70.m41 = v64;
        *&v70.m43 = v63;
        *&v70.m11 = v62;
        *&v70.m13 = v61;
        *&v70.m21 = v60;
        *&v70.m23 = v59;
      }

      else
      {
        v70 = v81;
      }

      v49 = [v48 valueWithBytes:&v70 objCType:"{CATransform3D=dddddddddddddddd}"];
      [v47 setFromValue:v49];

      v50 = MEMORY[0x1E696B098];
      v51 = [v15 count];
      v52 = &v81;
      if (v51 > 1)
      {
        v52 = v35;
      }

      v53 = *&v52->m33;
      v69[4] = *&v52->m31;
      v69[5] = v53;
      v54 = *&v52->m43;
      v69[6] = *&v52->m41;
      v69[7] = v54;
      v55 = *&v52->m13;
      v69[0] = *&v52->m11;
      v69[1] = v55;
      v56 = *&v52->m23;
      v69[2] = *&v52->m21;
      v69[3] = v56;
      v57 = [v50 valueWithBytes:v69 objCType:"{CATransform3D=dddddddddddddddd}"];
      [v47 setToValue:v57];

      v58 = [(CKTranscriptTypingIndicatorCell *)self indicatorLayer];
      [v58 addAnimation:v47 forKey:@"transform"];
    }
  }

  [(CKTranscriptGroupTypingIndicatorCell *)self setNeedsLayout:v59];
  [(CKTranscriptGroupTypingIndicatorCell *)self applyAccessibilityStringsFor:v15];
}

- (void)applyAccessibilityStringsFor:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [v4 stringWithFormat:@"groupTypingIndicator-%lu-typers", objc_msgSend(v5, "count")];
  [(UIView *)self->_avatarView setAccessibilityIdentifier:v6];

  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __69__CKTranscriptGroupTypingIndicatorCell_applyAccessibilityStringsFor___block_invoke;
  v24 = &unk_1E72F4DF0;
  v8 = v7;
  v25 = v8;
  [v5 enumerateObjectsUsingBlock:&v21];

  v9 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:v8];
  v10 = [v8 count];
  v11 = MEMORY[0x1E696AEC0];
  v12 = CKFrameworkBundle();
  v13 = v12;
  if (v10 <= 1)
  {
    v14 = @"ACCESSIBILITY_GROUP_TYPING_LIST_SINGULAR";
  }

  else
  {
    v14 = @"ACCESSIBILITY_GROUP_TYPING_LIST_PLURAL";
  }

  v15 = [v12 localizedStringForKey:v14 value:&stru_1F04268F8 table:@"ChatKit"];
  v16 = [v11 stringWithFormat:v15, v9, v21, v22, v23, v24];

  v17 = [MEMORY[0x1E69DC668] sharedApplication];
  v18 = [v17 userInterfaceLayoutDirection];

  if (v18 == 1)
  {
    v19 = @"\u200F";
  }

  else
  {
    v19 = @"\u200E";
  }

  v20 = [(__CFString *)v19 stringByAppendingString:v16];

  [(CKTranscriptGroupTypingIndicatorCell *)self setAccessibilityLabel:v20];
}

void __69__CKTranscriptGroupTypingIndicatorCell_applyAccessibilityStringsFor___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 fullName];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

- (void)applyTransforms
{
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 transcriptContactImageDiameter];
  v5 = v4;

  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 transcriptGroupTypingContactImageDiameter];
  v8 = v7;

  v9 = v8 - v5;
  v10 = [(CKTranscriptGroupTypingIndicatorCell *)self currentTypingCount];
  v11 = v5 / v8;
  memset(&v36.m21, 0, 96);
  if (v10 > 1)
  {
    v11 = 1.0;
  }

  memset(&v36, 0, 32);
  CATransform3DMakeScale(&v36, v11, v11, 1.0);
  memset(&v35, 0, sizeof(v35));
  v28 = *(MEMORY[0x1E69792E8] + 80);
  *&v34.m31 = *(MEMORY[0x1E69792E8] + 64);
  v29 = *&v34.m31;
  *&v34.m33 = v28;
  v26 = *(MEMORY[0x1E69792E8] + 112);
  *&v34.m41 = *(MEMORY[0x1E69792E8] + 96);
  v27 = *&v34.m41;
  *&v34.m43 = v26;
  v24 = *(MEMORY[0x1E69792E8] + 16);
  *&v34.m11 = *MEMORY[0x1E69792E8];
  v25 = *&v34.m11;
  *&v34.m13 = v24;
  v22 = *(MEMORY[0x1E69792E8] + 48);
  *&v34.m21 = *(MEMORY[0x1E69792E8] + 32);
  v23 = *&v34.m21;
  *&v34.m23 = v22;
  CATransform3DTranslate(&v35, &v34, -v9, 0.0, 0.0);
  memset(&v34, 0, sizeof(v34));
  *&v33.m31 = v29;
  *&v33.m33 = v28;
  *&v33.m41 = v27;
  *&v33.m43 = v26;
  *&v33.m11 = v25;
  *&v33.m13 = v24;
  *&v33.m21 = v23;
  *&v33.m23 = v22;
  CATransform3DTranslate(&v34, &v33, v9 * -0.5, 0.0, 0.0);
  if ([(CKTranscriptGroupTypingIndicatorCell *)self currentTypingCount]== 1)
  {
    v32 = v36;
    v12 = [(CKTranscriptGroupTypingIndicatorCell *)self contactImageView];
    v13 = [v12 layer];
    v33 = v32;
    [v13 setTransform:&v33];

    v31 = v35;
    v14 = [(CKTranscriptTypingIndicatorCell *)self indicatorLayer];
    v15 = v14;
    *&v33.m31 = *&v31.m31;
    *&v33.m33 = *&v31.m33;
    *&v33.m41 = *&v31.m41;
    *&v33.m43 = *&v31.m43;
    *&v33.m11 = *&v31.m11;
    *&v33.m13 = *&v31.m13;
    v16 = *&v31.m21;
    v17 = *&v31.m23;
  }

  else
  {
    v18 = [(CKTranscriptGroupTypingIndicatorCell *)self contactImageView];
    v19 = [v18 layer];
    *&v33.m31 = v29;
    *&v33.m33 = v28;
    *&v33.m41 = v27;
    *&v33.m43 = v26;
    *&v33.m11 = v25;
    *&v33.m13 = v24;
    *&v33.m21 = v23;
    *&v33.m23 = v22;
    [v19 setTransform:&v33];

    v30 = v34;
    v14 = [(CKTranscriptTypingIndicatorCell *)self indicatorLayer];
    v15 = v14;
    *&v33.m31 = *&v30.m31;
    *&v33.m33 = *&v30.m33;
    *&v33.m41 = *&v30.m41;
    *&v33.m43 = *&v30.m43;
    *&v33.m11 = *&v30.m11;
    *&v33.m13 = *&v30.m13;
    v16 = *&v30.m21;
    v17 = *&v30.m23;
  }

  *&v33.m21 = v16;
  *&v33.m23 = v17;
  [v14 setTransform:{&v33, v22, v23, v24, v25, v26, v27, v28, v29}];

  v20 = [(CKTranscriptGroupTypingIndicatorCell *)self avatarView];
  v21 = [v20 layer];
  [v21 setCornerRadius:v8 * 0.5];
}

- (id)getContactsFromHandles:(id)a3
{
  v5 = a3;
  if (self->_typingHandles != v5)
  {
    objc_storeStrong(&self->_typingHandles, a3);
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__CKTranscriptGroupTypingIndicatorCell_getContactsFromHandles___block_invoke;
  v9[3] = &unk_1E72F4DF0;
  v7 = v6;
  v10 = v7;
  [(NSArray *)v5 enumerateObjectsUsingBlock:v9];

  return v7;
}

void __63__CKTranscriptGroupTypingIndicatorCell_getContactsFromHandles___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 cnContactWithKeys:MEMORY[0x1E695E0F0]];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E69A7FD0];
    v6 = [v8 ID];
    v7 = [v6 im_stripCategoryLabel];
    v4 = [v5 createMutableContactWithID:v7];

    if (!v4)
    {
      goto LABEL_5;
    }
  }

  [*(a1 + 32) addObject:v4];

LABEL_5:
}

- (CGRect)avatarFrameForContact:(id)a3
{
  v4 = [(CKTranscriptGroupTypingIndicatorCell *)self groupAvatarViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKTranscriptGroupTypingIndicatorCell *)self groupAvatarViewController];
    [v6 avatarFrameForIndex:0];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v8 = *MEMORY[0x1E695F058];
    v10 = *(MEMORY[0x1E695F058] + 8);
    v12 = *(MEMORY[0x1E695F058] + 16);
    v14 = *(MEMORY[0x1E695F058] + 24);
  }

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)layoutLayer:(id)a3 at:(CGRect)a4 within:(CGRect)a5 withAvatarIndex:(int64_t)a6
{
  width = a4.size.width;
  height = a4.size.height;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  [v9 frame];
  if (CGRectIsEmpty(v51))
  {
    v52.origin.x = x;
    v52.origin.y = y;
    v52.size.width = width;
    v52.size.height = height;
    MidX = CGRectGetMidX(v52);
    v53.origin.x = x;
    v53.origin.y = y;
    v53.size.width = width;
    v53.size.height = height;
    [v9 setPosition:{MidX, CGRectGetMidY(v53)}];
    v11 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"bounds"];
    [v11 setDuration:0.5];
    [v11 setMass:2.0];
    [v11 setStiffness:350.0];
    [v11 setDamping:40.0];
    [v11 setInitialVelocity:0.0];
    v12.f64[0] = width;
    v12.f64[1] = height;
    __asm { FMOV            V1.2D, #0.5 }

    v49[0] = 0;
    v49[1] = 0;
    v50 = vmulq_f64(v12, _Q1);
    v18 = [MEMORY[0x1E696B098] valueWithBytes:v49 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    [v11 setFromValue:v18];

    v48[0] = 0;
    v48[1] = 0;
    *&v48[2] = width;
    *&v48[3] = height;
    v19 = [MEMORY[0x1E696B098] valueWithBytes:v48 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    [v11 setToValue:v19];

    [v9 addAnimation:v11 forKey:@"bounds"];
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v20 = MEMORY[0x1E6979518];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __78__CKTranscriptGroupTypingIndicatorCell_layoutLayer_at_within_withAvatarIndex___block_invoke;
    v45[3] = &unk_1E72ED810;
    v21 = v9;
    v46 = v21;
    v47 = a6;
    [v20 setCompletionBlock:v45];
    [v21 setFrame:{x, y, width, height}];
    [v21 setZPosition:-a6];
    [MEMORY[0x1E6979518] commit];
    v22 = v46;
  }

  else
  {
    v11 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position"];
    [v11 setDuration:0.5];
    [v11 setMass:2.0];
    [v11 setStiffness:350.0];
    [v11 setDamping:40.0];
    [v11 setInitialVelocity:0.0];
    v23 = MEMORY[0x1E696B098];
    v24 = [v9 presentationLayer];
    [v24 position];
    v44[0] = v25;
    v44[1] = v26;
    v27 = [v23 valueWithBytes:v44 objCType:"{CGPoint=dd}"];
    [v11 setFromValue:v27];

    v28 = MEMORY[0x1E696B098];
    v54.origin.x = x;
    v54.origin.y = y;
    v54.size.width = width;
    v54.size.height = height;
    v29 = CGRectGetMidX(v54);
    v55.origin.x = x;
    v55.origin.y = y;
    v55.size.width = width;
    v55.size.height = height;
    *v43 = v29;
    v43[1] = CGRectGetMidY(v55);
    v30 = [v28 valueWithBytes:v43 objCType:"{CGPoint=dd}"];
    [v11 setToValue:v30];

    [v9 addAnimation:v11 forKey:@"position"];
    v22 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"bounds"];
    [v22 setDuration:0.5];
    [v22 setMass:2.0];
    [v22 setStiffness:350.0];
    [v22 setDamping:40.0];
    [v22 setInitialVelocity:0.0];
    v31 = MEMORY[0x1E696B098];
    v32 = [v9 presentationLayer];
    [v32 bounds];
    v42[0] = v33;
    v42[1] = v34;
    v42[2] = v35;
    v42[3] = v36;
    v37 = [v31 valueWithBytes:v42 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    [v22 setFromValue:v37];

    v41[0] = 0;
    v41[1] = 0;
    *&v41[2] = width;
    *&v41[3] = height;
    v38 = [MEMORY[0x1E696B098] valueWithBytes:v41 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    [v22 setToValue:v38];

    [v9 addAnimation:v22 forKey:@"bounds"];
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [v9 setFrame:{x, y, width, height}];
    [v9 setZPosition:a6];
    [MEMORY[0x1E6979518] commit];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CKTranscriptGroupTypingIndicatorCell;
  [(CKTranscriptCell *)&v3 layoutSubviews];
  [(CKTranscriptGroupTypingIndicatorCell *)self applyTransforms];
}

- (void)prepareForReuse
{
  v24.receiver = self;
  v24.super_class = CKTranscriptGroupTypingIndicatorCell;
  [(CKTranscriptTypingIndicatorCell *)&v24 prepareForReuse];
  avatarView = self->_avatarView;
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v16 = *MEMORY[0x1E695EFD0];
  v17 = v4;
  v18 = *(MEMORY[0x1E695EFD0] + 32);
  [(UIView *)avatarView setTransform:&v16];
  v5 = [(UIView *)self->_avatarView layer];
  v14 = *(MEMORY[0x1E69792E8] + 80);
  v20 = *(MEMORY[0x1E69792E8] + 64);
  v15 = v20;
  v21 = v14;
  v12 = *(MEMORY[0x1E69792E8] + 112);
  v22 = *(MEMORY[0x1E69792E8] + 96);
  v13 = v22;
  v23 = v12;
  v10 = *(MEMORY[0x1E69792E8] + 16);
  v16 = *MEMORY[0x1E69792E8];
  v11 = v16;
  v17 = v10;
  v8 = *(MEMORY[0x1E69792E8] + 48);
  v18 = *(MEMORY[0x1E69792E8] + 32);
  v9 = v18;
  v19 = v8;
  [v5 setTransform:&v16];

  v6 = [(CKTranscriptTypingIndicatorCell *)self indicatorLayer];
  v20 = v15;
  v21 = v14;
  v22 = v13;
  v23 = v12;
  v16 = v11;
  v17 = v10;
  v18 = v9;
  v19 = v8;
  [v6 setTransform:&v16];

  v7 = [(UIView *)self->_avatarView layer];
  [v7 setCornerRadius:0.0];

  [(CKTranscriptGroupTypingIndicatorCell *)self setPendingTypingHandles:MEMORY[0x1E695E0F0]];
  [(CKTranscriptGroupTypingIndicatorCell *)self setCurrentTypingCount:0];
}

- (CGRect)lastRemovedContactImageFrame
{
  x = self->_lastRemovedContactImageFrame.origin.x;
  y = self->_lastRemovedContactImageFrame.origin.y;
  width = self->_lastRemovedContactImageFrame.size.width;
  height = self->_lastRemovedContactImageFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end