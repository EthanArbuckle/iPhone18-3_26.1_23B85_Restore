@interface ICTextController(ICChecklistSortAnimation)
- (ICTrackedParagraphImageInfo)imageInfoForTrackedParagraph:()ICChecklistSortAnimation textView:characterRangeToRender:visibleRectToRender:;
- (void)addImageViewsAfterSortIfNecessaryForTrackedInfos:()ICChecklistSortAnimation existingInfos:textView:textContainerOrigin:todoUUIDsToImageViews:;
- (void)addImageViewsBeforeSortIfNecessaryForTrackedInfos:()ICChecklistSortAnimation textView:textContainerOrigin:todoUUIDsToImageViews:;
- (void)performAnimatedSortForTrackedParagraphs:()ICChecklistSortAnimation expandedRange:textView:sortChecklistsBlock:;
- (void)setFinalFramesForSortedInfos:()ICChecklistSortAnimation textView:textContainerOrigin:todoUUIDsToImageViews:;
@end

@implementation ICTextController(ICChecklistSortAnimation)

- (void)performAnimatedSortForTrackedParagraphs:()ICChecklistSortAnimation expandedRange:textView:sortChecklistsBlock:
{
  v11 = a6;
  v12 = MEMORY[0x277CBEB38];
  v73 = a7;
  v13 = a3;
  v74 = objc_alloc_init(v12);
  [v11 ic_textContainerOrigin];
  v15 = v14;
  v17 = v16;
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0)
  {
    icLayoutManager = [v11 icLayoutManager];
    textContainer = [v11 textContainer];
    [icLayoutManager ensureLayoutForTextContainer:textContainer];
  }

  [v11 clampTextView];
  [v11 visibleBounds];
  v21 = v20;
  v23 = v22;
  v26 = v25 + v24 * 0.3 * -0.5;
  v27 = v24 + v24 * 0.3;
  TSDMultiplyPointScalar();
  v71 = v26;
  v72 = v21;
  TSDAddPoints();
  v29 = v28;
  v31 = v30;
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    icTextLayoutManager = [v11 icTextLayoutManager];
    v33 = v23;
    v34 = v27;
    v35 = [icTextLayoutManager characterRangeForBoundingRect:{v29, v31, v23, v27}];
    v37 = v36;
  }

  else
  {
    icTextLayoutManager = [v11 icLayoutManager];
    textContainer2 = [v11 textContainer];
    v33 = v23;
    v34 = v27;
    v35 = [icTextLayoutManager glyphRangeForBoundingRect:textContainer2 inTextContainer:{v29, v31, v23, v27}];
    v37 = v39;

    [icTextLayoutManager ensureGlyphsForCharacterRange:{a4, a5}];
    [icTextLayoutManager setShouldManuallyRenderSeparateSubviews:1];
    [icTextLayoutManager setIsDraggingChecklistItem:1];
  }

  [v11 ic_rectForRange:{a4, a5}];
  v68 = v41;
  v69 = v40;
  TSDAddPoints();
  v67 = v42;
  v44 = v43;
  v45 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v13, "count")}];
  v95[0] = MEMORY[0x277D85DD0];
  v95[1] = 3221225472;
  v95[2] = __129__ICTextController_ICChecklistSortAnimation__performAnimatedSortForTrackedParagraphs_expandedRange_textView_sortChecklistsBlock___block_invoke;
  v95[3] = &unk_2781AED10;
  v95[4] = self;
  v46 = v11;
  v98 = v35;
  v99 = v37;
  v100 = v72;
  v101 = v71;
  v102 = v33;
  v103 = v34;
  v96 = v46;
  v97 = v45;
  v47 = v45;
  [v13 enumerateObjectsUsingBlock:v95];
  v48 = objc_alloc_init(MEMORY[0x277D75D18]);
  [MEMORY[0x277D75348] ic_noteEditorBackgroundColor];
  v50 = v49 = a5;
  [v48 setIc_backgroundColor:v50];

  [v48 setFrame:{v67, v44, v69, v68}];
  [v46 addSubview:v48];
  v51 = a4;
  [self addImageViewsBeforeSortIfNecessaryForTrackedInfos:v47 textView:v46 textContainerOrigin:v74 todoUUIDsToImageViews:{v15, v17}];
  v73[2](v73);

  icLayoutManager2 = [v46 icLayoutManager];
  [icLayoutManager2 ensureLayoutForCharacterRange:{v51, v49}];
  v53 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v13, "count")}];
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __129__ICTextController_ICChecklistSortAnimation__performAnimatedSortForTrackedParagraphs_expandedRange_textView_sortChecklistsBlock___block_invoke_2;
  v86[3] = &unk_2781AED10;
  v86[4] = self;
  v54 = v46;
  v87 = v54;
  v89 = v35;
  v90 = v37;
  v91 = v72;
  v92 = v71;
  v93 = v33;
  v94 = v34;
  v55 = v53;
  v88 = v55;
  [v13 enumerateObjectsUsingBlock:v86];

  v56 = v47;
  [self addImageViewsAfterSortIfNecessaryForTrackedInfos:v55 existingInfos:v47 textView:v54 textContainerOrigin:v74 todoUUIDsToImageViews:{v15, v17}];
  [icLayoutManager2 setShouldManuallyRenderSeparateSubviews:0];
  [icLayoutManager2 setIsDraggingChecklistItem:0];
  LODWORD(v57) = 1051260355;
  LODWORD(v58) = 1045220557;
  LODWORD(v59) = 1.0;
  v60 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v57 :0.0 :v58 :v59];
  v61 = MEMORY[0x277D75D18];
  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = __129__ICTextController_ICChecklistSortAnimation__performAnimatedSortForTrackedParagraphs_expandedRange_textView_sortChecklistsBlock___block_invoke_3;
  v80[3] = &unk_2781AED38;
  v80[4] = self;
  v81 = v55;
  v82 = v54;
  v84 = v15;
  v85 = v17;
  v83 = v74;
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __129__ICTextController_ICChecklistSortAnimation__performAnimatedSortForTrackedParagraphs_expandedRange_textView_sortChecklistsBlock___block_invoke_4;
  v75[3] = &unk_2781AC878;
  v76 = icLayoutManager2;
  v77 = v48;
  v78 = v83;
  v79 = v82;
  v62 = v82;
  v63 = v83;
  v64 = v48;
  v65 = icLayoutManager2;
  v66 = v55;
  [v61 ic_animateWithDuration:v60 timingFunction:v80 animations:v75 completion:0.35];
}

- (void)addImageViewsBeforeSortIfNecessaryForTrackedInfos:()ICChecklistSortAnimation textView:textContainerOrigin:todoUUIDsToImageViews:
{
  v11 = a6;
  v12 = a7;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __147__ICTextController_ICChecklistSortAnimation__addImageViewsBeforeSortIfNecessaryForTrackedInfos_textView_textContainerOrigin_todoUUIDsToImageViews___block_invoke;
  v15[3] = &unk_2781AED60;
  selfCopy = self;
  v19 = a2;
  v16 = v11;
  v17 = v12;
  v13 = v12;
  v14 = v11;
  [a5 enumerateKeysAndObjectsUsingBlock:v15];
}

- (void)addImageViewsAfterSortIfNecessaryForTrackedInfos:()ICChecklistSortAnimation existingInfos:textView:textContainerOrigin:todoUUIDsToImageViews:
{
  v13 = a6;
  v14 = a7;
  v15 = a8;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __160__ICTextController_ICChecklistSortAnimation__addImageViewsAfterSortIfNecessaryForTrackedInfos_existingInfos_textView_textContainerOrigin_todoUUIDsToImageViews___block_invoke;
  v19[3] = &unk_2781AED88;
  v20 = v15;
  v21 = v13;
  selfCopy = self;
  v24 = a2;
  v22 = v14;
  v16 = v14;
  v17 = v13;
  v18 = v15;
  [a5 enumerateKeysAndObjectsUsingBlock:v19];
}

- (void)setFinalFramesForSortedInfos:()ICChecklistSortAnimation textView:textContainerOrigin:todoUUIDsToImageViews:
{
  v12 = a6;
  v13 = a7;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __126__ICTextController_ICChecklistSortAnimation__setFinalFramesForSortedInfos_textView_textContainerOrigin_todoUUIDsToImageViews___block_invoke;
  v16[3] = &unk_2781AED88;
  v16[4] = self;
  v17 = v12;
  v18 = v13;
  v19 = a2;
  v20 = a3;
  v14 = v13;
  v15 = v12;
  [a5 enumerateKeysAndObjectsUsingBlock:v16];
}

- (ICTrackedParagraphImageInfo)imageInfoForTrackedParagraph:()ICChecklistSortAnimation textView:characterRangeToRender:visibleRectToRender:
{
  v17 = a7;
  v18 = a8;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__15;
  v58 = __Block_byref_object_dispose__15;
  v59 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x4010000000;
  v51 = &unk_21552D17E;
  v39 = *(MEMORY[0x277CBF3A0] + 16);
  v40 = *MEMORY[0x277CBF3A0];
  v52 = *MEMORY[0x277CBF3A0];
  v53 = v39;
  v61.location = [v17 characterRange];
  location = v61.location;
  length = v61.length;
  v62.location = a9;
  v62.length = a10;
  v21 = NSIntersectionRange(v61, v62).length;
  if (v21)
  {
    ic_platformAppearanceObject = [v18 ic_platformAppearanceObject];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __127__ICTextController_ICChecklistSortAnimation__imageInfoForTrackedParagraph_textView_characterRangeToRender_visibleRectToRender___block_invoke;
    v41[3] = &unk_2781AEDB0;
    v42 = v18;
    v43 = v17;
    v44 = &v48;
    v46 = location;
    v47 = length - (length > 1);
    v45 = &v54;
    [ic_platformAppearanceObject ic_performAsCurrent:v41];
  }

  else
  {
    v23 = v49;
    *(v49 + 2) = v40;
    *(v23 + 3) = v39;
    characterRange = [v17 characterRange];
    if (characterRange + v25 <= a9)
    {
      v28 = v49;
      *(v49 + 4) = self;
      v28[5] = a2;
    }

    else
    {
      v63.origin.x = self;
      v63.origin.y = a2;
      v63.size.width = a3;
      v63.size.height = a4;
      MaxY = CGRectGetMaxY(v63);
      v27 = v49;
      v49[4] = 0;
      v27[5] = MaxY;
    }
  }

  v29 = objc_alloc_init(ICTrackedParagraphImageInfo);
  v30 = v49;
  TSDMultiplyPointScalar();
  TSDAddPoints();
  v30[4] = v31;
  v30[5] = v32;
  [(ICTrackedParagraphImageInfo *)v29 setImage:v55[5]];
  firstObject = [0 firstObject];
  [firstObject ic_rectValue];
  [(ICTrackedParagraphImageInfo *)v29 setBoundingRect:?];

  [(ICTrackedParagraphImageInfo *)v29 setTrackedParagraph:v17];
  [(ICTrackedParagraphImageInfo *)v29 setRect:*(v49 + 4), *(v49 + 5), *(v49 + 6), *(v49 + 7)];
  paragraph = [v17 paragraph];
  todo = [paragraph todo];
  uuid = [todo uuid];
  uUIDString = [uuid UUIDString];
  [(ICTrackedParagraphImageInfo *)v29 setUuid:uUIDString];

  [(ICTrackedParagraphImageInfo *)v29 setEstimated:v21 == 0];
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v54, 8);

  return v29;
}

@end