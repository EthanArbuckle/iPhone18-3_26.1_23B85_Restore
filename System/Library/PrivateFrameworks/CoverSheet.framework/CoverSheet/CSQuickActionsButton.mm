@interface CSQuickActionsButton
+ (double)buttonDiameter;
- (BOOL)clickInteractionShouldBegin:(id)a3;
- (BOOL)hasSameOriginatingIconAsForIconZoomingView:(id)a3;
- (CGRect)iconImageFrame;
- (CGSize)iconImageSize;
- (CSQuickActionsButton)initWithAction:(id)a3 luminanceMap:(id)a4;
- (CSQuickActionsButtonDelegate)delegate;
- (double)adjustedCrossfadeProgressForCrossfadeProgress:(double)a3;
- (double)scaleForFadeValue:(double)a3 originalSize:(CGSize)a4 containerSize:(CGSize)a5;
- (id)_accessoryTitleForAction:(id)a3;
- (id)_buttonGroupName;
- (id)_createButtonGlyphForAction:(id)a3;
- (id)_placeholderCopy;
- (id)_systemImageWithName:(id)a3 configuration:(id)a4;
- (void)_actionVisibilityDidUpdate;
- (void)_placeholderCopy;
- (void)_updateTintColorForPermittedState;
- (void)allowsInteractionDidChangeForAction:(id)a3;
- (void)cleanUpAfterCrossfadeCompletion;
- (void)isSelectedDidChangeForAction:(id)a3;
- (void)prepareToCrossfadeImageWithView:(id)a3;
- (void)setAction:(id)a3;
- (void)setAppearance:(int64_t)a3;
- (void)setGlyphView:(id)a3;
- (void)setGlyphViewForAction:(id)a3;
- (void)setIconContentHidden:(BOOL)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setMorphFraction:(double)a3;
- (void)setVisible:(BOOL)a3;
- (void)showsButtonDidChangeForAction:(id)a3;
@end

@implementation CSQuickActionsButton

+ (double)buttonDiameter
{
  v3 = __sb__runningInSpringBoard();
  v4 = &CSQuickActionButtonDiameter;
  if (v3)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v5 = 0;
      v6 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v127 = [MEMORY[0x277D75418] currentDevice];
    if ([v127 userInterfaceIdiom] != 1)
    {
      v5 = 0;
      v6 = 1;
      goto LABEL_10;
    }
  }

  v6 = v3 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v118 = [MEMORY[0x277D759A0] mainScreen];
      [v118 _referenceBounds];
    }

    v5 = v7 ^ 1;
    BSSizeRoundForScale();
    if (v28 == *(MEMORY[0x277D66E30] + 288) && v27 == *(MEMORY[0x277D66E30] + 296))
    {
      v156 = v7 ^ 1;
      v157 = v6;
      v144 = 0;
      v145 = 0;
      v143 = 0;
      v142 = 0;
      v146 = 0;
      v141 = 0;
      v140 = 0;
      v147 = 0;
      v139 = 0;
      v138 = 0;
      v148 = 0uLL;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v134 = 0;
      v149 = 0;
      v133 = 0;
      v150 = 0;
      v132 = 0;
      v151 = 0;
      v131 = 0;
      v152 = 0;
      v130 = 0;
      v153 = 0;
      v129 = 0;
      v154 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v155 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96100;
      goto LABEL_67;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_10:
  v8 = __sb__runningInSpringBoard();
  v156 = v5;
  v157 = v6;
  if (v8)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v9 = 0;
      v10 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v126 = [MEMORY[0x277D75418] currentDevice];
    if ([v126 userInterfaceIdiom] != 1)
    {
      v9 = 0;
      v10 = 1;
      goto LABEL_19;
    }
  }

  v10 = v8 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v117 = [MEMORY[0x277D759A0] mainScreen];
      [v117 _referenceBounds];
    }

    v9 = v7 ^ 1;
    BSSizeRoundForScale();
    if (v30 >= *(MEMORY[0x277D66E30] + 440))
    {
      v154 = v7 ^ 1;
      v155 = v10;
      v144 = 0;
      v145 = 0;
      v143 = 0;
      v142 = 0;
      v146 = 0;
      v141 = 0;
      v140 = 0;
      v147 = 0;
      v139 = 0;
      v138 = 0;
      v148 = 0uLL;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v134 = 0;
      v149 = 0;
      v133 = 0;
      v150 = 0;
      v132 = 0;
      v151 = 0;
      v131 = 0;
      v152 = 0;
      v130 = 0;
      v153 = 0;
      v129 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96128;
      goto LABEL_67;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_19:
  v11 = __sb__runningInSpringBoard();
  v154 = v9;
  v155 = v10;
  if (v11)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v12 = 0;
      v13 = 0;
      goto LABEL_28;
    }
  }

  else
  {
    v125 = [MEMORY[0x277D75418] currentDevice];
    if ([v125 userInterfaceIdiom] != 1)
    {
      v12 = 0;
      v13 = 1;
      goto LABEL_28;
    }
  }

  v13 = v11 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v116 = [MEMORY[0x277D759A0] mainScreen];
      [v116 _referenceBounds];
    }

    v12 = v7 ^ 1;
    BSSizeRoundForScale();
    if (v31 >= *(MEMORY[0x277D66E30] + 376))
    {
      v152 = v7 ^ 1;
      v153 = v13;
      v144 = 0;
      v145 = 0;
      v143 = 0;
      v142 = 0;
      v146 = 0;
      v141 = 0;
      v140 = 0;
      v147 = 0;
      v139 = 0;
      v138 = 0;
      v148 = 0uLL;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v134 = 0;
      v149 = 0;
      v133 = 0;
      v150 = 0;
      v132 = 0;
      v151 = 0;
      v131 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96118;
      goto LABEL_67;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_28:
  v14 = __sb__runningInSpringBoard();
  v152 = v12;
  v153 = v13;
  if (v14)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v2 = 0;
      v15 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    v124 = [MEMORY[0x277D75418] currentDevice];
    if ([v124 userInterfaceIdiom] != 1)
    {
      v2 = 0;
      v15 = 1;
      goto LABEL_37;
    }
  }

  v15 = v14 ^ 1;
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v121 = [MEMORY[0x277D759A0] mainScreen];
    [v121 _referenceBounds];
  }

  v2 = v7 ^ 1;
  BSSizeRoundForScale();
  if (v16 >= *(MEMORY[0x277D66E30] + 280))
  {
    v150 = v7 ^ 1;
    v151 = v15;
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v142 = 0;
    v146 = 0;
    v141 = 0;
    v140 = 0;
    v147 = 0;
    v139 = 0;
    v138 = 0;
    v148 = 0uLL;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v134 = 0;
    v149 = 0;
    v133 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96120;
    goto LABEL_67;
  }

LABEL_37:
  v17 = __sb__runningInSpringBoard();
  v150 = v2;
  v151 = v15;
  if (v17)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      HIDWORD(v148) = 0;
      v4 = 0;
      goto LABEL_47;
    }
  }

  else
  {
    v123 = [MEMORY[0x277D75418] currentDevice];
    if ([v123 userInterfaceIdiom] != 1)
    {
      HIDWORD(v148) = 0;
      v4 = 1;
      goto LABEL_47;
    }
  }

  v4 = v17 ^ 1u;
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v119 = [MEMORY[0x277D759A0] mainScreen];
    [v119 _referenceBounds];
  }

  HIDWORD(v148) = v7 ^ 1;
  BSSizeRoundForScale();
  if (v25 >= *(MEMORY[0x277D66E30] + 264))
  {
    v149 = v4;
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v142 = 0;
    v146 = 0;
    v141 = 0;
    v140 = 0;
    v147 = 0;
    v139 = 0;
    v138 = 0;
    *&v148 = 0;
    v137 = 0;
    v136 = 0;
    DWORD2(v148) = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96110;
    goto LABEL_67;
  }

LABEL_47:
  v26 = __sb__runningInSpringBoard();
  v149 = v4;
  if (v26)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *(&v148 + 4) = 0;
      goto LABEL_186;
    }
  }

  else
  {
    v122 = [MEMORY[0x277D75418] currentDevice];
    if ([v122 userInterfaceIdiom] != 1)
    {
      *(&v148 + 4) = 0x100000000;
      goto LABEL_186;
    }
  }

  DWORD2(v148) = v26 ^ 1;
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v115 = [MEMORY[0x277D759A0] mainScreen];
    [v115 _referenceBounds];
  }

  DWORD1(v148) = v7 ^ 1;
  BSSizeRoundForScale();
  if (v34 >= *(MEMORY[0x277D66E30] + 248))
  {
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v142 = 0;
    v146 = 0;
    v141 = 0;
    v140 = 0;
    v147 = 0;
    v139 = 0;
    v138 = 0;
    LODWORD(v148) = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96108;
    goto LABEL_67;
  }

LABEL_186:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_188;
    }

LABEL_194:
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v142 = 0;
    v146 = 0;
    v141 = 0;
    v140 = 0;
    v147 = 0;
    v139 = 0;
    v138 = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC960F8;
    LODWORD(v148) = v7 ^ 1;
    goto LABEL_67;
  }

  v120 = [MEMORY[0x277D75418] currentDevice];
  if ([v120 userInterfaceIdiom] == 1)
  {
    goto LABEL_194;
  }

LABEL_188:
  LODWORD(v148) = v7 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_192:
    v147 = 0;
    goto LABEL_202;
  }

  v35 = __sb__runningInSpringBoard();
  if (v35)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_192;
    }
  }

  else
  {
    v113 = [MEMORY[0x277D75418] currentDevice];
    if ([v113 userInterfaceIdiom])
    {
      v147 = 0x100000000;
      goto LABEL_202;
    }
  }

  HIDWORD(v147) = v35 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v106 = [MEMORY[0x277D759A0] mainScreen];
      [v106 _referenceBounds];
    }

    LODWORD(v147) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v38 >= *(MEMORY[0x277D66E30] + 200))
    {
      v144 = 0;
      v145 = 0;
      v143 = 0;
      v142 = 0;
      v146 = 0;
      v141 = 0;
      v140 = 0;
      v139 = 0;
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC960D8;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v147) = 0;
  }

LABEL_202:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v146 = 0;
      goto LABEL_212;
    }
  }

  else
  {
    v114 = [MEMORY[0x277D75418] currentDevice];
    if ([v114 userInterfaceIdiom])
    {
      v146 = 0x100000000;
      goto LABEL_212;
    }
  }

  HIDWORD(v146) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v109 = [MEMORY[0x277D759A0] mainScreen];
      [v109 _referenceBounds];
    }

    LODWORD(v146) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v36 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_216;
    }
  }

  else
  {
    LODWORD(v146) = 0;
  }

LABEL_212:
  if (_SBF_Private_IsD94Like())
  {
    v144 = 0;
    v145 = 0;
    v143 = 0;
    v142 = 0;
    v141 = 0;
    v140 = 0;
    v139 = 0;
    v138 = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC960E0;
    goto LABEL_67;
  }

LABEL_216:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_220:
    v145 = 0;
    goto LABEL_230;
  }

  v37 = __sb__runningInSpringBoard();
  if (v37)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_220;
    }
  }

  else
  {
    v110 = [MEMORY[0x277D75418] currentDevice];
    if ([v110 userInterfaceIdiom])
    {
      v145 = 0x100000000;
      goto LABEL_230;
    }
  }

  HIDWORD(v145) = v37 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v101 = [MEMORY[0x277D759A0] mainScreen];
      [v101 _referenceBounds];
    }

    LODWORD(v145) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v43 >= *(MEMORY[0x277D66E30] + 136))
    {
      v144 = 0;
      v143 = 0;
      v142 = 0;
      v141 = 0;
      v140 = 0;
      v139 = 0;
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC960E8;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v145) = 0;
  }

LABEL_230:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v144 = 0;
      goto LABEL_240;
    }
  }

  else
  {
    v112 = [MEMORY[0x277D75418] currentDevice];
    if ([v112 userInterfaceIdiom])
    {
      v144 = 0x100000000;
      goto LABEL_240;
    }
  }

  HIDWORD(v144) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v105 = [MEMORY[0x277D759A0] mainScreen];
      [v105 _referenceBounds];
    }

    LODWORD(v144) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v39 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_244;
    }
  }

  else
  {
    LODWORD(v144) = 0;
  }

LABEL_240:
  if (_SBF_Private_IsD64Like())
  {
    v143 = 0;
    v142 = 0;
    v141 = 0;
    v140 = 0;
    v139 = 0;
    v138 = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC960F0;
    goto LABEL_67;
  }

LABEL_244:
  v40 = __sb__runningInSpringBoard();
  if (v40)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v143 = 0;
      goto LABEL_254;
    }
  }

  else
  {
    v111 = [MEMORY[0x277D75418] currentDevice];
    if ([v111 userInterfaceIdiom])
    {
      v143 = 0x100000000;
      goto LABEL_254;
    }
  }

  HIDWORD(v143) = v40 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v41 = __sb__runningInSpringBoard();
    if (v41)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v102 = [MEMORY[0x277D759A0] mainScreen];
      [v102 _referenceBounds];
    }

    v7 = v41 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v143) = v7;
    if (v42 >= *(MEMORY[0x277D66E30] + 136))
    {
      v142 = 0;
      v141 = 0;
      v140 = 0;
      v139 = 0;
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC960C8;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v143) = 0;
  }

LABEL_254:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v142 = 0;
      goto LABEL_264;
    }
  }

  else
  {
    v108 = [MEMORY[0x277D75418] currentDevice];
    if ([v108 userInterfaceIdiom])
    {
      v142 = 0x100000000;
      goto LABEL_264;
    }
  }

  HIDWORD(v142) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v100 = [MEMORY[0x277D759A0] mainScreen];
      [v100 _referenceBounds];
    }

    LODWORD(v142) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v44 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_274;
    }
  }

  else
  {
    LODWORD(v142) = 0;
  }

LABEL_264:
  if (_SBF_Private_IsD54())
  {
    v141 = 0;
    v140 = 0;
    v139 = 0;
    v138 = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC960D0;
    goto LABEL_67;
  }

LABEL_274:
  v45 = __sb__runningInSpringBoard();
  if (v45)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v141 = 0;
      goto LABEL_284;
    }
  }

  else
  {
    v107 = [MEMORY[0x277D75418] currentDevice];
    if ([v107 userInterfaceIdiom])
    {
      v141 = 0x100000000;
      goto LABEL_284;
    }
  }

  HIDWORD(v141) = v45 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v46 = __sb__runningInSpringBoard();
    if (v46)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v97 = [MEMORY[0x277D759A0] mainScreen];
      [v97 _referenceBounds];
    }

    v7 = v46 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v141) = v7;
    if (v47 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      v140 = 0;
      v139 = 0;
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96088;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v141) = 0;
  }

LABEL_284:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v140 = 0;
      goto LABEL_294;
    }
  }

  else
  {
    v104 = [MEMORY[0x277D75418] currentDevice];
    if ([v104 userInterfaceIdiom])
    {
      v140 = 0x100000000;
      goto LABEL_294;
    }
  }

  HIDWORD(v140) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v96 = [MEMORY[0x277D759A0] mainScreen];
      [v96 _referenceBounds];
    }

    LODWORD(v140) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v48 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_303;
    }
  }

  else
  {
    LODWORD(v140) = 0;
  }

LABEL_294:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    v139 = 0;
    v138 = 0;
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96090;
    goto LABEL_67;
  }

LABEL_303:
  if (!_SBF_Private_IsD93Like())
  {
LABEL_307:
    v139 = 0;
    goto LABEL_314;
  }

  v49 = __sb__runningInSpringBoard();
  if (v49)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_307;
    }
  }

  else
  {
    v99 = [MEMORY[0x277D75418] currentDevice];
    if ([v99 userInterfaceIdiom])
    {
      v139 = 0x100000000;
      goto LABEL_314;
    }
  }

  HIDWORD(v139) = v49 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v90 = [MEMORY[0x277D759A0] mainScreen];
      [v90 _referenceBounds];
    }

    LODWORD(v139) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v52 >= *(MEMORY[0x277D66E30] + 184))
    {
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96078;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v139) = 0;
  }

LABEL_314:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v138 = 0;
      goto LABEL_324;
    }
  }

  else
  {
    v103 = [MEMORY[0x277D75418] currentDevice];
    if ([v103 userInterfaceIdiom])
    {
      v138 = 0x100000000;
      goto LABEL_324;
    }
  }

  HIDWORD(v138) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v93 = [MEMORY[0x277D759A0] mainScreen];
      [v93 _referenceBounds];
    }

    LODWORD(v138) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v50 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_328;
    }
  }

  else
  {
    LODWORD(v138) = 0;
  }

LABEL_324:
  if (_SBF_Private_IsD93Like())
  {
    v137 = 0;
    v136 = 0;
    v135 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96080;
    goto LABEL_67;
  }

LABEL_328:
  if (!_SBF_Private_IsD63Like())
  {
LABEL_332:
    v137 = 0;
    goto LABEL_342;
  }

  v51 = __sb__runningInSpringBoard();
  if (v51)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_332;
    }
  }

  else
  {
    v95 = [MEMORY[0x277D75418] currentDevice];
    if ([v95 userInterfaceIdiom])
    {
      v137 = 0x100000000;
      goto LABEL_342;
    }
  }

  HIDWORD(v137) = v51 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v86 = [MEMORY[0x277D759A0] mainScreen];
      [v86 _referenceBounds];
    }

    LODWORD(v137) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v57 >= *(MEMORY[0x277D66E30] + 104))
    {
      v136 = 0;
      v135 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v129 = 0;
      v130 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC960A8;
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v137) = 0;
  }

LABEL_342:
  v53 = __sb__runningInSpringBoard();
  if (v53)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v136) = 0;
      v7 = 0;
      goto LABEL_352;
    }
  }

  else
  {
    v98 = [MEMORY[0x277D75418] currentDevice];
    if ([v98 userInterfaceIdiom])
    {
      v7 = 0;
      HIDWORD(v136) = 1;
      goto LABEL_352;
    }
  }

  HIDWORD(v136) = v53 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v54 = __sb__runningInSpringBoard();
    if (v54)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v89 = [MEMORY[0x277D759A0] mainScreen];
      [v89 _referenceBounds];
    }

    v7 = v54 ^ 1u;
    BSSizeRoundForScale();
    if (v55 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_356;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_352:
  if (_SBF_Private_IsD63Like())
  {
    v135 = 0;
    LODWORD(v136) = v7;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC960B0;
    goto LABEL_67;
  }

LABEL_356:
  LODWORD(v136) = v7;
  if (!_SBF_Private_IsD23Like())
  {
LABEL_360:
    v135 = 0;
    HIDWORD(v134) = 0;
    goto LABEL_370;
  }

  v56 = __sb__runningInSpringBoard();
  if (v56)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_360;
    }
  }

  else
  {
    v91 = [MEMORY[0x277D75418] currentDevice];
    if ([v91 userInterfaceIdiom])
    {
      HIDWORD(v134) = 0;
      v135 = 1;
      goto LABEL_370;
    }
  }

  v135 = v56 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v82 = [MEMORY[0x277D759A0] mainScreen];
      [v82 _referenceBounds];
    }

    HIDWORD(v134) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v61 >= *(MEMORY[0x277D66E30] + 216))
    {
      LODWORD(v134) = 0;
      v132 = 0;
      v133 = 0;
      v130 = 0;
      v131 = 0;
      v129 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC960B8;
      goto LABEL_67;
    }
  }

  else
  {
    HIDWORD(v134) = 0;
  }

LABEL_370:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v134) = 0;
      HIDWORD(v133) = 0;
      goto LABEL_380;
    }
  }

  else
  {
    v94 = [MEMORY[0x277D75418] currentDevice];
    if ([v94 userInterfaceIdiom])
    {
      HIDWORD(v133) = 0;
      LODWORD(v134) = 1;
      goto LABEL_380;
    }
  }

  LODWORD(v134) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v85 = [MEMORY[0x277D759A0] mainScreen];
      [v85 _referenceBounds];
    }

    HIDWORD(v133) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v58 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_384;
    }
  }

  else
  {
    HIDWORD(v133) = 0;
  }

LABEL_380:
  if (_SBF_Private_IsD23Like())
  {
    LODWORD(v133) = 0;
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC960C0;
    goto LABEL_67;
  }

LABEL_384:
  v59 = __sb__runningInSpringBoard();
  if (v59)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v133) = 0;
      HIDWORD(v132) = 0;
      goto LABEL_394;
    }
  }

  else
  {
    v92 = [MEMORY[0x277D75418] currentDevice];
    if ([v92 userInterfaceIdiom])
    {
      HIDWORD(v132) = 0;
      LODWORD(v133) = 1;
      goto LABEL_394;
    }
  }

  LODWORD(v133) = v59 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v83 = [MEMORY[0x277D759A0] mainScreen];
      [v83 _referenceBounds];
    }

    HIDWORD(v132) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v60 >= *(MEMORY[0x277D66E30] + 120))
    {
      LODWORD(v132) = 0;
      v130 = 0;
      v131 = 0;
      v129 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96098;
      goto LABEL_67;
    }
  }

  else
  {
    HIDWORD(v132) = 0;
  }

LABEL_394:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v132) = 0;
      HIDWORD(v131) = 0;
      goto LABEL_404;
    }
  }

  else
  {
    v88 = [MEMORY[0x277D75418] currentDevice];
    if ([v88 userInterfaceIdiom])
    {
      HIDWORD(v131) = 0;
      LODWORD(v132) = 1;
      goto LABEL_404;
    }
  }

  LODWORD(v132) = v7 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v81 = [MEMORY[0x277D759A0] mainScreen];
      [v81 _referenceBounds];
    }

    HIDWORD(v131) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v62 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_414;
    }
  }

  else
  {
    HIDWORD(v131) = 0;
  }

LABEL_404:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    LODWORD(v131) = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC960A0;
    goto LABEL_67;
  }

LABEL_414:
  v63 = __sb__runningInSpringBoard();
  if (v63)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v131) = 0;
      HIDWORD(v130) = 0;
      goto LABEL_424;
    }
  }

  else
  {
    v87 = [MEMORY[0x277D75418] currentDevice];
    if ([v87 userInterfaceIdiom])
    {
      HIDWORD(v130) = 0;
      LODWORD(v131) = 1;
      goto LABEL_424;
    }
  }

  LODWORD(v131) = v63 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v80 = [MEMORY[0x277D759A0] mainScreen];
      [v80 _referenceBounds];
    }

    HIDWORD(v130) = v7 ^ 1;
    BSSizeRoundForScale();
    if (v66 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(v130) = 0;
      v129 = 0;
      v128 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96068;
      goto LABEL_67;
    }
  }

  else
  {
    HIDWORD(v130) = 0;
  }

LABEL_424:
  v64 = __sb__runningInSpringBoard();
  if (v64)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v130) = 0;
      v7 = 0;
      goto LABEL_434;
    }
  }

  else
  {
    v84 = [MEMORY[0x277D75418] currentDevice];
    if ([v84 userInterfaceIdiom])
    {
      v7 = 0;
      LODWORD(v130) = 1;
      goto LABEL_434;
    }
  }

  LODWORD(v130) = v64 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v65 = __sb__runningInSpringBoard();
    if (v65)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v79 = [MEMORY[0x277D759A0] mainScreen];
      [v79 _referenceBounds];
    }

    v7 = v65 ^ 1u;
    BSSizeRoundForScale();
    if (v67 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_441;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_434:
  if (_SBF_Private_IsD53())
  {
    HIDWORD(v129) = v7;
    LODWORD(v129) = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96070;
    goto LABEL_67;
  }

LABEL_441:
  HIDWORD(v129) = v7;
  if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
  {
    LODWORD(v129) = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96048;
    goto LABEL_67;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
  {
    LODWORD(v129) = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96050;
    goto LABEL_67;
  }

  if (_SBF_Private_IsD52OrSimilarDevice())
  {
    LODWORD(v129) = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96038;
    goto LABEL_67;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
    LODWORD(v129) = 0;
    v128 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96040;
    goto LABEL_67;
  }

  v68 = __sb__runningInSpringBoard();
  if (v68)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v129) = 0;
      v128 = 0;
      goto LABEL_461;
    }
  }

  else
  {
    v78 = [MEMORY[0x277D75418] currentDevice];
    if ([v78 userInterfaceIdiom])
    {
      v128 = 0;
      LODWORD(v129) = 1;
      goto LABEL_461;
    }
  }

  LODWORD(v129) = v68 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v76 = [MEMORY[0x277D759A0] mainScreen];
      [v76 _referenceBounds];
    }

    v128 = v7 ^ 1;
    BSSizeRoundForScale();
    if (v71 >= *(MEMORY[0x277D66E30] + 88))
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96058;
      goto LABEL_67;
    }
  }

  else
  {
    v128 = 0;
  }

LABEL_461:
  v69 = __sb__runningInSpringBoard();
  if (v69)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v18 = 0;
      v19 = 0;
      goto LABEL_471;
    }
  }

  else
  {
    v77 = [MEMORY[0x277D75418] currentDevice];
    if ([v77 userInterfaceIdiom])
    {
      v19 = 0;
      v18 = 1;
      goto LABEL_471;
    }
  }

  v18 = v69 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v75 = [MEMORY[0x277D759A0] mainScreen];
      [v75 _referenceBounds];
    }

    v19 = v7 ^ 1;
    BSSizeRoundForScale();
    if (v72 >= *(MEMORY[0x277D66E30] + 72))
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = &qword_21EC96060;
      goto LABEL_67;
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_471:
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v20 = 0;
      v21 = 0;
      goto LABEL_481;
    }
  }

  else
  {
    v5 = [MEMORY[0x277D75418] currentDevice];
    if ([v5 userInterfaceIdiom])
    {
      v21 = 0;
      v20 = 1;
      goto LABEL_481;
    }
  }

  v20 = v7 ^ 1;
  v7 = __sb__runningInSpringBoard();
  if (v7)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v4 = [MEMORY[0x277D759A0] mainScreen];
    [v4 _referenceBounds];
  }

  v21 = v7 ^ 1;
  BSSizeRoundForScale();
  if (v70 >= *(MEMORY[0x277D66E30] + 56))
  {
    v22 = 0;
    v23 = 0;
    v24 = &qword_21EC96030;
    goto LABEL_67;
  }

LABEL_481:
  v2 = __sb__runningInSpringBoard();
  if (v2)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v22 = 0;
      v23 = 0;
LABEL_498:
      v24 = &CSQuickActionButtonDiameter;
      goto LABEL_67;
    }
  }

  else
  {
    v7 = [MEMORY[0x277D75418] currentDevice];
    if ([v7 userInterfaceIdiom])
    {
      v23 = 0;
      v22 = 1;
      goto LABEL_498;
    }
  }

  v22 = v2 ^ 1;
  v73 = __sb__runningInSpringBoard();
  if (v73)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v2 = [MEMORY[0x277D759A0] mainScreen];
    [v2 _referenceBounds];
  }

  v23 = v73 ^ 1;
  BSSizeRoundForScale();
  if (v74 < *(MEMORY[0x277D66E30] + 40))
  {
    goto LABEL_498;
  }

  v24 = &qword_21EC96028;
LABEL_67:
  v32 = *v24;
  if (v23)
  {
  }

  if (v22)
  {
  }

  if (v21)
  {
  }

  if (v20)
  {
  }

  if (v19)
  {
  }

  if (v18)
  {
  }

  if (v128)
  {
  }

  if (v129)
  {
  }

  if (HIDWORD(v129))
  {
  }

  if (v130)
  {
  }

  if (HIDWORD(v130))
  {
  }

  if (v131)
  {
  }

  if (HIDWORD(v131))
  {
  }

  if (v132)
  {
  }

  if (HIDWORD(v132))
  {
  }

  if (v133)
  {
  }

  if (HIDWORD(v133))
  {
  }

  if (v134)
  {
  }

  if (HIDWORD(v134))
  {
  }

  if (v135)
  {
  }

  if (v136)
  {
  }

  if (HIDWORD(v136))
  {
  }

  if (v137)
  {
  }

  if (HIDWORD(v137))
  {
  }

  if (v138)
  {
  }

  if (HIDWORD(v138))
  {
  }

  if (v139)
  {
  }

  if (HIDWORD(v139))
  {
  }

  if (v140)
  {
  }

  if (HIDWORD(v140))
  {
  }

  if (v141)
  {
  }

  if (HIDWORD(v141))
  {
  }

  if (v142)
  {
  }

  if (HIDWORD(v142))
  {
  }

  if (v143)
  {
  }

  if (HIDWORD(v143))
  {
  }

  if (v144)
  {
  }

  if (HIDWORD(v144))
  {
  }

  if (v145)
  {
  }

  if (HIDWORD(v145))
  {
  }

  if (v146)
  {
  }

  if (HIDWORD(v146))
  {
  }

  if (v147)
  {
  }

  if (HIDWORD(v147))
  {
  }

  if (v148)
  {
  }

  if (DWORD1(v148))
  {
  }

  if (DWORD2(v148))
  {
  }

  if (HIDWORD(v148))
  {

    if (!v149)
    {
      goto LABEL_163;
    }
  }

  else if (!v149)
  {
LABEL_163:
    if (v150)
    {
      goto LABEL_164;
    }

    goto LABEL_174;
  }

  if (v150)
  {
LABEL_164:

    if (!v151)
    {
      goto LABEL_165;
    }

    goto LABEL_175;
  }

LABEL_174:
  if (!v151)
  {
LABEL_165:
    if (v152)
    {
      goto LABEL_166;
    }

    goto LABEL_176;
  }

LABEL_175:

  if (v152)
  {
LABEL_166:

    if (!v153)
    {
      goto LABEL_167;
    }

    goto LABEL_177;
  }

LABEL_176:
  if (!v153)
  {
LABEL_167:
    if (v154)
    {
      goto LABEL_168;
    }

    goto LABEL_178;
  }

LABEL_177:

  if (v154)
  {
LABEL_168:

    if (!v155)
    {
      goto LABEL_169;
    }

    goto LABEL_179;
  }

LABEL_178:
  if (!v155)
  {
LABEL_169:
    if (v156)
    {
      goto LABEL_170;
    }

    goto LABEL_180;
  }

LABEL_179:

  if (v156)
  {
LABEL_170:

    if (!v157)
    {
      return v32;
    }

    goto LABEL_181;
  }

LABEL_180:
  if (v157)
  {
LABEL_181:
  }

  return v32;
}

- (void)_actionVisibilityDidUpdate
{
  v3 = [(CSQuickActionsButton *)self action];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [(CSQuickActionsButton *)self action];
    if (self->_visible)
    {
      v5 = [(CSQuickActionsButton *)self action];
      if ([v5 showsButton])
      {
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = [v8 controlInstance];
    [v7 setVisibility:v6];
  }
}

- (CSQuickActionsButton)initWithAction:(id)a3 luminanceMap:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = CSQuickActionsButton;
  v7 = [(CSProminentButtonControl *)&v10 initWithFrame:a4 luminanceMap:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v8 = v7;
  if (v7)
  {
    [(CSQuickActionsButton *)v7 setAction:v6];
    [(CSQuickActionsButton *)v8 setGlyphViewForAction:v6];
  }

  return v8;
}

- (id)_placeholderCopy
{
  v3 = [(CSQuickActionsButton *)self action];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [CSQuickActionImageGlyphView alloc];
    v8 = [v3 symbolName];
    v9 = [v3 selectedSymbolName];
    [v3 symbolScaleValue];
    v11 = v10;
    [objc_opt_class() buttonDiameter];
    v13 = v12;
    v14 = [v3 symbolOnColor];
    v15 = [(CSQuickActionImageGlyphView *)v7 initWithSystemImageName:v8 selectedSystemImageName:v9 symbolScaleValue:v14 buttonDiameter:v11 symbolOnColor:v13];
LABEL_10:

    v23 = [(CSProminentButtonControl *)self glyphView];
    [v23 frame];
    [(CSQuickActionImageGlyphView *)v15 setFrame:?];

    v24 = [(CSProminentButtonControl *)self copyWithoutGlyphView];
    v25 = objc_opt_class();
    v26 = v24;
    if (v25)
    {
      if (objc_opt_isKindOfClass())
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;

    [v28 setSelected:0];
    [v28 setGlyphView:v15];
    goto LABEL_16;
  }

  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v15 = v6;

  v9 = [(CSQuickActionImageGlyphView *)v15 controlInstance];
  v16 = [v9 descriptor];
  if (v16)
  {
    v14 = v16;
    v17 = MEMORY[0x277CFA528];
    v18 = [v16 controlType];
    v19 = [v9 instanceIdentity];
    v20 = [v17 instanceOfType:v18 instanceIdentity:v19];

    [v20 modifyConfiguration:&__block_literal_global_18];
    [v20 activate];
    [v20 setVisibility:2];
    v21 = [CSQuickActionControlGlyphView alloc];
    [(CSQuickActionImageGlyphView *)v15 symbolScaleValue];
    v22 = [(CSQuickActionControlGlyphView *)v21 initWithControlInstance:v20 symbolScaleValue:?];

    v8 = v15;
    v15 = v22;
    goto LABEL_10;
  }

  v30 = SBLogDashBoard();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    [(CSQuickActionsButton *)v15 _placeholderCopy];
  }

  v28 = 0;
LABEL_16:

  return v28;
}

- (void)setAppearance:(int64_t)a3
{
  if (self->_appearance != a3)
  {
    self->_appearance = a3;
    v4 = [(CSProminentButtonControl *)self glyphView];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(CSProminentButtonControl *)self glyphView];
      [v6 setAppearance:self->_appearance];
    }
  }
}

- (void)setLegibilitySettings:(id)a3
{
  v5 = a3;
  if (([v5 sb_isEqualToLegibilitySettings:self->_legibilitySettings] & 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, a3);
    [(CSQuickActionsButton *)self _updateTintColorForPermittedState];
  }
}

- (void)setAction:(id)a3
{
  v5 = a3;
  if (self->_action != v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    objc_storeStrong(&self->_action, a3);
    [(CSQuickAction *)v5 setDelegate:self];
    [(CSQuickActionsButton *)self setHidden:[(CSQuickAction *)v5 showsButton]^ 1];
    [(CSQuickActionsButton *)self setAppearance:[(CSQuickAction *)v5 appearance]];
    [(CSQuickActionsButton *)self setEnabled:[(CSQuickAction *)v5 allowsInteraction]];
    [(CSProminentButtonControl *)self setSelected:[(CSQuickAction *)v5 isSelected]];
    [(CSQuickActionsButton *)self _updateTintColorForPermittedState];
    [(CSQuickActionsButton *)self _actionVisibilityDidUpdate];
  }
}

- (void)setGlyphView:(id)a3
{
  v4 = a3;
  v5 = [(CSProminentButtonControl *)self glyphView];

  if (v5 != v4)
  {
    v6.receiver = self;
    v6.super_class = CSQuickActionsButton;
    [(CSProminentButtonControl *)&v6 setGlyphView:v4];
    if (objc_opt_respondsToSelector())
    {
      [v4 setAppearance:self->_appearance];
    }
  }
}

- (void)setGlyphViewForAction:(id)a3
{
  v4 = [(CSQuickActionsButton *)self _createButtonGlyphForAction:a3];
  [(CSQuickActionsButton *)self setGlyphView:v4];
}

- (id)_createButtonGlyphForAction:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [CSQuickActionControlGlyphView alloc];
    v6 = [v4 controlInstance];
    [v4 symbolScaleValue];
    v8 = v7;

    v9 = [(CSQuickActionControlGlyphView *)v5 initWithControlInstance:v6 symbolScaleValue:v8];
  }

  else
  {
    v10 = [CSQuickActionImageGlyphView alloc];
    v6 = [v3 symbolName];
    v11 = [v3 selectedSymbolName];
    [v3 symbolScaleValue];
    v13 = v12;
    [objc_opt_class() buttonDiameter];
    v15 = v14;
    v16 = [v3 symbolOnColor];
    v9 = [(CSQuickActionImageGlyphView *)v10 initWithSystemImageName:v6 selectedSystemImageName:v11 symbolScaleValue:v16 buttonDiameter:v13 symbolOnColor:v15];
  }

  return v9;
}

- (void)setVisible:(BOOL)a3
{
  if (self->_visible != a3)
  {
    self->_visible = a3;
    [(CSQuickActionsButton *)self _actionVisibilityDidUpdate];
  }
}

- (void)showsButtonDidChangeForAction:(id)a3
{
  v6 = a3;
  v4 = [(CSQuickActionsButton *)self action];

  v5 = v6;
  if (v4 == v6)
  {
    -[CSQuickActionsButton setHidden:](self, "setHidden:", [v6 showsButton] ^ 1);
    -[CSQuickActionsButton setAppearance:](self, "setAppearance:", [v6 appearance]);
    -[CSQuickActionsButton setEnabled:](self, "setEnabled:", [v6 allowsInteraction]);
    [(CSQuickActionsButton *)self _actionVisibilityDidUpdate];
    v5 = v6;
  }
}

- (void)isSelectedDidChangeForAction:(id)a3
{
  v6 = a3;
  v4 = [(CSQuickActionsButton *)self action];

  v5 = v6;
  if (v4 == v6)
  {
    -[CSProminentButtonControl setSelected:](self, "setSelected:", [v6 isSelected]);
    v5 = v6;
  }
}

- (void)allowsInteractionDidChangeForAction:(id)a3
{
  v6 = a3;
  v4 = [(CSQuickActionsButton *)self action];

  v5 = v6;
  if (v4 == v6)
  {
    -[CSQuickActionsButton setAppearance:](self, "setAppearance:", [v6 appearance]);
    -[CSQuickActionsButton setEnabled:](self, "setEnabled:", [v6 allowsInteraction]);
    v5 = v6;
  }
}

- (void)_updateTintColorForPermittedState
{
  v3 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277D75348] whiteColor];
  }

  v6 = v5;

  appearance = self->_appearance;
  v8 = 1.0;
  if (appearance == 1)
  {
    v8 = 0.5;
  }

  if (appearance == 2)
  {
    v8 = 0.25;
  }

  v9 = [v6 colorWithAlphaComponent:v8];

  [(CSQuickActionsButton *)self setTintColor:v9];
}

- (id)_accessoryTitleForAction:(id)a3
{
  v3 = [a3 accessoryTitleKey];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:v3 value:&stru_28302FDA0 table:@"CoverSheet"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_systemImageWithName:(id)a3 configuration:(id)a4
{
  v4 = [MEMORY[0x277D755B8] systemImageNamed:a3 withConfiguration:a4];
  v5 = [v4 _imageThatSuppressesAccessibilityHairlineThickening];

  return v5;
}

- (BOOL)clickInteractionShouldBegin:(id)a3
{
  v4 = a3;
  if (self->_callingSuper || ([-[CSQuickActionsButton superclass](self "superclass")] & 1) == 0)
  {
    self->_callingSuper = 0;
    goto LABEL_6;
  }

  self->_callingSuper = 1;
  v9.receiver = self;
  v9.super_class = CSQuickActionsButton;
  v5 = [(CSQuickActionsButton *)&v9 performSelector:sel_clickInteractionShouldBegin_ withObject:v4];
  self->_callingSuper = 0;
  if (v5)
  {
LABEL_6:
    v7 = [(CSQuickActionsButton *)self delegate];
    v6 = [v7 shouldAllowClickInteraction:v4 toBeginForButton:self];

    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (CGRect)iconImageFrame
{
  v3 = [(CSProminentButtonControl *)self backgroundView];
  v4 = [v3 superview];
  [v3 frame];
  [v4 convertRect:self toView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGSize)iconImageSize
{
  [(CSQuickActionsButton *)self iconImageFrame];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (void)setMorphFraction:(double)a3
{
  [(UIView *)self->_iconZoomBackgroundView setAlpha:1.0 - a3];
  if (BSFloatIsOne())
  {
    iconZoomBackgroundView = self->_iconZoomBackgroundView;
    x = self->_iconZoomCrossfadeCounterpartFrame.origin.x;
    y = self->_iconZoomCrossfadeCounterpartFrame.origin.y;
    width = self->_iconZoomCrossfadeCounterpartFrame.size.width;
    height = self->_iconZoomCrossfadeCounterpartFrame.size.height;
  }

  else
  {
    if (!BSFloatIsZero())
    {
      return;
    }

    v9 = self->_iconZoomBackgroundView;
    [(CSQuickActionsButton *)self iconImageFrame];
    iconZoomBackgroundView = v9;
  }

  [(UIView *)iconZoomBackgroundView setFrame:x, y, width, height];
}

- (void)prepareToCrossfadeImageWithView:(id)a3
{
  v4 = a3;
  v5 = [(CSProminentButtonControl *)self copyBackgroundView];
  iconZoomBackgroundView = self->_iconZoomBackgroundView;
  self->_iconZoomBackgroundView = v5;

  [(CSQuickActionsButton *)self insertSubview:self->_iconZoomBackgroundView atIndex:0];
  v7 = self->_iconZoomBackgroundView;
  [(CSProminentButtonControl *)self containerCornerRadius];
  [(UIView *)v7 _setCornerRadius:?];
  [(CSQuickActionsButton *)self iconImageFrame];
  v26 = v9;
  v27 = v8;
  v11 = v10;
  v13 = v12;
  [v4 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v30.origin.x = v15;
  v30.origin.y = v17;
  v30.size.width = v19;
  v30.size.height = v21;
  CGRectGetWidth(v30);
  if ((BSFloatIsZero() & 1) == 0)
  {
    v31.origin.y = v26;
    *&v31.origin.x = v27;
    v31.size.width = v11;
    v31.size.height = v13;
    CGRectGetWidth(v31);
    v32.origin.x = v15;
    v32.origin.y = v17;
    v32.size.width = v19;
    v32.size.height = v21;
    CGRectGetWidth(v32);
  }

  v33.origin.x = v15;
  v33.origin.y = v17;
  v33.size.width = v19;
  v33.size.height = v21;
  CGRectGetWidth(v33);
  v34.origin.x = v15;
  v34.origin.y = v17;
  v34.size.width = v19;
  v34.size.height = v21;
  CGRectGetHeight(v34);
  UIRectCenteredRect();
  self->_iconZoomCrossfadeCounterpartFrame.origin.x = v22;
  self->_iconZoomCrossfadeCounterpartFrame.origin.y = v23;
  self->_iconZoomCrossfadeCounterpartFrame.size.width = v24;
  self->_iconZoomCrossfadeCounterpartFrame.size.height = v25;
  v28 = [(CSProminentButtonControl *)self backgroundView];
  [v28 setHidden:1];
}

- (BOOL)hasSameOriginatingIconAsForIconZoomingView:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [(CSQuickActionsButton *)self action];
    v10 = [v8 action];
    v11 = [v9 isEqual:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (double)adjustedCrossfadeProgressForCrossfadeProgress:(double)a3
{
  v3 = (a3 + -0.25) / 0.35;
  if (v3 <= 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v3 + 0.0;
  }

  return fmin(v4, 1.0);
}

- (void)setIconContentHidden:(BOOL)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  if (a3)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  v11 = 0uLL;
  v12 = 0uLL;
  v4 = [(CSQuickActionsButton *)self subviews];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * i) setAlpha:v3];
      }

      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)cleanUpAfterCrossfadeCompletion
{
  [(UIView *)self->_iconZoomBackgroundView removeFromSuperview];
  iconZoomBackgroundView = self->_iconZoomBackgroundView;
  self->_iconZoomBackgroundView = 0;

  v4 = [(CSProminentButtonControl *)self backgroundView];
  [v4 setHidden:0];
}

- (double)scaleForFadeValue:(double)a3 originalSize:(CGSize)a4 containerSize:(CGSize)a5
{
  width = a5.width;
  [(CSQuickActionsButton *)self iconImageSize:a3];
  v7 = v6;
  IsZero = BSFloatIsZero();
  result = width / v7;
  if (IsZero)
  {
    return 0.0;
  }

  return result;
}

- (id)_buttonGroupName
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"%@.button", v4];

  return v5;
}

- (CSQuickActionsButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_placeholderCopy
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 control];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_21EB05000, a3, OS_LOG_TYPE_ERROR, "[Quick Action] placeholder not created because found nil descriptor for %{public}@ with control %{public}@", &v6, 0x16u);
}

@end