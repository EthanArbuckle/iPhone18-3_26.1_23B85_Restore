@interface CKTranscriptCompositionalLayout
+ (double)bottomTranscriptSpaceWithLastChatItem:(id)a3;
+ (int64_t)translateLayoutIndexToEffectIndex:(int64_t)a3;
- (BOOL)_dynamicsAreEnabled;
- (BOOL)isInBackground;
- (BOOL)needsAdditionalBracketPaddingForChatItem:(id)a3 prevChatItem:(id)a4;
- (BOOL)nextItemIsOriginatorWithRepliesForIndex:(unint64_t)a3;
- (BOOL)nextMessageIsReplyForIndex:(unint64_t)a3;
- (BOOL)previousReplyCount:(unint64_t)a3 isOccludedForAssociatedFrame:(CGRect)a4 outMaxY:(double *)a5;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (BOOL)shouldUseRotisserieScroll;
- (CGPoint)targetContentOffset;
- (CGRect)_convertScreenFrameToLocalFrame:(CGRect)a3;
- (CGSize)collectionViewContentSize;
- (CGSize)sizeForRotation;
- (CKTranscriptCompositionalLayout)initWithSectionProvider:(id)a3;
- (NSArray)layoutAttributes;
- (UIEdgeInsets)_visibleRectInsectsForMaxYAnchorLayoutAttribute:(id)a3 forVisibleBounds:(CGRect)a4;
- (double)_calculateDeltaYForNewlyInsertedItems;
- (double)_calculateTargetEasingForNewlyInsertedChatItem:(id)a3 previousItemAttributes:(id)a4;
- (double)handleInvalidCaseForChatItem:(id)a3 withPrevChatItem:(id)a4;
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3;
- (id)layoutAttributesForDecorationViewOfKind:(id)a3 atIndexPath:(id)a4;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (int64_t)effectIndexForDecorationViewAtIndex:(int64_t)a3;
- (void)_applyAttributeUpdatesWithTargetMap:(id)a3 layoutAttributes:(id)a4 updateBlock:(id)a5;
- (void)_applyCurrentFrameOffsetsForLayoutAttributesIfNeeded:(id)a3;
- (void)_applyHorizontalOffsetFromMapping:(id)a3 toLayoutAttributes:(id)a4;
- (void)_applyTargetFrameOffsetsForLayoutAttributesIfNeeded:(id)a3;
- (void)_configureDisplayLink;
- (void)_configureThreadGroupsForAttributes:(id)a3 outMaxYAnchorAttribute:(id *)a4 forVisibleBounds:(CGRect)a5;
- (void)_configureUpdateSequenceItem;
- (void)_dealloc;
- (void)_kickDynamicsIfNeeded;
- (void)_resetHorizontalBalloonOffsetsForLayoutAttributes:(id)a3 includeAssociatedAttributes:(BOOL)a4;
- (void)_sceneActivationStateDidChange:(id)a3;
- (void)_updateAssociatedAttributeFramesForPrimaryAttribute:(id)a3;
- (void)_updateAttributeZIndex:(id)a3 forEffect:(id)a4;
- (void)_updateCurrentBalloonOffsetForLayoutAttributes:(id)a3;
- (void)applyDynamicScrollResistanceToItemsForScrollDeltaY:(double)a3;
- (void)checkDynamicsWatchdog;
- (void)clearParentInitialIndexesAndFinalOffsets;
- (void)dealloc;
- (void)displayLinkFired:(id)a3;
- (void)invalidateDisplayLink;
- (void)prepareLayout;
- (void)prepareLayoutForRotisserieScrolling;
- (void)reduceMotionSettingChanged:(id)a3;
- (void)reloadData;
- (void)reloadLayout;
- (void)removeUpdateSequenceItem;
- (void)setAnchorYPosition:(double)a3;
- (void)setContentSize:(CGFloat)a3;
- (void)setDisplayLink:(uint64_t)a1;
- (void)setInitialIndex:(unint64_t)a3 forParentOfAssociatedItemInsertedAtIndex:(unint64_t)a4;
- (void)setNeedsDynamicsUpdate;
- (void)setTargetContentOffset:(CGPoint)a3;
- (void)setVerticalOffset:(double)a3 forParentOfAssociatedItemDeletedAtIndex:(unint64_t)a4;
- (void)sizeCategoryDidChange:(id)a3;
- (void)updateAttributesForAnchorYChangeWithAttributes:(id)a3;
- (void)updateAttributesForTargetContentOffsetChangeWithAttributes:(id)a3;
- (void)updateContentSize;
- (void)updateDynamicsWatchdogForRenderedFrameWithDuration:(double)a3;
@end

@implementation CKTranscriptCompositionalLayout

uint64_t __63__CKTranscriptCompositionalLayout__configureUpdateSequenceItem__block_invoke(uint64_t a1, double a2)
{
  OUTLINED_FUNCTION_2_1();
  v4 = *(a1 + 32);
  if (v4 && (*(v4 + 528) = 1, (v5 = *(a1 + 32)) != 0) && (*(v5 + 624) = a2, (v6 = *(a1 + 32)) != 0))
  {
    *(v6 + 640) = 0;
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 _invalidationContextForRefreshingVisibleElementAttributes];
  [v7 invalidateLayoutWithContext:v8];

  v9 = *(a1 + 32);

  return [v9 checkDynamicsWatchdog];
}

- (void)prepareLayout
{
  v135 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  v120 = self;
  v130.receiver = self;
  v130.super_class = CKTranscriptCompositionalLayout;
  [(CKTranscriptCompositionalLayout *)&v130 prepareLayout];
  v104 = [(CKTranscriptCompositionalLayout *)self isInBackground];
  v106 = [(CKTranscriptCompositionalLayout *)self collectionView];
  v105 = [(CKTranscriptCompositionalLayout *)self layoutAttributes];
  if (self)
  {
    x = self->_visibleBounds.origin.x;
    y = self->_visibleBounds.origin.y;
    width = self->_visibleBounds.size.width;
    height = self->_visibleBounds.size.height;
  }

  else
  {
    y = 0.0;
    width = 0.0;
    height = 0.0;
    x = 0.0;
  }

  v136 = **&MEMORY[0x1E695F058];
  v7 = y;
  v102 = width;
  if (CGRectEqualToRect(v136, *&x))
  {
    [v106 bounds];
    v102 = v8;
    y = v9;
  }

  [v106 bounds];
  v99 = v10;
  v100 = v11;
  v101 = v12;
  v14 = v13;
  if (v104)
  {
    v15 = v120;
    if (v120)
    {
      v120->_previousFrameTimestamp = 0.0;
      v15->_currentFrameTimestamp = 0.0;
    }

    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "prepareLayout called while backgrounded", buf, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = CKIsRunningInMessagesNotificationExtension();
        v19 = @"YES";
        if (!v18)
        {
          v19 = @"NO";
        }

        *buf = 138412290;
        v134 = v19;
        _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "prepareLayout called. Is using notification extension? {%@}", buf, 0xCu);
      }
    }
  }

  if (![(CKTranscriptCompositionalLayout *)v120 shouldUseRotisserieScroll])
  {
    v20 = [(CKTranscriptCompositionalLayout *)v120 _dynamicsAreEnabled];
    v97 = [v106 delegate];
    v21 = [(CKTranscriptCompositionalLayout *)v120 _dynamicsAreRequiredForInlineReplyAnimation];
    v22 = [v106 unanimatedLayoutPassShouldSnapToTargetFrames];
    if (!v20 && !v21 && ((v22 ^ 1) & 1) == 0)
    {
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v23 = v105;
      v24 = [v23 countByEnumeratingWithState:&v126 objects:v132 count:16];
      if (v24)
      {
        v25 = *v127;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v127 != v25)
            {
              objc_enumerationMutation(v23);
            }

            v27 = *(*(&v126 + 1) + 8 * i);
            v28 = (v27 + 352);
            v29 = *(v27 + 376);
            *(v27 + 368) = v14;
            v27 += 384;
            *v27 = *v28;
            *(v27 + 16) = v14;
            *(v27 + 24) = v29;
          }

          v24 = [v23 countByEnumeratingWithState:&v126 objects:v132 count:16];
        }

        while (v24);
      }

      if (v14 != v102)
      {
        [(CKTranscriptCompositionalLayout *)v120 updateContentSize];
      }

      if (v120)
      {
        OUTLINED_FUNCTION_5_0(&v120->_visibleBounds);
      }

LABEL_121:

      goto LABEL_122;
    }

    v30 = 0.0;
    if (v120 && v120->_isDisplayDrivenLayoutInvalidation)
    {
      previousFrameTimestamp = v120->_previousFrameTimestamp;
      if (previousFrameTimestamp == 0.0 || (currentFrameTimestamp = v120->_currentFrameTimestamp, currentFrameTimestamp == 0.0))
      {
        requestedFrameRate = v120->_requestedFrameRate;
        if (requestedFrameRate <= 0.0)
        {
          v30 = 0.0;
        }

        else
        {
          v30 = 1.0 / requestedFrameRate;
        }
      }

      else
      {
        v30 = currentFrameTimestamp - previousFrameTimestamp;
      }

      [(CKTranscriptCompositionalLayout *)v120 updateDynamicsWatchdogForRenderedFrameWithDuration:v30];
      OUTLINED_FUNCTION_2_1();
      v110 = 1;
    }

    else
    {
      v110 = 0;
    }

    v34 = v101 - y;
    if (v101 - y != 0.0)
    {
      [(CKTranscriptCompositionalLayout *)v120 _kickDynamicsIfNeeded];
    }

    v35 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v35 scale];
    v109 = v36;

    if (v34 == 0.0)
    {
      v37 = v120;
      easingUp = v120->_easingUp;
    }

    else
    {
      easingUp = v34 > 0.0;
      v37 = v120;
      if (!v120)
      {
        v112 = v34 > 0.0;
LABEL_49:
        v111 = [v105 count];
        if (v111)
        {
          v39 = +[CKUIBehavior sharedBehaviors];
          [v39 balloonBalloonTranscriptSpace:1];
          v103 = v40;

          v96[1] = v96;
          v41 = v111;
          MEMORY[0x1EEE9AC00](v42);
          v44 = v96 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v44, v43);
          v108 = v44;
          [v105 getObjects:v44 range:{0, v41}];
          v119 = 0;
          v45 = 0;
          v117 = vabdd_f64(v101, y);
          v107 = 523;
          v113 = 1;
          v98 = v30 / 0.0166666675;
          v46 = v111;
          do
          {
            v47 = v46 + ~v45;
            v114 = v45;
            if (!v112)
            {
              v47 = v45;
            }

            v48 = *&v108[8 * v47];
            v50 = *(v48 + 384);
            v49 = *(v48 + 392);
            v118 = *(v48 + 408);
            v51 = *(v48 + 360);
            v52 = *(v48 + 416);
            v53 = *(v48 + 424);
            v115 = v52;
            v116 = v53;
            if (v110)
            {
              v54 = 1.0;
              v55 = 1.0 - v52;
              v56 = v120;
              if (1.0 - v52 < 1.0)
              {
                v54 = (1.0 - pow(1.0 - v52, v98)) / (1.0 - v55);
              }

              v57 = v55 * v54;
              if (v57 > 1.0)
              {
                v57 = 1.0;
              }

              v49 = v49 + (v51 - v49) * v57;
            }

            else
            {
              v56 = v120;
            }

            v58 = 2.0;
            if (!*(&v56->super.super.super.isa + v107))
            {
              v58 = 0.25;
            }

            v59 = vabdd_f64(v49, v51);
            v60 = v58 / v109;
            if (v59 >= v60)
            {
              v61 = v49;
            }

            else
            {
              v61 = v51;
            }

            if (*(v48 + 448) >= v60)
            {
              v113 = 0;
            }

            else
            {
              v62 = v59 < v60;
              *(v48 + 448) = 0;
              [(CKTranscriptCompositionalLayout *)v56 _resetHorizontalBalloonOffsetsForLayoutAttributes:v48 includeAssociatedAttributes:1];
              v113 &= v62;
              v56 = v120;
            }

            if (v119)
            {
              if (![(CKTranscriptCompositionalLayout *)v56 isInlineAnimatingOut])
              {
                v63 = v119[49];
                v64 = v119[45];
                if (v112)
                {
                  v65 = v63 - v103 - v118;
                  if (v65 >= v61)
                  {
                    v65 = v61;
                  }

                  if (v63 >= v61)
                  {
                    v66 = v61;
                  }

                  else
                  {
                    v66 = v119[49];
                  }

                  if (v51 - (v64 - v103 - v118) > 0.00000011920929)
                  {
                    v61 = v66;
                  }

                  else
                  {
                    v61 = v65;
                  }
                }

                else
                {
                  v67 = v119[48];
                  v69 = v119[50];
                  v68 = v119[51];
                  v70 = *(v119 + 46);
                  v71 = *(v119 + 47);
                  v72 = *(v119 + 44);
                  if (v103 + CGRectGetMaxY(*(&v64 - 1)) - v51 <= 0.00000011920929)
                  {
                    v137.origin.x = v67;
                    v137.origin.y = v63;
                    v137.size.width = v69;
                    v137.size.height = v68;
                    v73 = v103 + CGRectGetMaxY(v137);
                    if (v73 >= v61)
                    {
                      v61 = v73;
                    }
                  }

                  else if (v63 >= v61)
                  {
                    v61 = v63;
                  }
                }
              }

              v56 = v120;
            }

            if (v117 > 2.5)
            {
              if (qword_1EAD65C88 != -1)
              {
                dispatch_once(&qword_1EAD65C88, &__block_literal_global_507_1);
              }

              v74 = *&_MergedGlobals;
              if (*&_MergedGlobals == 0.0)
              {
                v74 = 1.0;
              }

              v61 = round(v61 * v74) / v74;
            }

            *(v48 + 384) = v50;
            *(v48 + 392) = v61;
            v75 = v118;
            *(v48 + 400) = v14;
            *(v48 + 408) = v75;
            [(CKTranscriptCompositionalLayout *)v56 _updateCurrentBalloonOffsetForLayoutAttributes:v48];
            v124 = 0u;
            v125 = 0u;
            v122 = 0u;
            v123 = 0u;
            v76 = *(v48 + 632);
            v77 = [v76 countByEnumeratingWithState:&v122 objects:v131 count:16];
            if (v77)
            {
              v78 = *v123;
              do
              {
                for (j = 0; j != v77; ++j)
                {
                  if (*v123 != v78)
                  {
                    objc_enumerationMutation(v76);
                  }

                  v80 = *(*(&v122 + 1) + 8 * j);
                  *(v80 + 392) = *(v48 + 392) + *(v80 + 360) - *(v48 + 360);
                  [v80 setFrame:{*(v80 + 384), *(v80 + 392), *(v80 + 400), *(v80 + 408)}];
                  *(v80 + 448) = *(v48 + 448);
                }

                v77 = [v76 countByEnumeratingWithState:&v122 objects:v131 count:16];
              }

              while (v77);
            }

            v81 = v117 > 2.0;

            if (v115 != v116 && v81)
            {
              *(v48 + 416) = v116;
            }

            v83 = v48;

            v45 = v114 + 1;
            v119 = v83;
            v46 = v111;
          }

          while (v114 + 1 != v111);
          [v106 bounds];
          v85 = v84;
          v87 = v86;
          v89 = v88;
          v91 = v90;
          v121 = 0;
          [(CKTranscriptCompositionalLayout *)v120 _configureThreadGroupsForAttributes:v105 outMaxYAnchorAttribute:&v121 forVisibleBounds:?];
          v92 = v121;
          [(CKTranscriptCompositionalLayout *)v120 _visibleRectInsectsForMaxYAnchorLayoutAttribute:v92 forVisibleBounds:v85, v87, v89, v91];
          [v106 _setVisibleRectEdgeInsets:?];

          if (((v113 | v104) & 1) == 0)
          {
            v93 = v120;
            if (v110)
            {
              if (v120)
              {
                v120->_previousFrameTimestamp = v120->_currentFrameTimestamp;
              }

              [(CKTranscriptCompositionalLayout *)v93 checkDynamicsWatchdog];
              v94 = 0;
              v93 = v120;
              if (!v120)
              {
                goto LABEL_114;
              }
            }

            else
            {
              v94 = 0;
              if (!v120)
              {
                goto LABEL_114;
              }
            }

            goto LABEL_113;
          }
        }

        else
        {
          v83 = 0;
          v113 = 1;
        }

        [(CKTranscriptCompositionalLayout *)v120 invalidateDisplayLink];
        v93 = v120;
        v94 = v113;
        if (!v120)
        {
LABEL_114:
          if (v14 != v102)
          {
            v95 = v94;
            [(CKTranscriptCompositionalLayout *)v93 updateContentSize];
            v93 = v120;
            v94 = v95;
          }

          if (v93)
          {
            OUTLINED_FUNCTION_5_0(&v93->_visibleBounds);
          }

          if (v93->_isResting != v94)
          {
            v93->_isResting = v94;
            [v97 collectionViewLayoutRestingDidChange:?];
          }

          goto LABEL_121;
        }

LABEL_113:
        v93->_isDisplayDrivenLayoutInvalidation = 0;
        goto LABEL_114;
      }
    }

    v112 = easingUp;
    v37->_easingUp = easingUp;
    goto LABEL_49;
  }

  [(CKTranscriptCompositionalLayout *)v120 prepareLayoutForRotisserieScrolling];
LABEL_122:
}

- (NSArray)layoutAttributes
{
  v2 = self;
  v176 = *MEMORY[0x1E69E9840];
  layoutAttributes = self->_layoutAttributes;
  if (!layoutAttributes)
  {
    v4 = [(CKTranscriptCompositionalLayout *)v2 collectionView];
    v5 = [v4 delegate];
    v138 = [v5 currentEffectForCollectionView:v4 layout:v2];
    v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v7 = [v6 isDiffableTranscriptDataSourceEnabled];

    v140 = v5;
    if (v7)
    {
      v8 = [v4 numberOfItemsInSection:0];
    }

    else
    {
      v8 = [v5 collectionView:v4 numberOfItemsInSection:0];
    }

    v139 = v8;
    v152 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v164 = 0u;
    v165 = 0u;
    v166 = 0u;
    v167 = 0u;
    v9 = v2->_oldLayoutAttributes;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v164 objects:v175 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v165;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v165 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v164 + 1) + 8 * i);
          v15 = [v14 chatItem];
          v16 = [v15 IMChatItem];
          v17 = [v16 guid];

          if ([v17 length])
          {
            [v152 setObject:v14 forKey:v17];
          }
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v164 objects:v175 count:16];
      }

      while (v11);
    }

    [(CKTranscriptCompositionalLayout *)v2 _calculateDeltaYForNewlyInsertedItems];
    v19 = v18;
    v137 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v139];
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v157 = v2;
    v136 = v4;
    v153 = v20;
    if (v139)
    {
      v21 = v20;
      v22 = 0;
      v23 = 0;
      v154 = *MEMORY[0x1E695D920];
      v24 = &OBJC_IVAR___CKTranscriptCollectionViewLayoutAttributes__currentFrame;
      v25 = v138;
      do
      {
        v26 = [MEMORY[0x1E696AC88] indexPathForItem:v23 inSection:0];
        v27 = [MEMORY[0x1E696AC88] indexPathForRow:v23 inSection:0];
        v163.receiver = v2;
        v163.super_class = CKTranscriptCompositionalLayout;
        v28 = [(CKTranscriptCompositionalLayout *)&v163 layoutAttributesForItemAtIndexPath:v27];

        v149 = v26;
        v29 = [v140 collectionView:v4 layout:v2 chatItemForItemAtIndexPath:v26];
        v30 = v29;
        v151 = v28;
        v148 = v29;
        if (v28)
        {
          v31 = [v29 IMChatItem];
          v32 = [v31 guid];

          v144 = v32;
          v33 = [v152 objectForKeyedSubscript:v32];
          v145 = v23;
          v146 = v22;
          v142 = v33;
          if (v33)
          {
            v34 = *(v33 + *v24 + 8) - *(v33 + 360);
            v35 = v2;
            v36 = v25;
            v37 = v33;
            v38 = v151;
            [v151 frame];
            v40 = v39;
            v42 = v41;
            v44 = v43;
            v46 = v34 + v45;
            v47 = v30;
            v48 = *(v37 + 416);
            v49 = *(v37 + 424);
            v25 = v36;
            v2 = v35;
          }

          else
          {
            v38 = v151;
            [v151 frame];
            v40 = v53;
            v42 = v54;
            v44 = v55;
            v46 = v19 + v56;
            [(CKTranscriptCompositionalLayout *)v2 _calculateTargetEasingForNewlyInsertedChatItem:v30 previousItemAttributes:v22];
            v49 = v57;
            v48 = v57;
            v47 = v30;
          }

          [v38 setChatItem:v47];
          [v38 frame];
          *(v38 + 44) = v58;
          *(v38 + 45) = v59;
          *(v38 + 46) = v60;
          *(v38 + 47) = v61;
          v62 = &v38[*v24];
          *v62 = v40;
          v62[1] = v46;
          *(v62 + 2) = v42;
          *(v62 + 3) = v44;
          [v38 center];
          *(v38 + 74) = v63;
          [v38 center];
          *(v38 + 73) = v64;
          *(v38 + 76) = 0x3FF0000000000000;
          v38[616] = 0;
          [v38 frame];
          *(v38 + 75) = v65;
          *(v38 + 52) = v48;
          *(v38 + 53) = v49;
          [v137 addObject:v38];
          if (!v23)
          {
            objc_opt_class();
            [(CKTranscriptCompositionalLayout *)v2 setHasLoadMore:objc_opt_isKindOfClass() & 1];
          }

          v66 = v47;
          objc_opt_class();
          v150 = v66;
          v51 = v144;
          if (objc_opt_isKindOfClass())
          {
            v67 = [v66 previousPluginChatItem];
            v68 = v67;
            if (v67)
            {
              v66 = v67;
            }
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v66 isAppearing])
          {
            [v151 setAlpha:0.0];
          }

          v141 = v66;
          [(CKTranscriptCompositionalLayout *)v2 _updateAttributeZIndex:v151 forEffect:v25];
          v69 = [v150 visibleAssociatedMessageChatItems];
          v70 = +[CKPrintController sharedInstance];
          v71 = [v70 isPrinting];

          v156 = 0;
          v72 = v146;
          v143 = v69;
          if (v69 && (v71 & 1) == 0)
          {
            v156 = [MEMORY[0x1E695DF70] array];
            v159 = 0u;
            v160 = 0u;
            v161 = 0u;
            v162 = 0u;
            obj = v69;
            v73 = [obj countByEnumeratingWithState:&v159 objects:v168 count:16];
            if (v73)
            {
              v74 = v73;
              v75 = *v160;
              do
              {
                for (j = 0; j != v74; ++j)
                {
                  v77 = v24;
                  if (*v160 != v75)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v78 = *(*(&v159 + 1) + 8 * j);
                  v79 = [(NSArray *)v21 count];
                  v80 = [MEMORY[0x1E696AC88] indexPathForItem:v79 inSection:1];
                  v158.receiver = v157;
                  v158.super_class = CKTranscriptCompositionalLayout;
                  v81 = [(CKTranscriptCompositionalLayout *)&v158 layoutAttributesForItemAtIndexPath:v80];
                  v82 = v81;
                  if (v81)
                  {
                    [v81 setChatItem:v78];
                    initialParentLayoutAttributes = v157->_initialParentLayoutAttributes;
                    v84 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v79];
                    v85 = [(NSMutableDictionary *)initialParentLayoutAttributes objectForKey:v84];
                    v86 = v82[80];
                    v82[80] = v85;

                    [v156 addObject:v82];
                    [(NSArray *)v21 addObject:v82];
                  }

                  else
                  {
                    v87 = IMLogHandleForCategory();
                    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315650;
                      v170 = "[CKTranscriptCompositionalLayout layoutAttributes]";
                      v171 = 2112;
                      v172 = v80;
                      v173 = 2112;
                      v174 = v78;
                      _os_log_error_impl(&dword_19020E000, v87, OS_LOG_TYPE_ERROR, "%s (associatedLayoutAttributes) got nil attribute for %@ item %@", buf, 0x20u);
                    }

                    v88 = [MEMORY[0x1E695DF30] exceptionWithName:v154 reason:@"CKTranscriptCompositionalLayout's super implementation is out of sync with CKTranscriptCompositionalLayout. Got nil layout attributes for associated item. If allowed to continue userInfo:{this would be a fatal crash. Please file a radar.", 0}];
                    IMLogSimulateCrashForException();

                    v21 = v153;
                  }

                  v24 = v77;
                }

                v74 = [obj countByEnumeratingWithState:&v159 objects:v168 count:16];
              }

              while (v74);
            }

            v2 = v157;
            v25 = v138;
            v23 = v145;
            v72 = v146;
            v51 = v144;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v89 = [v150 messageHighlightChatItem];
            if (v89)
            {
              v90 = [(NSArray *)v21 count];
              v91 = [MEMORY[0x1E696AC88] indexPathForItem:v90 inSection:1];
              v92 = [(UICollectionViewLayoutAttributes *)CKTranscriptCollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:v91];
              v93 = v92;
              if (v92)
              {
                [v92 setChatItem:v89];
                v94 = v157->_initialParentLayoutAttributes;
                v95 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v90];
                v96 = [(NSMutableDictionary *)v94 objectForKey:v95];
                v97 = v93[80];
                v93[80] = v96;

                [(NSArray *)v21 addObject:v93];
                v98 = v156;
                if (!v156)
                {
                  v98 = [MEMORY[0x1E695DF70] array];
                }

                v156 = v98;
                [v98 addObject:v93];
              }

              else
              {
                v100 = IMLogHandleForCategory();
                if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  v170 = "[CKTranscriptCompositionalLayout layoutAttributes]";
                  v171 = 2112;
                  v172 = v91;
                  v173 = 2112;
                  v174 = v150;
                  _os_log_error_impl(&dword_19020E000, v100, OS_LOG_TYPE_ERROR, "%s (highlightChatItem) got nil attribute for %@ item %@", buf, 0x20u);
                }

                v101 = [MEMORY[0x1E695DF30] exceptionWithName:v154 reason:@"CKTranscriptCompositionalLayout's super implementation is out of sync with CKTranscriptCompositionalLayout. Got nil layout attributes for highlight item. If allowed to continue userInfo:{this would be a fatal crash. Please file a radar.", 0}];
                IMLogSimulateCrashForException();
              }

              v99 = v151;

              v2 = v157;
            }

            else
            {
              v99 = v151;
            }

            v25 = v138;
          }

          else
          {
            v99 = v151;
          }

          if (v156)
          {
            objc_storeStrong(v99 + 79, v156);
            [(CKTranscriptCompositionalLayout *)v2 _updateAssociatedAttributeFramesForPrimaryAttribute:v99];
          }

          v52 = v99;
          v102 = v99;

          v22 = v102;
          v4 = v136;
        }

        else
        {
          v50 = IMLogHandleForCategory();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v170 = "[CKTranscriptCompositionalLayout layoutAttributes]";
            v171 = 2112;
            v172 = v149;
            v173 = 2112;
            v174 = v30;
            _os_log_error_impl(&dword_19020E000, v50, OS_LOG_TYPE_ERROR, "%s (compAttributes) got nil attribute for %@ item %@", buf, 0x20u);
          }

          v51 = [MEMORY[0x1E695DF30] exceptionWithName:v154 reason:@"CKTranscriptCompositionalLayout's super implementation is out of sync with CKTranscriptCompositionalLayout. Got nil layout attributes. If allowed to continue userInfo:{this would be a fatal crash. Please file a radar.", 0}];
          IMLogSimulateCrashForException();
          v52 = 0;
        }

        ++v23;
      }

      while (v23 != v139);
    }

    else
    {
      v22 = 0;
      v25 = v138;
    }

    v147 = v22;
    [(CKTranscriptCompositionalLayout *)v2 _configureThreadGroupsForAttributes:v137 outMaxYAnchorAttribute:0 forVisibleBounds:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    if (!v2->_decorationLayoutAttributes && v25)
    {
      v103 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v104 = [v25 layerCount];
      v105 = [v25 shouldDrawOverNavigationBar];
      if (v104)
      {
        v106 = v105;
      }

      else
      {
        v106 = 0;
      }

      v107 = v104 - v106;
      if (v104 != v106)
      {
        v108 = 0;
        do
        {
          if ([v25 effectViewClass])
          {
            v109 = MEMORY[0x1E69DC858];
            v110 = +[CKFullscreenEffectDecorationView decorationViewKind];
            v111 = [MEMORY[0x1E696AC88] indexPathWithIndex:v108];
            v112 = [v109 layoutAttributesForDecorationViewOfKind:v110 withIndexPath:v111];

            v113 = [(CKTranscriptCompositionalLayout *)v157 collectionView];
            [v113 bounds];
            v115 = v114;
            v117 = v116;
            v119 = v118;
            v121 = v120;

            v25 = v138;
            [v112 setFrame:{v115, v117, v119, v121}];
            v122 = [v138 isForegroundEffect];
            if (v107 == 1)
            {
              v123 = 3000;
            }

            else
            {
              v123 = 1000;
            }

            if (!v108)
            {
              v123 = -2000;
            }

            if (v122)
            {
              v124 = 3000;
            }

            else
            {
              v124 = v123;
            }

            [v112 setZIndex:v124];
            [(NSArray *)v103 addObject:v112];
          }

          ++v108;
          --v107;
        }

        while (v107);
      }

      v2 = v157;
      decorationLayoutAttributes = v157->_decorationLayoutAttributes;
      v157->_decorationLayoutAttributes = v103;

      v4 = v136;
    }

    objc_storeStrong(&v2->_layoutAttributes, v137);
    v126 = [(CKTranscriptCompositionalLayout *)v2 oldAssociatedLayoutAttributes];
    if (v126)
    {
      [(CKTranscriptCompositionalLayout *)v2 oldAssociatedLayoutAttributes];
    }

    else
    {
      [MEMORY[0x1E695DEC8] array];
    }
    v127 = ;

    v128 = v153;
    if (!v153)
    {
      v128 = [MEMORY[0x1E695DF70] array];
    }

    v129 = [(NSArray *)v128 differenceFromArray:v127 withOptions:0 usingEquivalenceTest:&__block_literal_global_243_1];
    IMIndexesFromOrderedCollectionDifference();
    v130 = 0;
    v131 = 0;
    v132 = [v130 mutableCopy];
    [(CKTranscriptCompositionalLayout *)v2 setInsertedAssociatedLayoutAttributes:v132];

    [(CKTranscriptCompositionalLayout *)v2 setOldAssociatedLayoutAttributes:0];
    [(CKTranscriptCompositionalLayout *)v2 setOldLayoutAttributes:0];
    associatedLayoutAttributes = v2->_associatedLayoutAttributes;
    v2->_associatedLayoutAttributes = v128;
    v134 = v128;

    [(CKTranscriptCompositionalLayout *)v2 updateContentSize];
    [(CKTranscriptCompositionalLayout *)v2 _applyTargetFrameOffsetsForLayoutAttributesIfNeeded:v2->_layoutAttributes];
    [(CKTranscriptCompositionalLayout *)v2 _applyCurrentFrameOffsetsForLayoutAttributesIfNeeded:v2->_layoutAttributes];

    layoutAttributes = v2->_layoutAttributes;
  }

  return layoutAttributes;
}

- (CGSize)collectionViewContentSize
{
  if (self)
  {
    v2 = OUTLINED_FUNCTION_4_1(self, 720);
  }

  else
  {
    v2 = OUTLINED_FUNCTION_3_3();
  }

  result.height = v3;
  result.width = v2;
  return result;
}

- (BOOL)_dynamicsAreEnabled
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 shouldUseDynamicScrolling];

  if (!v4 || [(CKTranscriptCompositionalLayout *)self isInBackground])
  {
    return 0;
  }

  v6 = [(CKTranscriptCompositionalLayout *)self collectionView];
  v5 = ([v6 dynamicsDisabled] & 1) == 0 && (!-[CKTranscriptCompositionalLayout disableDynamicsWhileScrolling](self, "disableDynamicsWhileScrolling") || !-[CKTranscriptCompositionalLayout isResting](self, "isResting"));

  return v5;
}

- (BOOL)isInBackground
{
  v2 = [MEMORY[0x1E69A6160] sharedInstance];
  v3 = [v2 isInBackground];

  return v3;
}

- (BOOL)shouldUseRotisserieScroll
{
  v3 = [(CKTranscriptCompositionalLayout *)self collectionView];
  v4 = [v3 hideShowPendingAnimations];
  v5 = [v4 count];

  v6 = +[CKUIBehavior sharedBehaviors];
  if ([v6 shouldUseRotisserieScrolling])
  {
    v7 = (v5 == 0) & ~[(CKTranscriptCompositionalLayout *)self disableRotisserieScroll];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)checkDynamicsWatchdog
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 134218240;
  v4 = v2;
  v5 = 2048;
  v6 = 0x4024000000000000;
  _os_log_fault_impl(&dword_19020E000, a2, OS_LOG_TYPE_FAULT, "Display driven transcriptDynamics has been running for %.2f seconds, which is more than > %.2f, invoking displayLink watchdog", &v3, 0x16u);
}

- (void)_kickDynamicsIfNeeded
{
  if ([(CKTranscriptCompositionalLayout *)self isInBackground])
  {

    [(CKTranscriptCompositionalLayout *)self invalidateDisplayLink];
  }

  else if (_UIUpdateCycleEnabled())
  {

    [(CKTranscriptCompositionalLayout *)self _configureUpdateSequenceItem];
  }

  else
  {

    [(CKTranscriptCompositionalLayout *)self _configureDisplayLink];
  }
}

- (void)_configureUpdateSequenceItem
{
  if (!self->_dynamicsUpdateSequenceItem)
  {
    self->_dynamicsUpdateSequenceItem = _UIUpdateSequenceInsertItem();
    _UIUpdateRequestActivate();
  }
}

+ (int64_t)translateLayoutIndexToEffectIndex:(int64_t)a3
{
  v3 = 2;
  if (a3 != 3000)
  {
    v3 = a3 == 1000;
  }

  if (a3 == 5000)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

- (int64_t)effectIndexForDecorationViewAtIndex:(int64_t)a3
{
  v4 = [(CKTranscriptCompositionalLayout *)self decorationLayoutAttributes];
  v5 = [v4 objectAtIndex:a3];
  v6 = +[CKTranscriptCompositionalLayout translateLayoutIndexToEffectIndex:](CKTranscriptCompositionalLayout, "translateLayoutIndexToEffectIndex:", [v5 zIndex]);

  return v6;
}

- (CKTranscriptCompositionalLayout)initWithSectionProvider:(id)a3
{
  v16.receiver = self;
  v16.super_class = CKTranscriptCompositionalLayout;
  v3 = [(CKTranscriptCompositionalLayout *)&v16 initWithSectionProvider:a3];
  v4 = v3;
  if (v3)
  {
    v3->_isResting = 1;
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    initialParentLayoutAttributes = v4->_initialParentLayoutAttributes;
    v4->_initialParentLayoutAttributes = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    finalParentVerticalOffsets = v4->_finalParentVerticalOffsets;
    v4->_finalParentVerticalOffsets = v7;

    v4->_dynamicsUpdateSequenceItem = 0;
    v9 = objc_opt_class();
    v10 = +[CKFullscreenEffectDecorationView decorationViewKind];
    [(CKTranscriptCompositionalLayout *)v4 registerClass:v9 forDecorationViewOfKind:v10];

    v11 = +[CKUIBehavior sharedBehaviors];
    v4->_sizeCategoryIsAccessibilitySizeCategory = [v11 isAccessibilityPreferredContentSizeCategory];

    v12 = [objc_alloc(MEMORY[0x1E69A6158]) initWithTarget:v4 action:sel__kickDynamicsIfNeeded];
    [(CKTranscriptCompositionalLayout *)v4 setDynamicsUpdater:v12];
    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:v4 selector:sel_sizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:v4 selector:sel_reduceMotionSettingChanged_ name:*MEMORY[0x1E69DD918] object:0];
  }

  return v4;
}

- (void)_sceneActivationStateDidChange:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCompositionalLayout *)self collectionView];
  v6 = [v5 window];
  v9 = [v6 windowScene];

  v7 = [v4 object];

  v8 = v9;
  if (v7 == v9)
  {
    [(CKTranscriptCompositionalLayout *)self _kickDynamicsIfNeeded];
    v8 = v9;
  }
}

- (void)_configureDisplayLink
{
  if ((_UIUpdateCycleEnabled() & 1) == 0 && !self->_displayLink)
  {
    v4 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel_displayLinkFired_];
    v3 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v4 addToRunLoop:v3 forMode:*MEMORY[0x1E695DA28]];

    [(CKTranscriptCompositionalLayout *)self setDisplayLink:v4];
  }
}

- (void)setNeedsDynamicsUpdate
{
  v2 = [(CKTranscriptCompositionalLayout *)self dynamicsUpdater];
  [v2 setNeedsUpdate];
}

- (void)dealloc
{
  [(CKTranscriptCompositionalLayout *)self _dealloc];
  v3.receiver = self;
  v3.super_class = CKTranscriptCompositionalLayout;
  [(CKTranscriptCompositionalLayout *)&v3 dealloc];
}

- (void)_dealloc
{
  [(CADisplayLink *)self->_displayLink invalidate];
  [(IMScheduledUpdater *)self->_dynamicsUpdater invalidate];

  [(CKTranscriptCompositionalLayout *)self removeUpdateSequenceItem];
}

- (void)prepareLayoutForRotisserieScrolling
{
  v198[16] = *MEMORY[0x1E69E9840];
  v3 = [(CKTranscriptCompositionalLayout *)self collectionView];
  v163 = self;
  v4 = [(CKTranscriptCompositionalLayout *)self layoutAttributes];
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  width = v199.size.width;
  v11 = v10;
  v199.origin.x = v5 + 0.0;
  x = v199.origin.x;
  v199.origin.y = v7 + 15.0;
  y = v199.origin.y;
  v199.size.height = v10 + -30.0;
  height = v199.size.height;
  MinY = CGRectGetMinY(v199);
  v200.origin.x = x;
  v200.origin.y = y;
  v200.size.width = width;
  v200.size.height = height;
  MidY = CGRectGetMidY(v200);
  v201.origin.x = x;
  v201.origin.y = y;
  v201.size.width = width;
  v201.size.height = height;
  MaxY = CGRectGetMaxY(v201);
  v202.origin.x = x;
  v202.origin.y = y;
  v202.size.width = width;
  v202.size.height = height;
  v176 = CGRectGetHeight(v202);
  [v3 __ck_bottomOffset];
  v177 = v16;
  v18 = v17;
  v203.origin.x = v6;
  v203.origin.y = v8;
  v203.size.width = width;
  v203.size.height = v11;
  v171 = CGRectGetMaxY(v203);
  v19 = [v4 indexOfObjectWithOptions:2 passingTest:&__block_literal_global_173];
  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = v18 - v11;
  }

  else
  {
    v21 = [v4 objectAtIndexedSubscript:v19];
    v22 = CGRectGetMaxY(v21[11]) - v11;

    v171 = v22;
    v20 = v22;
  }

  v204.origin.x = v177 + 0.0;
  v204.origin.y = v20 + 15.0;
  v204.size.width = width;
  v204.size.height = height;
  v23 = CGRectGetMinY(v204);
  [v3 __ck_scrollToTopContentOffset];
  v205.origin.x = v26 + 0.0;
  v24 = v205.origin.x;
  v205.origin.y = v27 + 15.0;
  v25 = v205.origin.y;
  v205.size.width = width;
  v205.size.height = height;
  v164 = CGRectGetMinY(v205);
  v206.origin.x = v24;
  v206.origin.y = v25;
  v206.size.width = width;
  v206.size.height = height;
  v167 = CGRectGetMaxY(v206);
  v166 = [(CKTranscriptCompositionalLayout *)v163 hasLoadMore];
  v28 = [v4 count];
  if (!v28)
  {
    goto LABEL_155;
  }

  v29 = v28;
  v159 = &v159;
  MEMORY[0x1EEE9AC00](v28);
  *&v31 = &v159 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(*&v31, v30);
  [v4 getObjects:*&v31 range:{0, v29}];
  v32 = v29 - 1;
  v160 = v4;
  v161 = v3;
  v33 = MinY;
  v170 = v31;
  v168 = v29;
  while (1)
  {
    v34 = *(*&v31 + 8 * v32);
    v35 = *(*&v34 + 584);
    v36 = *(*&v34 + 600) * 0.5;
    if (v35 - v36 < MidY)
    {
      break;
    }

    if (--v32 == -1)
    {
      goto LABEL_28;
    }
  }

  v37 = v35 + v36;
  v38 = 0.5;
  if (v37 >= MidY || (v38 = (v37 - MinY) / v176, v38 < 0.0) || v38 >= 0.4)
  {
    v40 = v38 >= 0.4;
    if (v38 > 0.6)
    {
      v40 = 0;
    }

    v41 = 1.0;
    if (v38 > 1.0 || v38 <= 0.6 || v40)
    {
      goto LABEL_20;
    }

    v39 = v38 + -0.6;
  }

  else
  {
    v39 = 0.4 - v38;
  }

  v41 = sqrt(0.16 - v39 * v39) / 0.4;
LABEL_20:
  *(*&v34 + 608) = v41;
  v42 = v32;
  v43 = v32 + 0x8000000000000000;
  *(*&v34 + 592) = *(*&v34 + 584);
  *(*&v34 + 616) = 0;
  v193 = 0u;
  v194 = 0u;
  v191 = 0u;
  v192 = 0u;
  v177 = v34;
  v44 = *(*&v34 + 632);
  v45 = [v44 countByEnumeratingWithState:&v191 objects:v198 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v192;
    do
    {
      v48 = 0;
      v49 = v177;
      do
      {
        if (*v192 != v47)
        {
          objc_enumerationMutation(v44);
          v49 = v177;
        }

        v50 = *(*(&v191 + 1) + 8 * v48);
        *(v50 + 608) = *(*&v49 + 608);
        *(v50 + 616) = *(*&v49 + 616);
        *(v50 + 592) = *(*&v49 + 592);
        ++v48;
      }

      while (v46 != v48);
      v46 = [v44 countByEnumeratingWithState:&v191 objects:v198 count:16];
    }

    while (v46);
  }

  v29 = v168;
  v31 = v170;
  if (v43 == -1)
  {
LABEL_28:
    v51 = **&v31;
    v52 = *(**&v31 + 584);
    v53 = 0.5;
    v54 = *(**&v31 + 600) * 0.5;
    v55 = v52 - v54;
    if (v52 - v54 <= MidY && (v55 = v52 + v54, v52 + v54 >= MidY) || (v53 = (v55 - v33) / v176, v53 < 0.0) || v53 >= 0.4)
    {
      v57 = v53 >= 0.4;
      if (v53 > 0.6)
      {
        v57 = 0;
      }

      v58 = 1.0;
      if (v53 > 1.0 || v53 <= 0.6 || v57)
      {
        goto LABEL_40;
      }

      v56 = v53 + -0.6;
    }

    else
    {
      v56 = 0.4 - v53;
    }

    v58 = sqrt(0.16 - v56 * v56) / 0.4;
LABEL_40:
    *(*&v51 + 608) = v58;
    *(*&v51 + 592) = *(*&v51 + 584);
    *(*&v51 + 616) = 0;
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v177 = v51;
    v59 = *(*&v51 + 632);
    v60 = [v59 countByEnumeratingWithState:&v187 objects:v197 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v188;
      do
      {
        v63 = 0;
        v64 = v177;
        do
        {
          if (*v188 != v62)
          {
            objc_enumerationMutation(v59);
            v64 = v177;
          }

          v65 = *(*(&v187 + 1) + 8 * v63);
          *(v65 + 608) = *(*&v64 + 608);
          *(v65 + 616) = *(*&v64 + 616);
          *(v65 + 592) = *(*&v64 + 592);
          ++v63;
        }

        while (v61 != v63);
        v61 = [v59 countByEnumeratingWithState:&v187 objects:v197 count:16];
      }

      while (v61);
    }

    v42 = 0;
    v31 = v170;
  }

  v173 = v23;
  v172 = v42;
  v66 = v42 + 1;
  v67 = *&v177;
  if (v42 + 1 < v29)
  {
    v68 = 0.5;
    v69 = &pinnedConversationActivityBroadShadowLightRadius_sBehavior;
    *&v70 = 0.4;
    v165 = 0.16;
    v162 = -0.6;
    v71 = v177;
    while (1)
    {
      v72 = *&v70;
      v73 = *(*&v71 + 584);
      v74 = *(*&v71 + 600);
      v75 = *(*&v71 + 592);
      v76 = *(*&v71 + 608);
      v71 = *(*&v31 + 8 * v66);
      v77 = *(*&v71 + 584);
      v78 = *(*&v71 + 600);
      v175 = v66;
      if (qword_1EAD65C88 != -1)
      {
        [CKTranscriptCompositionalLayout prepareLayoutForRotisserieScrolling];
        v68 = 0.5;
      }

      v79 = v77 - v78 * v68 - (v73 + v74 * v68);
      if (v76 >= 0.25)
      {
        v80 = v76;
      }

      else
      {
        v80 = 0.25;
      }

      v81 = v74 * v80;
      v82 = *(v69 + 400);
      v83 = 1.0;
      if (v82 == 0.0)
      {
        v82 = 1.0;
      }

      v84 = v79 + v75 + ceil(v81 * v82) / v82 * v68;
      v85 = v84 >= MaxY;
      *&v70 = v72;
      if (v84 >= MaxY)
      {
        goto LABEL_78;
      }

      v86 = (v84 - MinY) / v176;
      if (v86 >= 0.0 && v86 < v72)
      {
        break;
      }

      v88 = v86 >= v72;
      if (v86 > 0.6)
      {
        v88 = 0;
      }

      if (v86 <= 1.0 && v86 > 0.6 && !v88)
      {
        v87 = v86 + v162;
        goto LABEL_67;
      }

LABEL_68:
      if (v84 < v173)
      {
        goto LABEL_78;
      }

      v89 = (v84 - v173) / v176;
      if (v89 < v68)
      {
        v89 = v68;
      }

      v90 = fmin(v89, 1.0);
      if (v90 >= v72)
      {
        v92 = 1.0;
        if (v90 > 1.0 || v90 <= 0.6)
        {
          goto LABEL_77;
        }

        v91 = v90 + v162;
      }

      else
      {
        v91 = v72 - v90;
      }

      v92 = sqrt(v165 - v91 * v91) / v72;
LABEL_77:
      v83 = fmin(v83 + 1.0 - v92, 1.0);
LABEL_78:
      if (v84 < v171 && (v84 - v173) / v176 >= 1.0)
      {
        v85 = 0;
      }

      *(*&v71 + 608) = v83;
      *(*&v71 + 616) = v85;
      v93 = v79 * (1.0 - v83);
      v94 = *(v69 + 400);
      if (v94 == 0.0)
      {
        v94 = 1.0;
      }

      v95 = v84 - round(v93 * v94) / v94;
      v96 = *(*&v71 + 608);
      if (v96 < 0.25)
      {
        v96 = 0.25;
      }

      v97 = v96 * *(*&v71 + 600);
      v98 = *(v69 + 400);
      if (v98 == 0.0)
      {
        v98 = 1.0;
      }

      *(*&v71 + 592) = v95 + ceil(v97 * v98) / v98 * v68;
      v185 = 0u;
      v186 = 0u;
      v183 = 0u;
      v184 = 0u;
      v99 = *(*&v71 + 632);
      v100 = [v99 countByEnumeratingWithState:&v183 objects:v196 count:16];
      if (v100)
      {
        v101 = v100;
        v102 = *v184;
        do
        {
          for (i = 0; i != v101; ++i)
          {
            if (*v184 != v102)
            {
              objc_enumerationMutation(v99);
            }

            v104 = *(*(&v183 + 1) + 8 * i);
            *(v104 + 608) = v83;
            *(v104 + 616) = v85;
            *(v104 + 592) = *(*&v71 + 592);
          }

          v101 = [v99 countByEnumeratingWithState:&v183 objects:v196 count:16];
        }

        while (v101);
      }

      v66 = v175 + 1;
      v67 = *&v177;
      v31 = v170;
      v69 = &pinnedConversationActivityBroadShadowLightRadius_sBehavior;
      v68 = 0.5;
      if (v175 + 1 == v168)
      {
        goto LABEL_95;
      }
    }

    v87 = v72 - v86;
LABEL_67:
    v83 = sqrt(v165 - v87 * v87) / v72;
    goto LABEL_68;
  }

LABEL_95:
  if (v172)
  {
    v105 = 0.0;
    v106 = &pinnedConversationActivityBroadShadowLightRadius_sBehavior;
    v175 = *&v31 + 8 * v172;
    v171 = 0.16;
    v170 = 0.6;
    MaxY = -0.6;
    while (1)
    {
      v107 = v67[73];
      v108 = v67[74];
      v109 = v67[76];
      v177 = v105;
      v110 = v67[75];
      v111 = *(v175 + 8 * ~*&v105);
      v112 = v111[73];
      v113 = v111[75];
      v67 = v111;
      if (qword_1EAD65C88 != -1)
      {
        [CKTranscriptCompositionalLayout prepareLayoutForRotisserieScrolling];
        v111 = v67;
      }

      v114 = v107 - v110 * 0.5 - (v112 + v113 * 0.5);
      if (v109 >= 0.25)
      {
        v115 = v109;
      }

      else
      {
        v115 = 0.25;
      }

      v116 = v110 * v115;
      v117 = *(v106 + 400);
      v118 = 1.0;
      if (v117 == 0.0)
      {
        v117 = 1.0;
      }

      v119 = v108 + ceil(v116 * v117) / v117 * -0.5;
      v120 = v119 - v114;
      v121 = MinY;
      if (v119 - v114 <= MinY)
      {
        goto LABEL_140;
      }

      v122 = (v120 - MinY) / v176;
      if (v122 >= 0.0 && v122 < 0.4)
      {
        break;
      }

      v124 = v122 >= 0.4;
      if (v122 > v170)
      {
        v124 = 0;
      }

      if (v122 <= 1.0 && v122 > v170 && !v124)
      {
        v123 = v122 + MaxY;
        goto LABEL_114;
      }

LABEL_115:
      v125 = v166;
      if (v120 > v167)
      {
        v125 = 1;
      }

      if ((v125 & 1) == 0)
      {
        v129 = fmin(fmin((v120 - v164) / v176, 0.5), 1.0);
        if (v129 >= 0.0 && v129 < 0.4)
        {
          v130 = 0.4 - v129;
          goto LABEL_132;
        }

        v131 = v129 >= 0.4;
        if (v129 > v170)
        {
          v131 = 0;
        }

        v132 = 1.0;
        if (v129 <= 1.0 && v129 > v170 && !v131)
        {
          v130 = v129 + MaxY;
LABEL_132:
          v132 = sqrt(v171 - v130 * v130) / 0.4;
        }

        v133 = 1.0 - v132;
LABEL_139:
        v118 = fmin(v118 + v133, 1.0);
        goto LABEL_140;
      }

      if (v119 >= v173)
      {
        v126 = (v119 - v173) / v176;
        if (v126 < 0.5)
        {
          v126 = 0.5;
        }

        v127 = fmin(v126, 1.0);
        if (v127 < 0.4)
        {
          v128 = 0.4 - v127;
          goto LABEL_137;
        }

        v134 = 1.0;
        if (v127 <= 1.0 && v127 > v170)
        {
          v128 = v127 + MaxY;
LABEL_137:
          v134 = sqrt(v171 - v128 * v128) / 0.4;
        }

        v133 = 1.0 - v134;
        goto LABEL_139;
      }

LABEL_140:
      v111[76] = v118;
      v135 = v120 <= v121;
      *(v111 + 616) = v120 <= v121;
      v136 = v114 * (1.0 - v118);
      v137 = *(v106 + 400);
      if (v137 == 0.0)
      {
        v137 = 1.0;
      }

      v138 = v120 + round(v136 * v137) / v137;
      v139 = v111[76];
      if (v139 < 0.25)
      {
        v139 = 0.25;
      }

      v140 = v139 * v111[75];
      v141 = *(v106 + 400);
      if (v141 == 0.0)
      {
        v141 = 1.0;
      }

      v111[74] = v138 + ceil(v140 * v141) / v141 * -0.5;
      v181 = 0u;
      v182 = 0u;
      v179 = 0u;
      v180 = 0u;
      v142 = *(v111 + 79);
      v143 = [v142 countByEnumeratingWithState:&v179 objects:v195 count:16];
      if (v143)
      {
        v144 = v143;
        v145 = *v180;
        do
        {
          v146 = 0;
          v147 = v67;
          do
          {
            if (*v180 != v145)
            {
              objc_enumerationMutation(v142);
              v147 = v67;
            }

            v148 = *(*(&v179 + 1) + 8 * v146);
            *(v148 + 608) = v118;
            *(v148 + 616) = v135;
            *(v148 + 592) = v147[74];
            ++v146;
          }

          while (v144 != v146);
          v144 = [v142 countByEnumeratingWithState:&v179 objects:v195 count:16];
        }

        while (v144);
      }

      *&v105 = *&v177 + 1;
      v106 = &pinnedConversationActivityBroadShadowLightRadius_sBehavior;
      if (*&v177 + 1 == v172)
      {
        goto LABEL_154;
      }
    }

    v123 = 0.4 - v122;
LABEL_114:
    v118 = sqrt(v171 - v123 * v123) / 0.4;
    goto LABEL_115;
  }

LABEL_154:
  v3 = v161;
  [v161 bounds];
  v150 = v149;
  v152 = v151;
  v154 = v153;
  v156 = v155;
  v178 = 0;
  v157 = v163;
  v4 = v160;
  [(CKTranscriptCompositionalLayout *)v163 _configureThreadGroupsForAttributes:v160 outMaxYAnchorAttribute:&v178 forVisibleBounds:?];
  v158 = v178;
  [(CKTranscriptCompositionalLayout *)v157 _visibleRectInsectsForMaxYAnchorLayoutAttribute:v158 forVisibleBounds:v150, v152, v154, v156];
  [v3 _setVisibleRectEdgeInsets:?];

LABEL_155:
}

uint64_t __70__CKTranscriptCompositionalLayout_prepareLayoutForRotisserieScrolling__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 chatItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (UIEdgeInsets)_visibleRectInsectsForMaxYAnchorLayoutAttribute:(id)a3 forVisibleBounds:(CGRect)a4
{
  x = a4.origin.x;
  v5 = *MEMORY[0x1E69DDCE0];
  v6 = *(MEMORY[0x1E69DDCE0] + 8);
  v8 = *(MEMORY[0x1E69DDCE0] + 16);
  v7 = *(MEMORY[0x1E69DDCE0] + 24);
  if (a3)
  {
    v17 = *MEMORY[0x1E69DDCE0];
    y = a4.origin.y;
    width = a4.size.width;
    height = a4.size.height;
    MaxY = CGRectGetMaxY(*(a3 + 12));
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    v13 = CGRectGetMaxY(v18) - MaxY;
    if (v13 < 0.0)
    {
      v8 = v13;
    }

    v5 = v17;
  }

  v14 = v6;
  v15 = v8;
  v16 = v7;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v5;
  return result;
}

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3
{
  v4 = a3;
  if ([(CKTranscriptCompositionalLayout *)self isUsingInitialLayoutAttributesForRotation])
  {
    v5 = [(CKTranscriptCompositionalLayout *)self layoutAttributesForItemAtIndexPath:v4];
    goto LABEL_13;
  }

  if ([v4 section] == 1)
  {
    v6 = [(CKTranscriptCompositionalLayout *)self associatedLayoutAttributes];
    v7 = [v6 count];
    if (v7 <= [v4 item])
    {
    }

    else
    {
      v8 = [(CKTranscriptCompositionalLayout *)self associatedLayoutAttributes];
      v9 = [v8 objectAtIndex:{objc_msgSend(v4, "item")}];

      if (v9)
      {
        v10 = [(CKTranscriptCompositionalLayout *)self layoutAttributesForItemAtIndexPath:v4];
        v5 = [v10 copy];

        [v5 setAlpha:1.0];
        v11 = [(CKTranscriptCompositionalLayout *)self insertedAssociatedLayoutAttributes];
        v12 = [v11 containsIndex:{objc_msgSend(v4, "row")}];

        if (v12)
        {
          [v5 frame];
          [v5 setFrame:?];
          v13 = [(CKTranscriptCompositionalLayout *)self insertedAssociatedLayoutAttributes];
          [v13 removeIndex:{objc_msgSend(v4, "row")}];
        }

        goto LABEL_13;
      }
    }
  }

  v19.receiver = self;
  v19.super_class = CKTranscriptCompositionalLayout;
  v5 = [(CKTranscriptCompositionalLayout *)&v19 initialLayoutAttributesForAppearingItemAtIndexPath:v4];
  v14 = [(CKTranscriptCompositionalLayout *)self indicesOfChatItemsToBeInsertedWithoutFading];
  v15 = [v14 containsIndex:{objc_msgSend(v4, "item")}];

  if (v15)
  {
    [v5 setAlpha:1.0];
  }

  v16 = [(CKTranscriptCompositionalLayout *)self indicesOfReplyChatItemsToBeInserted];
  v17 = [v16 containsIndex:{objc_msgSend(v4, "item")}];

  if (v17)
  {
    [v5 setInsertingReply:1];
    [v5 setAlpha:1.0];
  }

LABEL_13:

  return v5;
}

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3
{
  v4 = a3;
  if ([(CKTranscriptCompositionalLayout *)self isUsingInitialLayoutAttributesForRotation])
  {
    v5 = [(CKTranscriptCompositionalLayout *)self layoutAttributesForItemAtIndexPath:v4];
  }

  else if ([v4 section] == 1)
  {
    v16.receiver = self;
    v16.super_class = CKTranscriptCompositionalLayout;
    v5 = [(CKTranscriptCompositionalLayout *)&v16 finalLayoutAttributesForDisappearingItemAtIndexPath:v4];
    finalParentVerticalOffsets = self->_finalParentVerticalOffsets;
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "item")}];
    v8 = [(NSMutableDictionary *)finalParentVerticalOffsets objectForKey:v7];
    [v8 doubleValue];
    v10 = v9;

    if (v10 != 0.0)
    {
      [v5 frame];
      [v5 setFrame:?];
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = CKTranscriptCompositionalLayout;
    v5 = [(CKTranscriptCompositionalLayout *)&v15 finalLayoutAttributesForDisappearingItemAtIndexPath:v4];
    v11 = [(CKTranscriptCompositionalLayout *)self indicesOfChatItemsToBeRemovedWithoutFading];
    v12 = [v11 containsIndex:{objc_msgSend(v4, "item")}];

    if (v12)
    {
      [v5 setAlpha:0.0];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v5;
      v13 = [v5 chatItem];
      if ([v13 isEditedMessageHistory])
      {
        [v5 setZIndex:-1000];
      }
    }
  }

  return v5;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  v128 = *MEMORY[0x1E69E9840];
  v4 = [(CKTranscriptCompositionalLayout *)self layoutAttributes];
  v5 = [(CKTranscriptCompositionalLayout *)self shouldUseRotisserieScroll];
  v100 = self;
  v6 = [(CKTranscriptCompositionalLayout *)self collectionView];
  [v6 bounds];
  v8 = v7 * 0.5;
  v99 = v6;
  [v6 bounds];
  v110 = v8 + v9;
  v10 = [v4 count];
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v105 = v4;
  v12 = 0;
  if (v10)
  {
    v13 = 0;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    v101 = v10;
    while (1)
    {
      v15 = [v105 objectAtIndex:v13];
      v16 = v15;
      if (v5)
      {
        if ((*(v15 + 616) & 1) == 0)
        {
          [v15 setCenter:{v110, *(v15 + 592)}];
          [v16 setAlpha:*(v16 + 608)];
          v17 = *(v16 + 608);
          if (v17 == 1.0)
          {
            v18 = MEMORY[0x1E69792E8];
            v19 = *(MEMORY[0x1E69792E8] + 80);
            *(v16 + 520) = *(MEMORY[0x1E69792E8] + 64);
            *(v16 + 536) = v19;
            v20 = v18[7];
            *(v16 + 552) = v18[6];
            *(v16 + 568) = v20;
            v21 = v18[1];
            *(v16 + 456) = *v18;
            *(v16 + 472) = v21;
            v22 = v18[3];
            *(v16 + 488) = v18[2];
            *(v16 + 504) = v22;
          }

          else
          {
            if (v17 < 0.25)
            {
              v17 = 0.25;
            }

            CATransform3DMakeScale(&v124, v17, v17, 1.0);
            v30 = *&v124.m11;
            v31 = *&v124.m13;
            v32 = *&v124.m23;
            *(v16 + 488) = *&v124.m21;
            *(v16 + 504) = v32;
            *(v16 + 456) = v30;
            *(v16 + 472) = v31;
            v33 = *&v124.m31;
            v34 = *&v124.m33;
            v35 = *&v124.m43;
            *(v16 + 552) = *&v124.m41;
            *(v16 + 568) = v35;
            *(v16 + 520) = v33;
            *(v16 + 536) = v34;
          }

          v122 = 0u;
          v123 = 0u;
          v120 = 0u;
          v121 = 0u;
          v36 = *(v16 + 632);
          v37 = [v36 countByEnumeratingWithState:&v120 objects:v127 count:16];
          if (v37)
          {
            v38 = v37;
            v103 = v12;
            v39 = *v121;
            do
            {
              for (i = 0; i != v38; ++i)
              {
                if (*v121 != v39)
                {
                  objc_enumerationMutation(v36);
                }

                v41 = *(*(&v120 + 1) + 8 * i);
                v42 = *(v16 + 568);
                v44 = *(v16 + 520);
                v43 = *(v16 + 536);
                *(v41 + 552) = *(v16 + 552);
                *(v41 + 568) = v42;
                *(v41 + 520) = v44;
                *(v41 + 536) = v43;
                v45 = *(v16 + 456);
                v46 = *(v16 + 472);
                v47 = *(v16 + 504);
                *(v41 + 488) = *(v16 + 488);
                *(v41 + 504) = v47;
                *(v41 + 456) = v45;
                *(v41 + 472) = v46;
                [v11 setObject:v16 forKeyedSubscript:?];
              }

              v38 = [v36 countByEnumeratingWithState:&v120 objects:v127 count:16];
            }

            while (v38);

            v12 = v103;
          }

          else
          {
          }

          v10 = v101;
          goto LABEL_25;
        }
      }

      else
      {
        v24 = *(v15 + 384);
        v23 = *(v15 + 392);
        v25 = *(v15 + 400);
        v26 = *(v15 + 408);
        v28 = *(v15 + 352);
        v27 = *(v15 + 360);
        v106 = *(v15 + 376);
        obj = *(v15 + 368);
        v130.origin.x = v24;
        v130.origin.y = v23;
        v130.size.width = v25;
        v130.size.height = v26;
        if (CGRectIntersectsRect(v130, a3) || (v131.origin.x = v28, v131.origin.y = v27, v131.size.height = v106, *&v131.size.width = obj, CGRectIntersectsRect(v131, a3)))
        {
          v132.origin.x = v24;
          v132.origin.y = v23;
          v132.size.width = v25;
          v132.size.height = v26;
          CGRectGetMidX(v132);
          v133.origin.x = v24;
          v133.origin.y = v23;
          v133.size.width = v25;
          v133.size.height = v26;
          [v16 setCenter:{v110, CGRectGetMidY(v133)}];
          [v16 setSize:{v25, v26}];
LABEL_25:
          if (v14 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v29 = v13;
          }

          else
          {
            v29 = v14;
          }

          ++v12;
          goto LABEL_29;
        }
      }

      v29 = 0x7FFFFFFFFFFFFFFFLL;
      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {

        v29 = v14;
        goto LABEL_32;
      }

LABEL_29:
      ++v13;

      v14 = v29;
      if (v13 == v10)
      {
        goto LABEL_32;
      }
    }
  }

  v29 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_32:
  v102 = v29;
  v104 = v12;
  v48 = [(CKTranscriptCompositionalLayout *)v100 associatedLayoutAttributes];
  v49 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v48, "count")}];
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v50 = v48;
  v51 = v49;
  obja = v50;
  v52 = [v50 countByEnumeratingWithState:&v116 objects:v126 count:16];
  v107 = v49;
  if (!v52)
  {
    goto LABEL_51;
  }

  v53 = v52;
  v54 = *v117;
  do
  {
    for (j = 0; j != v53; ++j)
    {
      if (*v117 != v54)
      {
        objc_enumerationMutation(obja);
      }

      v56 = *(*(&v116 + 1) + 8 * j);
      if (v5)
      {
        if (*(v56 + 616))
        {
          continue;
        }

        v57 = *(v56 + 384);
        v58 = *(v56 + 392);
        v59 = *(v56 + 400);
        v60 = *(v56 + 408);
        v134.origin.x = v57;
        v134.origin.y = v58;
        v134.size.width = v59;
        v134.size.height = v60;
        CGRectGetMidX(v134);
        v135.origin.x = v57;
        v135.origin.y = v58;
        v135.size.width = v59;
        v135.size.height = v60;
        MidY = CGRectGetMidY(v135);
        v62 = [v11 objectForKeyedSubscript:v56];
        v63 = *(v62 + 384);
        v64 = *(v62 + 392);
        v65 = *(v62 + 400);
        v66 = *(v62 + 408);
        v136.origin.x = v63;
        v136.origin.y = v64;
        v136.size.width = v65;
        v136.size.height = v66;
        CGRectGetMidX(v136);
        v137.origin.x = v63;
        v137.origin.y = v64;
        v137.size.width = v65;
        v137.size.height = v66;
        [v56 setCenter:{v110, *(v62 + 592) - (CGRectGetMidY(v137) - MidY) * *(v56 + 608)}];
        [v56 setAlpha:*(v56 + 608)];
        v67 = *(v56 + 608);
        if (v67 == 1.0)
        {
          v68 = MEMORY[0x1E69792E8];
          v69 = *(MEMORY[0x1E69792E8] + 80);
          *(v56 + 520) = *(MEMORY[0x1E69792E8] + 64);
          *(v56 + 536) = v69;
          v70 = v68[7];
          *(v56 + 552) = v68[6];
          *(v56 + 568) = v70;
          v71 = v68[1];
          *(v56 + 456) = *v68;
          *(v56 + 472) = v71;
          v72 = v68[3];
          *(v56 + 488) = v68[2];
          *(v56 + 504) = v72;
        }

        else
        {
          if (v67 < 0.25)
          {
            v67 = 0.25;
          }

          CATransform3DMakeScale(&v124, v67, v67, 1.0);
          v81 = *&v124.m11;
          v82 = *&v124.m13;
          v83 = *&v124.m23;
          *(v56 + 488) = *&v124.m21;
          *(v56 + 504) = v83;
          *(v56 + 456) = v81;
          *(v56 + 472) = v82;
          v84 = *&v124.m31;
          v85 = *&v124.m33;
          v86 = *&v124.m43;
          *(v56 + 552) = *&v124.m41;
          *(v56 + 568) = v86;
          *(v56 + 520) = v84;
          *(v56 + 536) = v85;
        }

        v51 = v107;
        goto LABEL_48;
      }

      v74 = *(v56 + 384);
      v73 = *(v56 + 392);
      v75 = *(v56 + 400);
      v76 = *(v56 + 408);
      v77 = *(v56 + 352);
      v78 = *(v56 + 360);
      v79 = *(v56 + 368);
      v80 = *(v56 + 376);
      v138.origin.x = v74;
      v138.origin.y = v73;
      v138.size.width = v75;
      v138.size.height = v76;
      if (!CGRectIntersectsRect(v138, a3))
      {
        v139.origin.x = v77;
        v139.origin.y = v78;
        v139.size.width = v79;
        v139.size.height = v80;
        if (!CGRectIntersectsRect(v139, a3))
        {
          continue;
        }
      }

      v140.origin.x = v74;
      v140.origin.y = v73;
      v140.size.width = v75;
      v140.size.height = v76;
      CGRectGetMidX(v140);
      v141.origin.x = v74;
      v141.origin.y = v73;
      v141.size.width = v75;
      v141.size.height = v76;
      [v56 setCenter:{v110, CGRectGetMidY(v141)}];
      [v56 setSize:{v75, v76}];
LABEL_48:
      [v51 addObject:v56];
      continue;
    }

    v53 = [obja countByEnumeratingWithState:&v116 objects:v126 count:16];
  }

  while (v53);
LABEL_51:

  v87 = [(CKTranscriptCompositionalLayout *)v100 decorationLayoutAttributes];
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v88 = [v87 countByEnumeratingWithState:&v112 objects:v125 count:16];
  if (v88)
  {
    v89 = v88;
    v90 = *v113;
    do
    {
      for (k = 0; k != v89; ++k)
      {
        if (*v113 != v90)
        {
          objc_enumerationMutation(v87);
        }

        v92 = *(*(&v112 + 1) + 8 * k);
        v93 = [(CKTranscriptCompositionalLayout *)v100 collectionView];
        [v93 bounds];
        [v92 setFrame:?];
      }

      v89 = [v87 countByEnumeratingWithState:&v112 objects:v125 count:16];
    }

    while (v89);
  }

  if (v102 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v94 = 0;
    v95 = v105;
  }

  else
  {
    v95 = v105;
    v94 = [v105 subarrayWithRange:{v102, v104}];
  }

  if (v107)
  {
    v96 = [v94 arrayByAddingObjectsFromArray:?];

    v94 = v96;
  }

  if (v87)
  {
    v97 = [v94 arrayByAddingObjectsFromArray:v87];

    v94 = v97;
  }

  return v94;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCompositionalLayout *)self layoutAttributes];
  v6 = [(CKTranscriptCompositionalLayout *)self associatedLayoutAttributes];
  if ([v4 section])
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;
  if ([v8 count] && (v9 = objc_msgSend(v4, "item"), v9 < objc_msgSend(v8, "count")))
  {
    v10 = [v8 objectAtIndex:{objc_msgSend(v4, "item")}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)layoutAttributesForDecorationViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(CKTranscriptCompositionalLayout *)self decorationLayoutAttributes];
  v7 = [v5 section];

  v8 = [v6 objectAtIndex:v7];

  return v8;
}

- (void)applyDynamicScrollResistanceToItemsForScrollDeltaY:(double)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = [(CKTranscriptCompositionalLayout *)self layoutAttributes];
  v5 = [v4 count];
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v10 - v6);
  bzero(v10 - v6, v8);
  [v4 getObjects:v7 range:{0, v5}];
  for (; v5; --v5)
  {
    v9 = *v7++;
    *(v9 + 392) = *(v9 + 392) + a3;
  }
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  kdebug_trace();
  if ([(CKTranscriptCompositionalLayout *)self isHoldingBoundsInvalidation]&& ![(CKTranscriptCompositionalLayout *)self shouldUseRotisserieScroll])
  {
    return 0;
  }

  v7 = [(CKTranscriptCompositionalLayout *)self collectionView];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(CKTranscriptCompositionalLayout *)self collectionView];
  v15 = [v14 delegate];
  v16 = [v15 currentEffectForCollectionView:v14 layout:self];
  if ([(CKTranscriptCompositionalLayout *)self _dynamicsAreEnabled])
  {
    v17 = y - v11;
    if (y - v11 != 0.0)
    {
      self->_cumulativeDisplayDrivenDynamicsRunTime = 0.0;
      [(CKTranscriptCompositionalLayout *)self applyDynamicScrollResistanceToItemsForScrollDeltaY:v17];
      [(CKTranscriptCompositionalLayout *)self _kickDynamicsIfNeeded];
    }
  }

  if (v16 || [(CKTranscriptCompositionalLayout *)self shouldUseRotisserieScroll]|| v13 != width || v9 != x)
  {
    kdebug_trace();
    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)reloadData
{
  [(CKTranscriptCompositionalLayout *)self setOldLayoutAttributes:self->_layoutAttributes];
  [(CKTranscriptCompositionalLayout *)self setLayoutAttributes:0];
  v3 = [(CKTranscriptCompositionalLayout *)self associatedLayoutAttributes];
  [(CKTranscriptCompositionalLayout *)self setOldAssociatedLayoutAttributes:v3];

  [(CKTranscriptCompositionalLayout *)self setAssociatedLayoutAttributes:0];

  [(CKTranscriptCompositionalLayout *)self setDecorationLayoutAttributes:0];
}

- (void)invalidateDisplayLink
{
  [0 invalidate];

  [(CKTranscriptCompositionalLayout *)0 setDisplayLink:?];
}

- (void)updateDynamicsWatchdogForRenderedFrameWithDuration:(double)a3
{
  if (a3 <= 2.0)
  {
    if (a3 > 0.0)
    {
      self->_cumulativeDisplayDrivenDynamicsRunTime = self->_cumulativeDisplayDrivenDynamicsRunTime + a3;
    }
  }

  else
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(CKTranscriptCompositionalLayout *)v4 updateDynamicsWatchdogForRenderedFrameWithDuration:a3];
    }
  }
}

- (void)removeUpdateSequenceItem
{
  if (_UIUpdateCycleEnabled() && self->_dynamicsUpdateSequenceItem)
  {
    _UIUpdateSequenceRemoveItem();
    self->_dynamicsUpdateSequenceItem = 0;

    MEMORY[0x1EEE4E390](&CKDynamicsUpdateRequest, 1310721);
  }
}

- (void)reloadLayout
{
  [(CKTranscriptCompositionalLayout *)self reloadData];

  [(CKTranscriptCompositionalLayout *)self invalidateLayout];
}

- (void)setInitialIndex:(unint64_t)a3 forParentOfAssociatedItemInsertedAtIndex:(unint64_t)a4
{
  layoutAttributes = self->_layoutAttributes;
  if (layoutAttributes && [(NSArray *)layoutAttributes count]> a3)
  {
    initialParentLayoutAttributes = self->_initialParentLayoutAttributes;
    v10 = [(NSArray *)self->_layoutAttributes objectAtIndex:a3];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    [(NSMutableDictionary *)initialParentLayoutAttributes setObject:v10 forKey:v9];
  }
}

- (void)setVerticalOffset:(double)a3 forParentOfAssociatedItemDeletedAtIndex:(unint64_t)a4
{
  finalParentVerticalOffsets = self->_finalParentVerticalOffsets;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [(NSMutableDictionary *)finalParentVerticalOffsets setObject:v7 forKey:v6];
}

- (void)clearParentInitialIndexesAndFinalOffsets
{
  [(NSMutableDictionary *)self->_initialParentLayoutAttributes removeAllObjects];
  finalParentVerticalOffsets = self->_finalParentVerticalOffsets;

  [(NSMutableDictionary *)finalParentVerticalOffsets removeAllObjects];
}

uint64_t __51__CKTranscriptCompositionalLayout_layoutAttributes__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 chatItem];
  v6 = [v4 chatItem];

  v7 = [v5 isEqual:v6];
  return v7;
}

- (double)_calculateDeltaYForNewlyInsertedItems
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_oldLayoutAttributes;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = *(v8 + 392);
        v10 = *(v8 + 360);
        if (vabdd_f64(v9, v10) > fabs(v6))
        {
          v6 = v9 - v10;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (void)_updateAttributeZIndex:(id)a3 forEffect:(id)a4
{
  v20 = a3;
  v6 = a4;
  v7 = [v20 chatItem];
  if ([v6 layerCount])
  {
    v8 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v6 triggeringChatItem];
      v10 = [v8 isEqual:v9];

      if (v10)
      {
        v11 = 4000;
LABEL_7:
        [v20 setZIndex:v11];
        goto LABEL_8;
      }

      if ([v8 isFromMe])
      {
        v11 = 2000;
        goto LABEL_7;
      }
    }

LABEL_8:
  }

  if ([v7 isEditedMessageHistory])
  {
    [v20 setZIndex:-1000];
  }

  v12 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v13 = [v12 isExpressiveTextEnabled];

  if (v13)
  {
    v14 = [(CKTranscriptCompositionalLayout *)self collectionView];
    v15 = [v14 delegate];

    v16 = [v20 indexPath];
    v17 = [v15 collectionViewLayout:self hasPlayingOrPausedTextEffectForChatItem:v7 indexPath:v16];

    if (v17)
    {
      v18 = [v20 zIndex];
      if (v18 <= 3000)
      {
        v19 = 3000;
      }

      else
      {
        v19 = v18;
      }

      [v20 setZIndex:v19];
    }
  }
}

- (void)_updateAssociatedAttributeFramesForPrimaryAttribute:(id)a3
{
  v123 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKTranscriptCompositionalLayout *)self collectionView];
  [v5 bounds];
  v7 = v6;
  v95 = v5;
  [v5 marginInsets];
  v103 = v9;
  v104 = v8;
  v10 = v4[82];
  [v4 frame];
  v102 = v11;
  v13 = v12;
  rect = v14;
  v16 = v15;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v17 = v4[79];
  v18 = [v17 countByEnumeratingWithState:&v117 objects:v122 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v99 = 0;
    v21 = *v118;
    v22 = *MEMORY[0x1E695F058];
    v97 = *(MEMORY[0x1E695F058] + 8);
    v105 = *MEMORY[0x1E695EFF8];
    v100 = *(MEMORY[0x1E695EFF8] + 8);
    v101 = v13;
    v98 = v17;
    while (1)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v118 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v24 = *(*(&v117 + 1) + 8 * i);
        v25 = [v24 chatItem];
        [v25 size];
        v27 = v26;
        [v25 contentInsets];
        v116 = 0;
        v30 = v27 + v104 + v28 + v103 + v29;
        memset(&v115, 0, sizeof(v115));
        if (!v25)
        {
          goto LABEL_18;
        }

        [v25 geometryDescriptor];
        if (*&v115.a == 11)
        {
          v124.origin.x = v102;
          v124.origin.y = v13;
          v124.size.width = rect;
          v124.size.height = v16;
          MaxY = CGRectGetMaxY(v124);
          v61 = +[CKUIBehavior sharedBehaviors];
          [v61 messageHighlightTranscriptBalloonRelativePosition];
          v58 = MaxY - v62;

          v32 = v105;
          goto LABEL_32;
        }

        if (*&v115.a == 10)
        {
          objc_opt_class();
          v31 = v100;
          v32 = v105;
          if (objc_opt_isKindOfClass())
          {
            v96 = v20;
            v33 = v10;
            v34 = [v33 layoutRecipe];
            [v33 size];
            v37 = rect / v35;
            if (v35 == 0.0)
            {
              v37 = 0.0;
            }

            v38 = v16 / v36;
            if (v36 == 0.0)
            {
              v38 = 0.0;
            }

            v39 = fmin(v37, v38);
            v40 = v35 * v39;
            v41 = v36 * v39 * -0.5;
            if ([v33 transcriptOrientation])
            {
              if ([v33 transcriptOrientation] == 2)
              {
                v42 = v40 * -0.5;
              }

              else
              {
                v41 = v100;
                v42 = v105;
              }
            }

            else
            {
              v42 = v40 * 0.5;
            }

            memset(&v113, 0, sizeof(v113));
            [v34 rotation];
            CGAffineTransformMakeRotation(&v113, v63 * 3.14159265 / 180.0);
            v64 = v113.tx + v41 * v113.c + v113.a * v42 - v42;
            v65 = v113.ty + v41 * v113.d + v113.b * v42 - v41;
            v66 = +[CKUIBehavior sharedBehaviors];
            [v66 messageAcknowledgmentTranscriptOrganicBalloonAdditionalOffset];
            v68 = v67;
            v70 = v69;

            v31 = v70 - v65;
            if ([v33 transcriptOrientation])
            {
              if ([v33 transcriptOrientation] == 2)
              {
                v32 = v64 + v68;
              }

              else
              {
                v31 = v100;
                v32 = v105;
              }
            }

            else
            {
              v32 = v64 - v68;
            }

            v17 = v98;

            v13 = v101;
            v20 = v96;
          }

          v125.origin.x = v22;
          v125.origin.y = v97;
          v125.size.width = v7;
          v125.size.height = v30;
          v71 = v13 - CGRectGetHeight(v125);
          v72 = +[CKUIBehavior sharedBehaviors];
          [v72 messageAcknowledgmentTranscriptBalloonRelativePosition];
          v58 = v71 - v73 - v31;
        }

        else
        {
LABEL_18:
          [v25 adjustedParentFrameForPositioning:{v102, v13, rect, v16}];
          v44 = v43;
          v46 = v45;
          v48 = v47;
          v50 = v49;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v25 isReaction])
          {
            v51 = [v10 itemIsFromMe];
            [v10 stickerReactionInsets];
            v52 = v51;
            v17 = v98;
            [CKAssociatedMessageChatItem locationForStickerReactionWithParentFrame:v99 reactionIndex:v52 parentIsFromMe:v44 insets:v46, v48, v50, v53, v54, v55, v56];
            v58 = v57;
            [v25 setStickerReactionIndex:v99++];
          }

          else
          {
            v113 = v115;
            v114 = v116;
            [CKAssociatedMessageChatItem verticalOriginForAssociatedMessageItemSize:&v113 parentFrame:v7 geometryDescriptor:v30, v44, v46, v48, v50];
            v58 = v59;
          }

          v32 = v105;
          v13 = v101;
        }

LABEL_32:
        [v24 setFrame:{v22, v58, v7, v30}];
        *(v24 + 384) = v22;
        *(v24 + 392) = v58;
        *(v24 + 400) = v7;
        *(v24 + 408) = v30;
        *(v24 + 352) = v22;
        *(v24 + 360) = v58;
        *(v24 + 368) = v7;
        *(v24 + 376) = v30;
        v126.origin.x = v22;
        v126.origin.y = v58;
        v126.size.width = v7;
        v126.size.height = v30;
        MidX = CGRectGetMidX(v126);
        v127.origin.x = v22;
        v127.origin.y = v58;
        v127.size.width = v7;
        v127.size.height = v30;
        MidY = CGRectGetMidY(v127);
        [v24 setCenter:{MidX, MidY}];
        *(v24 + 584) = MidY;
        *(v24 + 592) = MidY;
        *(v24 + 608) = v4[76];
        *(v24 + 616) = *(v4 + 616);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (!v20)
          {
            v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v20 addObject:v24];
        }

        else
        {
          [v24 setZIndex:{objc_msgSend(v4, "zIndex") + 1}];
        }

        [v10 size];
        v77 = v76;
        v79 = v78;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v80 = [v10 layoutRecipe];
          v81 = v80;
          v82 = rect / v77;
          if (v77 == 0.0)
          {
            v82 = 0.0;
          }

          v83 = v16 / v79;
          if (v79 == 0.0)
          {
            v83 = 0.0;
          }

          v84 = fmin(v82, v83);
          v85 = v77 * v84;
          v79 = v79 * v84;
          [v80 offset];
          v77 = v85 + v86;
        }

        [v24 setParentChatItemSize:{v77, v79}];
        [v24 setParentRotationOffset:v32];
      }

      v19 = [v17 countByEnumeratingWithState:&v117 objects:v122 count:16];
      if (!v19)
      {

        if (v20)
        {
          v17 = [v20 sortedArrayUsingComparator:&__block_literal_global_249_1];
          v111[0] = MEMORY[0x1E69E9820];
          v111[1] = 3221225472;
          v111[2] = __87__CKTranscriptCompositionalLayout__updateAssociatedAttributeFramesForPrimaryAttribute___block_invoke_2;
          v111[3] = &unk_1E72F4C80;
          v112 = v4;
          [v17 enumerateObjectsUsingBlock:v111];

          goto LABEL_48;
        }

        goto LABEL_49;
      }
    }
  }

  v20 = 0;
LABEL_48:

LABEL_49:
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v87 = v4[79];
  v88 = [v87 countByEnumeratingWithState:&v107 objects:v121 count:16];
  if (v88)
  {
    v89 = v88;
    v90 = *v108;
    do
    {
      for (j = 0; j != v89; ++j)
      {
        if (*v108 != v90)
        {
          objc_enumerationMutation(v87);
        }

        v92 = *(*(&v107 + 1) + 8 * j);
        v93 = *(v92 + 640);
        if (v93)
        {
          [v93 frame];
          *(v92 + 624) = v13 - v94;
        }
      }

      v89 = [v87 countByEnumeratingWithState:&v107 objects:v121 count:16];
    }

    while (v89);
  }
}

uint64_t __87__CKTranscriptCompositionalLayout__updateAssociatedAttributeFramesForPrimaryAttribute___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 chatItem];
  v6 = [v4 chatItem];

  v7 = [v5 time];
  v8 = [v6 time];
  v9 = [v7 compare:v8];

  return v9;
}

void __87__CKTranscriptCompositionalLayout__updateAssociatedAttributeFramesForPrimaryAttribute___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v9 = a2;
  v6 = a3 + [v5 zIndex] + 2;
  v7 = [*(a1 + 32) zIndex];
  if (v6 >= v7 + 999)
  {
    v8 = v7 + 999;
  }

  else
  {
    v8 = v6;
  }

  [v9 setZIndex:v8];
}

- (void)_configureThreadGroupsForAttributes:(id)a3 outMaxYAnchorAttribute:(id *)a4 forVisibleBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v69 = *MEMORY[0x1E69E9840];
  v10 = a3;
  if (![(CKTranscriptCompositionalLayout *)self isUsingOverlayLayout])
  {
    v62 = 0;
    v63 = &v62;
    v64 = 0x3032000000;
    v65 = __Block_byref_object_copy__46;
    v66 = __Block_byref_object_dispose__46;
    v67 = 0;
    v60[0] = 0;
    v60[1] = v60;
    v60[2] = 0x3032000000;
    v60[3] = __Block_byref_object_copy__46;
    v60[4] = __Block_byref_object_dispose__46;
    v61 = 0;
    v54 = 0;
    v55 = &v54;
    v56 = 0x3032000000;
    v57 = __Block_byref_object_copy__46;
    v58 = __Block_byref_object_dispose__46;
    v59 = 0;
    v48 = 0;
    v49 = &v48;
    v50 = 0x3032000000;
    v51 = __Block_byref_object_copy__46;
    v52 = __Block_byref_object_dispose__46;
    v53 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __111__CKTranscriptCompositionalLayout__configureThreadGroupsForAttributes_outMaxYAnchorAttribute_forVisibleBounds___block_invoke;
    aBlock[3] = &unk_1E72F4CA8;
    aBlock[4] = &v62;
    aBlock[5] = &v54;
    aBlock[6] = v60;
    v34 = _Block_copy(aBlock);
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __111__CKTranscriptCompositionalLayout__configureThreadGroupsForAttributes_outMaxYAnchorAttribute_forVisibleBounds___block_invoke_2;
    v46[3] = &unk_1E72F4CD0;
    v46[4] = &v62;
    v46[5] = &v54;
    *&v46[7] = x;
    *&v46[8] = y;
    *&v46[9] = width;
    *&v46[10] = height;
    v46[6] = &v48;
    v38 = _Block_copy(v46);
    v37 = [(CKTranscriptCompositionalLayout *)self chatStyle];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v42 objects:v68 count:16];
    if (v11)
    {
      v33 = v10;
      v39 = *v43;
      do
      {
        v40 = v11;
        for (i = 0; i != v40; ++i)
        {
          if (*v43 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v42 + 1) + 8 * i);
          v14 = [obj lastObject];

          v15 = v13[82];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          objc_opt_class();
          if ((objc_opt_isKindOfClass() | isKindOfClass))
          {
            v17 = [v15 IMChatItem];
            objc_opt_class();
            v18 = objc_opt_isKindOfClass();
            v19 = [v17 itemIsThreadOriginator];
            v20 = ([v17 itemIsReplyContextPreview] | v19 & (isKindOfClass ^ 1)) & (v18 ^ 1);
            v21 = v63[5];
            if (v21 || (v20 & 1) == 0)
            {
              if ([v21 count])
              {
                v35 = [v17 threadGroupIdentifier];
                v22 = IMMessageThreadIdentifierOriginatorGUIDAndPartMatch();
                v23 = [v17 isFromMe];
                v36 = [v17 itemIsReply];
                if ((v37 != 45) | v23 & 1)
                {
                  v24 = v20;
                  v25 = 1;
                }

                else
                {
                  v24 = v20;
                  v25 = [v15 contiguousType] != 2 && objc_msgSend(v15, "contiguousType") != 3;
                }

                v26 = v22 & ([v15 itemIsReplyContextPreview] ^ 1) & v25;
                v10 = v33;
                if (v26 == 1)
                {
                  [v63[5] addObject:v13];
                  objc_storeStrong(v55 + 5, v13);
                }

                if ((v36 & (v23 | isKindOfClass | ([v15 chatItemReplyLineContiguousTypeForChatStyle:v37] == 0)) & 1) == 0)
                {
                  if ([v63[5] count] >= 2)
                  {
                    v38[2]();
                  }

                  v27 = v55[5];
                  v55[5] = 0;

                  v28 = v63[5];
                  v63[5] = 0;

                  if (v13 != v14 && ((v36 | v24) & 1) != 0)
                  {
                    v34[2](v34, v13, v15);
                  }
                }
              }
            }

            else
            {
              v34[2](v34, v13, v15);
            }
          }

          if ([v63[5] count])
          {
            objc_opt_class();
            v29 = objc_opt_isKindOfClass();
            objc_opt_class();
            if ((v29 & ~objc_opt_isKindOfClass() & 1) != 0 || v13 == v14)
            {
              v38[2]();
              v30 = v55[5];
              v55[5] = 0;

              v31 = v63[5];
              v63[5] = 0;
            }
          }
        }

        v11 = [obj countByEnumeratingWithState:&v42 objects:v68 count:16];
      }

      while (v11);
    }

    if (a4)
    {
      *a4 = v49[5];
    }

    _Block_object_dispose(&v48, 8);
    _Block_object_dispose(&v54, 8);

    _Block_object_dispose(v60, 8);
    _Block_object_dispose(&v62, 8);
  }
}

void __111__CKTranscriptCompositionalLayout__configureThreadGroupsForAttributes_outMaxYAnchorAttribute_forVisibleBounds___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = *(a1[4] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  [*(*(a1[4] + 8) + 40) addObject:v5];
  v10 = *(a1[5] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
  v12 = v5;

  v16 = [v6 IMChatItem];

  v13 = [v16 threadGroupIdentifier];
  v14 = *(a1[6] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
}

void __111__CKTranscriptCompositionalLayout__configureThreadGroupsForAttributes_outMaxYAnchorAttribute_forVisibleBounds___block_invoke_2(uint64_t a1)
{
  v2 = 0;
  v28 = *MEMORY[0x1E69E9840];
  while (1)
  {
    v3 = v2;
    v2 = [*(*(*(a1 + 32) + 8) + 40) lastObject];

    v4 = [*(*(*(a1 + 32) + 8) + 40) lastObject];
    if (v4)
    {
      v5 = [*(*(*(a1 + 32) + 8) + 40) lastObject];
      v6 = v5[82];
    }

    else
    {
      v6 = 0;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    [*(*(*(a1 + 32) + 8) + 40) removeLastObject];
    if (v2 == *(*(*(a1 + 40) + 8) + 40))
    {
      v7 = [*(*(*(a1 + 32) + 8) + 40) lastObject];
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }

    if (!v2)
    {
      goto LABEL_11;
    }
  }

LABEL_11:
  v10 = [*(*(*(a1 + 32) + 8) + 40) lastObject];
  v11 = *(*(*(a1 + 40) + 8) + 40);

  if (v10 == v11)
  {
    [*(*(*(a1 + 32) + 8) + 40) removeLastObject];
  }

  if ([*(*(*(a1 + 32) + 8) + 40) count])
  {
    v12 = [*(*(*(a1 + 32) + 8) + 40) copy];
    v13 = *(*(*(a1 + 40) + 8) + 40);
    v14 = *(v13 + 648);
    *(v13 + 648) = v12;

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = *(*(*(a1 + 32) + 8) + 40);
    v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
LABEL_16:
      v19 = 0;
      while (1)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        if (CGRectIntersectsRect(*(*(*(&v23 + 1) + 8 * v19) + 384), *(a1 + 56)))
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v17)
          {
            goto LABEL_16;
          }

          goto LABEL_27;
        }
      }

      v20 = *(*(a1 + 48) + 8);
      if (*(v20 + 40))
      {
        MaxY = CGRectGetMaxY(*(*(*(*(a1 + 40) + 8) + 40) + 384));
        if (MaxY <= CGRectGetMaxY(*(*(*(*(a1 + 48) + 8) + 40) + 384)))
        {
          return;
        }

        v20 = *(*(a1 + 48) + 8);
      }

      v22 = *(*(*(a1 + 40) + 8) + 40);
      v15 = *(v20 + 40);
      *(v20 + 40) = v22;
    }

LABEL_27:
  }
}

- (void)updateContentSize
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [(NSArray *)self->_layoutAttributes lastObject];
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  if (v3)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__46;
    v30 = __Block_byref_object_dispose__46;
    v6 = [(CKTranscriptCompositionalLayout *)self associatedLayoutAttributes];
    v31 = [v6 firstObject];

    v7 = [(CKTranscriptCompositionalLayout *)self associatedLayoutAttributes];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __52__CKTranscriptCompositionalLayout_updateContentSize__block_invoke;
    v26[3] = &unk_1E72F4CF8;
    v26[4] = &buf;
    [v7 enumerateObjectsUsingBlock:v26];

    MaxY = CGRectGetMaxY(v3[11]);
    v9 = *(*(&buf + 1) + 40);
    if (v9)
    {
      v10 = CGRectGetMaxY(v9[11]);
      if (MaxY < v10)
      {
        MaxY = v10;
      }
    }

    v11 = [(CKTranscriptCompositionalLayout *)self collectionView];
    v12 = [v11 traitCollection];
    [v12 displayScale];
    v14 = v13;
    if (v13 == 0.0)
    {
      if (qword_1EAD65C88 != -1)
      {
        [CKTranscriptCompositionalLayout prepareLayoutForRotisserieScrolling];
      }

      if (*&_MergedGlobals == 0.0)
      {
        v14 = 1.0;
      }

      else
      {
        v14 = *&_MergedGlobals;
      }
    }

    v15 = [(CKTranscriptCompositionalLayout *)self collectionView];
    [v15 bounds];
    v17 = v16;

    [(CKTranscriptCompositionalLayout *)self sizeForRotation];
    if (v19 == v4 && v18 == v5)
    {
      v4 = v17;
    }

    else
    {
      [(CKTranscriptCompositionalLayout *)self sizeForRotation];
      v4 = v20;
    }

    v21 = [(CGRect *)v3 chatItem];
    [objc_opt_class() bottomTranscriptSpaceWithLastChatItem:v21];
    v23 = v22;

    _Block_object_dispose(&buf, 8);
    v5 = ceil(MaxY * v14) / v14 + v23;
  }

  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v33.width = v4;
      v33.height = v5;
      v25 = NSStringFromCGSize(v33);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v25;
      _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "Updating content size to: %@", &buf, 0xCu);
    }
  }

  [(CKTranscriptCompositionalLayout *)self setContentSize:v4, v5];
}

void __52__CKTranscriptCompositionalLayout_updateContentSize__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  MaxY = CGRectGetMaxY(v5[11]);
  if (MaxY > CGRectGetMaxY(*(*(*(*(a1 + 32) + 8) + 40) + 352)))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

- (void)setContentSize:(CGFloat)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v15.width = a2;
        v15.height = a3;
        v7 = NSStringFromCGSize(v15);
        v10 = 136315394;
        v11 = "[CKTranscriptCompositionalLayout setContentSize:]";
        v12 = 2112;
        v13 = v7;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Calling %s with size: %@", &v10, 0x16u);
      }
    }

    if (a1[90] != a2 || a1[91] != a3)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        [CKTranscriptCompositionalLayout setContentSize:v9];
      }

      [(CKTranscriptCompositionalLayout *)a1 setContentSize:a2, a3];
    }
  }
}

+ (double)bottomTranscriptSpaceWithLastChatItem:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    [v4 unavailabilityIndicatorBottomTranscriptSpace];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = +[CKUIBehavior sharedBehaviors];
      [v4 automaticTranslationIndicatorBottomTranscriptSpace];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = +[CKUIBehavior sharedBehaviors];
        [v4 notifyAnywayBottomTranscriptSpace];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = +[CKUIBehavior sharedBehaviors];
          [v4 satelliteAvailabilityIndicatorBottomTranscriptSpace];
        }

        else
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v7 = +[CKUIBehavior sharedBehaviors];
          v4 = v7;
          if (isKindOfClass)
          {
            [v7 satelliteSuppressedNotificationBottomTranscriptSpace];
          }

          else
          {
            [v7 bottomTranscriptSpace];
          }
        }
      }
    }
  }

  v8 = v5;

  return v8;
}

- (void)updateAttributesForAnchorYChangeWithAttributes:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKTranscriptCompositionalLayout *)self collectionView];
  [v5 bounds];
  v7 = v6;

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v4;
  v8 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v8)
  {
    v9 = 0;
    v10 = *v35;
    v31 = 0.00499999989;
    do
    {
      v11 = 0;
      v12 = v9;
      do
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v34 + 1) + 8 * v11);
        [v13 setFrame:{v13[48], v13[49], v13[50], v13[51], *&v31}];
        v14 = [v13 chatItem];
        v15 = [v14 attachmentContiguousType] & 0xFE;
        if (v12)
        {
          v16 = v15 == 2;
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;
        if (!v12 && v15 == 2 && IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Chat item is contiguous type middle/end, but it does not have a previous chat item to inherit target easing from! Possible chat item misconfiguration", buf, 2u);
          }
        }

        if (v17)
        {
          v19 = v12[53];
        }

        else
        {
          v20 = 0.00999999978;
          if ([v14 transcriptOrientation])
          {
            if ([v14 transcriptOrientation] == 1)
            {
              v20 = v31;
            }

            else
            {
              v20 = 0.0;
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = v20 + 0.0500000007;
          }

          [v13 bounds];
          v22 = v21;
          [v13 center];
          v24 = v23;
          [(CKTranscriptCompositionalLayout *)self anchorYPosition];
          v26 = vabdd_f64(v24, v25);
          v27 = 0.0;
          for (i = -1; i != 2; ++i)
          {
            v29 = (v26 + v22 * i * 0.5) / v7;
            if (v29 > 1.0)
            {
              v29 = 1.0;
            }

            [(CKTranscriptCompositionalLayout *)self bezierPointForPercentage:fmax(v29 anchor1:0.0) anchor2:v20 control1:v20 + 0.75 control2:v20 + 0.75, v20 + 0.75];
            v27 = v27 + v30;
          }

          v19 = v27 / 3.0;
        }

        v13[53] = v19;
        v9 = v13;

        ++v11;
        v12 = v9;
      }

      while (v11 != v8);
      v8 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v8);
  }
}

- (double)_calculateTargetEasingForNewlyInsertedChatItem:(id)a3 previousItemAttributes:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 attachmentContiguousType] & 0xFE;
  if (v6)
  {
    v8 = v7 == 2;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (!v6 && v7 == 2 && IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Chat item is contiguous type middle/end, but it does not have a previous chat item to inherit target easing from! Possible chat item misconfiguration", v16, 2u);
    }
  }

  if (v9)
  {
    v11 = v6[53];
  }

  else
  {
    if ([v5 transcriptOrientation])
    {
      if ([v5 transcriptOrientation] == 1)
      {
        v12 = 0.00499999989;
      }

      else
      {
        v12 = 0.0;
      }
    }

    else
    {
      v12 = 0.00999999978;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v14 = v12 + 0.0500000007;
    if ((isKindOfClass & 1) == 0)
    {
      v14 = v12;
    }

    v11 = v14 + 0.899999976;
  }

  return v11;
}

- (void)updateAttributesForTargetContentOffsetChangeWithAttributes:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKTranscriptCompositionalLayout *)self collectionView];
  [v5 bounds];
  v7 = v6;

  [(CKTranscriptCompositionalLayout *)self anchorYPosition];
  v39 = v8;
  [(CKTranscriptCompositionalLayout *)self targetContentOffset];
  v10 = v9;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v4;
  v11 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v11)
  {
    v12 = 0;
    v13 = *v42;
    v14 = v7 + v10 - (v39 + v7);
    if (v10 < v39)
    {
      v14 = v39 - v7 - v10;
    }

    if (v14 >= v7 * 0.5)
    {
      v15 = v14;
    }

    else
    {
      v15 = v7 * 0.5;
    }

    while (1)
    {
      v16 = 0;
      v17 = v12;
      do
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v41 + 1) + 8 * v16);
        [v18 setFrame:{v18[48], v18[49], v18[50], v18[51]}];
        [v18 center];
        v20 = v19;
        v21 = [v18 chatItem];
        v22 = [v21 attachmentContiguousType] & 0xFE;
        if (v17)
        {
          v23 = v22 == 2;
        }

        else
        {
          v23 = 0;
        }

        v24 = v23;
        if (!v17 && v22 == 2 && IMOSLoggingEnabled())
        {
          v25 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "Chat item is contiguous type middle/end, but it does not have a previous chat item to inherit target easing from! Possible chat item misconfiguration", buf, 2u);
          }
        }

        if (v24)
        {
          v26 = v17[53];
        }

        else
        {
          if (fabs(v20 - v39) <= v7)
          {
            goto LABEL_35;
          }

          v27 = 0.00999999978;
          if ([v21 transcriptOrientation])
          {
            if ([v21 transcriptOrientation] == 1)
            {
              v27 = 0.00499999989;
            }

            else
            {
              v27 = 0.0;
            }
          }

          [v18 bounds];
          v29 = v28;
          [v18 center];
          v31 = vabdd_f64(v30, v39);
          v32 = v27 + 0.75;
          v33 = v27 + 0.899999976;
          v34 = -1;
          v35 = 0.0;
          do
          {
            v36 = (v31 + v29 * v34 * 0.5 - v7) / v15;
            if (v36 > 1.0)
            {
              v36 = 1.0;
            }

            [(CKTranscriptCompositionalLayout *)self bezierPointForPercentage:fmax(v36 anchor1:0.0) anchor2:v32 control1:v33 control2:v32, v32];
            v35 = v35 + v37;
            ++v34;
          }

          while (v34 != 2);
          v26 = v35 / 3.0;
        }

        v18[53] = v26;
LABEL_35:
        v12 = v18;

        ++v16;
        v17 = v12;
      }

      while (v16 != v11);
      v11 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (!v11)
      {

        break;
      }
    }
  }
}

- (void)setAnchorYPosition:(double)a3
{
  if (self->_anchorYPosition != a3)
  {
    self->_anchorYPosition = a3;
    v5 = [(CKTranscriptCompositionalLayout *)self layoutAttributes];
    [(CKTranscriptCompositionalLayout *)self updateAttributesForAnchorYChangeWithAttributes:v5];

    v6 = [(CKTranscriptCompositionalLayout *)self associatedLayoutAttributes];
    [(CKTranscriptCompositionalLayout *)self updateAttributesForAnchorYChangeWithAttributes:v6];
  }
}

- (void)setTargetContentOffset:(CGPoint)a3
{
  if (a3.x != self->_targetContentOffset.x || a3.y != self->_targetContentOffset.y)
  {
    v6 = [(CKTranscriptCompositionalLayout *)self layoutAttributes];
    [(CKTranscriptCompositionalLayout *)self updateAttributesForTargetContentOffsetChangeWithAttributes:v6];

    v7 = [(CKTranscriptCompositionalLayout *)self associatedLayoutAttributes];
    [(CKTranscriptCompositionalLayout *)self updateAttributesForTargetContentOffsetChangeWithAttributes:v7];
  }
}

- (void)displayLinkFired:(id)a3
{
  v7 = a3;
  kdebug_trace();
  if ((_UIUpdateCycleEnabled() & 1) == 0)
  {
    if (self)
    {
      self->_isDisplayDrivenLayoutInvalidation = 1;
      [v7 timestamp];
      self->_currentFrameTimestamp = v4;
      [v7 preferredFrameRateRange];
      self->_requestedFrameRate = v5;
    }

    else
    {
      [CKTranscriptCompositionalLayout displayLinkFired:v7];
    }

    kdebug_trace();
    v6 = [(CKTranscriptCompositionalLayout *)self _invalidationContextForRefreshingVisibleElementAttributes];
    [(CKTranscriptCompositionalLayout *)self invalidateLayoutWithContext:v6];

    [(CKTranscriptCompositionalLayout *)self checkDynamicsWatchdog];
  }
}

- (double)handleInvalidCaseForChatItem:(id)a3 withPrevChatItem:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v12 = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Transcript: %@ shouldn't follow %@", &v12, 0x16u);
    }
  }

  v8 = +[CKUIBehavior sharedBehaviors];
  [v8 smallTranscriptSpace];
  v10 = v9;

  return v10;
}

- (BOOL)nextItemIsOriginatorWithRepliesForIndex:(unint64_t)a3
{
  v4 = a3 + 1;
  v5 = self->_layoutAttributes;
  if (v4 >= [(NSArray *)v5 count])
  {
    v8 = 0;
  }

  else
  {
    v6 = [(NSArray *)v5 objectAtIndex:v4];
    v7 = [v6 chatItem];
    objc_opt_class();
    v8 = (objc_opt_isKindOfClass() & 1) != 0 && [v7 itemIsThreadOriginator] && -[CKTranscriptCompositionalLayout nextMessageIsReplyForIndex:](self, "nextMessageIsReplyForIndex:", v4);
  }

  return v8;
}

- (BOOL)nextMessageIsReplyForIndex:(unint64_t)a3
{
  v4 = self->_layoutAttributes;
  v5 = a3 + 1;
  if (v5 >= [(NSArray *)v4 count])
  {
LABEL_4:
    v8 = 0;
  }

  else
  {
    while (1)
    {
      v6 = [(NSArray *)v4 objectAtIndex:v5];
      v7 = [v6 chatItem];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (++v5 >= [(NSArray *)v4 count])
      {
        goto LABEL_4;
      }
    }

    v8 = [v7 itemIsReply];
  }

  return v8;
}

- (BOOL)previousReplyCount:(unint64_t)a3 isOccludedForAssociatedFrame:(CGRect)a4 outMaxY:(double *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = self->_layoutAttributes;
  v12 = [(NSArray *)v11 objectAtIndex:a3];
  v13 = [v12 chatItem];

  if ([v13 itemIsReply])
  {
    v14 = (a3 - 1) < 1;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
LABEL_7:
    LOBYTE(v17) = 0;
  }

  else
  {
    while (1)
    {
      v15 = [(NSArray *)v11 objectAtIndex:--a3];
      v16 = [v15 chatItem];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (a3 <= 1)
      {
        goto LABEL_7;
      }
    }

    v18 = [v16 replyCount];
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    MinX = CGRectGetMinX(v24);
    [v15 frame];
    MaxX = CGRectGetMaxX(v25);
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    MinY = CGRectGetMinY(v26);
    [v15 frame];
    v22 = MinY <= CGRectGetMaxY(v27) && MinX <= MaxX;
    v17 = v18 > 1 && v22;
    if (v17)
    {
      [v15 frame];
      *a5 = CGRectGetMaxY(v28);
    }
  }

  return v17;
}

- (BOOL)needsAdditionalBracketPaddingForChatItem:(id)a3 prevChatItem:(id)a4
{
  v5 = a3;
  if (([a4 itemIsFromMe] & 1) != 0 || !objc_msgSend(v5, "itemIsFromMe"))
  {
    v10 = 0;
  }

  else
  {
    [v5 size];
    v7 = v6;
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 textBalloonMinHeight];
    v10 = v7 <= v9;
  }

  return v10;
}

- (void)_applyAttributeUpdatesWithTargetMap:(id)a3 layoutAttributes:(id)a4 updateBlock:(id)a5
{
  v78 = *MEMORY[0x1E69E9840];
  v62 = a3;
  v8 = a4;
  v9 = a5;
  v59 = self;
  v10 = [(CKTranscriptCompositionalLayout *)self collectionView];
  [v10 frame];
  v12 = v11;

  v13 = [(CKTranscriptCompositionalLayout *)self collectionView];
  [v13 _visibleRectEdgeInsets];
  v15 = v14;
  v17 = v16;

  v60 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v58 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v8;
  v18 = [obj countByEnumeratingWithState:&v72 objects:v77 count:16];
  if (v18)
  {
    v19 = 0;
    v20 = v12 - (v15 + v17);
    v21 = *v73;
    v22 = 0.0;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v73 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v72 + 1) + 8 * i);
        v25 = [*(v24 + 656) IMChatItem];
        v26 = [v25 guid];
        v27 = [v62 objectForKey:v26];

        if (v27)
        {
          [v27 CGRectValue];
          x = v79.origin.x;
          y = v79.origin.y;
          width = v79.size.width;
          height = v79.size.height;
          if (CGRectGetMaxY(v79) < 0.0)
          {
            [v60 addObject:v24];
            goto LABEL_16;
          }

          v32 = [(CKTranscriptCompositionalLayout *)v59 collectionView];
          [v32 frame];
          v34 = y - v33 > v20;

          if (v34)
          {
            [v58 addObject:v24];
            goto LABEL_16;
          }

          [(CKTranscriptCompositionalLayout *)v59 _convertScreenFrameToLocalFrame:x, y, width, height];
          v36 = v35;
          v37 = *(v24 + 392);
          v9[2](v9, v24, 0);
          v22 = v36 - v37;
        }

        else
        {
          if ((v19 & 1) == 0)
          {
            [v60 addObject:v24];
            v19 = 0;
            goto LABEL_16;
          }

          (v9[2])(v9, v24, 1, *(v24 + 384), v22 + *(v24 + 392), *(v24 + 400), *(v24 + 408));
        }

        v19 = 1;
LABEL_16:
      }

      v18 = [obj countByEnumeratingWithState:&v72 objects:v77 count:16];
    }

    while (v18);
  }

  v38 = +[CKUIBehavior sharedBehaviors];
  [v38 smallTranscriptSpace];
  v40 = v39;

  v41 = [(CKTranscriptCompositionalLayout *)v59 collectionView];
  v42 = [v41 superview];
  v43 = [(CKTranscriptCompositionalLayout *)v59 collectionView];
  [v42 convertPoint:v43 toView:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  v45 = v44;

  v71[0] = 0;
  v71[1] = v71;
  v71[2] = 0x2020000000;
  v71[3] = v45;
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __100__CKTranscriptCompositionalLayout__applyAttributeUpdatesWithTargetMap_layoutAttributes_updateBlock___block_invoke;
  v67[3] = &unk_1E72F4D20;
  v69 = v71;
  v70 = v40;
  v46 = v9;
  v68 = v46;
  [v60 enumerateObjectsWithOptions:2 usingBlock:v67];
  v47 = [(CKTranscriptCompositionalLayout *)v59 collectionView];
  [v47 bounds];
  MaxY = CGRectGetMaxY(v80);

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v49 = v58;
  v50 = [v49 countByEnumeratingWithState:&v63 objects:v76 count:16];
  if (v50)
  {
    v51 = *v64;
    do
    {
      for (j = 0; j != v50; ++j)
      {
        if (*v64 != v51)
        {
          objc_enumerationMutation(v49);
        }

        v53 = *(*(&v63 + 1) + 8 * j);
        v54 = v53[48];
        v55 = v53[50];
        v56 = v53[51];
        v81.origin.x = v54;
        v81.origin.y = MaxY;
        v81.size.width = v55;
        v81.size.height = v56;
        v57 = CGRectGetMaxY(v81);
        (v46[2])(v46, v53, 0, v54, MaxY, v55, v56);
        MaxY = v40 + v57;
      }

      v50 = [v49 countByEnumeratingWithState:&v63 objects:v76 count:16];
    }

    while (v50);
  }

  [(CKTranscriptCompositionalLayout *)v59 _kickDynamicsIfNeeded];
  _Block_object_dispose(v71, 8);
}

void __100__CKTranscriptCompositionalLayout__applyAttributeUpdatesWithTargetMap_layoutAttributes_updateBlock___block_invoke(uint64_t a1, double *a2)
{
  v3 = a2[48];
  v4 = a2[49];
  v5 = a2[50];
  v6 = a2[51];
  v7 = *(*(*(a1 + 40) + 8) + 24);
  v8 = a2;
  v10.origin.x = v3;
  v10.origin.y = v4;
  v10.size.width = v5;
  v10.size.height = v6;
  *(*(*(a1 + 40) + 8) + 24) = v7 - CGRectGetHeight(v10) - *(a1 + 48);
  (*(*(a1 + 32) + 16))(v3);
}

- (CGRect)_convertScreenFrameToLocalFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(CKTranscriptCompositionalLayout *)self collectionView];
  v9 = [v8 superview];
  v10 = [(CKTranscriptCompositionalLayout *)self collectionView];
  [v9 convertRect:v10 toView:{x, y, width, height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)_applyTargetFrameOffsetsForLayoutAttributesIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCompositionalLayout *)self collectionView];
  v6 = [v5 delegate];

  v7 = [v6 overrideTargetFrameMapForLayout:self];
  if (v7)
  {
    v8 = [(CKTranscriptCompositionalLayout *)self isInlineAnimatingOut];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __87__CKTranscriptCompositionalLayout__applyTargetFrameOffsetsForLayoutAttributesIfNeeded___block_invoke;
    aBlock[3] = &__block_descriptor_33_e89_v52__0__CKTranscriptCollectionViewLayoutAttributes_8_CGRect__CGPoint_dd__CGSize_dd__16B48l;
    v11 = v8;
    v9 = _Block_copy(aBlock);
    [(CKTranscriptCompositionalLayout *)self _applyAttributeUpdatesWithTargetMap:v7 layoutAttributes:v4 updateBlock:v9];
  }
}

void __87__CKTranscriptCompositionalLayout__applyTargetFrameOffsetsForLayoutAttributesIfNeeded___block_invoke(uint64_t a1, void *a2, int a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v36 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v15 = *(v13 + 48);
  v14 = *(v13 + 49);
  v34 = *(v13 + 25);
  v37.origin.x = a4;
  v37.origin.y = a5;
  v37.size.width = a6;
  v37.size.height = a7;
  CGRectGetMidX(v37);
  v38.origin.x = a4;
  v38.origin.y = a5;
  v38.size.width = a6;
  v38.size.height = a7;
  MidY = CGRectGetMidY(v38);
  *(v13 + 44) = v15;
  *(v13 + 45) = a5;
  *(v13 + 23) = v34;
  *(v13 + 73) = MidY;
  if (*(a1 + 32) == 1 && a3)
  {
    [v13 setAlpha:0.0];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = v13;
  v17 = *(v13 + 79);
  v18 = [v17 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = a5 - v14;
    v21 = *v31;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v30 + 1) + 8 * i);
        v24 = *(v23 + 384);
        v25 = *(v23 + 400);
        v26 = *(v23 + 408);
        v27 = v20 + *(v23 + 392);
        v39.origin.x = v24;
        v39.origin.y = v27;
        v39.size.width = v25;
        v39.size.height = v26;
        CGRectGetMidX(v39);
        v40.origin.x = v24;
        v40.origin.y = v27;
        v40.size.width = v25;
        v40.size.height = v26;
        v28 = CGRectGetMidY(v40);
        *(v23 + 352) = v24;
        *(v23 + 360) = v27;
        *(v23 + 368) = v25;
        *(v23 + 376) = v26;
        *(v23 + 584) = v28;
        if (*(v23 + 640))
        {
          *(v23 + 624) = v20 + *(v23 + 624);
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v19);
  }
}

- (void)_applyCurrentFrameOffsetsForLayoutAttributesIfNeeded:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKTranscriptCompositionalLayout *)self collectionView];
  v6 = [v5 delegate];

  v7 = [v6 overrideCurrentFrameMapForLayout:self];
  v8 = [v6 balloonOffsetMapForLayout:self resetsOffsetMapAfterUse:1];
  if (v7)
  {
    v44 = v7;
    [(CKTranscriptCompositionalLayout *)self _applyAttributeUpdatesWithTargetMap:v7 layoutAttributes:v4 updateBlock:&__block_literal_global_266_1];
    v9 = [(CKTranscriptCompositionalLayout *)self collectionView];
    [v9 frame];
    v11 = v10;

    if (self)
    {
      height = self->_contentSize.height;
    }

    else
    {
      height = 0.0;
    }

    v13 = 0.5;
    if (height >= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v11 * 0.5;
    }

    v15 = [(CKTranscriptCompositionalLayout *)self collectionView];
    v16 = [v15 superview];
    v17 = [(CKTranscriptCompositionalLayout *)self collectionView];
    [v16 convertPoint:v17 toView:{0.0, v14}];
    v47 = v18;

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v45 = v4;
    obj = v4;
    v19 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v53;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v53 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v52 + 1) + 8 * i);
          [v23 bounds];
          v25 = v24;
          [v23 center];
          v27 = vabdd_f64(v26, v47);
          v28 = -1;
          v29 = 0.0;
          do
          {
            v30 = (v27 + v25 * v28 * v13) / v11;
            if (v30 > 1.0)
            {
              v30 = 1.0;
            }

            v31 = v11;
            v32 = fmax(v30, 0.0);
            v33 = [(CKTranscriptCompositionalLayout *)self isInlineAnimatingOut];
            v34 = -0.0500000007;
            if (!v33)
            {
              v34 = 0.0;
            }

            v35 = v34 + 0.889999986;
            v36 = v34 + 0.824999988;
            v37 = v32;
            v11 = v31;
            v13 = 0.5;
            [(CKTranscriptCompositionalLayout *)self bezierPointForPercentage:v37 anchor1:v35 anchor2:v36 control1:v36 control2:v36];
            v29 = v29 + v38;
            ++v28;
          }

          while (v28 != 2);
          *(v23 + 416) = v29 / 3.0;
          *(v23 + 424) = v29 / 3.0;
          [(CKTranscriptCompositionalLayout *)self _applyHorizontalOffsetFromMapping:v8 toLayoutAttributes:v23];
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v39 = *(v23 + 632);
          v40 = [v39 countByEnumeratingWithState:&v48 objects:v56 count:16];
          if (v40)
          {
            v41 = v40;
            v42 = *v49;
            do
            {
              for (j = 0; j != v41; ++j)
              {
                if (*v49 != v42)
                {
                  objc_enumerationMutation(v39);
                }

                [(CKTranscriptCompositionalLayout *)self _applyHorizontalOffsetFromMapping:v8 toLayoutAttributes:*(*(&v48 + 1) + 8 * j)];
              }

              v41 = [v39 countByEnumeratingWithState:&v48 objects:v56 count:16];
            }

            while (v41);
          }
        }

        v20 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v20);
    }

    [(CKTranscriptCompositionalLayout *)self _kickDynamicsIfNeeded];
    v4 = v45;
    v7 = v44;
  }
}

void __88__CKTranscriptCompositionalLayout__applyCurrentFrameOffsetsForLayoutAttributesIfNeeded___block_invoke(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, void *a6)
{
  v34 = *MEMORY[0x1E69E9840];
  v10 = a6;
  v12 = *(v10 + 48);
  v11 = *(v10 + 49);
  v32 = *(v10 + 25);
  v35.origin.x = a1;
  v35.origin.y = a2;
  v35.size.width = a3;
  v35.size.height = a4;
  MidX = CGRectGetMidX(v35);
  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v36.size.height = a4;
  MidY = CGRectGetMidY(v36);
  *(v10 + 48) = v12;
  *(v10 + 49) = a2;
  *(v10 + 25) = v32;
  [v10 setCenter:{MidX, MidY}];
  *(v10 + 74) = MidY;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = *(v10 + 79);
  v16 = [v15 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = a2 - v11;
    v19 = *v29;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v28 + 1) + 8 * i);
        v22 = *(v21 + 384);
        v23 = *(v21 + 400);
        v24 = *(v21 + 408);
        v25 = v18 + *(v21 + 392);
        v37.origin.x = v22;
        v37.origin.y = v25;
        v37.size.width = v23;
        v37.size.height = v24;
        v26 = CGRectGetMidX(v37);
        v38.origin.x = v22;
        v38.origin.y = v25;
        v38.size.width = v23;
        v38.size.height = v24;
        v27 = CGRectGetMidY(v38);
        *(v21 + 384) = v22;
        *(v21 + 392) = v25;
        *(v21 + 400) = v23;
        *(v21 + 408) = v24;
        [v21 setCenter:{v26, v27, v28}];
        *(v21 + 592) = v27;
        if (*(v21 + 640))
        {
          *(v21 + 624) = v18 + *(v21 + 624);
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v17);
  }
}

- (void)_applyHorizontalOffsetFromMapping:(id)a3 toLayoutAttributes:(id)a4
{
  v5 = *(a4 + 82);
  v6 = a4;
  v7 = a3;
  v8 = [v5 IMChatItem];
  v14 = [v8 guid];

  v9 = [v7 objectForKey:v14];

  [v9 floatValue];
  v11 = v10;
  v12 = v10 == 0.0;
  v13 = 0.0;
  if (!v12)
  {
    v13 = v11;
  }

  v6[55] = v13;
  v6[56] = v13;
}

- (void)_updateCurrentBalloonOffsetForLayoutAttributes:(id)a3
{
  v3 = a3;
  v4 = v3[73] - v3[74];
  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  v5 = fmax(v4, 1.0);
  if (v5 >= 2.0)
  {
    v13 = v3;
    [v3 center];
    v8 = v7 - v13[74];
    if (v8 < 0.0)
    {
      v8 = -v8;
    }

    v9 = v8 / v5;
    v10 = +[CKUIBehavior sharedBehaviors];
    [v10 curveValueForSwipeWithVelocity:*MEMORY[0x1E695EFF8] t:{*(MEMORY[0x1E695EFF8] + 8), v9}];
    v12 = v11;

    v3 = v13;
    v6 = fmax(v12 * v13[55], 0.0);
  }

  else
  {
    v6 = v3[56] + -6.0;
  }

  v3[56] = v6;
}

- (void)_resetHorizontalBalloonOffsetsForLayoutAttributes:(id)a3 includeAssociatedAttributes:(BOOL)a4
{
  v14 = *MEMORY[0x1E69E9840];
  *(a3 + 55) = 0;
  if (a4)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = *(a3 + 79);
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          *(*(*(&v9 + 1) + 8 * v8++) + 440) = 0;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)sizeCategoryDidChange:(id)a3
{
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 isAccessibilityPreferredContentSizeCategory];

  if (v5 != [(CKTranscriptCompositionalLayout *)self sizeCategoryIsAccessibilitySizeCategory])
  {
    [(CKTranscriptCompositionalLayout *)self setLayoutAttributes:0];
    [(CKTranscriptCompositionalLayout *)self invalidateLayout];

    [(CKTranscriptCompositionalLayout *)self setSizeCategoryIsAccessibilitySizeCategory:v5];
  }
}

- (void)reduceMotionSettingChanged:(id)a3
{
  [(CKTranscriptCompositionalLayout *)self setLayoutAttributes:0];

  [(CKTranscriptCompositionalLayout *)self invalidateLayout];
}

- (CGPoint)targetContentOffset
{
  x = self->_targetContentOffset.x;
  y = self->_targetContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)sizeForRotation
{
  width = self->_sizeForRotation.width;
  height = self->_sizeForRotation.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setDisplayLink:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 680), a2);
  }
}

- (void)updateDynamicsWatchdogForRenderedFrameWithDuration:(os_log_t)log .cold.1(os_log_t log, double a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 134218240;
  v3 = a2;
  v4 = 2048;
  v5 = 0x4000000000000000;
  _os_log_error_impl(&dword_19020E000, log, OS_LOG_TYPE_ERROR, "Frame took %.2f seconds which is longer than our threshhold %.2f seconds, ignoring this frame's duration from the watchdog calculation.", &v2, 0x16u);
}

- (void)setContentSize:(NSObject *)a1 .cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_19020E000, a1, OS_LOG_TYPE_INFO, "Content size has changed, we will call the delegate's collectionViewLayout:sizeDidChange:", v2, 2u);
  }
}

- (void)setContentSize:(double)a3 .cold.2(double *a1, double a2, double a3)
{
  a1[90] = a2;
  a1[91] = a3;
  v4 = [a1 collectionView];
  v5 = [v4 delegate];

  [v5 collectionViewLayout:a1 sizeDidChange:{a1[90], a1[91]}];
}

- (uint64_t)displayLinkFired:(void *)a1 .cold.1(void *a1)
{
  [a1 timestamp];

  return [a1 preferredFrameRateRange];
}

@end