@interface PXZoomablePhotosViewModel
- ($49CB12D5354CCF22210FF066E175BE67)pinchState;
- ($C4B70A1B11CB87E7174F2B82042BF1A7)zoomState;
- (BOOL)allowDenseLevels;
- (BOOL)hasContentToZoom;
- (BOOL)isResetToInitialState;
- (NSString)description;
- (PXGDisplayAssetPixelBufferSourcesProvider)inlinePlaybackController;
- (PXPhotosPreferredAssetCropDelegate)preferredAssetCropDelegate;
- (PXPhotosPreferredColumnCountsDelegate)preferredColumnCountsDelegate;
- (PXSelectionSnapshot)selectionSnapshot;
- (PXSimpleIndexPath)sectionIndexPath;
- (PXZoomablePhotosUserDefaults)userDefaults;
- (PXZoomablePhotosViewModel)init;
- (PXZoomablePhotosViewModel)initWithDataSourceManager:(id)a3 selectionManager:(id)a4 mediaProvider:(id)a5 specManager:(id)a6 loadingStatusManager:(id)a7 badgesModifier:(id)a8 preferredAssetCropDelegate:(id)a9 preferredColumnCountsDelegate:(id)a10 inlinePlaybackController:(id)a11 sectionIndex:(int64_t)a12 headersEnabled:(BOOL)a13;
- (PXZoomablePhotosViewModelGeometryDelegate)geometryDelegate;
- (_NSRange)denseColumnsIndexRange;
- (double)_columnIndexForItemWidth:(double)a3;
- (double)_columnWidthForDesiredColumnIndex:(double)a3;
- (int64_t)_clampColumnIndexToValidIndex:(int64_t)a3;
- (int64_t)_closestColumnIndexForAnimatedValue:(double)a3;
- (int64_t)_closestColumnIndexForColumnWidth:(double)a3;
- (int64_t)_maxColumnsForIndividualItems;
- (int64_t)_nextColumnIndexForInitialColumnWidth:(double)a3 currentColumnWidth:(double)a4 velocity:(double)a5;
- (int64_t)bestColumnIndexForPreferredNumberOfColumns:(int64_t)a3;
- (int64_t)defaultColumnIndex;
- (int64_t)denseZoomLevelForZoomState:(id *)a3;
- (void)_handleSpecChange;
- (void)_invalidateAllowedColumns;
- (void)_invalidateMiniModeAnimator;
- (void)_invalidatePinchVelocity;
- (void)_invalidateShouldHideSurroundingContent;
- (void)_invalidateZoomState;
- (void)_updateAllowedColumns;
- (void)_updateAlphaAnimator;
- (void)_updateInlineHeadersDataSourceManager;
- (void)_updateIsDisplayingIndividualItems;
- (void)_updateMiniModeAnimator;
- (void)_updatePinchVelocity;
- (void)_updateShouldHideSurroundingContent;
- (void)_updateZoomState;
- (void)dealloc;
- (void)didPerformChanges;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performChanges:(id)a3;
- (void)performInitialChanges:(id)a3;
- (void)resetColumns;
- (void)resetToInitialState;
- (void)saveCurrentZoomLevelAsUserPreferredIfPossible;
- (void)setAllowedColumns:(id)a3;
- (void)setAllowsCaptionsInSquare:(BOOL)a3;
- (void)setAlwaysShowTopBadges:(BOOL)a3;
- (void)setAspectFit:(BOOL)a3;
- (void)setCaptionsVisible:(BOOL)a3;
- (void)setDraggedAssetReferences:(id)a3;
- (void)setDropTargetAssetReference:(id)a3;
- (void)setEffectProvider:(id)a3;
- (void)setEnableCornerRadiusMaskingWhenAlignedWithEdge:(BOOL)a3;
- (void)setEnablePinchEffect:(BOOL)a3;
- (void)setFaceModeEnabled:(BOOL)a3;
- (void)setHasInlineHeadersContent:(BOOL)a3;
- (void)setHidesDurationLabelBadge:(BOOL)a3;
- (void)setInteractiveZoomColumnIndex:(double)a3 withAnchorAssetReference:(id)a4;
- (void)setIsDisplayingIndividualItems:(BOOL)a3;
- (void)setIsInSelectMode:(BOOL)a3;
- (void)setIsInteractiveZooming:(BOOL)a3;
- (void)setIsInteractiveZoomingAllowed:(BOOL)a3;
- (void)setIsPinching:(BOOL)a3;
- (void)setLayoutExtendsContentBelowBounds:(BOOL)a3;
- (void)setLowMemoryMode:(BOOL)a3;
- (void)setMiniModeAnchorAssetReference:(id)a3;
- (void)setPinchState:(id *)a3 withAnchorAssetReference:(id)a4;
- (void)setSectionIndexPath:(PXSimpleIndexPath *)a3;
- (void)setShouldHideSurroundingContent:(BOOL)a3;
- (void)setShowSensitiveWarningBadges:(BOOL)a3;
- (void)setUseLowMemoryDecode:(BOOL)a3;
- (void)setViewBasedDecorationsEnabled:(BOOL)a3;
- (void)setViewMode:(unint64_t)a3;
- (void)setViewModeInteractionProgress:(double)a3;
- (void)setWantsDimmedSelectionStyle:(BOOL)a3;
- (void)setWantsFileSizeBadge:(BOOL)a3;
- (void)setWantsNumberedSelectionStyle:(BOOL)a3;
- (void)setWantsOverBackgroundFloatingHeaderAppearance:(BOOL)a3;
- (void)setZoomState:(id *)a3;
- (void)zoomInToIndividualItemsWithAnchorAssetReference:(id)a3 animated:(BOOL)a4;
- (void)zoomInToLastRememberedWithAnchorAssetReference:(id)a3 animated:(BOOL)a4;
- (void)zoomToColumnIndex:(int64_t)a3 withAnchorAssetReference:(id)a4 animated:(BOOL)a5;
@end

@implementation PXZoomablePhotosViewModel

- (void)_invalidateAllowedColumns
{
  v2 = [(PXZoomablePhotosViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateAllowedColumns];
}

- (void)_invalidateZoomState
{
  v2 = [(PXZoomablePhotosViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateZoomState];
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXZoomablePhotosViewModel;
  [(PXZoomablePhotosViewModel *)&v4 didPerformChanges];
  v3 = [(PXZoomablePhotosViewModel *)self updater];
  [v3 updateIfNeeded];
}

- (void)_updateAllowedColumns
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = [(PXZoomablePhotosViewModel *)self specManager];
  v33 = [v2 extendedTraitCollection];

  v3 = [(PXZoomablePhotosViewModel *)self preferredColumnCountsDelegate];
  v32 = [v3 preferredColumnCounts:v33];

  v4 = v32;
  if (v32)
  {
    [(PXZoomablePhotosViewModel *)self setAllowedColumns:v32];
  }

  else
  {
    v5 = [(PXZoomablePhotosViewModel *)self specManager];
    v37 = [v5 spec];

    v31 = [v37 supportedColumns];
    v36 = [v37 minimumAssetsRequiredByColumn];
    [v33 layoutReferenceSize];
    v6 = [(PXZoomablePhotosViewModel *)self assetsDataSourceManager];
    v29 = [v6 dataSource];

    if ([v29 numberOfSections] < 1 || (v7 = objc_msgSend(v29, "numberOfSections"), -[PXZoomablePhotosViewModel sectionIndexPath](self, "sectionIndexPath"), v7 <= v54))
    {
      v8 = 0;
    }

    else
    {
      [(PXZoomablePhotosViewModel *)self sectionIndexPath];
      v8 = [v29 numberOfItemsInSection:v53];
    }

    v9 = [(PXZoomablePhotosViewModel *)self allowDenseLevels];
    v35 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v31, "count")}];
    if (PXSizeIsEmpty())
    {
      [v35 addObjectsFromArray:v31];
    }

    else
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v10 = v31;
      v11 = [v10 countByEnumeratingWithState:&v49 objects:v56 count:16];
      if (v11)
      {
        v12 = 0;
        v13 = *v50;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v50 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v49 + 1) + 8 * i);
            v16 = [v15 integerValue];
            v17 = v16 <= [v37 maxColumnsForIndividualItems] || v9;
            if (v17 == 1)
            {
              v18 = [v36 objectAtIndexedSubscript:v12];
              v19 = [v18 integerValue];

              if (v8 >= v19)
              {
                [v35 addObject:v15];
              }
            }

            ++v12;
          }

          v11 = [v10 countByEnumeratingWithState:&v49 objects:v56 count:16];
        }

        while (v11);
      }
    }

    if (![v35 count])
    {
      v20 = [v31 firstObject];
      [v35 addObject:v20];
    }

    v21 = [(PXZoomablePhotosViewModel *)self allowedColumns];

    if (v21)
    {
      v22 = [(PXZoomablePhotosViewModel *)self allowedColumns];
      [(PXZoomablePhotosViewModel *)self zoomState];
      v23 = [v22 objectAtIndexedSubscript:v48];

      v24 = [v23 integerValue];
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v25 = v35;
      v26 = [v25 countByEnumeratingWithState:&v44 objects:v55 count:16];
      if (v26)
      {
        v27 = *v45;
        while (2)
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v45 != v27)
            {
              objc_enumerationMutation(v25);
            }

            if ([*(*(&v44 + 1) + 8 * j) isEqualToNumber:v23])
            {
              LOBYTE(v26) = 1;
              goto LABEL_36;
            }
          }

          v26 = [v25 countByEnumeratingWithState:&v44 objects:v55 count:16];
          if (v26)
          {
            continue;
          }

          break;
        }
      }

LABEL_36:

      v42[0] = 0;
      v42[1] = v42;
      v42[2] = 0x2020000000;
      v43 = 1065353216;
      v41[0] = 0;
      v41[1] = v41;
      v41[2] = 0x2020000000;
      v41[3] = 0;
      v40[0] = 0;
      v40[1] = v40;
      v40[2] = 0x2020000000;
      *&v40[3] = 1.0 / v24;
      if ((v26 & 1) == 0)
      {
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __50__PXZoomablePhotosViewModel__updateAllowedColumns__block_invoke;
        v39[3] = &unk_2782986D8;
        v39[4] = v40;
        v39[5] = v42;
        v39[6] = v41;
        [v25 enumerateObjectsUsingBlock:v39];
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __50__PXZoomablePhotosViewModel__updateAllowedColumns__block_invoke_2;
        v38[3] = &unk_278298700;
        v38[4] = v41;
        [(PXZoomablePhotosViewModel *)self performChanges:v38];
      }

      _Block_object_dispose(v40, 8);
      _Block_object_dispose(v41, 8);
      _Block_object_dispose(v42, 8);
    }

    [(PXZoomablePhotosViewModel *)self setAllowedColumns:v35];

    v4 = 0;
  }
}

- (PXPhotosPreferredColumnCountsDelegate)preferredColumnCountsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_preferredColumnCountsDelegate);

  return WeakRetained;
}

- (PXSimpleIndexPath)sectionIndexPath
{
  v3 = *&self[13].subitem;
  *&retstr->dataSourceIdentifier = *&self[13].section;
  *&retstr->item = v3;
  return self;
}

- (BOOL)allowDenseLevels
{
  if (![(PXZoomablePhotosViewModel *)self isInSelectMode])
  {
    return 1;
  }

  v2 = +[PXZoomablePhotosSettings sharedInstance];
  v3 = [v2 enableDenseLevelsInSelectMode];

  return v3;
}

- (void)_updateAlphaAnimator
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v3 = [(PXZoomablePhotosViewModel *)self aspectFit];
  v4 = 0;
  if (v3)
  {
    v4 = [(PXZoomablePhotosViewModel *)self _maxColumnsForIndividualItems];
  }

  v7[3] = v4;
  alphaAnimator = self->_alphaAnimator;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__PXZoomablePhotosViewModel__updateAlphaAnimator__block_invoke;
  v6[3] = &unk_278298728;
  v6[4] = v7;
  [(PXZoomablePhotosAlphaAnimator *)alphaAnimator performChanges:v6];
  _Block_object_dispose(v7, 8);
}

- ($49CB12D5354CCF22210FF066E175BE67)pinchState
{
  var2 = self[6].var2;
  *&retstr->var2.y = *&self[6].var0.y;
  *&retstr->var4 = var2;
  *&retstr->var6 = *&self[6].var3;
  v4 = *&self[5].var7;
  retstr->var0 = *&self[5].var5;
  *&retstr->var1 = v4;
  return self;
}

void __45__PXZoomablePhotosViewModel__updateZoomState__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setAllowedColumns:v2];
  [v3 setAutoFadeAmount:0.0];
}

- (int64_t)_maxColumnsForIndividualItems
{
  v2 = [(PXZoomablePhotosViewModel *)self specManager];
  v3 = [v2 spec];
  v4 = [v3 maxColumnsForIndividualItems];

  return v4;
}

- (void)_updateZoomState
{
  v182 = *MEMORY[0x277D85DE8];
  isUpdatingZoomState = self->_isUpdatingZoomState;
  self->_isUpdatingZoomState = 1;
  v135 = +[PXZoomablePhotosSettings sharedInstance];
  v165 = 0;
  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  [(PXZoomablePhotosViewModel *)self zoomState];
  v131 = 0;
  v136 = self->_columnWidthAnimator;
  v134 = self->_alphaAnimator;
  v3 = [(PXZoomablePhotosViewModel *)self allowedColumns];
  v133 = [(PXZoomablePhotosViewModel *)self allowedColumnWidths];
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  if (self->_pendingZoomColumnIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(PXZoomablePhotosViewModel *)self _clampColumnIndexToValidIndex:?];
    self->_pendingZoomColumnIndex = 0x7FFFFFFFFFFFFFFFLL;
    v131 = 1;
  }

  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  v154 = 0u;
  [(PXZoomablePhotosViewModel *)self pinchState];
  normalizedColumnWidthWhenPinchStarted = self->_normalizedColumnWidthWhenPinchStarted;
  v6 = *(&v161 + 1);
  if (*(&v161 + 1) >= [v3 count])
  {
    v6 = [v3 count] - 1;
  }

  v7 = [(PXZoomablePhotosAlphaAnimator *)v134 allowedColumns];
  v8 = v7;
  if (v7 != v3)
  {
    v9 = [v7 isEqual:v3];

    if (v9)
    {
      goto LABEL_9;
    }

    v152[0] = MEMORY[0x277D85DD0];
    v152[1] = 3221225472;
    v152[2] = __45__PXZoomablePhotosViewModel__updateZoomState__block_invoke;
    v152[3] = &unk_278298750;
    v153 = v3;
    [(PXZoomablePhotosAlphaAnimator *)v134 performChangesWithAnimation:0 changeBlock:v152];
    v8 = v153;
  }

LABEL_9:
  v10 = v161;
  v11 = [v3 objectAtIndexedSubscript:v6];
  LOBYTE(v10) = v10 == [v11 integerValue];

  if ((v10 & 1) == 0)
  {
    v149[0] = MEMORY[0x277D85DD0];
    v149[1] = 3221225472;
    v149[2] = __45__PXZoomablePhotosViewModel__updateZoomState__block_invoke_2;
    v149[3] = &unk_278298778;
    v150 = v133;
    v151 = v6;
    [(PXNumberAnimator *)v136 performChangesWithoutAnimation:v149];
    v148[0] = MEMORY[0x277D85DD0];
    v148[1] = 3221225472;
    v148[2] = __45__PXZoomablePhotosViewModel__updateZoomState__block_invoke_3;
    v148[3] = &__block_descriptor_40_e34_v16__0___PXMutableAlphaAnimator__8l;
    v148[4] = v6;
    [(PXZoomablePhotosAlphaAnimator *)v134 performChangesWithAnimation:0 changeBlock:v148];
  }

  v12 = [(PXZoomablePhotosViewModel *)self isPinching];
  v13 = [(PXZoomablePhotosViewModel *)self isInteractiveZooming];
  if ((v12 || v13 || self->_animatePendingZoom) && (!-[PXZoomablePhotosViewModel hasContentToZoom](self, "hasContentToZoom") || [v3 count] <= 1))
  {
    if (![(PXZoomablePhotosViewModel *)self hasContentToZoom])
    {
      v17 = PXAssertGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        animatePendingZoom = self->_animatePendingZoom;
        LODWORD(buf) = 67109632;
        DWORD1(buf) = v12;
        WORD4(buf) = 1024;
        *(&buf + 10) = v13;
        HIWORD(buf) = 1024;
        LODWORD(v167) = animatePendingZoom;
        _os_log_fault_impl(&dword_21ABF3000, v17, OS_LOG_TYPE_FAULT, "Has no content to zoom, but pinching:%d interactiveZooming:%d animatePendingZoom:%d", &buf, 0x14u);
      }
    }

    self->_animatePendingZoom = 0;
    if (!self->_wasInteractiveZooming)
    {
      LOBYTE(v132) = 0;
      v18 = normalizedColumnWidthWhenPinchStarted * *&v157;
      goto LABEL_46;
    }

    LOBYTE(v132) = 0;
    v15 = 0;
    v12 = 0;
    v16 = 0;
    goto LABEL_26;
  }

  v132 = v12 || v13;
  if (v13)
  {
    v15 = 1;
    v16 = 1;
    goto LABEL_26;
  }

  if (self->_wasInteractiveZooming)
  {
    v16 = 0;
    v15 = v12 || v13;
LABEL_26:
    [(PXZoomablePhotosViewModel *)self interactiveZoomColumnIndex];
    [(PXZoomablePhotosViewModel *)self _columnWidthForDesiredColumnIndex:?];
    v18 = v19;
    if (v15)
    {
      v20 = *(&v154 + 1);
      v21 = *&v154;
      v22 = 0.5;
      if (v12)
      {
        v14 = *(&v154 + 1);
      }

      else
      {
        v14 = 0.5;
      }

      if (v12)
      {
        v22 = *&v154;
      }

      if (v16 && !self->_wasInteractiveZooming)
      {
        *&v128 = v22;
        *(&v128 + 1) = v14;
        [v135 zoomSpringStiffness];
        v31 = v30;
        [v135 zoomSpringStiffness];
        v147[0] = MEMORY[0x277D85DD0];
        v147[1] = 3221225472;
        v147[2] = __45__PXZoomablePhotosViewModel__updateZoomState__block_invoke_55;
        v147[3] = &__block_descriptor_40_e35_v16__0___PXMutableNumberAnimator__8l;
        *&v147[4] = v18;
        [(PXNumberAnimator *)v136 performChangesUsingSpringAnimationWithStiffness:v147 dampingRatio:v31 initialVelocity:v32 changes:0.0];
        LOBYTE(v16) = 1;
LABEL_44:
        self->_wasPinching = v12;
        self->_wasInteractiveZooming = v16;
        v129 = 1;
LABEL_57:
        v127 = 1;
        v54 = 1;
        goto LABEL_58;
      }

      if (v12)
      {
        goto LABEL_35;
      }

      goto LABEL_39;
    }

    goto LABEL_46;
  }

  v22 = *&v157;
  v18 = normalizedColumnWidthWhenPinchStarted * *&v157;
  if (v132)
  {
    LOBYTE(v16) = 0;
    LOBYTE(v132) = 1;
    if (v12)
    {
      v20 = *(&v154 + 1);
      v21 = *&v154;
LABEL_35:
      [v135 pinchSmoothingDuration];
      v24 = v23;
      LOBYTE(v12) = 1;
LABEL_40:
      v26 = log10(fabs(v18) * 1000.0 + 1.0);
      PXFloatSign();
      v28 = v27;
      [(PXNumberAnimator *)v136 value];
      v29 = v26 * v28;
      if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
      {
        v146[0] = MEMORY[0x277D85DD0];
        v146[1] = 3221225472;
        v146[2] = __45__PXZoomablePhotosViewModel__updateZoomState__block_invoke_2_57;
        v146[3] = &__block_descriptor_40_e35_v16__0___PXMutableNumberAnimator__8l;
        *&v146[4] = v29;
        [(PXNumberAnimator *)v136 performChangesWithDuration:1 curve:v146 changes:v24];
      }

      *&v128 = v21;
      *(&v128 + 1) = v20;
      goto LABEL_44;
    }

LABEL_39:
    [v135 sliderSmoothingDuration];
    v24 = v25;
    LOBYTE(v12) = 0;
    v20 = 0.5;
    v21 = 0.5;
    goto LABEL_40;
  }

  LOBYTE(v132) = 0;
LABEL_46:
  if (self->_wasPinching)
  {
    pinchLogVelocity = self->_pinchLogVelocity;
    p_wasInteractiveZooming = &self->_wasInteractiveZooming;
    v128 = *MEMORY[0x277CBF348];
    if (!self->_wasInteractiveZooming)
    {
      log10(fabs(v18) * 1000.0 + 1.0);
      PXFloatSign();
      [v135 zoomDecelerationRate];
      PXProjectValueWithDecelerationRate();
      v36 = v35;
      v37 = [(PXZoomablePhotosViewModel *)self _closestColumnIndexForColumnWidth:self->_normalizedColumnWidthWhenPinchStarted];
      v38 = [(PXZoomablePhotosViewModel *)self _closestColumnIndexForAnimatedValue:fmax(v36, 0.00001)];
      if (v38 != v37)
      {
LABEL_56:
        v45 = [v3 objectAtIndexedSubscript:v38];
        [v45 doubleValue];
        v47 = v46;

        v48 = log10(fabs(1.0 / v47) * 1000.0 + 1.0);
        PXFloatSign();
        v50 = v49;
        [v135 zoomSpringStiffness];
        v52 = v51;
        [v135 zoomSpringDamping];
        v145[0] = MEMORY[0x277D85DD0];
        v145[1] = 3221225472;
        v145[2] = __45__PXZoomablePhotosViewModel__updateZoomState__block_invoke_3_58;
        v145[3] = &__block_descriptor_40_e35_v16__0___PXMutableNumberAnimator__8l;
        *&v145[4] = v50 * v48;
        [(PXNumberAnimator *)v136 performChangesUsingSpringAnimationWithStiffness:v145 dampingRatio:v52 initialVelocity:v53 changes:pinchLogVelocity];
        v129 = 0;
        *p_wasInteractiveZooming = 0;
        self->_wasPinching = 0;
        goto LABEL_57;
      }

      v39 = [(PXZoomablePhotosViewModel *)self _nextColumnIndexForInitialColumnWidth:v38 currentColumnWidth:self->_normalizedColumnWidthWhenPinchStarted velocity:v18, *(&v157 + 1)];
LABEL_55:
      v38 = v39;
      goto LABEL_56;
    }

LABEL_52:
    [(PXZoomablePhotosAlphaAnimator *)self->_alphaAnimator columnIndex];
    v41 = v40;
    [(PXZoomablePhotosAlphaAnimator *)self->_alphaAnimator presentationColumnIndex];
    v43 = round(v42);
    if (round(v41) == v43)
    {
      [(PXZoomablePhotosViewModel *)self interactiveZoomColumnIndex];
      v43 = round(v44);
    }

    v39 = [(PXZoomablePhotosViewModel *)self _clampColumnIndexToValidIndex:v43];
    goto LABEL_55;
  }

  p_wasInteractiveZooming = &self->_wasInteractiveZooming;
  if (self->_wasInteractiveZooming)
  {
    v128 = *MEMORY[0x277CBF348];
    pinchLogVelocity = 0.0;
    goto LABEL_52;
  }

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v127 = BYTE9(v162);
    v128 = *MEMORY[0x277CBF348];
    v129 = 0;
    v54 = 0;
  }

  else
  {
    v117 = [v3 objectAtIndexedSubscript:{v4, *(MEMORY[0x277CBF348] + 8), *MEMORY[0x277CBF348]}];
    [v117 doubleValue];
    v119 = v118;

    v120 = 1.0 / v119;
    if (self->_animatePendingZoom)
    {
      [v135 zoomSpringStiffness];
      v122 = v121;
      [v135 zoomSpringDamping];
      v144[0] = MEMORY[0x277D85DD0];
      v144[1] = 3221225472;
      v144[2] = __45__PXZoomablePhotosViewModel__updateZoomState__block_invoke_4;
      v144[3] = &__block_descriptor_40_e35_v16__0___PXMutableNumberAnimator__8l;
      *&v144[4] = v120;
      [(PXNumberAnimator *)v136 performChangesUsingSpringAnimationWithStiffness:v144 dampingRatio:v122 initialVelocity:v123 changes:0.0];
    }

    else
    {
      v143[0] = MEMORY[0x277D85DD0];
      v143[1] = 3221225472;
      v143[2] = __45__PXZoomablePhotosViewModel__updateZoomState__block_invoke_5;
      v143[3] = &__block_descriptor_40_e35_v16__0___PXMutableNumberAnimator__8l;
      *&v143[4] = 1.0 / v119;
      [(PXNumberAnimator *)v136 performChangesWithoutAnimation:v143];
    }

    v129 = 0;
    v127 = 0;
    v54 = 0;
    *&v128 = 0.5;
    *(&v128 + 1) = 0.5;
  }

LABEL_58:
  self->_animatePendingZoom = 0;
  [(PXNumberAnimator *)v136 value];
  v56 = __exp10(fabs(v55));
  PXFloatSign();
  v58 = v57;
  [(PXNumberAnimator *)v136 presentationValue];
  v60 = __exp10(fabs(v59));
  PXFloatSign();
  v62 = v61;
  v63 = v58 * ((v56 + -1.0) / 1000.0);
  v64 = [(PXZoomablePhotosViewModel *)self _closestColumnIndexForColumnWidth:v63];
  v65 = [v3 objectAtIndexedSubscript:v64];
  v125 = [v65 integerValue];

  [(PXNumberAnimator *)v136 presentationValue];
  v66 = [v133 firstObject];
  [v66 doubleValue];
  v68 = v67;

  v69 = [v133 lastObject];
  [v69 doubleValue];
  v71 = v70;

  log10(fabs(v68) * 1000.0 + 1.0);
  PXFloatSign();
  [v135 zoomInRubberBanding];
  PXSoftClamp();
  log10(fabs(v71) * 1000.0 + 1.0);
  PXFloatSign();
  PXFloatSign();
  [v135 zoomOutRubberBanding];
  PXSoftClamp();
  v73 = __exp10(fabs(v72));
  PXFloatSign();
  v75 = v74;
  [(PXZoomablePhotosViewModel *)self _columnIndexForItemWidth:v62 * ((v60 + -1.0) / 1000.0) + (v63 - v62 * ((v60 + -1.0) / 1000.0)) * 0.0001];
  v77 = v76;
  [(PXZoomablePhotosViewModel *)self _columnIndexForItemWidth:v63];
  v79 = v78;
  if (v54)
  {
    v80 = 1;
  }

  else
  {
    v80 = [(PXNumberAnimator *)v136 isAnimating];
  }

  v141[0] = MEMORY[0x277D85DD0];
  v141[1] = 3221225472;
  v141[2] = __45__PXZoomablePhotosViewModel__updateZoomState__block_invoke_6;
  v141[3] = &__block_descriptor_49_e34_v16__0___PXMutableAlphaAnimator__8l;
  v141[4] = v77;
  v141[5] = v79;
  v142 = v132;
  [(PXZoomablePhotosAlphaAnimator *)v134 performChangesWithAnimation:v80 changeBlock:v141, v125];
  v81 = v75 * ((v73 + -1.0) / 1000.0);
  [(PXZoomablePhotosViewModel *)self _columnIndexForItemWidth:v81];
  v83 = v82;
  if ([v135 enableAutoCrossfade])
  {
    [(PXZoomablePhotosAlphaAnimator *)self->_alphaAnimator presentationColumnIndex];
  }

  v84 = [v3 count];
  v85 = vcvtmd_s64_f64(v83);
  if (v84 - 1 < v85)
  {
    v85 = v84 - 1;
  }

  v86 = vcvtpd_s64_f64(v83);
  v87 = v85 & ~(v85 >> 63);
  if (v84 - 1 >= v86)
  {
    v88 = v86;
  }

  else
  {
    v88 = v84 - 1;
  }

  PXClamp();
  v90 = v89;
  v91 = v88 & ~(v88 >> 63);
  v92 = 1.0;
  if ([(PXZoomablePhotosViewModel *)self hasInlineHeadersContent])
  {
    v93 = [v3 objectAtIndexedSubscript:v87];
    v94 = [v93 integerValue];

    v95 = [v3 objectAtIndexedSubscript:v91];
    v96 = [v95 integerValue];

    v97 = [(PXZoomablePhotosViewModel *)self specManager];
    v98 = [v97 spec];
    v99 = [v98 maxColumnsForStickyHeaderDisplay];

    if (v96 > v99)
    {
      if (v94 <= v99)
      {
        v92 = 1.0 - v90;
      }

      else
      {
        v92 = 0.0;
      }
    }
  }

  if ((v129 & 1) != 0 || [(PXNumberAnimator *)v136 isAnimating])
  {
    v100 = [(PXZoomablePhotosViewModel *)self assetsDataSourceManager];
LABEL_76:
    if (!self->_pauseToken)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      *&v167 = 0x3032000000;
      v168 = __Block_byref_object_copy__6312;
      v169 = __Block_byref_object_dispose__6313;
      v170 = 0;
      v140[0] = MEMORY[0x277D85DD0];
      v140[1] = 3221225472;
      v140[2] = __45__PXZoomablePhotosViewModel__updateZoomState__block_invoke_60;
      v140[3] = &unk_2782987E0;
      v140[4] = &buf;
      [v100 performChanges:v140];
      objc_storeStrong(&self->_pauseToken, *(*(&buf + 1) + 40));
      _Block_object_dispose(&buf, 8);
    }

    v101 = 1;
    goto LABEL_79;
  }

  v111 = [(PXZoomablePhotosAlphaAnimator *)v134 isAnimating];
  v100 = [(PXZoomablePhotosViewModel *)self assetsDataSourceManager];
  if (v111)
  {
    goto LABEL_76;
  }

  pauseToken = self->_pauseToken;
  if (pauseToken)
  {
    v113 = pauseToken;
    v114 = self->_pauseToken;
    self->_pauseToken = 0;

    v115 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__PXZoomablePhotosViewModel__updateZoomState__block_invoke_2_64;
    block[3] = &unk_278298598;
    v100 = v100;
    v138 = v100;
    v139 = v113;
    v116 = v113;
    dispatch_after(v115, MEMORY[0x277D85CD0], block);
  }

  v101 = 0;
LABEL_79:
  v102 = v81 / (1.0 / v126);
  v103 = (COERCE__INT64(fabs(v102)) - 0x10000000000000) >> 53;
  if ((*&v102 <= -1 || v103 >= 0x3FF) && (*&v102 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v106 = PXAssertGetLog();
    if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v81 / (1.0 / v126);
      _os_log_error_impl(&dword_21ABF3000, v106, OS_LOG_TYPE_ERROR, "Invalid scale:%.3f", &buf, 0xCu);
    }
  }

  [(PXNumberAnimator *)v136 approximateVelocity];
  v108 = v107;
  v109 = [v3 objectAtIndexedSubscript:v64];
  v110 = [v109 integerValue];

  buf = v128;
  v167 = v81 / (1.0 / v126);
  v168 = v108;
  v169 = v110;
  v170 = v64;
  v171 = v81;
  v172 = v101;
  v173 = v127 & 1;
  v174 = v132;
  v175 = v131;
  v176 = 0;
  v177 = v87;
  v178 = v91;
  v179 = v83 - v87;
  v180 = v90;
  v181 = v92;
  [(PXZoomablePhotosViewModel *)self setZoomState:&buf];
  self->_isUpdatingZoomState = isUpdatingZoomState;
}

- ($C4B70A1B11CB87E7174F2B82042BF1A7)zoomState
{
  v3 = *&self[5].var14;
  *&retstr->var10 = *&self[5].var12;
  *&retstr->var12 = v3;
  retstr->var14 = self[6].var0.y;
  v4 = *&self[5].var3;
  retstr->var0 = *&self[5].var1;
  *&retstr->var1 = v4;
  v5 = *&self[5].var10;
  *&retstr->var3 = *&self[5].var5;
  *&retstr->var5 = v5;
  return self;
}

void __45__PXZoomablePhotosViewModel__updateZoomState__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v8 = [v2 objectAtIndexedSubscript:v3];
  [v8 doubleValue];
  v6 = log10(fabs(v5) * 1000.0 + 1.0);
  PXFloatSign();
  [v4 setValue:v7 * v6];
}

void __45__PXZoomablePhotosViewModel__updateZoomState__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setColumnIndex:v3];
  [v4 setTargetColumnIndex:*(a1 + 32)];
  [v4 setAutoFadeAmount:0.0];
}

void __45__PXZoomablePhotosViewModel__updateZoomState__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 setColumnIndex:v3];
  [v5 setTargetColumnIndex:*(a1 + 40)];
  v4 = 0.0;
  if (*(a1 + 48))
  {
    v4 = 1.0;
  }

  [v5 setAutoFadeAmount:v4];
}

- (void)_updateIsDisplayingIndividualItems
{
  columns = self->_zoomState.columns;
  v4 = columns <= [(PXZoomablePhotosViewModel *)self _maxColumnsForIndividualItems];

  [(PXZoomablePhotosViewModel *)self setIsDisplayingIndividualItems:v4];
}

- (void)_invalidateShouldHideSurroundingContent
{
  v2 = [(PXZoomablePhotosViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateShouldHideSurroundingContent];
}

- (void)_updateShouldHideSurroundingContent
{
  [(PXZoomablePhotosViewModel *)self shouldHideSurroundingContent];
  [(PXZoomablePhotosViewModel *)self zoomState:0];
  [(PXZoomablePhotosViewModel *)self setShouldHideSurroundingContent:0];
}

- (void)_updateInlineHeadersDataSourceManager
{
  [(PXSectionedDataSourceManager *)self->_inlineHeadersDataSourceManager unregisterChangeObserver:self context:PXZoomablePhotosViewModelInlineHeadersDataSourceManagerObserverContext];
  if ([PXZoomableInlineHeadersDataSourceManager supportsAssetsDataSourceManager:self->_assetsDataSourceManager]&& self->_headersEnabled)
  {
    v3 = [PXZoomableInlineHeadersDataSourceManager alloc];
    assetsDataSourceManager = self->_assetsDataSourceManager;
    v5 = *&self->_sectionIndexPath.item;
    v9[0] = *&self->_sectionIndexPath.dataSourceIdentifier;
    v9[1] = v5;
    v6 = [(PXZoomableInlineHeadersDataSourceManager *)v3 initWithAssetsDataSourceManager:assetsDataSourceManager indexPath:v9];
    inlineHeadersDataSourceManager = self->_inlineHeadersDataSourceManager;
    self->_inlineHeadersDataSourceManager = v6;

    [(PXSectionedDataSourceManager *)self->_inlineHeadersDataSourceManager registerChangeObserver:self context:PXZoomablePhotosViewModelInlineHeadersDataSourceManagerObserverContext];
  }

  else
  {
    v8 = self->_inlineHeadersDataSourceManager;
    self->_inlineHeadersDataSourceManager = 0;
  }
}

- (void)resetColumns
{
  v3 = [(PXZoomablePhotosViewModel *)self userDefaults];
  v4 = [v3 preferredIndividualItemsColumnsNumber];
  v5 = [v4 integerValue];

  if (!v5)
  {
    v6 = [(PXZoomablePhotosViewModel *)self specManager];
    v7 = [v6 spec];
    v5 = [v7 initialNumberOfColumns];
  }

  v8 = [(PXZoomablePhotosViewModel *)self bestColumnIndexForPreferredNumberOfColumns:v5];

  [(PXZoomablePhotosViewModel *)self zoomToColumnIndex:v8 withAnchorAssetReference:0 animated:0];
}

- (PXZoomablePhotosUserDefaults)userDefaults
{
  v2 = [(PXZoomablePhotosViewModel *)self specManager];
  v3 = [v2 userDefaults];

  return v3;
}

void __45__PXZoomablePhotosViewModel__updateZoomState__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = log10(fabs(*(a1 + 32)) * 1000.0 + 1.0);
  v5 = a2;
  PXFloatSign();
  [v5 setValue:v4 * v3];
}

- (void)_handleSpecChange
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __46__PXZoomablePhotosViewModel__handleSpecChange__block_invoke;
  v2[3] = &unk_278298548;
  v2[4] = self;
  [(PXZoomablePhotosViewModel *)self performChanges:v2];
}

uint64_t __46__PXZoomablePhotosViewModel__handleSpecChange__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateAlphaAnimator];
  [*(a1 + 32) _invalidateAllowedColumns];
  v2 = *(a1 + 32);

  return [v2 _updateIsDisplayingIndividualItems];
}

- (PXGDisplayAssetPixelBufferSourcesProvider)inlinePlaybackController
{
  WeakRetained = objc_loadWeakRetained(&self->_inlinePlaybackController);

  return WeakRetained;
}

- (void)saveCurrentZoomLevelAsUserPreferredIfPossible
{
  [(PXZoomablePhotosViewModel *)self zoomState];
  v3 = v8;
  v4 = [(PXZoomablePhotosViewModel *)self specManager];
  v5 = [v4 spec];

  if (v3 >= 2 && v3 <= [v5 maxColumnsForIndividualItems] && (objc_msgSend(v5, "userInterfaceIdiom") != 1 || objc_msgSend(v5, "layoutOrientation") != 2))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:v3];
    v7 = [(PXZoomablePhotosViewModel *)self userDefaults];
    [v7 setPreferredIndividualItemsColumnsNumber:v6];
  }
}

- (PXSelectionSnapshot)selectionSnapshot
{
  v2 = [(PXZoomablePhotosViewModel *)self selectionManager];
  v3 = [v2 selectionSnapshot];

  return v3;
}

- (PXZoomablePhotosViewModelGeometryDelegate)geometryDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_geometryDelegate);

  return WeakRetained;
}

- (_NSRange)denseColumnsIndexRange
{
  p_denseColumnsIndexRange = &self->_denseColumnsIndexRange;
  location = self->_denseColumnsIndexRange.location;
  length = p_denseColumnsIndexRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (PXPhotosPreferredAssetCropDelegate)preferredAssetCropDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_preferredAssetCropDelegate);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  v10 = v9;
  if (PXZoomablePhotosViewModelSpecManagerObserverContext != a5)
  {
    if (PXZoomablePhotosViewModelNumberAnimatorObserverContext != a5)
    {
      if (PXZoomablePhotosViewModelAlphaAnimatorObserverContext != a5)
      {
        if (PXZoomablePhotosViewModelDataSourceManagerObserverContext == a5)
        {
          if ((v6 & 1) == 0)
          {
            goto LABEL_30;
          }

          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __58__PXZoomablePhotosViewModel_observable_didChange_context___block_invoke_3;
          v27[3] = &unk_278298548;
          v27[4] = self;
          v14 = v27;
        }

        else
        {
          if (PXZoomablePhotosViewModelSelectionObserverContext != a5)
          {
            if (PXZoomablePhotosViewModelInlineHeadersDataSourceManagerObserverContext != a5)
            {
              v25 = [MEMORY[0x277CCA890] currentHandler];
              [v25 handleFailureInMethod:a2 object:self file:@"PXZoomablePhotosViewModel.m" lineNumber:1256 description:@"Code which should be unreachable has been reached"];

              abort();
            }

            if (v6)
            {
              v11 = [(PXZoomableInlineHeadersDataSourceManager *)self->_inlineHeadersDataSourceManager yearsDataSource];
              -[PXZoomablePhotosViewModel setHasInlineHeadersContent:](self, "setHasInlineHeadersContent:", [v11 numberOfSections] > 0);
            }

            goto LABEL_30;
          }

          if ((v6 & 1) == 0)
          {
            goto LABEL_30;
          }

          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __58__PXZoomablePhotosViewModel_observable_didChange_context___block_invoke_4;
          v26[3] = &unk_278298548;
          v26[4] = self;
          v14 = v26;
        }

        [(PXZoomablePhotosViewModel *)self performChanges:v14];
        goto LABEL_30;
      }

      if ((v6 & 6) == 0)
      {
        goto LABEL_30;
      }

      v12 = v9;
      if (v12)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_20;
        }

        v20 = [MEMORY[0x277CCA890] currentHandler];
        v23 = objc_opt_class();
        v22 = NSStringFromClass(v23);
        v24 = [v12 px_descriptionForAssertionMessage];
        [v20 handleFailureInMethod:a2 object:self file:@"PXZoomablePhotosViewModel.m" lineNumber:1231 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"observable", v22, v24}];
      }

      else
      {
        v20 = [MEMORY[0x277CCA890] currentHandler];
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        [v20 handleFailureInMethod:a2 object:self file:@"PXZoomablePhotosViewModel.m" lineNumber:1231 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"observable", v22}];
      }

LABEL_20:
      if (self->_isUpdatingZoomState || ([v12 isBeingMutated] & 1) != 0)
      {
        goto LABEL_24;
      }

      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __58__PXZoomablePhotosViewModel_observable_didChange_context___block_invoke_2;
      v28[3] = &unk_278298548;
      v28[4] = self;
      v13 = v28;
LABEL_23:
      [(PXZoomablePhotosViewModel *)self performChanges:v13];
LABEL_24:

      goto LABEL_30;
    }

    if ((v6 & 6) == 0)
    {
      goto LABEL_30;
    }

    v12 = v9;
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_14;
      }

      v15 = [MEMORY[0x277CCA890] currentHandler];
      v18 = objc_opt_class();
      v17 = NSStringFromClass(v18);
      v19 = [v12 px_descriptionForAssertionMessage];
      [v15 handleFailureInMethod:a2 object:self file:@"PXZoomablePhotosViewModel.m" lineNumber:1222 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"observable", v17, v19}];
    }

    else
    {
      v15 = [MEMORY[0x277CCA890] currentHandler];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      [v15 handleFailureInMethod:a2 object:self file:@"PXZoomablePhotosViewModel.m" lineNumber:1222 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"observable", v17}];
    }

LABEL_14:
    if (self->_isUpdatingZoomState || ([v12 isBeingMutated] & 1) != 0)
    {
      goto LABEL_24;
    }

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __58__PXZoomablePhotosViewModel_observable_didChange_context___block_invoke;
    v29[3] = &unk_278298548;
    v29[4] = self;
    v13 = v29;
    goto LABEL_23;
  }

  if (v6)
  {
    [(PXZoomablePhotosViewModel *)self _handleSpecChange];
  }

LABEL_30:
}

- (void)_updateMiniModeAnimator
{
  v3 = [(PXZoomablePhotosViewModel *)self miniModeAnimator];
  isPerformingInitialChanges = self->_isPerformingInitialChanges;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__PXZoomablePhotosViewModel__updateMiniModeAnimator__block_invoke;
  v5[3] = &unk_278298808;
  v5[4] = self;
  [v3 performAnimated:!isPerformingInitialChanges changes:v5];
}

void __52__PXZoomablePhotosViewModel__updateMiniModeAnimator__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 viewMode];
  if ((v4 - 1) >= 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  [v6 setTargetState:v5];
  [*(a1 + 32) viewModeInteractionProgress];
  [v6 setInteractionProgress:?];
}

- (void)_invalidateMiniModeAnimator
{
  v2 = [(PXZoomablePhotosViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateMiniModeAnimator];
}

void __45__PXZoomablePhotosViewModel__updateZoomState__block_invoke_55(uint64_t a1, void *a2)
{
  v3 = log10(fabs(*(a1 + 32)) * 1000.0 + 1.0);
  v5 = a2;
  PXFloatSign();
  [v5 setValue:v4 * v3];
}

void __45__PXZoomablePhotosViewModel__updateZoomState__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = log10(fabs(*(a1 + 32)) * 1000.0 + 1.0);
  v5 = a2;
  PXFloatSign();
  [v5 setValue:v4 * v3];
}

uint64_t __45__PXZoomablePhotosViewModel__updateZoomState__block_invoke_60(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [a2 pauseChangeDeliveryWithTimeout:@"PXZoomablePhotosViewModel" identifier:180.0];

  return MEMORY[0x2821F96F8]();
}

void __45__PXZoomablePhotosViewModel__updateZoomState__block_invoke_2_64(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __45__PXZoomablePhotosViewModel__updateZoomState__block_invoke_3_65;
  v2[3] = &unk_278298570;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 performChanges:v2];
}

- (void)_updatePinchVelocity
{
  if ([(PXZoomablePhotosViewModel *)self isPinching])
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v4 = v3;
    v5 = v3 - self->_pinchLastDate;
    v6 = v5 >= 0.0 ? v5 : -v5;
    if (v6 > 0.003)
    {
      v7 = log10(fabs(self->_pinchState.scale * self->_normalizedColumnWidthWhenPinchStarted) * 1000.0 + 1.0);
      PXFloatSign();
      v9 = v8 * v7;
      if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
      {
        if (self->_pinchLastDate == 0.0)
        {
          self->_pinchLogValue = v9;
          pinchLogValue = v9;
        }

        else
        {
          pinchLogValue = self->_pinchLogValue;
        }

        self->_pinchLogVelocity = self->_pinchLogVelocity * 0.5 + (v9 - pinchLogValue) / v6 * 0.5;
        self->_pinchLastDate = v4;
        self->_pinchLogValue = v9;
      }
    }
  }
}

- (void)_invalidatePinchVelocity
{
  v2 = [(PXZoomablePhotosViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updatePinchVelocity];
}

uint64_t __50__PXZoomablePhotosViewModel__updateAllowedColumns__block_invoke(void *a1, void *a2, uint64_t a3)
{
  result = [a2 integerValue];
  v6 = 1.0 / result - *(*(a1[4] + 8) + 24);
  v7 = fabsf(v6);
  v8 = *(a1[5] + 8);
  if (*(v8 + 24) > v7)
  {
    *(v8 + 24) = v7;
    *(*(a1[6] + 8) + 24) = a3;
  }

  return result;
}

- (void)resetToInitialState
{
  [(PXZoomablePhotosViewModel *)self zoomInToIndividualItemsWithAnchorAssetReference:0 animated:0];
  v3 = [(PXZoomablePhotosViewModel *)self geometryDelegate];
  [v3 zoomablePhotosViewModelResetToInitialState:self];
}

- (BOOL)isResetToInitialState
{
  if ([(PXZoomablePhotosViewModel *)self isDisplayingIndividualItems])
  {
    [(PXZoomablePhotosViewModel *)self zoomState];
    v3 = v8 == [(PXZoomablePhotosViewModel *)self defaultColumnIndex];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(PXZoomablePhotosViewModel *)self geometryDelegate];
  v5 = v4;
  v6 = v4 == 0 && v3;
  if (v4 && v3)
  {
    v6 = [v4 zoomablePhotosViewModelIsResetToInitialState:self];
  }

  return v6;
}

- (void)setEnableCornerRadiusMaskingWhenAlignedWithEdge:(BOOL)a3
{
  if (self->_enableCornerRadiusMaskingWhenAlignedWithEdge != a3)
  {
    self->_enableCornerRadiusMaskingWhenAlignedWithEdge = a3;
    [(PXZoomablePhotosViewModel *)self signalChange:0x20000000];
  }
}

- (void)setSectionIndexPath:(PXSimpleIndexPath *)a3
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*&self->_sectionIndexPath.dataSourceIdentifier, *&a3->dataSourceIdentifier), vceqq_s64(*&self->_sectionIndexPath.item, *&a3->item)))) & 1) == 0)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v4 = *&a3->item;
    v6 = *&a3->dataSourceIdentifier;
    v7 = v4;
    v5[2] = __49__PXZoomablePhotosViewModel_setSectionIndexPath___block_invoke;
    v5[3] = &unk_2782986B0;
    v5[4] = self;
    [(PXZoomablePhotosViewModel *)self performChanges:v5];
    [(PXZoomablePhotosViewModel *)self signalChange:0x8000000];
  }
}

uint64_t __49__PXZoomablePhotosViewModel_setSectionIndexPath___block_invoke(uint64_t a1)
{
  v2 = (*(a1 + 32) + 424);
  v3 = *(a1 + 56);
  *v2 = *(a1 + 40);
  v2[1] = v3;
  [*(a1 + 32) _invalidateAllowedColumns];
  v4 = *(a1 + 32);

  return [v4 _invalidateInlineHeadersDataSourceManager];
}

- (void)setUseLowMemoryDecode:(BOOL)a3
{
  if (self->_useLowMemoryDecode != a3)
  {
    self->_useLowMemoryDecode = a3;
    [(PXZoomablePhotosViewModel *)self signalChange:0x100000];
  }
}

- (void)setFaceModeEnabled:(BOOL)a3
{
  if (self->_faceModeEnabled != a3)
  {
    self->_faceModeEnabled = a3;
    [(PXZoomablePhotosViewModel *)self signalChange:0x80000];
  }
}

- (void)setShowSensitiveWarningBadges:(BOOL)a3
{
  if (self->_showSensitiveWarningBadges != a3)
  {
    self->_showSensitiveWarningBadges = a3;
    [(PXZoomablePhotosViewModel *)self signalChange:0x4000000];
  }
}

- (void)setAlwaysShowTopBadges:(BOOL)a3
{
  if (self->_alwaysShowTopBadges != a3)
  {
    self->_alwaysShowTopBadges = a3;
    [(PXZoomablePhotosViewModel *)self signalChange:0x40000];
  }
}

- (void)setEffectProvider:(id)a3
{
  aBlock = a3;
  v4 = _Block_copy(self->_effectProvider);
  v5 = _Block_copy(aBlock);
  v6 = v5;
  if (v4 == v5)
  {
  }

  else
  {
    v7 = [v4 isEqual:v5];

    if ((v7 & 1) == 0)
    {
      v8 = _Block_copy(aBlock);
      effectProvider = self->_effectProvider;
      self->_effectProvider = v8;

      [(PXZoomablePhotosViewModel *)self signalChange:0x10000];
    }
  }
}

- (void)setHasInlineHeadersContent:(BOOL)a3
{
  if (self->_hasInlineHeadersContent != a3)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __56__PXZoomablePhotosViewModel_setHasInlineHeadersContent___block_invoke;
    v5[3] = &unk_278298688;
    v5[4] = self;
    v6 = a3;
    [(PXZoomablePhotosViewModel *)self performChanges:v5];
  }
}

- (void)setShouldHideSurroundingContent:(BOOL)a3
{
  if (self->_shouldHideSurroundingContent != a3)
  {
    self->_shouldHideSurroundingContent = a3;
    [(PXZoomablePhotosViewModel *)self signalChange:0x4000];
  }
}

- (void)setLayoutExtendsContentBelowBounds:(BOOL)a3
{
  if (self->_layoutExtendsContentBelowBounds != a3)
  {
    self->_layoutExtendsContentBelowBounds = a3;
    [(PXZoomablePhotosViewModel *)self _invalidateShouldHideSurroundingContent];
  }
}

- (void)setWantsOverBackgroundFloatingHeaderAppearance:(BOOL)a3
{
  if (self->_wantsOverBackgroundFloatingHeaderAppearance != a3)
  {
    self->_wantsOverBackgroundFloatingHeaderAppearance = a3;
    [(PXZoomablePhotosViewModel *)self signalChange:4096];
  }
}

- (void)setInteractiveZoomColumnIndex:(double)a3 withAnchorAssetReference:(id)a4
{
  v7 = a4;
  if (self->_interactiveZoomColumnIndex != a3 || self->_anchorAssetReference != v7)
  {
    self->_interactiveZoomColumnIndex = a3;
    v8 = v7;
    objc_storeStrong(&self->_anchorAssetReference, a4);
    [(PXZoomablePhotosViewModel *)self _invalidateZoomState];
    v7 = v8;
  }
}

- (void)setIsInteractiveZoomingAllowed:(BOOL)a3
{
  if (self->_isInteractiveZoomingAllowed != a3)
  {
    self->_isInteractiveZoomingAllowed = a3;
    [(PXZoomablePhotosViewModel *)self signalChange:0x1000000];
  }
}

- (void)setIsInteractiveZooming:(BOOL)a3
{
  if (self->_isInteractiveZooming != a3)
  {
    self->_isInteractiveZooming = a3;
    [(PXZoomablePhotosViewModel *)self _invalidateZoomState];
  }
}

- (void)setWantsFileSizeBadge:(BOOL)a3
{
  if (self->_wantsFileSizeBadge != a3)
  {
    self->_wantsFileSizeBadge = a3;
    [(PXZoomablePhotosViewModel *)self signalChange:0x10000];
  }
}

- (void)setWantsNumberedSelectionStyle:(BOOL)a3
{
  if (self->_wantsNumberedSelectionStyle != a3)
  {
    self->_wantsNumberedSelectionStyle = a3;
    [(PXZoomablePhotosViewModel *)self signalChange:0x8000];
  }
}

- (void)setWantsDimmedSelectionStyle:(BOOL)a3
{
  if (self->_wantsDimmedSelectionStyle != a3)
  {
    self->_wantsDimmedSelectionStyle = a3;
    [(PXZoomablePhotosViewModel *)self signalChange:0x2000];
  }
}

- (void)setAllowsCaptionsInSquare:(BOOL)a3
{
  if (self->_allowsCaptionsInSquare != a3)
  {
    self->_allowsCaptionsInSquare = a3;
    [(PXZoomablePhotosViewModel *)self signalChange:0x20000];
  }
}

- (void)setCaptionsVisible:(BOOL)a3
{
  if (self->_captionsVisible != a3)
  {
    self->_captionsVisible = a3;
    [(PXZoomablePhotosViewModel *)self signalChange:16];
  }
}

- (void)setAspectFit:(BOOL)a3
{
  if (self->_aspectFit != a3)
  {
    self->_aspectFit = a3;
    [(PXZoomablePhotosViewModel *)self _invalidateAlphaAnimator];

    [(PXZoomablePhotosViewModel *)self signalChange:2];
  }
}

- (void)setZoomState:(id *)a3
{
  v5 = *&a3->var1;
  v4 = *&a3->var3;
  self->_zoomState.normalizedScaleCenter = a3->var0;
  *&self->_zoomState.scale = v5;
  *&self->_zoomState.columns = v4;
  v7 = *&a3->var10;
  v6 = *&a3->var12;
  v8 = *&a3->var5;
  self->_zoomState.stickyHeaderOpacity = a3->var14;
  *&self->_zoomState.fromColumnIndex = v7;
  *&self->_zoomState.interactiveProgress = v6;
  *&self->_zoomState.normalizedColumnWidth = v8;
  [(PXZoomablePhotosViewModel *)self _updateIsDisplayingIndividualItems];
  [(PXZoomablePhotosViewModel *)self _invalidateShouldHideSurroundingContent];

  [(PXZoomablePhotosViewModel *)self signalChange:1];
}

- (void)setAllowedColumns:(id)a3
{
  v5 = a3;
  v6 = self->_allowedColumns;
  v7 = v6;
  if (v6 == v5)
  {
    goto LABEL_4;
  }

  v8 = [(NSArray *)v6 isEqual:v5];

  if ((v8 & 1) == 0)
  {
    objc_storeStrong(&self->_allowedColumns, a3);
    v9 = [(PXZoomablePhotosViewModel *)self _maxColumnsForIndividualItems];
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = 0;
    v16 = &v15;
    v17 = 0x3010000000;
    v18 = &unk_21AC883FE;
    v19 = xmmword_21AC7D580;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __47__PXZoomablePhotosViewModel_setAllowedColumns___block_invoke;
    v11[3] = &unk_278298660;
    v13 = &v15;
    v14 = v9;
    v7 = v10;
    v12 = v7;
    [(NSArray *)v5 enumerateObjectsUsingBlock:v11];
    self->_denseColumnsIndexRange = v16[2];
    objc_storeStrong(&self->_allowedColumnWidths, v10);
    [(PXZoomablePhotosViewModel *)self _invalidateZoomState];
    [(PXZoomablePhotosViewModel *)self signalChange:4];

    _Block_object_dispose(&v15, 8);
LABEL_4:
  }
}

void __47__PXZoomablePhotosViewModel_setAllowedColumns___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = [a2 integerValue];
  if (v5 > a1[6])
  {
    v6 = *(a1[5] + 8);
    v8 = *(v6 + 32);
    v7 = *(v6 + 40);
    if (v7)
    {
      v9 = v8 == 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      *(v6 + 32) = a3;
      v10 = 1;
    }

    else
    {
      if (v7 + v8 != a3)
      {
        goto LABEL_11;
      }

      v10 = v7 + 1;
    }

    *(v6 + 40) = v10;
  }

LABEL_11:
  v11 = a1[4];
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:1.0 / v5];
  [v11 addObject:v12];
}

- (double)_columnIndexForItemWidth:(double)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0x7FFFFFFFFFFFFFFFLL;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = [(PXZoomablePhotosViewModel *)self allowedColumnWidths];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__PXZoomablePhotosViewModel__columnIndexForItemWidth___block_invoke;
  v12[3] = &unk_278298638;
  *&v12[6] = a3;
  v12[4] = &v17;
  v12[5] = &v13;
  [v4 enumerateObjectsUsingBlock:v12];
  v5 = v14[3];
  v6 = v18[3];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14[3] = v6;
    v7 = 0.0;
  }

  else if (v6 == v5)
  {
    v7 = 0.0;
    v6 = v14[3];
  }

  else
  {
    v8 = [v4 objectAtIndexedSubscript:?];
    [v8 doubleValue];

    v9 = [v4 objectAtIndexedSubscript:v14[3]];
    [v9 doubleValue];

    PXClamp();
    PXClamp();
    v6 = v18[3];
  }

  v10 = v7 + v6;

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  return v10;
}

uint64_t __54__PXZoomablePhotosViewModel__columnIndexForItemWidth___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 doubleValue];
  v7 = *(*(a1 + 32) + 8);
  if (*(v7 + 24) == 0x7FFFFFFFFFFFFFFFLL || v6 >= *(a1 + 48))
  {
    *(v7 + 24) = a3;
  }

  v8 = *(*(a1 + 40) + 8);
  if (*(v8 + 24) == 0x7FFFFFFFFFFFFFFFLL && v6 <= *(a1 + 48))
  {
    *(v8 + 24) = a3;
  }

  return result;
}

- (double)_columnWidthForDesiredColumnIndex:(double)a3
{
  v5 = [(PXZoomablePhotosViewModel *)self allowedColumns];
  v6 = [v5 count] - 1;

  v7 = vcvtmd_s64_f64(a3);
  if (v6 < v7)
  {
    v7 = v6;
  }

  v8 = v7 & ~(v7 >> 63);
  v9 = vcvtpd_s64_f64(a3);
  if (v6 < v9)
  {
    v9 = v6;
  }

  v10 = v9 & ~(v9 >> 63);
  PXFloatProgressBetween();
  PXClamp();
  v11 = [(PXZoomablePhotosViewModel *)self allowedColumnWidths];
  v12 = [v11 objectAtIndexedSubscript:v8];
  [v12 doubleValue];

  v13 = [(PXZoomablePhotosViewModel *)self allowedColumnWidths];
  v14 = [v13 objectAtIndexedSubscript:v10];
  [v14 doubleValue];

  PXFloatByLinearlyInterpolatingFloats();
  return result;
}

- (int64_t)_closestColumnIndexForColumnWidth:(double)a3
{
  v6 = [(PXZoomablePhotosViewModel *)self allowedColumns];
  v7 = [(PXZoomablePhotosViewModel *)self allowedColumnWidths];
  v8 = [v6 lastObject];
  v9 = [v8 integerValue];

  if (![(PXZoomablePhotosViewModel *)self allowDenseLevels])
  {
    v10 = [(PXZoomablePhotosViewModel *)self _maxColumnsForIndividualItems];
    if (v9 >= v10)
    {
      v9 = v10;
    }
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0x7FFFFFFFFFFFFFFFLL;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0x7FEFFFFFFFFFFFFFLL;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__PXZoomablePhotosViewModel__closestColumnIndexForColumnWidth___block_invoke;
  v17[3] = &unk_278298610;
  v11 = v6;
  v22 = a3;
  v18 = v11;
  v19 = v23;
  v20 = &v24;
  v21 = v9;
  [v7 enumerateObjectsUsingBlock:v17];
  v12 = v25[3];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXZoomablePhotosViewModel.m" lineNumber:481 description:@"Unable to find number of columns"];

    v12 = v25[3];
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_9;
    }
  }

  else if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_9:
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXZoomablePhotosViewModel.m" lineNumber:482 description:@"Invalid column index"];

    goto LABEL_7;
  }

  if (v12 >= [v11 count])
  {
    goto LABEL_9;
  }

LABEL_7:
  v13 = v25[3];

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(&v24, 8);

  return v13;
}

void __63__PXZoomablePhotosViewModel__closestColumnIndexForColumnWidth___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v6 = [v5 integerValue];

  if (v6 <= *(a1 + 56))
  {
    [v10 doubleValue];
    v8 = vabdd_f64(v7, *(a1 + 64));
    v9 = *(*(a1 + 40) + 8);
    if (v8 < *(v9 + 24))
    {
      *(v9 + 24) = v8;
      *(*(*(a1 + 48) + 8) + 24) = a3;
    }
  }
}

- (int64_t)_closestColumnIndexForAnimatedValue:(double)a3
{
  v6 = [(PXZoomablePhotosViewModel *)self allowedColumns];
  v7 = [(PXZoomablePhotosViewModel *)self allowedColumnWidths];
  v8 = [v6 lastObject];
  v9 = [v8 integerValue];

  if (![(PXZoomablePhotosViewModel *)self allowDenseLevels])
  {
    v10 = [(PXZoomablePhotosViewModel *)self _maxColumnsForIndividualItems];
    if (v9 >= v10)
    {
      v9 = v10;
    }
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0x7FFFFFFFFFFFFFFFLL;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0x7FEFFFFFFFFFFFFFLL;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __65__PXZoomablePhotosViewModel__closestColumnIndexForAnimatedValue___block_invoke;
  v17[3] = &unk_278298610;
  v11 = v6;
  v22 = a3;
  v18 = v11;
  v19 = v23;
  v20 = &v24;
  v21 = v9;
  [v7 enumerateObjectsUsingBlock:v17];
  v12 = v25[3];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXZoomablePhotosViewModel.m" lineNumber:457 description:@"Unable to find number of columns"];

    v12 = v25[3];
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_9;
    }
  }

  else if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_9:
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXZoomablePhotosViewModel.m" lineNumber:458 description:@"Invalid column index"];

    goto LABEL_7;
  }

  if (v12 >= [v11 count])
  {
    goto LABEL_9;
  }

LABEL_7:
  v13 = v25[3];

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(&v24, 8);

  return v13;
}

void __65__PXZoomablePhotosViewModel__closestColumnIndexForAnimatedValue___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v6 = [v5 integerValue];

  if (v6 <= *(a1 + 56))
  {
    [v12 doubleValue];
    v8 = log10(fabs(v7) * 1000.0 + 1.0);
    PXFloatSign();
    v10 = vabdd_f64(v9 * v8, *(a1 + 64));
    v11 = *(*(a1 + 40) + 8);
    if (v10 < *(v11 + 24))
    {
      *(v11 + 24) = v10;
      *(*(*(a1 + 48) + 8) + 24) = a3;
    }
  }
}

- (int64_t)_nextColumnIndexForInitialColumnWidth:(double)a3 currentColumnWidth:(double)a4 velocity:(double)a5
{
  v8 = [(PXZoomablePhotosViewModel *)self _closestColumnIndexForColumnWidth:?];
  PXFloatSign();
  v10 = v9;
  PXFloatSign();
  if (v10 == v11 || fabs(a4 / a3 + -1.0) > 0.1 && v10 == 0.0)
  {
    v8 = llround(v8 - v11);
  }

  return [(PXZoomablePhotosViewModel *)self _clampColumnIndexToValidIndex:v8];
}

- (int64_t)_clampColumnIndexToValidIndex:(int64_t)a3
{
  v3 = a3 & ~(a3 >> 63);
  v4 = [(PXZoomablePhotosViewModel *)self allowedColumns];
  v5 = [v4 count] - 1;

  if (v3 >= v5)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

- (int64_t)defaultColumnIndex
{
  v3 = [(PXZoomablePhotosViewModel *)self userDefaults];
  v4 = [v3 preferredIndividualItemsColumnsNumber];
  v5 = [v4 integerValue];

  if (!v5)
  {
    v6 = [(PXZoomablePhotosViewModel *)self specManager];
    v7 = [v6 spec];
    v5 = [v7 defaultNumberOfColumns];
  }

  return [(PXZoomablePhotosViewModel *)self bestColumnIndexForPreferredNumberOfColumns:v5];
}

- (int64_t)bestColumnIndexForPreferredNumberOfColumns:(int64_t)a3
{
  v5 = [(PXZoomablePhotosViewModel *)self allowedColumns];
  v6 = [(PXZoomablePhotosViewModel *)self specManager];
  v7 = [v6 spec];

  v8 = [v7 bestColumnIndexForPreferredNumberOfColumns:a3 allowedColumns:v5];
  return v8;
}

- (void)zoomInToIndividualItemsWithAnchorAssetReference:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (![(PXZoomablePhotosViewModel *)self isDisplayingIndividualItems])
  {
    v7 = [(PXZoomablePhotosViewModel *)self defaultColumnIndex];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = PXAssertGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_error_impl(&dword_21ABF3000, v8, OS_LOG_TYPE_ERROR, "Unable to find a valid nextColumnIndex when zooming to individual items", v9, 2u);
      }
    }

    else
    {
      [(PXZoomablePhotosViewModel *)self zoomToColumnIndex:v7 withAnchorAssetReference:v6 animated:v4];
    }
  }
}

- (void)zoomInToLastRememberedWithAnchorAssetReference:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(PXZoomablePhotosViewModel *)self zoomState];
  v7 = [(PXZoomablePhotosViewModel *)self _clampColumnIndexToValidIndex:v21 - 1];
  if (v21 != v7)
  {
    v8 = v7;
    v9 = +[PXZoomablePhotosSettings sharedInstance];
    v10 = [v9 tapsZoomsToLastIndividualDensity];

    if (v10)
    {
      v11 = [(PXZoomablePhotosViewModel *)self allowedColumns];
      v12 = [v11 objectAtIndexedSubscript:v21];
      v13 = [v12 integerValue];

      v14 = [(PXZoomablePhotosViewModel *)self allowedColumns];
      v15 = [v14 objectAtIndexedSubscript:v8];
      v16 = [v15 integerValue];

      v17 = [(PXZoomablePhotosViewModel *)self _maxColumnsForIndividualItems];
      if (v13 > v17 && v16 <= v17)
      {
        v18 = [(PXZoomablePhotosViewModel *)self userDefaults];
        v19 = [v18 preferredIndividualItemsColumnsNumber];
        v20 = [v19 integerValue];

        if (v20)
        {
          v8 = [(PXZoomablePhotosViewModel *)self bestColumnIndexForPreferredNumberOfColumns:v20];
        }
      }
    }

    [(PXZoomablePhotosViewModel *)self zoomToColumnIndex:v8 withAnchorAssetReference:v6 animated:v4];
  }
}

- (void)zoomToColumnIndex:(int64_t)a3 withAnchorAssetReference:(id)a4 animated:(BOOL)a5
{
  v9 = a4;
  if (![(PXZoomablePhotosViewModel *)self isPinching]&& ![(PXZoomablePhotosViewModel *)self isInteractiveZooming])
  {
    self->_pendingZoomColumnIndex = [(PXZoomablePhotosViewModel *)self _clampColumnIndexToValidIndex:a3];
    objc_storeStrong(&self->_anchorAssetReference, a4);
    self->_animatePendingZoom = a5;
    [(PXZoomablePhotosViewModel *)self _invalidateZoomState];
  }
}

- (int64_t)denseZoomLevelForZoomState:(id *)a3
{
  v5 = [(PXZoomablePhotosViewModel *)self _maxColumnsForIndividualItems];
  if (a3->var3 <= v5)
  {
    return 0;
  }

  v6 = v5;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = [(PXZoomablePhotosViewModel *)self allowedColumns];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__PXZoomablePhotosViewModel_denseZoomLevelForZoomState___block_invoke;
  v10[3] = &unk_2782985E8;
  v10[4] = &v11;
  v10[5] = v6;
  [v7 enumerateObjectsUsingBlock:v10];

  v8 = a3->var4 - v12[3];
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t __56__PXZoomablePhotosViewModel_denseZoomLevelForZoomState___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  result = [a2 integerValue];
  if (result <= *(a1 + 40))
  {
    v8 = *(*(a1 + 32) + 8);
    if (*(v8 + 24) < a3)
    {
      *(v8 + 24) = a3;
    }
  }

  else
  {
    *a4 = 1;
  }

  return result;
}

- (void)setIsDisplayingIndividualItems:(BOOL)a3
{
  if (self->_isDisplayingIndividualItems != a3)
  {
    self->_isDisplayingIndividualItems = a3;
    [(PXZoomablePhotosViewModel *)self signalChange:0x2000000];
  }
}

- (void)setMiniModeAnchorAssetReference:(id)a3
{
  v4 = a3;
  miniModeAnchorAssetReference = self->_miniModeAnchorAssetReference;
  if (miniModeAnchorAssetReference != v4)
  {
    v8 = v4;
    miniModeAnchorAssetReference = [miniModeAnchorAssetReference isEqual:v4];
    v4 = v8;
    if ((miniModeAnchorAssetReference & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_miniModeAnchorAssetReference;
      self->_miniModeAnchorAssetReference = v6;

      miniModeAnchorAssetReference = [(PXZoomablePhotosViewModel *)self signalChange:0x800000];
      v4 = v8;
    }
  }

  MEMORY[0x2821F96F8](miniModeAnchorAssetReference, v4);
}

- (void)setViewModeInteractionProgress:(double)a3
{
  if (self->_viewModeInteractionProgress != a3)
  {
    self->_viewModeInteractionProgress = a3;
    [(PXZoomablePhotosViewModel *)self signalChange:0x400000];

    [(PXZoomablePhotosViewModel *)self _invalidateMiniModeAnimator];
  }
}

- (void)setViewMode:(unint64_t)a3
{
  if (self->_viewMode != a3)
  {
    self->_viewMode = a3;
    [(PXZoomablePhotosViewModel *)self signalChange:0x200000];

    [(PXZoomablePhotosViewModel *)self _invalidateMiniModeAnimator];
  }
}

- (void)setPinchState:(id *)a3 withAnchorAssetReference:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = v7;
  p_pinchState = &self->_pinchState;
  var4 = a3->var4;
  v11 = self->_pinchState.normalizedPosition.x == a3->var2.x && self->_pinchState.normalizedPosition.y == a3->var2.y;
  if (!v11 || (p_pinchState->normalizedInitialPosition.x == a3->var0.x ? (v12 = self->_pinchState.normalizedInitialPosition.y == a3->var0.y) : (v12 = 0), v12 ? (v13 = self->_pinchState.scale == var4) : (v13 = 0), v13 ? (v14 = self->_pinchState.initialScale == a3->var3) : (v14 = 0), v14 ? (v15 = self->_pinchState.scaleVelocity == a3->var5) : (v15 = 0), v15 ? (v16 = self->_pinchState.events == a3->var6) : (v16 = 0), v16 ? (v17 = self->_pinchState.lastEventTime == a3->var7) : (v17 = 0), !v17 || self->_anchorAssetReference != v7))
  {
    if ((*&var4 <= -1 || ((*&var4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&var4 - 1) >= 0xFFFFFFFFFFFFFLL)
    {
      v20 = PXAssertGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v26 = a3->var4;
        v28 = 134217984;
        v29 = v26;
        _os_log_error_impl(&dword_21ABF3000, v20, OS_LOG_TYPE_ERROR, "Invalid scale:%.3f", &v28, 0xCu);
      }
    }

    if ((*&a3->var5 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v21 = PXAssertGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        var5 = a3->var5;
        v28 = 134217984;
        v29 = var5;
        _os_log_error_impl(&dword_21ABF3000, v21, OS_LOG_TYPE_ERROR, "Invalid scaleVelocity:%.3f", &v28, 0xCu);
      }
    }

    p_pinchState->normalizedInitialPosition = a3->var0;
    v22 = *&a3->var1;
    v23 = *&a3->var2.y;
    v24 = *&a3->var6;
    *&self->_pinchState.scale = *&a3->var4;
    *&self->_pinchState.events = v24;
    *&self->_pinchState.normalizedInitialPinchDistance = v22;
    *&self->_pinchState.normalizedPosition.y = v23;
    objc_storeStrong(&self->_anchorAssetReference, a4);
    v25 = self;
    if (kdebug_is_enabled())
    {
      kdebug_trace();
    }

    [(PXZoomablePhotosViewModel *)v25 _invalidatePinchVelocity];
    [(PXZoomablePhotosViewModel *)v25 _invalidateZoomState];
    [(PXZoomablePhotosViewModel *)v25 signalChange:256];
  }
}

- (void)setEnablePinchEffect:(BOOL)a3
{
  if (self->_enablePinchEffect != a3)
  {
    self->_enablePinchEffect = a3;
    [(PXZoomablePhotosViewModel *)self signalChange:0x10000000];
  }
}

- (void)setIsPinching:(BOOL)a3
{
  if (self->_isPinching != a3)
  {
    v8 = v3;
    self->_isPinching = a3;
    if (a3)
    {
      self->_normalizedColumnWidthWhenPinchStarted = self->_zoomState.normalizedColumnWidth;
      self->_pinchLastDate = 0.0;
      self->_pinchLogValue = 0.0;
      self->_pinchLogVelocity = 0.0;
    }

    [(PXZoomablePhotosViewModel *)self _invalidatePinchVelocity:v4];
    [(PXZoomablePhotosViewModel *)self _invalidateZoomState];

    [(PXZoomablePhotosViewModel *)self signalChange:128];
  }
}

- (void)setIsInSelectMode:(BOOL)a3
{
  if (self->_isInSelectMode != a3)
  {
    self->_isInSelectMode = a3;
    [(PXZoomablePhotosViewModel *)self signalChange:32];
    [(PXZoomablePhotosViewModel *)self _invalidateAllowedColumns];

    [(PXZoomablePhotosViewModel *)self _invalidateZoomState];
  }
}

- (void)setDropTargetAssetReference:(id)a3
{
  v8 = a3;
  v5 = self->_dropTargetAssetReference;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PXAssetReference *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_dropTargetAssetReference, a3);
      [(PXZoomablePhotosViewModel *)self signalChange:2048];
    }
  }
}

- (void)setDraggedAssetReferences:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_draggedAssetReferences != v4)
  {
    v8 = v4;
    v4 = [v4 isEqual:?];
    v5 = v8;
    if ((v4 & 1) == 0)
    {
      v6 = [v8 copy];
      draggedAssetReferences = self->_draggedAssetReferences;
      self->_draggedAssetReferences = v6;

      v4 = [(PXZoomablePhotosViewModel *)self signalChange:1024];
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)setHidesDurationLabelBadge:(BOOL)a3
{
  if (self->_hidesDurationLabelBadge != a3)
  {
    self->_hidesDurationLabelBadge = a3;
    [(PXZoomablePhotosViewModel *)self signalChange:512];
  }
}

- (void)setViewBasedDecorationsEnabled:(BOOL)a3
{
  if (self->_viewBasedDecorationsEnabled != a3)
  {
    self->_viewBasedDecorationsEnabled = a3;
    [(PXZoomablePhotosViewModel *)self signalChange:512];
  }
}

- (void)setLowMemoryMode:(BOOL)a3
{
  if (self->_lowMemoryMode != a3)
  {
    self->_lowMemoryMode = a3;
  }
}

- (BOOL)hasContentToZoom
{
  v2 = [(PXZoomablePhotosViewModel *)self assetsDataSourceManager];
  v3 = [v2 dataSource];
  v4 = [v3 containsAnyItems];

  return v4;
}

- (void)performInitialChanges:(id)a3
{
  v4 = a3;
  isPerformingInitialChanges = self->_isPerformingInitialChanges;
  self->_isPerformingInitialChanges = 1;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__PXZoomablePhotosViewModel_performInitialChanges___block_invoke;
  v7[3] = &unk_2782985C0;
  v8 = v4;
  v6 = v4;
  [(PXZoomablePhotosViewModel *)self performChanges:v7];
  self->_isPerformingInitialChanges = isPerformingInitialChanges;
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXZoomablePhotosViewModel;
  [(PXZoomablePhotosViewModel *)&v3 performChanges:a3];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p>", v5, self];;

  return v6;
}

- (void)dealloc
{
  v3 = self->_pauseToken;
  if (v3)
  {
    v4 = self->_assetsDataSourceManager;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__PXZoomablePhotosViewModel_dealloc__block_invoke;
    block[3] = &unk_278298598;
    v8 = v4;
    v9 = v3;
    v5 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v6.receiver = self;
  v6.super_class = PXZoomablePhotosViewModel;
  [(PXZoomablePhotosViewModel *)&v6 dealloc];
}

void __36__PXZoomablePhotosViewModel_dealloc__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __36__PXZoomablePhotosViewModel_dealloc__block_invoke_2;
  v2[3] = &unk_278298570;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 performChanges:v2];
}

- (PXZoomablePhotosViewModel)initWithDataSourceManager:(id)a3 selectionManager:(id)a4 mediaProvider:(id)a5 specManager:(id)a6 loadingStatusManager:(id)a7 badgesModifier:(id)a8 preferredAssetCropDelegate:(id)a9 preferredColumnCountsDelegate:(id)a10 inlinePlaybackController:(id)a11 sectionIndex:(int64_t)a12 headersEnabled:(BOOL)a13
{
  v48 = a3;
  v46 = a4;
  v45 = a5;
  v43 = a6;
  v47 = a6;
  v44 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v51.receiver = self;
  v51.super_class = PXZoomablePhotosViewModel;
  v24 = [(PXZoomablePhotosViewModel *)&v51 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_assetsDataSourceManager, a3);
    objc_storeStrong(&v25->_selectionManager, a4);
    objc_storeStrong(&v25->_mediaProvider, a5);
    objc_storeWeak(&v25->_preferredAssetCropDelegate, v21);
    objc_storeWeak(&v25->_preferredColumnCountsDelegate, v22);
    objc_storeWeak(&v25->_inlinePlaybackController, v23);
    v26 = [(PXAssetsDataSourceManager *)v25->_assetsDataSourceManager dataSource];
    v25->_sectionIndexPath.dataSourceIdentifier = [v26 identifier];
    v25->_sectionIndexPath.section = a12;
    v27.f64[0] = NAN;
    v27.f64[1] = NAN;
    *&v25->_sectionIndexPath.item = vnegq_f64(v27);

    v25->_headersEnabled = a13;
    v25->_enablePinchEffect = 1;
    v28 = [objc_alloc(MEMORY[0x277D3CE28]) initWithTarget:v25];
    updater = v25->_updater;
    v25->_updater = v28;

    [(PXUpdater *)v25->_updater setNeedsUpdateSelector:sel__setNeedsUpdate];
    [(PXUpdater *)v25->_updater addUpdateSelector:sel__updateAllowedColumns];
    [(PXUpdater *)v25->_updater addUpdateSelector:sel__updateAlphaAnimator];
    [(PXUpdater *)v25->_updater addUpdateSelector:sel__updatePinchVelocity];
    [(PXUpdater *)v25->_updater addUpdateSelector:sel__updateZoomState];
    [(PXUpdater *)v25->_updater addUpdateSelector:sel__updateShouldHideSurroundingContent];
    [(PXUpdater *)v25->_updater addUpdateSelector:sel__updateMiniModeAnimator];
    [(PXUpdater *)v25->_updater addUpdateSelector:sel__updateInlineHeadersDataSourceManager];
    objc_storeStrong(&v25->_specManager, v43);
    [v47 registerChangeObserver:v25 context:PXZoomablePhotosViewModelSpecManagerObserverContext];
    objc_storeStrong(&v25->_loadingStatusManager, a7);
    v30 = _Block_copy(v20);
    badgesModifier = v25->_badgesModifier;
    v25->_badgesModifier = v30;

    v25->_pendingZoomColumnIndex = 0x7FFFFFFFFFFFFFFFLL;
    v25->_isInteractiveZoomingAllowed = 1;
    v25->_zoomState.scale = 1.0;
    v25->_zoomState.columnIndex = 0;
    v25->_zoomState.normalizedColumnWidth = 1.0;
    v25->_isDisplayingIndividualItems = 1;
    v32 = objc_alloc(MEMORY[0x277D3CD80]);
    v33 = log10(fabs(v25->_zoomState.normalizedColumnWidth) * 1000.0 + 1.0);
    PXFloatSign();
    v35 = [v32 initWithValue:v34 * v33 epsilon:0.0001];
    columnWidthAnimator = v25->_columnWidthAnimator;
    v25->_columnWidthAnimator = v35;

    [(PXNumberAnimator *)v25->_columnWidthAnimator setHighFrameRateReason:2228226];
    [(PXNumberAnimator *)v25->_columnWidthAnimator registerChangeObserver:v25 context:PXZoomablePhotosViewModelNumberAnimatorObserverContext];
    [(PXNumberAnimator *)v25->_columnWidthAnimator setLabel:@"columnWidth"];
    v37 = objc_alloc_init(PXZoomablePhotosAlphaAnimator);
    alphaAnimator = v25->_alphaAnimator;
    v25->_alphaAnimator = v37;

    [(PXZoomablePhotosAlphaAnimator *)v25->_alphaAnimator registerChangeObserver:v25 context:PXZoomablePhotosViewModelAlphaAnimatorObserverContext];
    v39 = objc_alloc_init(PXZoomablePhotosMiniModeAnimator);
    miniModeAnimator = v25->_miniModeAnimator;
    v25->_miniModeAnimator = v39;

    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __244__PXZoomablePhotosViewModel_initWithDataSourceManager_selectionManager_mediaProvider_specManager_loadingStatusManager_badgesModifier_preferredAssetCropDelegate_preferredColumnCountsDelegate_inlinePlaybackController_sectionIndex_headersEnabled___block_invoke;
    v49[3] = &unk_278298548;
    v41 = v25;
    v50 = v41;
    [(PXZoomablePhotosViewModel *)v41 performChanges:v49];
    [v48 registerChangeObserver:v41 context:PXZoomablePhotosViewModelDataSourceManagerObserverContext];
    [(PXSectionedSelectionManager *)v25->_selectionManager registerChangeObserver:v41 context:PXZoomablePhotosViewModelSelectionObserverContext];
    v41->_useLowMemoryDecode = 0;
  }

  return v25;
}

uint64_t __244__PXZoomablePhotosViewModel_initWithDataSourceManager_selectionManager_mediaProvider_specManager_loadingStatusManager_badgesModifier_preferredAssetCropDelegate_preferredColumnCountsDelegate_inlinePlaybackController_sectionIndex_headersEnabled___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateAllowedColumns];
  [*(a1 + 32) _invalidateAlphaAnimator];
  [*(a1 + 32) _invalidateZoomState];
  v2 = *(a1 + 32);

  return [v2 _invalidateInlineHeadersDataSourceManager];
}

- (PXZoomablePhotosViewModel)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXZoomablePhotosViewModel.m" lineNumber:85 description:{@"%s is not available as initializer", "-[PXZoomablePhotosViewModel init]"}];

  abort();
}

@end