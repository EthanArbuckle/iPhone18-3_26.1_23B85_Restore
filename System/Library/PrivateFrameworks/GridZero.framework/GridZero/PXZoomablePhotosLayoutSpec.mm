@interface PXZoomablePhotosLayoutSpec
- (PXZoomablePhotosLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4;
- (PXZoomablePhotosLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 availableThumbnailSizes:(id)a5 gridStyle:(int64_t)a6 itemAspectRatio:(double)a7 userDefaults:(id)a8 forceSaliency:(BOOL)a9 preferredUserInterfaceStyle:(int64_t)a10 additionalAspectFitEdgeMargins:(UIEdgeInsets)a11 overrideDefaultNumberOfColumns:(int64_t)a12;
- (UIEdgeInsets)aspectFitEdgeMargins;
- (UIEdgeInsets)miniModeEdgeMargins;
- (UIEdgeInsets)squareEdgeMargins;
- (id)defaultBackgroundColor;
- (int64_t)bestColumnIndexForPreferredNumberOfColumns:(int64_t)a3 allowedColumns:(id)a4;
@end

@implementation PXZoomablePhotosLayoutSpec

- (UIEdgeInsets)squareEdgeMargins
{
  top = self->_squareEdgeMargins.top;
  left = self->_squareEdgeMargins.left;
  bottom = self->_squareEdgeMargins.bottom;
  right = self->_squareEdgeMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)defaultBackgroundColor
{
  explicitBackgroundColor = self->_explicitBackgroundColor;
  if (explicitBackgroundColor)
  {
    v3 = explicitBackgroundColor;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PXZoomablePhotosLayoutSpec;
    v3 = [(PXZoomablePhotosLayoutSpec *)&v5 defaultBackgroundColor];
  }

  return v3;
}

- (UIEdgeInsets)miniModeEdgeMargins
{
  top = self->_miniModeEdgeMargins.top;
  left = self->_miniModeEdgeMargins.left;
  bottom = self->_miniModeEdgeMargins.bottom;
  right = self->_miniModeEdgeMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)aspectFitEdgeMargins
{
  top = self->_aspectFitEdgeMargins.top;
  left = self->_aspectFitEdgeMargins.left;
  bottom = self->_aspectFitEdgeMargins.bottom;
  right = self->_aspectFitEdgeMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (int64_t)bestColumnIndexForPreferredNumberOfColumns:(int64_t)a3 allowedColumns:(id)a4
{
  v6 = a4;
  v7 = [(PXZoomablePhotosLayoutSpec *)self maxColumnsForIndividualItems];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v9 = [v6 indexOfObject:v8];

  v16 = v9;
  v10 = v14[3];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14[3] = 0;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __88__PXZoomablePhotosLayoutSpec_bestColumnIndexForPreferredNumberOfColumns_allowedColumns___block_invoke;
    v12[3] = &unk_2782979D8;
    v12[4] = &v13;
    v12[5] = v7;
    v12[6] = a3;
    [v6 enumerateObjectsUsingBlock:v12];
    v10 = v14[3];
  }

  _Block_object_dispose(&v13, 8);

  return v10;
}

void __88__PXZoomablePhotosLayoutSpec_bestColumnIndexForPreferredNumberOfColumns_allowedColumns___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 integerValue] > a1[5] || (*(*(a1[4] + 8) + 24) = a3, objc_msgSend(v7, "integerValue") >= a1[6]))
  {
    *a4 = 1;
  }
}

- (PXZoomablePhotosLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 availableThumbnailSizes:(id)a5 gridStyle:(int64_t)a6 itemAspectRatio:(double)a7 userDefaults:(id)a8 forceSaliency:(BOOL)a9 preferredUserInterfaceStyle:(int64_t)a10 additionalAspectFitEdgeMargins:(UIEdgeInsets)a11 overrideDefaultNumberOfColumns:(int64_t)a12
{
  v12 = a9;
  v197 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v21 = a5;
  v166 = a8;
  v189.receiver = self;
  v189.super_class = PXZoomablePhotosLayoutSpec;
  v22 = [(PXZoomablePhotosLayoutSpec *)&v189 initWithExtendedTraitCollection:v20 options:a4];
  if (v22)
  {
    v152 = a2;
    v163 = v21;
    v23 = a12;
    v24 = +[PXZoomablePhotosSettings sharedInstance];
    v162 = [v20 userInterfaceIdiom];
    v161 = [v20 userInterfaceIdiom];
    v25 = objc_alloc_init(MEMORY[0x277CCAB58]);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __237__PXZoomablePhotosLayoutSpec_initWithExtendedTraitCollection_options_availableThumbnailSizes_gridStyle_itemAspectRatio_userDefaults_forceSaliency_preferredUserInterfaceStyle_additionalAspectFitEdgeMargins_overrideDefaultNumberOfColumns___block_invoke;
    aBlock[3] = &unk_278297938;
    v26 = v25;
    v185 = v26;
    v167 = v24;
    v186 = v167;
    v187 = a6;
    v188 = a7 != 1.0;
    v27 = _Block_copy(aBlock);
    v27[2]();
    [v20 layoutReferenceSize];
    v29 = v28;
    v31 = v30;
    v157 = v27;
    if ([v20 layoutSizeClass] == 1)
    {
      v32 = 1;
    }

    else
    {
      v33 = [v20 rootExtendedTraitCollection];

      if (v33)
      {
        v34 = [v20 rootExtendedTraitCollection];
        [v34 layoutReferenceSize];
        v32 = v35 <= 528.0;
      }

      else
      {
        v32 = 0;
      }
    }

    v160 = v26;
    v165 = a6;
    if (a6 <= 6)
    {
      if (((1 << a6) & 0x38) != 0)
      {
        if (v161 == 5)
        {
          v22->_itemCornerRadius = 9.0;
          v22->_interitemSpacing = 4.0;
          v40 = [MEMORY[0x277D75348] blackColor];
          explicitBackgroundColor = v22->_explicitBackgroundColor;
          v22->_explicitBackgroundColor = v40;

          v22->_preferredUserInterfaceStyle = a10;
          if (v162 != 4)
          {
LABEL_22:
            [v26 addIndex:1];
            [v26 addIndex:3];
            v52 = 5;
            [v26 addIndex:5];
            [v26 addIndex:7];
            v53 = PFIsPhotosPicker();
            if (v53)
            {
              [v26 removeIndex:7];
              v52 = a12;
            }

            v50 = [v26 lastIndex];
            v54 = v166;
            if (v29 > v31)
            {
              v55 = 3;
              if (v29 / 5.0 >= 100.0)
              {
                v55 = 5;
              }
            }

            else
            {
              v55 = 3;
            }

            if (v52)
            {
              v55 = v52;
            }

            if (a12)
            {
              v56 = a12;
            }

            else
            {
              v56 = v55;
            }

            v22->_aspectFitInteritemSpacing = 10.0;
            if (v53)
            {
              v57 = 5;
            }

            else
            {
              v57 = 7;
            }

            v156 = 0.0;
            v59 = 5.45;
            v58 = 0.0;
            goto LABEL_72;
          }
        }

        else
        {
          [v167 cornerRadius];
          v22->_itemCornerRadius = v42;
          [v167 interitemSpacing];
          v22->_interitemSpacing = v43;
          [v167 aspectFitCornerRadius];
          v22->_aspectFitItemCornerRadius = v44;
          [v167 aspectFitInteritemSpacing];
          v22->_aspectFitInteritemSpacing = v45;
          v46 = [MEMORY[0x277D75348] systemBackgroundColor];
          v47 = v22->_explicitBackgroundColor;
          v22->_explicitBackgroundColor = v46;

          v22->_preferredUserInterfaceStyle = a10;
          if (v162 != 4)
          {
            goto LABEL_31;
          }
        }

LABEL_19:
        v50 = 5;
        [v26 addIndex:5];
        [v26 addIndex:7];
        if (v29 >= 400.0)
        {
          v50 = 9;
          [v26 addIndex:9];
          v51 = 5;
        }

        else
        {
          v51 = 3;
        }

        v54 = v166;
        if (a12)
        {
          v56 = a12;
        }

        else
        {
          v56 = v51;
        }

        v22->_aspectFitInteritemSpacing = 17.0;
        v57 = 0x7FFFFFFFFFFFFFFFLL;
        v58 = 17.0;
        v156 = 18.0;
        v59 = 5.45;
        v55 = v56;
        goto LABEL_72;
      }

      if (((1 << a6) & 0x45) != 0)
      {
        [v167 cornerRadius];
        v22->_itemCornerRadius = v36;
        [v167 interitemSpacing];
        v22->_interitemSpacing = v37;
        [v167 aspectFitCornerRadius];
        v22->_aspectFitItemCornerRadius = v38;
        [v167 aspectFitInteritemSpacing];
      }

      else
      {
        [v167 cardsCornerRadius];
        v22->_itemCornerRadius = v48;
        [v167 cardsInteritemSpacing];
        v22->_interitemSpacing = v49;
        v22->_aspectFitItemCornerRadius = v22->_itemCornerRadius;
        [v167 cardsInteritemSpacing];
      }

      v22->_aspectFitInteritemSpacing = v39;
    }

    v22->_preferredUserInterfaceStyle = a10;
    if (v162 == 4)
    {
      goto LABEL_19;
    }

    if (v161 == 5)
    {
      goto LABEL_22;
    }

LABEL_31:
    if (!v32)
    {
      v61 = v22;
      [v20 layoutReferenceSize];
      v181[0] = MEMORY[0x277D85DD0];
      v181[1] = 3221225472;
      v181[2] = __237__PXZoomablePhotosLayoutSpec_initWithExtendedTraitCollection_options_availableThumbnailSizes_gridStyle_itemAspectRatio_userDefaults_forceSaliency_preferredUserInterfaceStyle_additionalAspectFitEdgeMargins_overrideDefaultNumberOfColumns___block_invoke_25;
      v181[3] = &unk_278297960;
      v182 = &unk_282C48138;
      v183 = v62;
      v63 = _Block_copy(v181);
      v64 = v63[2](176.0);
      [v26 addIndex:v64];
      if (a6 == 1)
      {
        goto LABEL_50;
      }

      if (a6 == 2)
      {
        [v26 addIndex:{(v63[2])(v63, 130.0)}];
        [v26 addIndex:{(v63[2])(v63, 165.0)}];
        [v26 addIndex:{(v63[2])(v63, 230.0)}];
      }

      if ([v20 userInterfaceIdiom] == 3)
      {
LABEL_50:
        v65 = 5;
      }

      else
      {
        v65 = 7;
        if (a6 != 3)
        {
          v65 = v64;
        }
      }

      if (a12)
      {
        v56 = a12;
      }

      else
      {
        v56 = v65;
      }

      v66 = [v26 lastIndex];
      v67 = 10.0;
      if (v66 > 5)
      {
        v67 = 17.0;
      }

      v68 = v61;
      v61->_aspectFitInteritemSpacing = v67;
      v50 = [v26 lastIndex];
      [v167 panoramaRegularInteritemSpacing];
      v58 = v69;

      v22 = v68;
      v57 = 0x7FFFFFFFFFFFFFFFLL;
      v156 = 0.0;
      v59 = 5.45;
      v55 = v56;
      v54 = v166;
LABEL_72:
      v22->_maxColumnsForStickyHeaderDisplay = v50;
      v22->_defaultNumberOfColumns = v55;
      v22->_staticNumberOfColumns = v56;
      v22->_maxColumnsForIndividualItems = v50;
      v22->_maxColumnsForBadges = v50;
      v22->_minColumnsForMiniBadges = v57;
      v22->_initialNumberOfColumns = v55;
      v71 = [v54 preferredIndividualItemsColumnsNumber];
      v72 = [v71 integerValue];

      if (v72)
      {
        v22->_initialNumberOfColumns = v72;
      }

      v22->_panoramaItemAspectRatio = v59;
      v22->_panoramaInteritemSpacing = v58;
      if (v165 == 1)
      {
        [v167 cardsAspectRatio];
        a7 = v73;
        if (v29 > v31)
        {
          a7 = 1.0 / v73;
        }
      }

      else if (a7 == 0.0)
      {
        [v20 fullScreenReferenceRect];
        v76 = v74;
        v77 = v75;
        if (v74 == 0.0 || v75 == 0.0 || v74 == *MEMORY[0x277D3A858] && v75 == *(MEMORY[0x277D3A858] + 8))
        {
          a7 = 1.0;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
          {
            *buf = 134218496;
            v192 = v76;
            v193 = 2048;
            v194 = v77;
            v195 = 2048;
            v196 = 0x3FF0000000000000;
            _os_log_fault_impl(&dword_21ABF3000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", buf, 0x20u);
          }
        }

        else
        {
          a7 = fabs(v74 / v75);
        }
      }

      v22->_itemAspectRatio = a7;
      if ([v20 userInterfaceIdiom] == 4)
      {
        v78 = ceil(v29 / 200.0) * 200.0;
      }

      else
      {
        v79 = [v20 rootExtendedTraitCollection];
        [v79 layoutReferenceSize];
        v78 = v80;
      }

      v81 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v26, "count")}];
      v179[0] = MEMORY[0x277D85DD0];
      v179[1] = 3221225472;
      v179[2] = __237__PXZoomablePhotosLayoutSpec_initWithExtendedTraitCollection_options_availableThumbnailSizes_gridStyle_itemAspectRatio_userDefaults_forceSaliency_preferredUserInterfaceStyle_additionalAspectFitEdgeMargins_overrideDefaultNumberOfColumns___block_invoke_2;
      v179[3] = &unk_278297988;
      v82 = v81;
      v180 = v82;
      [v26 enumerateIndexesUsingBlock:v179];
      v172[0] = MEMORY[0x277D85DD0];
      v172[1] = 3221225472;
      v172[2] = __237__PXZoomablePhotosLayoutSpec_initWithExtendedTraitCollection_options_availableThumbnailSizes_gridStyle_itemAspectRatio_userDefaults_forceSaliency_preferredUserInterfaceStyle_additionalAspectFitEdgeMargins_overrideDefaultNumberOfColumns___block_invoke_3;
      v172[3] = &unk_2782979B0;
      v175 = v165;
      v176 = v29;
      v177 = v31;
      v178 = v78;
      v154 = v20;
      v173 = v154;
      v83 = v82;
      v174 = v83;
      v164 = _Block_copy(v172);
      if ([v163 count])
      {
        v84 = [v163 firstObject];
        [v84 CGSizeValue];
        v86 = v85;
        v88 = v87;
      }

      else
      {
        v86 = *MEMORY[0x277D3CFE0];
        v88 = *(MEMORY[0x277D3CFE0] + 8);
      }

      if ([v163 count] < 2)
      {
        v89 = *MEMORY[0x277D3CFE0];
        v90 = *(MEMORY[0x277D3CFE0] + 8);
      }

      else
      {
        if (v162 == 4)
        {
          [v163 lastObject];
        }

        else
        {
          [v163 objectAtIndexedSubscript:1];
        }
        v91 = ;
        [v91 CGSizeValue];
        v89 = v92;
        v90 = v93;
      }

      v164[2](v164, v89, v90);
      v164[2](v164, v86, v88);
      if ([v167 enableDecadesDensity])
      {
        if (PXSizeIsEmpty())
        {
          v94.n128_u64[0] = *MEMORY[0x277D3CFE0];
          v95.n128_u64[0] = *(MEMORY[0x277D3CFE0] + 8);
        }

        else
        {
          [v167 decadesDensityScale];
          PXSizeScale();
        }

        (v164[2])(v94, v95);
      }

      v96 = [v83 copy];
      supportedColumns = v22->_supportedColumns;
      v22->_supportedColumns = v96;

      v98 = objc_alloc_init(MEMORY[0x277CBEB18]);
      for (i = 3; i != 10; ++i)
      {
        v100 = [MEMORY[0x277CCABB0] numberWithInteger:i];
        [v98 addObject:v100];
      }

      v153 = v98;
      v101 = [v98 copy];
      legacyMacSupportedColumns = v22->_legacyMacSupportedColumns;
      v22->_legacyMacSupportedColumns = v101;

      if ([(NSArray *)v22->_supportedColumns count]>= 0xB)
      {
        v103 = PXAssertGetLog();
        if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_21ABF3000, v103, OS_LOG_TYPE_ERROR, "Too many supported columns.", buf, 2u);
        }
      }

      v155 = v83;
      v159 = v20;
      v104 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v168 = 0u;
      v169 = 0u;
      v170 = 0u;
      v171 = 0u;
      v158 = v22;
      v105 = v22->_supportedColumns;
      v106 = [(NSArray *)v105 countByEnumeratingWithState:&v168 objects:v190 count:16];
      if (v106)
      {
        v107 = v106;
        v108 = *v169;
        do
        {
          for (j = 0; j != v107; ++j)
          {
            if (*v169 != v108)
            {
              objc_enumerationMutation(v105);
            }

            v110 = *(*(&v168 + 1) + 8 * j);
            IsEmpty = PXSizeIsEmpty();
            if ((a4 & 0x20) != 0 || IsEmpty)
            {
              [v104 addObject:&unk_282C47FB8];
            }

            else
            {
              v112 = [v110 integerValue];
              if (v112 <= v50)
              {
                [v167 individualLevelMinimumScreensOfContent];
              }

              else
              {
                [v167 denseLevelMinimumScreensOfContent];
              }

              v114 = floor(v78 / v112);
              v115 = [MEMORY[0x277CCABB0] numberWithInteger:vcvtpd_s64_f64(v113 * (vcvtpd_s64_f64(v78 / v114) * vcvtpd_s64_f64(v31 / v114)))];
              [v104 addObject:v115];
            }
          }

          v107 = [(NSArray *)v105 countByEnumeratingWithState:&v168 objects:v190 count:16];
        }

        while (v107);
      }

      v116 = [v104 copy];
      v22 = v158;
      minimumAssetsRequiredByColumn = v158->_minimumAssetsRequiredByColumn;
      v158->_minimumAssetsRequiredByColumn = v116;

      v118 = [(NSArray *)v158->_supportedColumns count];
      if (v118 != [(NSArray *)v158->_minimumAssetsRequiredByColumn count])
      {
        v151 = [MEMORY[0x277CCA890] currentHandler];
        [v151 handleFailureInMethod:v152 object:v158 file:@"PXZoomablePhotosLayoutSpec.m" lineNumber:357 description:{@"Count mismatch: %lu != %lu", -[NSArray count](v158->_supportedColumns, "count"), -[NSArray count](v158->_minimumAssetsRequiredByColumn, "count")}];
      }

      p_aspectFitEdgeMargins = &v158->_aspectFitEdgeMargins;
      v20 = v159;
      v21 = v163;
      if (v161 == 5)
      {
        PXEdgeInsetsWithValueForEdges();
        *&p_aspectFitEdgeMargins->top = v120;
        v158->_aspectFitEdgeMargins.left = v121;
        v158->_aspectFitEdgeMargins.bottom = v122;
        v158->_aspectFitEdgeMargins.right = v123;
        p_top = &v158->_squareEdgeMargins.top;
        if (v165 == 1)
        {
          PXEdgeInsetsWithValueForEdges();
          *p_top = v125;
          v158->_squareEdgeMargins.left = v126;
          v158->_squareEdgeMargins.bottom = v127;
          v158->_squareEdgeMargins.right = v128;
        }

        else
        {
          v134 = *(MEMORY[0x277D3CF90] + 16);
          *p_top = *MEMORY[0x277D3CF90];
          *&v158->_squareEdgeMargins.bottom = v134;
        }
      }

      else
      {
        PXEdgeInsetsMakeAll();
        *&p_aspectFitEdgeMargins->top = v129;
        v158->_aspectFitEdgeMargins.left = v130;
        v158->_aspectFitEdgeMargins.bottom = v131;
        v158->_aspectFitEdgeMargins.right = v132;
        v133 = *(MEMORY[0x277D3CF90] + 16);
        *&v158->_squareEdgeMargins.top = *MEMORY[0x277D3CF90];
        *&v158->_squareEdgeMargins.bottom = v133;
      }

      PXEdgeInsetsAdd();
      *&p_aspectFitEdgeMargins->top = v135;
      v158->_aspectFitEdgeMargins.left = v136;
      v158->_aspectFitEdgeMargins.bottom = v137;
      v158->_aspectFitEdgeMargins.right = v138;
      LOBYTE(v139) = v165;
      if (v165 != 1)
      {
        v139 = [v167 forceSaliency] | v12;
      }

      v158->_useSaliency = v139;
      v158->_maxColumnsForSaliency = [v167 maxColumnsForSaliency];
      v158->_captionSpacing = v156;
      v140 = [[PXZoomableInlineHeadersLayoutSpec alloc] initWithExtendedTraitCollection:v154 options:a4];
      inlineHeadersSpec = v158->_inlineHeadersSpec;
      v158->_inlineHeadersSpec = v140;

      [(PXZoomablePhotosLayoutSpec *)v158 safeAreaInsets];
      if (v142 <= 0.0)
      {
        [(PXZoomablePhotosLayoutSpec *)v158 safeAreaInsets];
        v158->_hasTransparentHorizontalMargins = v144 > 0.0;
        v143 = v153;
        if (v144 <= 0.0)
        {
          v145 = 1;
          goto LABEL_136;
        }
      }

      else
      {
        v158->_hasTransparentHorizontalMargins = 1;
        v143 = v153;
      }

      v145 = [v154 layoutSizeClass] == 1;
LABEL_136:
      v158->_allowPinchEffect = v145;
      v158->_miniModeInteritemSpacing = 8.0;
      v158->_miniModeItemCornerRadius = 10.0;
      PXEdgeInsetsMake();
      v158->_miniModeEdgeMargins.top = v146;
      v158->_miniModeEdgeMargins.left = v147;
      v158->_miniModeEdgeMargins.bottom = v148;
      v158->_miniModeEdgeMargins.right = v149;

      goto LABEL_137;
    }

    [v26 addIndex:5];
    if (v29 > v31)
    {
      if (v29 / 5.0 < 100.0)
      {
        v60 = 3;
      }

      else
      {
        v60 = 5;
      }

      if (a12)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v60 = 3;
      if (a12)
      {
LABEL_34:
        v50 = 5;
        v56 = a12;
        v54 = v166;
LABEL_68:
        if (v29 > v31)
        {
          v57 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v57 = v50;
        }

        [v167 panoramaCompactInteritemSpacing];
        v58 = v70;
        v59 = 5.25;
        v156 = 0.0;
        v55 = v23;
        goto LABEL_72;
      }
    }

    v50 = 5;
    if (a6 == 3)
    {
      v54 = v166;
      if (v29 > v31)
      {
        v50 = 7;
        [v26 addIndex:7];
        v60 = 7;
      }
    }

    else
    {
      v54 = v166;
    }

    v56 = [MEMORY[0x277D3CD60] photosGridLayoutColumnsForWidth:v29];
    v23 = v60;
    goto LABEL_68;
  }

LABEL_137:

  return v22;
}

uint64_t __237__PXZoomablePhotosLayoutSpec_initWithExtendedTraitCollection_options_availableThumbnailSizes_gridStyle_itemAspectRatio_userDefaults_forceSaliency_preferredUserInterfaceStyle_additionalAspectFitEdgeMargins_overrideDefaultNumberOfColumns___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeAllIndexes];
  if ([*(a1 + 40) enableOneColumn] && *(a1 + 48) != 1 && (*(a1 + 56) & 1) == 0)
  {
    [*(a1 + 32) addIndex:1];
  }

  v2 = *(a1 + 32);

  return [v2 addIndex:3];
}

uint64_t __237__PXZoomablePhotosLayoutSpec_initWithExtendedTraitCollection_options_availableThumbnailSizes_gridStyle_itemAspectRatio_userDefaults_forceSaliency_preferredUserInterfaceStyle_additionalAspectFitEdgeMargins_overrideDefaultNumberOfColumns___block_invoke_25(uint64_t a1, double a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = [*(*(&v12 + 1) + 8 * v8) integerValue];
      if (*(a1 + 40) / v9 >= a2)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v4 = [*(a1 + 32) lastObject];
    v9 = [v4 integerValue];
  }

  v10 = v9;

  return v10;
}

void __237__PXZoomablePhotosLayoutSpec_initWithExtendedTraitCollection_options_availableThumbnailSizes_gridStyle_itemAspectRatio_userDefaults_forceSaliency_preferredUserInterfaceStyle_additionalAspectFitEdgeMargins_overrideDefaultNumberOfColumns___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  [v2 addObject:v3];
}

void __237__PXZoomablePhotosLayoutSpec_initWithExtendedTraitCollection_options_availableThumbnailSizes_gridStyle_itemAspectRatio_userDefaults_forceSaliency_preferredUserInterfaceStyle_additionalAspectFitEdgeMargins_overrideDefaultNumberOfColumns___block_invoke_3(uint64_t a1, double a2)
{
  if (*(a1 + 48) != 1 && (PXSizeIsNull() & 1) == 0 && (PXSizeIsNull() & 1) == 0)
  {
    v4 = *(a1 + 72);
    [*(a1 + 32) displayScale];
    v6 = vcvtpd_s64_f64(v4 * v5 / a2) | 1;
    v7 = [*(a1 + 40) lastObject];
    v8 = [v7 integerValue];

    if (v6 > v8)
    {
      v9 = *(a1 + 40);
      v10 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
      [v9 addObject:v10];
    }
  }
}

- (PXZoomablePhotosLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"PXZoomablePhotosLayoutSpec.m" lineNumber:26 description:{@"%s is not available as initializer", "-[PXZoomablePhotosLayoutSpec initWithExtendedTraitCollection:options:]"}];

  abort();
}

@end