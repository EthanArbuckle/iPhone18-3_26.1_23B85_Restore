@interface CSCoverSheetTransitionSettings
+ (id)settingsControllerModule;
- (double)trackingWallpaperParallaxFactor;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)setDefaultValues;
@end

@implementation CSCoverSheetTransitionSettings

- (double)trackingWallpaperParallaxFactor
{
  v3 = 1.0;
  if (![(CSCoverSheetTransitionSettings *)self _isMaglevActive])
  {
    if ([(CSCoverSheetTransitionSettings *)self trackingWallpaper])
    {
      v3 = 0.0;
      if (!UIAccessibilityIsReduceMotionEnabled())
      {
        return self->_trackingWallpaperParallaxFactor;
      }
    }
  }

  return v3;
}

- (void)setDefaultValues
{
  [(CSCoverSheetTransitionSettings *)self setBlursPanel:1];
  [(CSCoverSheetTransitionSettings *)self setBlurRadius:20.0];
  [(CSCoverSheetTransitionSettings *)self setBlurStart:0.2];
  [(CSCoverSheetTransitionSettings *)self setBlurEnd:0.4];
  [(CSCoverSheetTransitionSettings *)self setBlurEndReducedTransparency:0.275];
  [(CSCoverSheetTransitionSettings *)self setFadesContent:1];
  [(CSCoverSheetTransitionSettings *)self setMaxContentAlpha:1.0];
  [(CSCoverSheetTransitionSettings *)self setContentFadeStart:0.3];
  [(CSCoverSheetTransitionSettings *)self setContentFadeEnd:0.7];
  [(CSCoverSheetTransitionSettings *)self setDarkensContent:1];
  [(CSCoverSheetTransitionSettings *)self setDarkeningColorWhite:0.0];
  [(CSCoverSheetTransitionSettings *)self setDarkeningColorAlpha:0.2];
  [(CSCoverSheetTransitionSettings *)self setDarkeningStart:0.0];
  [(CSCoverSheetTransitionSettings *)self setDarkeningEnd:0.5];
  [(CSCoverSheetTransitionSettings *)self setPanelWallpaper:0];
  [(CSCoverSheetTransitionSettings *)self setTrackingWallpaper:0];
  [(CSCoverSheetTransitionSettings *)self setTrackingWallpaperParallaxFactor:0.5];
  [(CSCoverSheetTransitionSettings *)self setRevealWallpaper:0];
  [(CSCoverSheetTransitionSettings *)self setOrientPanelWallpaper:1];
  [(CSCoverSheetTransitionSettings *)self setFadePanelWallpaper:0];
  [(CSCoverSheetTransitionSettings *)self setFadePanelWallpaperStart:0.2];
  [(CSCoverSheetTransitionSettings *)self setFadePanelWallpaperEnd:1.0];
  [(CSCoverSheetTransitionSettings *)self setScaleWallpaper:0];
  [(CSCoverSheetTransitionSettings *)self setWallpaperScale:1.4];
  wallpaperScaleSettings = [(CSCoverSheetTransitionSettings *)self wallpaperScaleSettings];
  [wallpaperScaleSettings setDefaultValues];
  [wallpaperScaleSettings setBehaviorType:1];
  [wallpaperScaleSettings setDampingRatio:1.0];
  [wallpaperScaleSettings setResponse:0.75];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [wallpaperScaleSettings setFrameRateRange:1114125 highFrameRateReason:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
  [(CSCoverSheetTransitionSettings *)self setFadesCoverSheetContent:0];
  [(CSCoverSheetTransitionSettings *)self setAlwaysFadesCoverSheetContent:0];
  [(CSCoverSheetTransitionSettings *)self setFadesCoverSheetContentStart:0.0];
  [(CSCoverSheetTransitionSettings *)self setFadesCoverSheetContentEnd:0.75];
  [(CSCoverSheetTransitionSettings *)self setBlursBehindCoverSheet:0];
  [(CSCoverSheetTransitionSettings *)self setBehindCoverSheetBlurRadius:50.0];
  [(CSCoverSheetTransitionSettings *)self setBehindCoverSheetBlurStart:0.0];
  [(CSCoverSheetTransitionSettings *)self setBehindCoverSheetBlurEnd:1.0];
  [(CSCoverSheetTransitionSettings *)self setIconsFlyIn:1];
  [(CSCoverSheetTransitionSettings *)self setFloatingLayerAsWallpaperOverlay:0];
  [(CSCoverSheetTransitionSettings *)self setTransitionStyle:0];
  [(CSCoverSheetTransitionSettings *)self setUsesFixedWallpaperPresentationProgress:0];
  [(CSCoverSheetTransitionSettings *)self setFixedWallpaperPresentationProgress:0.0];
  [(CSCoverSheetTransitionSettings *)self setCrossBlursForTransition:0];
  [(CSCoverSheetTransitionSettings *)self setCrossBlurStart:0.0];
  [(CSCoverSheetTransitionSettings *)self setCrossBlurEnd:1.0];
  [(CSCoverSheetTransitionSettings *)self setSupportsGlassEffects:1];
}

+ (id)settingsControllerModule
{
  v173[4] = *MEMORY[0x277D85DE8];
  v152 = [MEMORY[0x277D432A0] rowWithTitle:@"Blurs Panel" valueKeyPath:@"blursPanel"];
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"blursPanel == YES"];
  v3 = [MEMORY[0x277D43298] rowWithTitle:@"Blur Start" valueKeyPath:@"blurStart"];
  v4 = [v3 minValue:0.0 maxValue:1.0];
  v5 = [v4 valueValidator:&__block_literal_global_440];
  v151 = [v5 condition:v2];

  v6 = [MEMORY[0x277D43298] rowWithTitle:@"Blur End" valueKeyPath:@"blurEnd"];
  v7 = [v6 minValue:0.0 maxValue:1.0];
  v8 = [v7 valueValidator:&__block_literal_global_440];
  v155 = v2;
  v150 = [v8 condition:v2];

  v9 = [MEMORY[0x277D43298] rowWithTitle:@"Blur End Reduced Transparency" valueKeyPath:@"blurEndReducedTransparency"];
  v10 = [v9 minValue:0.0 maxValue:1.0];
  v11 = [v10 valueValidator:&__block_literal_global_440];
  v149 = [v11 condition:v2];

  v12 = MEMORY[0x277D43218];
  v173[0] = v152;
  v173[1] = v151;
  v173[2] = v150;
  v173[3] = v149;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v173 count:4];
  v161 = [v12 sectionWithRows:v13 title:@"Blur"];

  v147 = [MEMORY[0x277CCAC30] predicateWithFormat:@"orientPanelWallpaper == YES"];
  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"panelWallpaper == YES"];
  v148 = [MEMORY[0x277CCAC30] predicateWithFormat:@"trackingWallpaper == YES"];
  v160 = [MEMORY[0x277D432A0] rowWithTitle:@"Panel Wallpaper" valueKeyPath:@"panelWallpaper"];
  v15 = [MEMORY[0x277D432A0] rowWithTitle:@"Tracking Wallpaper" valueKeyPath:@"trackingWallpaper"];
  v16 = v14;
  v159 = [v15 condition:v14];

  v17 = [MEMORY[0x277D43298] rowWithTitle:@"Parallax Factor" valueKeyPath:@"trackingWallpaperParallaxFactor"];
  v18 = [v17 minValue:0.0 maxValue:1.0];
  v19 = [v18 valueValidator:&__block_literal_global_440];
  v158 = [v19 condition:v148];

  v20 = [MEMORY[0x277D432A0] rowWithTitle:@"Reveal Wallpaper" valueKeyPath:@"revealWallpaper"];
  v21 = [MEMORY[0x277CCAC30] predicateWithFormat:@"panelWallpaper == NO"];
  v146 = [v20 condition:v21];

  v22 = [MEMORY[0x277D432A0] rowWithTitle:@"Orient Panel Wallpaper" valueKeyPath:@"orientPanelWallpaper"];
  v145 = [v22 condition:v147];

  v23 = [MEMORY[0x277D432A0] rowWithTitle:@"Fade Panel Wallpaper" valueKeyPath:@"fadePanelWallpaper"];
  v144 = [v23 condition:v16];

  v24 = [MEMORY[0x277D43298] rowWithTitle:@"Panel WP Fade Start" valueKeyPath:@"fadePanelWallpaperStart"];
  v25 = [v24 minValue:0.0 maxValue:1.0];
  v26 = [v25 valueValidator:&__block_literal_global_440];
  v143 = [v26 condition:v16];

  v27 = [MEMORY[0x277D43298] rowWithTitle:@"Panel WP Fade End" valueKeyPath:@"fadePanelWallpaperEnd"];
  v28 = [v27 minValue:0.0 maxValue:1.0];
  v29 = [v28 valueValidator:&__block_literal_global_440];
  v142 = [v29 condition:v16];

  v30 = MEMORY[0x277D43218];
  v172[0] = v160;
  v172[1] = v159;
  v172[2] = v158;
  v172[3] = v146;
  v172[4] = v145;
  v172[5] = v144;
  v172[6] = v143;
  v172[7] = v142;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v172 count:8];
  v157 = [v30 sectionWithRows:v31 title:@"Panel Wallpaper"];

  v141 = [MEMORY[0x277D432A0] rowWithTitle:@"Scale Wallpaper" valueKeyPath:@"scaleWallpaper"];
  v32 = [MEMORY[0x277CCAC30] predicateWithFormat:@"scaleWallpaper == YES"];
  v33 = [MEMORY[0x277D43298] rowWithTitle:@"WP Scale" valueKeyPath:@"wallpaperScale"];
  v34 = [v33 minValue:0.75 maxValue:2.0];
  v140 = [v34 condition:v32];

  v35 = [MEMORY[0x277D431E0] rowWithTitle:@"WP Scale Settings" childSettingsKeyPath:@"wallpaperScaleSettings"];
  v139 = [v35 condition:v32];

  v36 = MEMORY[0x277D43218];
  v171[0] = v141;
  v171[1] = v140;
  v171[2] = v139;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v171 count:3];
  v156 = [v36 sectionWithRows:v37 title:@"Scale Wallpaper"];

  v137 = [MEMORY[0x277D432A0] rowWithTitle:@"Fades Content" valueKeyPath:@"fadesContent"];
  v38 = [MEMORY[0x277CCAC30] predicateWithFormat:@"fadesContent == YES"];
  v39 = [MEMORY[0x277D43298] rowWithTitle:@"Content Alpha" valueKeyPath:@"maxContentAlpha"];
  v40 = [v39 minValue:0.0 maxValue:1.0];
  v41 = [v40 valueValidator:&__block_literal_global_440];
  v136 = [v41 condition:v38];

  v42 = [MEMORY[0x277D43298] rowWithTitle:@"Fade Start" valueKeyPath:@"contentFadeStart"];
  v43 = [v42 minValue:0.0 maxValue:1.0];
  v44 = [v43 valueValidator:&__block_literal_global_440];
  v138 = v38;
  v135 = [v44 condition:v38];

  v45 = [MEMORY[0x277D43298] rowWithTitle:@"Fade End" valueKeyPath:@"contentFadeEnd"];
  v46 = [v45 minValue:0.0 maxValue:1.0];
  v47 = [v46 valueValidator:&__block_literal_global_440];
  v134 = [v47 condition:v38];

  v48 = MEMORY[0x277D43218];
  v170[0] = v137;
  v170[1] = v136;
  v170[2] = v135;
  v170[3] = v134;
  v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v170 count:4];
  v154 = [v48 sectionWithRows:v49 title:@"Fade Content"];

  v132 = [MEMORY[0x277D432A0] rowWithTitle:@"Darkens Content" valueKeyPath:@"darkensContent"];
  v50 = [MEMORY[0x277CCAC30] predicateWithFormat:@"darkensContent == YES"];
  v51 = [MEMORY[0x277D43298] rowWithTitle:@"Color White" valueKeyPath:@"darkeningColorWhite"];
  v52 = [v51 minValue:0.0 maxValue:1.0];
  v53 = [v52 valueValidator:&__block_literal_global_440];
  v131 = [v53 condition:v50];

  v54 = [MEMORY[0x277D43298] rowWithTitle:@"Color Alpha" valueKeyPath:@"darkeningColorAlpha"];
  v55 = [v54 minValue:0.0 maxValue:1.0];
  v56 = [v55 valueValidator:&__block_literal_global_440];
  v130 = [v56 condition:v50];

  v57 = [MEMORY[0x277D43298] rowWithTitle:@"Start" valueKeyPath:@"darkeningStart"];
  v58 = [v57 minValue:0.0 maxValue:1.0];
  v59 = [v58 valueValidator:&__block_literal_global_440];
  v133 = v50;
  v129 = [v59 condition:v50];

  v60 = [MEMORY[0x277D43298] rowWithTitle:@"End" valueKeyPath:@"darkeningEnd"];
  v61 = [v60 minValue:0.0 maxValue:1.0];
  v62 = [v61 valueValidator:&__block_literal_global_440];
  v128 = [v62 condition:v50];

  v63 = MEMORY[0x277D43218];
  v169[0] = v132;
  v169[1] = v131;
  v169[2] = v130;
  v169[3] = v129;
  v169[4] = v128;
  v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v169 count:5];
  v153 = [v63 sectionWithRows:v64 title:@"Darken Content"];

  v126 = [MEMORY[0x277D432A0] rowWithTitle:@"Fades Cover Sheet" valueKeyPath:@"fadesCoverSheetContent"];
  v65 = [MEMORY[0x277CCAC30] predicateWithFormat:@"fadesCoverSheetContent == YES"];
  v66 = [MEMORY[0x277D43298] rowWithTitle:@"Fade Start" valueKeyPath:@"fadesCoverSheetContentStart"];
  v67 = [v66 minValue:0.0 maxValue:1.0];
  v125 = [v67 condition:v65];

  v68 = [MEMORY[0x277D43298] rowWithTitle:@"Fade End" valueKeyPath:@"fadesCoverSheetContentEnd"];
  v69 = [v68 minValue:0.0 maxValue:1.0];
  v127 = v65;
  v124 = [v69 condition:v65];

  v70 = [MEMORY[0x277D432A0] rowWithTitle:@"Always Fade" valueKeyPath:@"alwaysFadesCoverSheetContent"];
  v123 = [v70 condition:v65];

  v71 = MEMORY[0x277D43218];
  v168[0] = v126;
  v168[1] = v125;
  v168[2] = v124;
  v168[3] = v123;
  v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v168 count:4];
  v121 = [v71 sectionWithRows:v72 title:@"Fade Cover Sheet"];

  v120 = [MEMORY[0x277D432A0] rowWithTitle:@"Blurs Behind Cover Sheet" valueKeyPath:@"blursBehindCoverSheet"];
  v122 = [MEMORY[0x277CCAC30] predicateWithFormat:@"blursBehindCoverSheet == YES"];
  v73 = [MEMORY[0x277D43298] rowWithTitle:@"Blur Radius" valueKeyPath:@"behindCoverSheetBlurRadius"];
  v74 = [v73 minValue:0.0 maxValue:100.0];
  v75 = [v74 valueValidator:&__block_literal_global_442];
  v119 = [v75 condition:v122];

  v76 = [MEMORY[0x277D43298] rowWithTitle:@"Blur Start" valueKeyPath:@"behindCoverSheetBlurStart"];
  v77 = [v76 minValue:0.0 maxValue:1.0];
  v78 = [v77 valueValidator:&__block_literal_global_440];
  v118 = [v78 condition:v155];

  v79 = [MEMORY[0x277D43298] rowWithTitle:@"Blur End" valueKeyPath:@"behindCoverSheetBlurEnd"];
  v80 = [v79 minValue:0.0 maxValue:1.0];
  v81 = [v80 valueValidator:&__block_literal_global_440];
  v117 = [v81 condition:v155];

  v82 = MEMORY[0x277D43218];
  v167[0] = v120;
  v167[1] = v119;
  v167[2] = v118;
  v167[3] = v117;
  v83 = [MEMORY[0x277CBEA60] arrayWithObjects:v167 count:4];
  v116 = [v82 sectionWithRows:v83 title:@"Blur Behind Cover Sheet"];

  v114 = [MEMORY[0x277D432A0] rowWithTitle:@"Cross Blurs Wallpaper" valueKeyPath:@"crossBlursForTransition"];
  v84 = [MEMORY[0x277CCAC30] predicateWithFormat:@"crossBlursForTransition == YES"];
  v85 = [MEMORY[0x277D43298] rowWithTitle:@"Cross Blur Start" valueKeyPath:@"crossBlurStart"];
  v86 = [v85 minValue:0.0 maxValue:1.0];
  v115 = v84;
  v113 = [v86 condition:v84];

  v87 = [MEMORY[0x277D43298] rowWithTitle:@"Cross Blur End" valueKeyPath:@"crossBlurEnd"];
  v88 = [v87 minValue:0.0 maxValue:1.0];
  v112 = [v88 condition:v84];

  v89 = MEMORY[0x277D43218];
  v166[0] = v114;
  v166[1] = v113;
  v166[2] = v112;
  v90 = [MEMORY[0x277CBEA60] arrayWithObjects:v166 count:3];
  v91 = [v89 sectionWithRows:v90 title:@"Cross Blur"];

  v111 = [MEMORY[0x277D431B8] rowWithTitle:@"Transition Style" valueKeyPath:@"transitionStyle"];
  [v111 setPossibleTitles:&unk_283079830];
  [v111 setPossibleValues:&unk_283079848];
  v92 = MEMORY[0x277D43218];
  v165 = v111;
  v93 = [MEMORY[0x277CBEA60] arrayWithObjects:&v165 count:1];
  v109 = [v92 sectionWithRows:v93 title:@"Transition Style"];

  v110 = [MEMORY[0x277D432A0] rowWithTitle:@"Icons Fly In" valueKeyPath:@"iconsFlyIn"];
  v94 = MEMORY[0x277D43218];
  v164 = v110;
  v95 = [MEMORY[0x277CBEA60] arrayWithObjects:&v164 count:1];
  v96 = [v94 sectionWithRows:v95 title:@"Icons Fly In"];

  v108 = [MEMORY[0x277D432A0] rowWithTitle:@"Uses Fixed Wallpaper Presentation Progress" valueKeyPath:@"usesFixedWallpaperPresentationProgress"];
  v97 = [MEMORY[0x277CCAC30] predicateWithFormat:@"usesFixedWallpaperPresentationProgress == YES"];
  v98 = [MEMORY[0x277D43298] rowWithTitle:@"Fixed Wallpaper Presentation Progress" valueKeyPath:@"fixedWallpaperPresentationProgress"];
  v99 = [v98 minValue:0.0 maxValue:1.0];
  v100 = [v99 condition:v97];

  v101 = MEMORY[0x277D43218];
  v163[0] = v108;
  v163[1] = v100;
  v102 = [MEMORY[0x277CBEA60] arrayWithObjects:v163 count:2];
  v103 = [v101 sectionWithRows:v102 title:@"Fixed Wallpaper Presentation Progress"];

  v104 = MEMORY[0x277D43218];
  v162[0] = v161;
  v162[1] = v157;
  v162[2] = v156;
  v162[3] = v154;
  v162[4] = v153;
  v162[5] = v121;
  v162[6] = v116;
  v162[7] = v91;
  v162[8] = v109;
  v162[9] = v96;
  v162[10] = v103;
  v105 = [MEMORY[0x277CBEA60] arrayWithObjects:v162 count:11];
  v106 = [v104 moduleWithTitle:@"Transitions Settings" contents:v105];

  return v106;
}

uint64_t __58__CSCoverSheetTransitionSettings_settingsControllerModule__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  [a2 floatValue];
  v4 = round(v3 / 0.1) * 0.1;

  return [v2 numberWithDouble:v4];
}

uint64_t __58__CSCoverSheetTransitionSettings_settingsControllerModule__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  [a2 floatValue];
  v4 = roundf(v3);

  return [v2 numberWithDouble:v4];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(CSCoverSheetTransitionSettings *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_iconsFlyIn withName:@"iconsFlyIn"];
  blursPanel = [(CSCoverSheetTransitionSettings *)self blursPanel];
  v6 = [v3 appendBool:blursPanel withName:@"blursPanel"];
  if (blursPanel)
  {
    activeMultilinePrefix = [v3 activeMultilinePrefix];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __60__CSCoverSheetTransitionSettings_succinctDescriptionBuilder__block_invoke;
    v32[3] = &unk_27838B838;
    v33 = v3;
    selfCopy = self;
    [v33 appendBodySectionWithName:@"Blur Settings" multilinePrefix:activeMultilinePrefix block:v32];
  }

  fadesContent = [(CSCoverSheetTransitionSettings *)self fadesContent];
  v9 = [v3 appendBool:fadesContent withName:@"fadesContent"];
  if (fadesContent)
  {
    activeMultilinePrefix2 = [v3 activeMultilinePrefix];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __60__CSCoverSheetTransitionSettings_succinctDescriptionBuilder__block_invoke_2;
    v29[3] = &unk_27838B838;
    v30 = v3;
    selfCopy2 = self;
    [v30 appendBodySectionWithName:@"Fade Settings" multilinePrefix:activeMultilinePrefix2 block:v29];
  }

  darkensContent = [(CSCoverSheetTransitionSettings *)self darkensContent];
  v12 = [v3 appendBool:darkensContent withName:@"darkensContent"];
  if (darkensContent)
  {
    activeMultilinePrefix3 = [v3 activeMultilinePrefix];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __60__CSCoverSheetTransitionSettings_succinctDescriptionBuilder__block_invoke_3;
    v26[3] = &unk_27838B838;
    v27 = v3;
    selfCopy3 = self;
    [v27 appendBodySectionWithName:@"Darken Settings" multilinePrefix:activeMultilinePrefix3 block:v26];
  }

  panelWallpaper = [(CSCoverSheetTransitionSettings *)self panelWallpaper];
  v15 = [v3 appendBool:panelWallpaper withName:@"panelWallpaper"];
  if (panelWallpaper)
  {
    activeMultilinePrefix4 = [v3 activeMultilinePrefix];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __60__CSCoverSheetTransitionSettings_succinctDescriptionBuilder__block_invoke_4;
    v23 = &unk_27838B838;
    selfCopy4 = self;
    v25 = v3;
    [v25 appendBodySectionWithName:@"Panel Wallpaper Settings" multilinePrefix:activeMultilinePrefix4 block:&v20];
  }

  else
  {
    v17 = [v3 appendBool:-[CSCoverSheetTransitionSettings revealWallpaper](self withName:{"revealWallpaper"), @"revealWallpaper"}];
  }

  v18 = [v3 appendBool:-[CSCoverSheetTransitionSettings iconsFlyIn](self withName:{"iconsFlyIn", v20, v21, v22, v23, selfCopy4), @"iconsFlyIn"}];

  return v3;
}

id __60__CSCoverSheetTransitionSettings_succinctDescriptionBuilder__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) blurStart];
  v3 = [v2 appendFloat:@"blurStart" withName:?];
  v4 = *(a1 + 32);
  [*(a1 + 40) blurEnd];
  v5 = [v4 appendFloat:@"blurEnd" withName:?];
  v6 = *(a1 + 32);
  [*(a1 + 40) blurEndReducedTransparency];
  return [v6 appendFloat:@"blurEndReducedTransparency" withName:?];
}

id __60__CSCoverSheetTransitionSettings_succinctDescriptionBuilder__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) contentFadeStart];
  v3 = [v2 appendFloat:@"contentFadeStart" withName:?];
  v4 = *(a1 + 32);
  [*(a1 + 40) contentFadeEnd];
  v5 = [v4 appendFloat:@"contentFadeEnd" withName:?];
  v6 = *(a1 + 32);
  [*(a1 + 40) maxContentAlpha];
  return [v6 appendFloat:@"maxContentAlpha" withName:?];
}

id __60__CSCoverSheetTransitionSettings_succinctDescriptionBuilder__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) darkeningStart];
  v3 = [v2 appendFloat:@"darkeningStart" withName:?];
  v4 = *(a1 + 32);
  [*(a1 + 40) darkeningEnd];
  v5 = [v4 appendFloat:@"darkeningEnd" withName:?];
  v6 = *(a1 + 32);
  [*(a1 + 40) darkeningColorWhite];
  v7 = [v6 appendFloat:@"darkeningColorWhite" withName:?];
  v8 = *(a1 + 32);
  [*(a1 + 40) darkeningColorAlpha];
  return [v8 appendFloat:@"darkeningColorAlpha" withName:?];
}

void __60__CSCoverSheetTransitionSettings_succinctDescriptionBuilder__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) trackingWallpaper];
  v3 = [*(a1 + 40) appendBool:v2 withName:@"trackingWallpaper"];
  if (v2)
  {
    v4 = *(a1 + 40);
    [*(a1 + 32) trackingWallpaperParallaxFactor];
    v6 = [v4 appendBool:v5 != 0.0 withName:@"trackingWallpaperParallaxFactor"];
  }

  v7 = [*(a1 + 40) appendBool:objc_msgSend(*(a1 + 32) withName:{"orientPanelWallpaper"), @"orientPanelWallpaper"}];
  v8 = [*(a1 + 32) fadePanelWallpaper];
  v9 = [*(a1 + 40) appendBool:v8 withName:@"fadePanelWallpaper"];
  if (v8)
  {
    v10 = *(a1 + 40);
    v11 = [v10 activeMultilinePrefix];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__CSCoverSheetTransitionSettings_succinctDescriptionBuilder__block_invoke_5;
    v14[3] = &unk_27838B838;
    v12 = *(a1 + 40);
    v13 = *(a1 + 32);
    v15 = v12;
    v16 = v13;
    [v10 appendBodySectionWithName:@"Fade Panel Wallpaper Settings" multilinePrefix:v11 block:v14];
  }
}

id __60__CSCoverSheetTransitionSettings_succinctDescriptionBuilder__block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) fadePanelWallpaperStart];
  v3 = [v2 appendFloat:@"fadePanelWallpaperStart" withName:?];
  v4 = *(a1 + 32);
  [*(a1 + 40) fadePanelWallpaperEnd];
  return [v4 appendFloat:@"fadePanelWallpaperEnd" withName:?];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(CSCoverSheetTransitionSettings *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end