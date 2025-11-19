@interface CKSyndicationContentViewController
- (CGSize)maxContentSize;
- (CKSyndicationContentViewController)initWithIndex:(unint64_t)a3;
- (id)_setUpPhotosMicropillForAvatarImage:(id)a3 forName:(id)a4;
- (id)getPinIcon;
- (void)loadView;
- (void)setMaxContentSize:(CGSize)a3;
- (void)setUpHighlightsContent;
- (void)setUpPhotosContent;
- (void)setUpSharedWithYouContentCollectionView;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateMaxContentSize;
- (void)updateViewConstraints;
- (void)viewDidLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CKSyndicationContentViewController

- (CKSyndicationContentViewController)initWithIndex:(unint64_t)a3
{
  v4 = self;
  [(CKSyndicationContentViewController *)self setOnboardingPage:?];
  switch(a3)
  {
    case 2uLL:
      v12 = CKFrameworkBundle();
      v6 = [v12 localizedStringForKey:@"WHATS_NEW_SYNDICATION_PINS_DETAIL_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

      v13 = CKFrameworkBundle();
      v8 = [v13 localizedStringForKey:@"WHATS_NEW_SYNDICATION_PINS_DETAIL_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];

      v9 = [(CKSyndicationContentViewController *)&v15 initWithTitle:v6 detailText:v8 icon:0, v4, CKSyndicationContentViewController, v16.receiver, v16.super_class, v17.receiver, v17.super_class];
      goto LABEL_9;
    case 1uLL:
      v10 = CKFrameworkBundle();
      v6 = [v10 localizedStringForKey:@"WHATS_NEW_SYNDICATION_PHOTOS_DETAIL_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

      v11 = CKFrameworkBundle();
      v8 = [v11 localizedStringForKey:@"WHATS_NEW_SYNDICATION_PHOTOS_DETAIL_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];

      v9 = [(CKSyndicationContentViewController *)&v16 initWithTitle:v6 detailText:v8 icon:0, v15.receiver, v15.super_class, v4, CKSyndicationContentViewController, v17.receiver, v17.super_class];
LABEL_9:
      v4 = v9;

      return v4;
    case 0uLL:
      v5 = CKFrameworkBundle();
      v6 = [v5 localizedStringForKey:@"WHATS_NEW_SYNDICATION_DETAIL_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

      v7 = CKFrameworkBundle();
      v8 = [v7 localizedStringForKey:@"WHATS_NEW_SYNDICATION_DETAIL_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];

      if ([(__CFString *)v8 isEqualToString:@"WHATS_NEW_SYNDICATION_DETAIL_DESCRIPTION_MAC"])
      {

        v8 = @"Content shared in Messages can automatically appear in apps such as Photos, Safari, and more.";
      }

      v9 = [(CKSyndicationContentViewController *)&v17 initWithTitle:v6 detailText:v8 icon:0, v15.receiver, v15.super_class, v16.receiver, v16.super_class, v4, CKSyndicationContentViewController];
      goto LABEL_9;
  }

  return v4;
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = CKSyndicationContentViewController;
  [(OBBaseWelcomeController *)&v4 loadView];
  v3 = [(CKSyndicationContentViewController *)self onboardingPage];
  switch(v3)
  {
    case 2uLL:
      [(CKSyndicationContentViewController *)self setUpHighlightsContent];
      break;
    case 1uLL:
      [(CKSyndicationContentViewController *)self setUpPhotosContent];
      break;
    case 0uLL:
      [(CKSyndicationContentViewController *)self setUpSharedWithYouContentCollectionView];
      break;
  }
}

- (void)viewDidLayoutSubviews
{
  v48.receiver = self;
  v48.super_class = CKSyndicationContentViewController;
  [(OBBaseWelcomeController *)&v48 viewDidLayoutSubviews];
  [(CKSyndicationContentViewController *)self updateMaxContentSize];
  v3 = [(CKSyndicationContentViewController *)self micropillView1];
  [v3 frame];
  v5 = v4 * 0.5;
  v6 = [(CKSyndicationContentViewController *)self micropillView1];
  v7 = [v6 layer];
  [v7 setCornerRadius:v5];

  v8 = [(CKSyndicationContentViewController *)self micropillView2];
  [v8 frame];
  v10 = v9 * 0.5;
  v11 = [(CKSyndicationContentViewController *)self micropillView2];
  v12 = [v11 layer];
  [v12 setCornerRadius:v10];

  v13 = [(CKSyndicationContentViewController *)self tvPinIconView];
  [v13 frame];
  v15 = v14 * 0.5;
  v16 = [(CKSyndicationContentViewController *)self tvPinIconView];
  v17 = [v16 layer];
  [v17 setCornerRadius:v15];

  v18 = [(CKSyndicationContentViewController *)self podcastPinIconView];
  [v18 frame];
  v20 = v19 * 0.5;
  v21 = [(CKSyndicationContentViewController *)self podcastPinIconView];
  v22 = [v21 layer];
  [v22 setCornerRadius:v20];

  v23 = +[CKUIBehavior sharedBehaviors];
  [v23 messageHighlightTranscriptBalloonBorderWidth];
  v25 = v24;

  v26 = [(CKSyndicationContentViewController *)self tvPinIconView];
  v27 = [v26 layer];
  [v27 setBorderWidth:v25];

  v28 = [(CKSyndicationContentViewController *)self podcastPinIconView];
  v29 = [v28 layer];
  [v29 setBorderWidth:v25];

  v30 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v31 = [v30 CGColor];
  v32 = [(CKSyndicationContentViewController *)self tvPinIconView];
  v33 = [v32 layer];
  [v33 setBorderColor:v31];

  v34 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v35 = [v34 CGColor];
  v36 = [(CKSyndicationContentViewController *)self podcastPinIconView];
  v37 = [v36 layer];
  [v37 setBorderColor:v35];

  v38 = [(CKSyndicationContentViewController *)self podcastLinkBalloonView];
  [v38 bounds];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = [(CKSyndicationContentViewController *)self gradientLayer];
  [v47 setFrame:{v40, v42, v44, v46}];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __89__CKSyndicationContentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v4[3] = &unk_1E72EC3E8;
  v4[4] = self;
  [a4 animateAlongsideTransition:v4 completion:0];
}

- (void)updateMaxContentSize
{
  v3 = [(CKSyndicationContentViewController *)self headerView];
  [v3 origin];
  v5 = v4;
  v6 = [(CKSyndicationContentViewController *)self headerView];
  [v6 bounds];
  v8 = v5 + v7;

  v9 = [(CKSyndicationContentViewController *)self view];
  [v9 bounds];
  v11 = v10 - v8;

  v12 = [(CKSyndicationContentViewController *)self view];
  [v12 bounds];
  v14 = v13;

  [(CKSyndicationContentViewController *)self setMaxContentSize:v14, v11];
  if (!CKIsRunningInMacCatalyst())
  {
    v15 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v15 bounds];
    v14 = v16;

    v17 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v17 bounds];
    v19 = v18;

    v11 = v14 > v19 ? v14 : v19;
    if (v14 > v19)
    {
      v14 = v19;
    }
  }

  v20 = [(CKSyndicationContentViewController *)self sharedWithYouViewController];
  [v20 setMaxContentSize:{v14, v11}];
}

- (void)setMaxContentSize:(CGSize)a3
{
  if (a3.width != self->_maxContentSize.width || a3.height != self->_maxContentSize.height)
  {
    self->_maxContentSize = a3;
    v5 = [(CKSyndicationContentViewController *)self view];
    [v5 setNeedsUpdateConstraints];
  }
}

- (void)updateViewConstraints
{
  v290[2] = *MEMORY[0x1E69E9840];
  v3 = [(CKSyndicationContentViewController *)self constraints];
  v4 = [v3 count];

  v5 = 0x1E696A000uLL;
  if (v4)
  {
    v6 = MEMORY[0x1E696ACD8];
    v7 = [(CKSyndicationContentViewController *)self constraints];
    [v6 deactivateConstraints:v7];
  }

  v8 = [MEMORY[0x1E695DF70] array];
  [(CKSyndicationContentViewController *)self setConstraints:v8];

  v9 = [(CKSyndicationContentViewController *)self contentView];
  [(CKSyndicationContentViewController *)self maxContentSize];
  v11 = v10;
  v12 = v10 * 0.5;
  v13 = [(CKSyndicationContentViewController *)self traitCollection];
  [v13 displayScale];
  [(CKSyndicationContentViewController *)self setPhotoLongSide:round(v12 * v14) / v14];

  v15 = [(CKSyndicationContentViewController *)self traitCollection];
  [v15 displayScale];
  [(CKSyndicationContentViewController *)self setPhotoShortSide:round(v12 * 0.8 * v16) / v16];

  v17 = [(CKSyndicationContentViewController *)self view];
  [v17 bounds];
  v19 = v18;

  [(CKSyndicationContentViewController *)self photoShortSide];
  v21 = v20;
  [(CKSyndicationContentViewController *)self maxContentSize];
  if (v21 >= v22 * 0.25)
  {
    v29 = v19 / 15.0;
  }

  else
  {
    v23 = [(CKSyndicationContentViewController *)self traitCollection];
    [v23 displayScale];
    [(CKSyndicationContentViewController *)self setPhotoLongSide:round(v11 * 0.6 * v24) / v24];

    v25 = [(CKSyndicationContentViewController *)self traitCollection];
    [v25 displayScale];
    [(CKSyndicationContentViewController *)self setPhotoShortSide:round(v11 * 0.6 * 0.8 * v26) / v26];

    v27 = [(CKSyndicationContentViewController *)self view];
    [v27 bounds];
    v29 = v28 * 0.125;
  }

  if (IMSharedHelperDeviceIsiPad() && !CKIsRunningInMacCatalyst())
  {
    v30 = [(CKSyndicationContentViewController *)self traitCollection];
    [v30 displayScale];
    [(CKSyndicationContentViewController *)self setPhotoLongSide:round(v11 * 0.6 * v31) / v31];

    v32 = [(CKSyndicationContentViewController *)self traitCollection];
    [v32 displayScale];
    [(CKSyndicationContentViewController *)self setPhotoShortSide:round(v11 * 0.6 * 0.8 * v33) / v33];

    v34 = [(CKSyndicationContentViewController *)self view];
    [v34 bounds];
    v29 = v35 / 12.0;
  }

  [(CKSyndicationContentViewController *)self maxContentSize];
  v37 = v36 * 1.2;
  [(CKSyndicationContentViewController *)self maxContentSize];
  v39 = v38;
  v40 = v37 < v38;
  if (IMSharedHelperDeviceIsiPad() && !CKIsRunningInMacCatalyst())
  {
    v41 = 0.4;
    v42 = 0.3;
    v43 = 0.12;
  }

  else if (CKIsRunningInMacCatalyst())
  {
    v41 = 0.5;
    v42 = 0.35;
    v43 = 0.15;
  }

  else
  {
    v43 = dbl_190DD1190[v40];
    v42 = dbl_190DD11A0[v40];
    v41 = dbl_190DD11B0[v40];
  }

  v44 = [(CKSyndicationContentViewController *)self onboardingPage];
  if (v44 == 2)
  {
    v259 = v9;
    if (v37 >= v39 || (IMSharedHelperDeviceIsiPad() & 1) != 0)
    {
      v276 = [(CKSyndicationContentViewController *)self constraints];
      v283 = [(CKSyndicationContentViewController *)self tvLinkBalloonView];
      v273 = [v283 widthAnchor];
      v267 = [(CKSyndicationContentViewController *)self view];
      v270 = [v267 widthAnchor];
      v279 = [v273 constraintEqualToAnchor:v270 multiplier:v41];
      v287[0] = v279;
      v264 = [(CKSyndicationContentViewController *)self tvLinkBalloonView];
      v69 = [v264 heightAnchor];
      v284 = [(CKSyndicationContentViewController *)self view];
      v261 = [v284 widthAnchor];
      v285 = v69;
      v282 = [v69 constraintEqualToAnchor:v261 multiplier:v42];
      v287[1] = v282;
      v281 = [(CKSyndicationContentViewController *)self podcastLinkBalloonView];
      v256 = [v281 widthAnchor];
      v258 = [(CKSyndicationContentViewController *)self view];
      v254 = [v258 widthAnchor];
      v252 = [v256 constraintEqualToAnchor:v254 multiplier:v41];
      v287[2] = v252;
      v250 = [(CKSyndicationContentViewController *)self podcastLinkBalloonView];
      v246 = [v250 heightAnchor];
      v248 = [(CKSyndicationContentViewController *)self view];
      v244 = [v248 widthAnchor];
      v242 = [v246 constraintEqualToAnchor:v244 multiplier:v43];
      v287[3] = v242;
      v240 = [(CKSyndicationContentViewController *)self musicLinkBalloonView];
      v236 = [v240 widthAnchor];
      v238 = [(CKSyndicationContentViewController *)self view];
      v234 = [v238 widthAnchor];
      v232 = [v236 constraintEqualToAnchor:v234 multiplier:v41];
      v287[4] = v232;
      v230 = [(CKSyndicationContentViewController *)self musicLinkBalloonView];
      v226 = [v230 heightAnchor];
      v228 = [(CKSyndicationContentViewController *)self view];
      v224 = [v228 widthAnchor];
      v222 = [v226 constraintEqualToAnchor:v224 multiplier:v43];
      v287[5] = v222;
      v220 = [(CKSyndicationContentViewController *)self gradientView];
      v214 = [v220 widthAnchor];
      v217 = [(CKSyndicationContentViewController *)self view];
      v211 = [v217 widthAnchor];
      v208 = [v214 constraintEqualToAnchor:v211 multiplier:v41];
      v287[6] = v208;
      v205 = [(CKSyndicationContentViewController *)self gradientView];
      v199 = [v205 heightAnchor];
      v202 = [(CKSyndicationContentViewController *)self view];
      v196 = [v202 widthAnchor];
      v193 = [v199 constraintEqualToAnchor:v196 multiplier:v43];
      v287[7] = v193;
      v190 = [(CKSyndicationContentViewController *)self tvLinkBalloonView];
      v187 = [v190 topAnchor];
      v184 = [v9 topAnchor];
      v181 = [v187 constraintEqualToAnchor:v184];
      v287[8] = v181;
      v178 = [(CKSyndicationContentViewController *)self podcastLinkBalloonView];
      v172 = [v178 topAnchor];
      v175 = [(CKSyndicationContentViewController *)self tvLinkBalloonView];
      v169 = [v175 bottomAnchor];
      v166 = [v172 constraintEqualToAnchor:v169 constant:10.0];
      v287[9] = v166;
      v163 = [(CKSyndicationContentViewController *)self musicLinkBalloonView];
      v157 = [v163 topAnchor];
      v160 = [(CKSyndicationContentViewController *)self podcastLinkBalloonView];
      v154 = [v160 bottomAnchor];
      v151 = [v157 constraintEqualToAnchor:v154 constant:10.0];
      v287[10] = v151;
      v148 = [(CKSyndicationContentViewController *)self tvLinkBalloonView];
      v146 = [v148 centerXAnchor];
      v144 = [v9 centerXAnchor];
      v142 = [v146 constraintEqualToAnchor:v144];
      v287[11] = v142;
      v140 = [(CKSyndicationContentViewController *)self podcastLinkBalloonView];
      v138 = [v140 centerXAnchor];
      v136 = [v9 centerXAnchor];
      v134 = [v138 constraintEqualToAnchor:v136];
      v287[12] = v134;
      v132 = [(CKSyndicationContentViewController *)self musicLinkBalloonView];
      v130 = [v132 centerXAnchor];
      v128 = [v9 centerXAnchor];
      v127 = [v130 constraintEqualToAnchor:v128];
      v287[13] = v127;
      v126 = [(CKSyndicationContentViewController *)self gradientView];
      v124 = [v126 topAnchor];
      v125 = [(CKSyndicationContentViewController *)self podcastLinkBalloonView];
      v123 = [v125 bottomAnchor];
      v122 = [v124 constraintEqualToAnchor:v123 constant:10.0];
      v287[14] = v122;
      v121 = [(CKSyndicationContentViewController *)self gradientView];
      v120 = [v121 centerXAnchor];
      v119 = [v9 centerXAnchor];
      v118 = [v120 constraintEqualToAnchor:v119];
      v287[15] = v118;
      v117 = [(CKSyndicationContentViewController *)self tvPinIconView];
      v115 = [v117 topAnchor];
      v116 = [(CKSyndicationContentViewController *)self tvLinkBalloonView];
      v114 = [v116 bottomAnchor];
      v113 = [v115 constraintEqualToAnchor:v114 constant:-15.7142857];
      v287[16] = v113;
      v112 = [(CKSyndicationContentViewController *)self tvPinIconView];
      v110 = [v112 leadingAnchor];
      v111 = [(CKSyndicationContentViewController *)self tvLinkBalloonView];
      v109 = [v111 trailingAnchor];
      v108 = [v110 constraintEqualToAnchor:v109 constant:-15.7142857];
      v287[17] = v108;
      v107 = [(CKSyndicationContentViewController *)self tvPinIconView];
      v106 = [v107 widthAnchor];
      v105 = [v106 constraintEqualToConstant:22.0];
      v287[18] = v105;
      v104 = [(CKSyndicationContentViewController *)self tvPinIconView];
      v103 = [v104 heightAnchor];
      v102 = [v103 constraintEqualToConstant:22.0];
      v287[19] = v102;
      v101 = [(CKSyndicationContentViewController *)self podcastPinIconView];
      v99 = [v101 topAnchor];
      v100 = [(CKSyndicationContentViewController *)self podcastLinkBalloonView];
      v98 = [v100 bottomAnchor];
      v97 = [v99 constraintEqualToAnchor:v98 constant:-15.7142857];
      v287[20] = v97;
      v96 = [(CKSyndicationContentViewController *)self podcastPinIconView];
      v94 = [v96 leadingAnchor];
      v95 = [(CKSyndicationContentViewController *)self podcastLinkBalloonView];
      v93 = [v95 trailingAnchor];
      v70 = [v94 constraintEqualToAnchor:v93 constant:-15.7142857];
      v287[21] = v70;
      v71 = [(CKSyndicationContentViewController *)self podcastPinIconView];
      v72 = [v71 widthAnchor];
      v73 = [v72 constraintEqualToConstant:22.0];
      v287[22] = v73;
      v74 = [(CKSyndicationContentViewController *)self podcastPinIconView];
      v75 = [v74 heightAnchor];
      v76 = [v75 constraintEqualToConstant:22.0];
      v287[23] = v76;
      v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:v287 count:24];
      v45 = v276;
      [v276 addObjectsFromArray:v77];

      v54 = v261;
      v47 = v267;

      v50 = v264;
      v48 = v270;

      v46 = v273;
      v9 = v259;

      v49 = v279;
      v78 = v214;
    }

    else
    {
      v79 = [(CKSyndicationContentViewController *)self podcastPinIconView];
      [v79 removeFromSuperview];

      v277 = [(CKSyndicationContentViewController *)self constraints];
      v283 = [(CKSyndicationContentViewController *)self tvLinkBalloonView];
      v274 = [v283 widthAnchor];
      v268 = [(CKSyndicationContentViewController *)self view];
      v271 = [v268 widthAnchor];
      v280 = [v274 constraintEqualToAnchor:v271 multiplier:v41];
      v288[0] = v280;
      v265 = [(CKSyndicationContentViewController *)self tvLinkBalloonView];
      v80 = [v265 heightAnchor];
      v284 = [(CKSyndicationContentViewController *)self view];
      v262 = [v284 widthAnchor];
      v285 = v80;
      v282 = [v80 constraintEqualToAnchor:v262 multiplier:v42];
      v288[1] = v282;
      v281 = [(CKSyndicationContentViewController *)self podcastLinkBalloonView];
      v256 = [v281 widthAnchor];
      v258 = [(CKSyndicationContentViewController *)self view];
      v254 = [v258 widthAnchor];
      v252 = [v256 constraintEqualToAnchor:v254 multiplier:v41];
      v288[2] = v252;
      v250 = [(CKSyndicationContentViewController *)self podcastLinkBalloonView];
      v246 = [v250 heightAnchor];
      v248 = [(CKSyndicationContentViewController *)self view];
      v244 = [v248 widthAnchor];
      v242 = [v246 constraintEqualToAnchor:v244 multiplier:v43];
      v288[3] = v242;
      v240 = [(CKSyndicationContentViewController *)self gradientView];
      v236 = [v240 widthAnchor];
      v238 = [(CKSyndicationContentViewController *)self view];
      v234 = [v238 widthAnchor];
      v232 = [v236 constraintEqualToAnchor:v234 multiplier:v41];
      v288[4] = v232;
      v230 = [(CKSyndicationContentViewController *)self gradientView];
      v226 = [v230 heightAnchor];
      v228 = [(CKSyndicationContentViewController *)self view];
      v224 = [v228 widthAnchor];
      v222 = [v226 constraintEqualToAnchor:v224 multiplier:v43];
      v288[5] = v222;
      v220 = [(CKSyndicationContentViewController *)self tvLinkBalloonView];
      v218 = [v220 topAnchor];
      v215 = [v9 topAnchor];
      v212 = [v218 constraintEqualToAnchor:v215];
      v288[6] = v212;
      v209 = [(CKSyndicationContentViewController *)self podcastLinkBalloonView];
      v203 = [v209 topAnchor];
      v206 = [(CKSyndicationContentViewController *)self tvLinkBalloonView];
      v200 = [v206 bottomAnchor];
      v197 = [v203 constraintEqualToAnchor:v200 constant:10.0];
      v288[7] = v197;
      v194 = [(CKSyndicationContentViewController *)self tvLinkBalloonView];
      v191 = [v194 centerXAnchor];
      v188 = [v9 centerXAnchor];
      v185 = [v191 constraintEqualToAnchor:v188];
      v288[8] = v185;
      v182 = [(CKSyndicationContentViewController *)self podcastLinkBalloonView];
      v179 = [v182 centerXAnchor];
      v176 = [v9 centerXAnchor];
      v173 = [v179 constraintEqualToAnchor:v176];
      v288[9] = v173;
      v170 = [(CKSyndicationContentViewController *)self gradientView];
      v164 = [v170 topAnchor];
      v167 = [(CKSyndicationContentViewController *)self tvLinkBalloonView];
      v161 = [v167 bottomAnchor];
      v158 = [v164 constraintEqualToAnchor:v161 constant:10.0];
      v288[10] = v158;
      v155 = [(CKSyndicationContentViewController *)self gradientView];
      v152 = [v155 centerXAnchor];
      v149 = [v9 centerXAnchor];
      v147 = [v152 constraintEqualToAnchor:v149];
      v288[11] = v147;
      v145 = [(CKSyndicationContentViewController *)self tvPinIconView];
      v141 = [v145 topAnchor];
      v143 = [(CKSyndicationContentViewController *)self tvLinkBalloonView];
      v139 = [v143 bottomAnchor];
      v137 = [v141 constraintEqualToAnchor:v139 constant:-15.7142857];
      v288[12] = v137;
      v135 = [(CKSyndicationContentViewController *)self tvPinIconView];
      v131 = [v135 leadingAnchor];
      v133 = [(CKSyndicationContentViewController *)self tvLinkBalloonView];
      v129 = [v133 trailingAnchor];
      v81 = [v131 constraintEqualToAnchor:v129 constant:-15.7142857];
      v288[13] = v81;
      v82 = [(CKSyndicationContentViewController *)self tvPinIconView];
      v83 = [v82 widthAnchor];
      v84 = [v83 constraintEqualToConstant:22.0];
      v288[14] = v84;
      v85 = [(CKSyndicationContentViewController *)self tvPinIconView];
      v86 = [v85 heightAnchor];
      v87 = [v86 constraintEqualToConstant:22.0];
      v288[15] = v87;
      v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:v288 count:16];
      v45 = v277;
      [v277 addObjectsFromArray:v88];

      v54 = v262;
      v50 = v265;

      v47 = v268;
      v48 = v271;

      v46 = v274;
      v9 = v259;

      v49 = v280;
      v78 = v218;
    }

    v5 = 0x1E696A000uLL;
  }

  else if (v44 == 1)
  {
    v275 = [(CKSyndicationContentViewController *)self constraints];
    v283 = [(CKSyndicationContentViewController *)self highlightsView1];
    v272 = [v283 topAnchor];
    v266 = [v9 topAnchor];
    v269 = [v272 constraintEqualToAnchor:v266 constant:20.0];
    v289[0] = v269;
    v278 = [(CKSyndicationContentViewController *)self highlightsView1];
    v263 = [v278 leadingAnchor];
    v285 = [v9 leadingAnchor];
    v284 = [v263 constraintEqualToAnchor:v29 constant:?];
    v289[1] = v284;
    v260 = [(CKSyndicationContentViewController *)self highlightsView1];
    v55 = [v260 widthAnchor];
    [(CKSyndicationContentViewController *)self photoLongSide];
    v282 = v55;
    v281 = [v55 constraintEqualToConstant:?];
    v289[2] = v281;
    v257 = [(CKSyndicationContentViewController *)self highlightsView1];
    v255 = [v257 heightAnchor];
    [(CKSyndicationContentViewController *)self photoShortSide];
    v253 = [v255 constraintEqualToConstant:?];
    v289[3] = v253;
    v251 = [(CKSyndicationContentViewController *)self highlightsView2];
    v249 = [v251 topAnchor];
    v247 = [v9 topAnchor];
    v245 = [v249 constraintEqualToAnchor:v247 constant:v11 * 0.1 + 20.0];
    v289[4] = v245;
    v243 = [(CKSyndicationContentViewController *)self highlightsView2];
    v241 = [v243 trailingAnchor];
    v239 = [v9 trailingAnchor];
    v237 = [v241 constraintEqualToAnchor:v239 constant:-v29];
    v289[5] = v237;
    v235 = [(CKSyndicationContentViewController *)self highlightsView2];
    v233 = [v235 widthAnchor];
    [(CKSyndicationContentViewController *)self photoShortSide];
    v231 = [v233 constraintEqualToConstant:?];
    v289[6] = v231;
    v229 = [(CKSyndicationContentViewController *)self highlightsView2];
    v227 = [v229 heightAnchor];
    [(CKSyndicationContentViewController *)self photoLongSide];
    v225 = [v227 constraintEqualToConstant:?];
    v289[7] = v225;
    v223 = [(CKSyndicationContentViewController *)self micropillView1];
    v221 = [v223 topAnchor];
    v219 = [v9 topAnchor];
    v216 = [v221 constraintEqualToAnchor:v219 constant:7.5];
    v289[8] = v216;
    v213 = [(CKSyndicationContentViewController *)self micropillView1];
    v210 = [v213 leadingAnchor];
    v207 = [v9 leadingAnchor];
    [(CKSyndicationContentViewController *)self photoLongSide];
    v204 = [v210 constraintEqualToAnchor:v207 constant:v29 + v56 + -132.0];
    v289[9] = v204;
    v201 = [(CKSyndicationContentViewController *)self micropillView1];
    v198 = [v201 widthAnchor];
    [(CKSyndicationContentViewController *)self maxContentSize];
    v195 = [v198 constraintLessThanOrEqualToConstant:v57 - v29];
    v289[10] = v195;
    v192 = [(CKSyndicationContentViewController *)self micropillView1];
    v189 = [v192 heightAnchor];
    v186 = [v189 constraintEqualToConstant:25.0];
    v289[11] = v186;
    v183 = [(CKSyndicationContentViewController *)self micropillView2];
    v180 = [v183 topAnchor];
    v177 = [v9 topAnchor];
    [(CKSyndicationContentViewController *)self photoLongSide];
    v174 = [v180 constraintEqualToAnchor:v177 constant:v58 + 20.0 + v11 * 0.1 + -12.5];
    v289[12] = v174;
    v171 = [(CKSyndicationContentViewController *)self micropillView2];
    v168 = [v171 trailingAnchor];
    v165 = [v9 trailingAnchor];
    [(CKSyndicationContentViewController *)self photoShortSide];
    v162 = [v168 constraintEqualToAnchor:v165 constant:-v29 - v59 + 132.0];
    v289[13] = v162;
    v159 = [(CKSyndicationContentViewController *)self micropillView2];
    v156 = [v159 bottomAnchor];
    v153 = [v9 bottomAnchor];
    v150 = [v156 constraintEqualToAnchor:v153 constant:-20.0];
    v289[14] = v150;
    v60 = [(CKSyndicationContentViewController *)self micropillView2];
    v61 = [v60 widthAnchor];
    [(CKSyndicationContentViewController *)self maxContentSize];
    v63 = [v61 constraintLessThanOrEqualToConstant:v62 - v29];
    v289[15] = v63;
    v64 = [(CKSyndicationContentViewController *)self micropillView2];
    v65 = [v64 heightAnchor];
    v66 = [v65 constraintEqualToConstant:25.0];
    v289[16] = v66;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v289 count:17];
    v68 = v67 = v9;
    v45 = v275;
    [v275 addObjectsFromArray:v68];

    v9 = v67;
    v46 = v272;

    v5 = 0x1E696A000;
    v54 = v260;

    v50 = v263;
    v49 = v278;

    v48 = v269;
    v47 = v266;
  }

  else
  {
    if (v44)
    {
      goto LABEL_26;
    }

    v45 = [(CKSyndicationContentViewController *)self constraints];
    v283 = [(CKSyndicationContentViewController *)self sharedWithYouViewController];
    v46 = [v283 view];
    v47 = [v46 topAnchor];
    v48 = [v9 topAnchor];
    v49 = [v47 constraintEqualToAnchor:v48];
    v290[0] = v49;
    v50 = [(CKSyndicationContentViewController *)self sharedWithYouViewController];
    v285 = [v50 view];
    v51 = [v285 centerXAnchor];
    v52 = [v9 centerXAnchor];
    v284 = v51;
    v53 = v51;
    v54 = v52;
    v282 = [v53 constraintEqualToAnchor:v52];
    v290[1] = v282;
    v281 = [MEMORY[0x1E695DEC8] arrayWithObjects:v290 count:2];
    [v45 addObjectsFromArray:?];
  }

LABEL_26:
  v89 = [(CKSyndicationContentViewController *)self constraints];
  v90 = [v89 count];

  if (v90)
  {
    v91 = *(v5 + 3288);
    v92 = [(CKSyndicationContentViewController *)self constraints];
    [v91 activateConstraints:v92];
  }

  v286.receiver = self;
  v286.super_class = CKSyndicationContentViewController;
  [(CKSyndicationContentViewController *)&v286 updateViewConstraints];
}

- (void)setUpSharedWithYouContentCollectionView
{
  v5 = objc_alloc_init(CKSyndicationSharedWithYouViewController);
  [(CKSyndicationContentViewController *)self setSharedWithYouViewController:v5];
  v3 = [(CKSyndicationContentViewController *)self contentView];
  v4 = [(CKSyndicationSharedWithYouViewController *)v5 view];
  [v3 addSubview:v4];
}

- (id)_setUpPhotosMicropillForAvatarImage:(id)a3 forName:(id)a4
{
  v66[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = MEMORY[0x1E69DD298];
  v7 = a3;
  v8 = [v6 alloc];
  v9 = [MEMORY[0x1E69DC730] effectWithStyle:9];
  v10 = [v8 initWithEffect:v9];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [v10 layer];
  [v11 setMasksToBounds:1];

  v58 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v58 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v58 setNumberOfLines:1];
  [v58 setLineBreakMode:2];
  v63 = [MEMORY[0x1E69DB878] systemFontOfSize:4.0];
  v62 = [MEMORY[0x1E69DCAD8] configurationWithFont:v63 scale:1];
  v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward" withConfiguration:v62];
  v60 = [v12 imageWithRenderingMode:2];

  v61 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v7];

  [v61 setBounds:{0.0, -1.0, 15.0, 15.0}];
  [v61 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  v13 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v61];
  v55 = v13;
  v14 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v60];
  [v14 setBounds:{4.0, 2.0, 6.0, 8.0}];
  v59 = v14;
  [v14 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  v15 = MEMORY[0x1E696AAB0];
  v65 = *MEMORY[0x1E69DB650];
  v16 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v66[0] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:&v65 count:1];
  v18 = [v15 attributedStringWithAttachment:v14 attributes:v17];
  v54 = v18;

  v19 = MEMORY[0x1E696AEC0];
  v20 = CKFrameworkBundle();
  v21 = [v20 localizedStringForKey:@"WHATS_NEW_SYNDICATION_PHOTOS" value:&stru_1F04268F8 table:@"ChatKit"];
  v22 = v5;
  v57 = v5;
  v23 = [v19 stringWithFormat:v21, v5];

  v24 = [MEMORY[0x1E69DC668] sharedApplication];
  v25 = [v24 userInterfaceLayoutDirection];

  if (v25 == 1)
  {
    v26 = @"\u200F";
  }

  else
  {
    v26 = @"\u200E";
  }

  v27 = [(__CFString *)v26 stringByAppendingString:v23];

  v56 = v27;
  v28 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v27];
  v29 = *MEMORY[0x1E69DB648];
  v30 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
  [v28 addAttribute:v29 value:v30 range:{0, objc_msgSend(v28, "length")}];

  v31 = [v27 rangeOfString:v22];
  v33 = v32;
  v34 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:12.0];
  [v28 addAttribute:v29 value:v34 range:{v31, v33}];

  [v28 addAttribute:*MEMORY[0x1E69DB610] value:&unk_1F04E89D8 range:{0, objc_msgSend(v28, "length")}];
  v53 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"%@ %@ %@"];
  v52 = [MEMORY[0x1E696AAB0] localizedAttributedStringWithFormat:v53, v13, v28, v18];
  [v58 setAttributedText:v52];
  v35 = [v10 contentView];
  [v35 addSubview:v58];

  v46 = MEMORY[0x1E696ACD8];
  v51 = [v58 leadingAnchor];
  v50 = [v10 leadingAnchor];
  v49 = [v51 constraintEqualToAnchor:v50 constant:5.0];
  v64[0] = v49;
  v48 = [v58 trailingAnchor];
  v47 = [v10 trailingAnchor];
  v36 = [v48 constraintEqualToAnchor:v47 constant:-5.0];
  v64[1] = v36;
  v37 = [v58 topAnchor];
  v38 = [v10 topAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];
  v64[2] = v39;
  v40 = [v58 bottomAnchor];
  v45 = v10;
  v41 = [v10 bottomAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];
  v64[3] = v42;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:4];
  [v46 activateConstraints:v43];

  [v58 sizeToFit];

  return v45;
}

- (void)setUpPhotosContent
{
  v46 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"WhatsNew_Photos1"];
  v3 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"WhatsNew_Photos2"];
  v4 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v46];
  [(CKSyndicationContentViewController *)self setHighlightsView1:v4];

  v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v3];
  [(CKSyndicationContentViewController *)self setHighlightsView2:v5];

  v6 = [(CKSyndicationContentViewController *)self highlightsView1];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(CKSyndicationContentViewController *)self highlightsView2];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"Syndication_Avatar7"];
  v9 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"Syndication_Avatar8"];
  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"WHATS_NEW_SYNDICATION_PHOTOS_EXAMPLE_NAME1" value:&stru_1F04268F8 table:@"ChatKit"];
  v12 = [(CKSyndicationContentViewController *)self _setUpPhotosMicropillForAvatarImage:v8 forName:v11];
  [(CKSyndicationContentViewController *)self setMicropillView1:v12];

  v13 = CKFrameworkBundle();
  v14 = [v13 localizedStringForKey:@"WHATS_NEW_SYNDICATION_PHOTOS_EXAMPLE_NAME2" value:&stru_1F04268F8 table:@"ChatKit"];
  v15 = [(CKSyndicationContentViewController *)self _setUpPhotosMicropillForAvatarImage:v9 forName:v14];
  [(CKSyndicationContentViewController *)self setMicropillView2:v15];

  v16 = [(CKSyndicationContentViewController *)self highlightsView1];
  v17 = [v16 layer];
  [v17 setCornerRadius:25.0];

  v18 = [(CKSyndicationContentViewController *)self highlightsView2];
  v19 = [v18 layer];
  [v19 setCornerRadius:25.0];

  v20 = [(CKSyndicationContentViewController *)self highlightsView1];
  v21 = [v20 layer];
  [v21 setMasksToBounds:1];

  v22 = [(CKSyndicationContentViewController *)self highlightsView2];
  v23 = [v22 layer];
  [v23 setMasksToBounds:1];

  v24 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  v25 = [v24 layer];
  v26 = [MEMORY[0x1E69DC888] blackColor];
  [v25 setShadowColor:{objc_msgSend(v26, "CGColor")}];

  v27 = [v24 layer];
  LODWORD(v28) = *"333?";
  [v27 setShadowOpacity:v28];

  v29 = [v24 layer];
  [v29 setShadowRadius:25.0];

  v30 = [v24 layer];
  [v30 setShadowOffset:{0.0, 2.0}];

  v31 = [(CKSyndicationContentViewController *)self highlightsView1];
  [v24 addSubview:v31];

  v32 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  v33 = [v32 layer];
  v34 = [MEMORY[0x1E69DC888] blackColor];
  [v33 setShadowColor:{objc_msgSend(v34, "CGColor")}];

  v35 = [v32 layer];
  LODWORD(v36) = *"333?";
  [v35 setShadowOpacity:v36];

  v37 = [v32 layer];
  [v37 setShadowRadius:10.0];

  v38 = [v32 layer];
  [v38 setShadowOffset:{0.0, 2.0}];

  v39 = [(CKSyndicationContentViewController *)self highlightsView2];
  [v32 addSubview:v39];

  v40 = [(CKSyndicationContentViewController *)self contentView];
  [v40 addSubview:v24];

  v41 = [(CKSyndicationContentViewController *)self contentView];
  [v41 addSubview:v32];

  v42 = [(CKSyndicationContentViewController *)self contentView];
  v43 = [(CKSyndicationContentViewController *)self micropillView1];
  [v42 addSubview:v43];

  v44 = [(CKSyndicationContentViewController *)self contentView];
  v45 = [(CKSyndicationContentViewController *)self micropillView2];
  [v44 addSubview:v45];
}

- (void)setUpHighlightsContent
{
  v43[2] = *MEMORY[0x1E69E9840];
  v3 = [CKSyndicationOnboardingLinkBalloonView alloc];
  v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:@"https://tv.apple.com/us/show/mythic-quest/umc.cmc.1nfdfd5zlk05fo1bwwetzldy3?ctx_brand=tvs.sbd.4000"];
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [(CKSyndicationOnboardingLinkBalloonView *)v3 initWithFrame:v4 withURL:*MEMORY[0x1E695F058], v6, v7, v8];

  v10 = [CKSyndicationOnboardingLinkBalloonView alloc];
  v11 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:@"https://podcasts.apple.com/us/podcast/eight-we-go-all/id1507423923?i=1000476834241"];
  v12 = [(CKSyndicationOnboardingLinkBalloonView *)v10 initWithFrame:v11 withURL:v5, v6, v7, v8];

  v13 = [CKSyndicationOnboardingLinkBalloonView alloc];
  v14 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:@"https://music.apple.com/us/album/green-eyes/1534718812?i=1534719300"];
  v15 = [(CKSyndicationOnboardingLinkBalloonView *)v13 initWithFrame:v14 withURL:v5, v6, v7, v8];

  [(CKSyndicationOnboardingLinkBalloonView *)v9 setUserInteractionEnabled:0];
  [(CKSyndicationOnboardingLinkBalloonView *)v12 setUserInteractionEnabled:0];
  [(CKSyndicationOnboardingLinkBalloonView *)v15 setUserInteractionEnabled:0];
  [(CKSyndicationOnboardingLinkBalloonView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CKSyndicationOnboardingLinkBalloonView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CKSyndicationOnboardingLinkBalloonView *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [(CKSyndicationContentViewController *)self contentView];
  [v16 addSubview:v9];

  v17 = [(CKSyndicationContentViewController *)self contentView];
  [v17 addSubview:v12];

  v18 = [(CKSyndicationContentViewController *)self contentView];
  [v18 addSubview:v15];

  [(CKSyndicationContentViewController *)self setTvLinkBalloonView:v9];
  [(CKSyndicationContentViewController *)self setPodcastLinkBalloonView:v12];
  [(CKSyndicationContentViewController *)self setMusicLinkBalloonView:v15];
  v19 = [(CKSyndicationContentViewController *)self getPinIcon];
  [(CKSyndicationContentViewController *)self setTvPinIconView:v19];

  v20 = [(CKSyndicationContentViewController *)self getPinIcon];
  [(CKSyndicationContentViewController *)self setPodcastPinIconView:v20];

  v21 = [(CKSyndicationContentViewController *)self contentView];
  v22 = [(CKSyndicationContentViewController *)self tvPinIconView];
  [v21 addSubview:v22];

  v23 = [(CKSyndicationContentViewController *)self contentView];
  v24 = [(CKSyndicationContentViewController *)self podcastPinIconView];
  [v23 addSubview:v24];

  v25 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v5, v6, v7, v8}];
  [(CKSyndicationContentViewController *)self setGradientView:v25];

  v26 = [(CKSyndicationContentViewController *)self gradientView];
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

  v27 = [MEMORY[0x1E6979380] layer];
  [(CKSyndicationContentViewController *)self setGradientLayer:v27];
  v28 = [(CKSyndicationContentViewController *)self gradientView];
  [v28 frame];
  [v27 setFrame:?];

  v29 = [(CKSyndicationContentViewController *)self traitCollection];
  v30 = [v29 userInterfaceStyle];

  if (v30 == 2)
  {
    v31 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0];
    v43[0] = [v31 CGColor];
    v32 = v43;
  }

  else
  {
    v31 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
    v42 = [v31 CGColor];
    v32 = &v42;
  }

  v33 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v32[1] = [v33 CGColor];
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v35 = [(CKSyndicationContentViewController *)self gradientLayer];
  [v35 setColors:v34];

  v36 = [(CKSyndicationContentViewController *)self gradientView];
  v37 = [v36 layer];
  [v37 insertSublayer:v27 atIndex:0];

  v38 = [(CKSyndicationContentViewController *)self contentView];
  v39 = [(CKSyndicationContentViewController *)self gradientView];
  [v38 addSubview:v39];

  v40 = [(CKSyndicationContentViewController *)self contentView];
  v41 = [(CKSyndicationContentViewController *)self gradientView];
  [v40 bringSubviewToFront:v41];
}

- (id)getPinIcon
{
  v2 = objc_alloc(MEMORY[0x1E69DD250]);
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  v7 = [v2 initWithFrame:{*MEMORY[0x1E695F058], v4, v5, v6}];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [v8 messageHighlightGoldColor];
  [v7 setBackgroundColor:v9];

  v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v3, v4, v5, v6}];
  v11 = [MEMORY[0x1E69DC888] clearColor];
  [v10 setBackgroundColor:v11];

  [v7 addSubview:v10];
  v12 = +[CKUIBehavior sharedBehaviors];
  v13 = [v12 messageHighlightImage];

  [v10 setImage:v13];
  v14 = +[CKUIBehavior sharedBehaviors];
  [v14 messageHighlightGlyphSymbolPointSize];
  v16 = v15;

  [v10 setFrame:{(22.0 - v16) * 0.5 + 0.0, (22.0 - v16) * 0.5 + 0.0, v16, v16}];

  return v7;
}

- (void)traitCollectionDidChange:(id)a3
{
  v25[2] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = CKSyndicationContentViewController;
  v4 = a3;
  [(CKSyndicationContentViewController *)&v23 traitCollectionDidChange:v4];
  v5 = [(CKSyndicationContentViewController *)self traitCollection];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    v8 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v9 = [v8 CGColor];
    v10 = [(CKSyndicationContentViewController *)self tvPinIconView];
    v11 = [v10 layer];
    [v11 setBorderColor:v9];

    v12 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v13 = [v12 CGColor];
    v14 = [(CKSyndicationContentViewController *)self podcastPinIconView];
    v15 = [v14 layer];
    [v15 setBorderColor:v13];

    v16 = [(CKSyndicationContentViewController *)self traitCollection];
    v17 = [v16 userInterfaceStyle];

    if (v17 == 2)
    {
      v18 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0];
      v25[0] = [v18 CGColor];
      v19 = v25;
    }

    else
    {
      v18 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
      v24 = [v18 CGColor];
      v19 = &v24;
    }

    v20 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v19[1] = [v20 CGColor];
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v22 = [(CKSyndicationContentViewController *)self gradientLayer];
    [v22 setColors:v21];
  }
}

- (CGSize)maxContentSize
{
  width = self->_maxContentSize.width;
  height = self->_maxContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end