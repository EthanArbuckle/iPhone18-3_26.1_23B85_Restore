@interface OBPrivacyLinkButton
- (CGSize)contentSize;
- (CGSize)intrinsicContentSize;
- (OBPrivacyLinkButton)initWithCaption:(id)a3 captionAttachmentImage:(id)a4 buttonText:(id)a5 symbolName:(id)a6 useLargeIcon:(BOOL)a7 displayLanguage:(id)a8;
- (_NSRange)_rangeForButtonText;
- (double)_iconToTextSpacingLarge;
- (id)_font;
- (id)_localizedButtonText;
- (id)buttonAttributes;
- (id)labelText;
- (void)_updateButtonColorWithColor:(id)a3;
- (void)layoutSubviews;
- (void)setDisplayInfoIcon:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setUnderlineLinks:(BOOL)a3;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation OBPrivacyLinkButton

- (OBPrivacyLinkButton)initWithCaption:(id)a3 captionAttachmentImage:(id)a4 buttonText:(id)a5 symbolName:(id)a6 useLargeIcon:(BOOL)a7 displayLanguage:(id)a8
{
  v9 = a7;
  v284[3] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v249 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v264.receiver = self;
  v264.super_class = OBPrivacyLinkButton;
  v19 = [(OBPrivacyLinkButton *)&v264 init];
  v20 = v19;
  if (!v19)
  {
    goto LABEL_73;
  }

  if (v9)
  {
    v21 = 30.0;
  }

  else
  {
    v21 = 20.0;
  }

  v22 = 3.0;
  if (v9)
  {
    [(OBPrivacyLinkButton *)v19 _iconToTextSpacingLarge];
    v22 = v23;
  }

  [(OBPrivacyLinkButton *)v20 setIsAccessibilityElement:0];
  v20->_largeIcon = v9;
  v20->_displayInfoIcon = 0;
  objc_storeStrong(&v20->_captionText, a3);
  objc_storeStrong(&v20->_captionAttachmentImage, a4);
  if (v15)
  {
    v24 = [v16 stringByReplacingOccurrencesOfString:@" " withString:@" "];
  }

  else
  {
    v24 = v16;
  }

  v234 = v9;
  v239 = v18;
  v240 = v16;
  v244 = v17;
  objc_storeStrong(&v20->_buttonText, v24);
  v241 = v15;
  if (v15)
  {
  }

  objc_storeStrong(&v20->_displayLanguage, a8);
  v25 = objc_alloc_init(MEMORY[0x1E69DD250]);
  containerView = v20->_containerView;
  v20->_containerView = v25;

  [(UIView *)v20->_containerView setIsAccessibilityElement:0];
  [(UIView *)v20->_containerView setUserInteractionEnabled:0];
  [(UIView *)v20->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBPrivacyLinkButton *)v20 addSubview:v20->_containerView];
  v245 = MEMORY[0x1E696ACD8];
  v253 = [(UIView *)v20->_containerView centerYAnchor];
  v250 = [(OBPrivacyLinkButton *)v20 centerYAnchor];
  v27 = [v253 constraintEqualToAnchor:v250];
  v284[0] = v27;
  v28 = [(UIView *)v20->_containerView bottomAnchor];
  v29 = [(OBPrivacyLinkButton *)v20 bottomAnchor];
  v30 = [v28 constraintLessThanOrEqualToAnchor:v29];
  v284[1] = v30;
  v31 = [(UIView *)v20->_containerView topAnchor];
  v32 = [(OBPrivacyLinkButton *)v20 topAnchor];
  v33 = [v31 constraintGreaterThanOrEqualToAnchor:v32];
  v284[2] = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v284 count:3];
  [v245 activateConstraints:v34];

  v35 = +[OBFeatureFlags isNaturalUIEnabled];
  v36 = MEMORY[0x1E696ACD8];
  v37 = v20->_containerView;
  if (v35)
  {
    v38 = [(UIView *)v37 leadingAnchor];
    v39 = [(OBPrivacyLinkButton *)v20 leadingAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
    v283[0] = v40;
    v41 = [(UIView *)v20->_containerView trailingAnchor];
    v42 = [(OBPrivacyLinkButton *)v20 trailingAnchor];
    v43 = [v41 constraintLessThanOrEqualToAnchor:v42];
    v283[1] = v43;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v283 count:2];
    [v36 activateConstraints:v44];
  }

  else
  {
    v254 = [(UIView *)v37 centerXAnchor];
    v251 = [(OBPrivacyLinkButton *)v20 centerXAnchor];
    v40 = [v254 constraintEqualToAnchor:v251];
    v282[0] = v40;
    v41 = [(UIView *)v20->_containerView leftAnchor];
    v42 = [(OBPrivacyLinkButton *)v20 leftAnchor];
    v43 = [v41 constraintGreaterThanOrEqualToAnchor:v42];
    v282[1] = v43;
    v44 = [(UIView *)v20->_containerView rightAnchor];
    v45 = [(OBPrivacyLinkButton *)v20 rightAnchor];
    [v44 constraintLessThanOrEqualToAnchor:v45];
    v47 = v46 = v36;
    v282[2] = v47;
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v282 count:3];
    v49 = v46;
    v39 = v251;
    [v49 activateConstraints:v48];

    v38 = v254;
  }

  LODWORD(v50) = 1148846080;
  [(UIView *)v20->_containerView setContentHuggingPriority:0 forAxis:v50];
  LODWORD(v51) = 1148846080;
  [(UIView *)v20->_containerView setContentHuggingPriority:1 forAxis:v51];
  v255 = [(UIView *)v20->_containerView bottomAnchor];
  v252 = [(OBPrivacyLinkButton *)v20 bottomAnchor];
  v246 = [v255 constraintEqualToAnchor:v252];
  v281[0] = v246;
  v52 = [(UIView *)v20->_containerView topAnchor];
  v53 = [(OBPrivacyLinkButton *)v20 topAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];
  v281[1] = v54;
  v55 = [(UIView *)v20->_containerView leftAnchor];
  v56 = [(OBPrivacyLinkButton *)v20 leftAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];
  v281[2] = v57;
  v58 = [(UIView *)v20->_containerView rightAnchor];
  v59 = [(OBPrivacyLinkButton *)v20 rightAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];
  v281[3] = v60;
  v242 = [MEMORY[0x1E695DEC8] arrayWithObjects:v281 count:4];

  v262 = 0u;
  v263 = 0u;
  v260 = 0u;
  v261 = 0u;
  v61 = v242;
  v62 = [v61 countByEnumeratingWithState:&v260 objects:v280 count:16];
  if (v62)
  {
    v64 = v62;
    v65 = *v261;
    do
    {
      for (i = 0; i != v64; ++i)
      {
        if (*v261 != v65)
        {
          objc_enumerationMutation(v61);
        }

        v67 = *(*(&v260 + 1) + 8 * i);
        LODWORD(v63) = 1144750080;
        [v67 setPriority:v63];
        [v67 setActive:1];
      }

      v64 = [v61 countByEnumeratingWithState:&v260 objects:v280 count:16];
    }

    while (v64);
  }

  v68 = [(UIView *)v20->_containerView topAnchor];
  v69 = [(OBPrivacyLinkButton *)v20 topAnchor];
  v70 = [v68 constraintEqualToAnchor:v69];
  v279[0] = v70;
  v71 = [(UIView *)v20->_containerView bottomAnchor];
  v72 = [(OBPrivacyLinkButton *)v20 bottomAnchor];
  v73 = [v71 constraintEqualToAnchor:v72];
  v279[1] = v73;
  v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:v279 count:2];

  v258 = 0u;
  v259 = 0u;
  v256 = 0u;
  v257 = 0u;
  v75 = v74;
  v76 = [v75 countByEnumeratingWithState:&v256 objects:v278 count:16];
  if (v76)
  {
    v78 = v76;
    v79 = *v257;
    do
    {
      for (j = 0; j != v78; ++j)
      {
        if (*v257 != v79)
        {
          objc_enumerationMutation(v75);
        }

        v81 = *(*(&v256 + 1) + 8 * j);
        LODWORD(v77) = 1144750080;
        [v81 setPriority:v77];
        [v81 setActive:1];
      }

      v78 = [v75 countByEnumeratingWithState:&v256 objects:v278 count:16];
    }

    while (v78);
  }

  v82 = [MEMORY[0x1E69DCAB8] systemImageNamed:v244];
  if (!v82)
  {
    v82 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v244];
  }

  v83 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v82];
  iconView = v20->_iconView;
  v20->_iconView = v83;

  v85 = 1;
  [(UIImageView *)v20->_iconView setContentMode:1];
  v86 = [(OBPrivacyLinkButton *)v20 _iconTintColor];
  [(UIImageView *)v20->_iconView setTintColor:v86];

  [(UIImageView *)v20->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
  v87 = objc_alloc_init(MEMORY[0x1E69DD168]);
  textView = v20->_textView;
  v20->_textView = v87;

  v89 = v20->_textView;
  v90 = [(OBPrivacyLinkButton *)v20 labelText];
  [(UITextView *)v89 setAttributedText:v90];

  v91 = v20->_textView;
  v92 = [(OBPrivacyLinkButton *)v20 _font];
  [(UITextView *)v91 setFont:v92];

  [(UITextView *)v20->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
  if (+[OBFeatureFlags isNaturalUIEnabled])
  {
    if (v20->_captionText)
    {
      v85 = 4;
    }

    else
    {
      v93 = [(UIImageView *)v20->_iconView image];

      if (v93)
      {
        v85 = 4;
      }

      else
      {
        v85 = 1;
      }
    }
  }

  v243 = v82;
  [(UITextView *)v20->_textView setTextAlignment:v85];
  [(UITextView *)v20->_textView setTextContainerInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  v94 = [(UITextView *)v20->_textView textContainer];
  [v94 setLineFragmentPadding:0.0];

  [(UITextView *)v20->_textView setEditable:0];
  [(UITextView *)v20->_textView setSelectable:0];
  [(UITextView *)v20->_textView setScrollEnabled:0];
  [(UITextView *)v20->_textView setUserInteractionEnabled:0];
  v95 = v20->_textView;
  v96 = [MEMORY[0x1E69DC888] clearColor];
  [(UITextView *)v95 setBackgroundColor:v96];

  [(UIView *)v20->_containerView addSubview:v20->_textView];
  if ([(OBPrivacyLinkButton *)v20 _isButtonAboveCaptionText])
  {
    v97 = objc_alloc(MEMORY[0x1E69DCC10]);
    v98 = [v97 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    buttonLabel = v20->_buttonLabel;
    v20->_buttonLabel = v98;

    v100 = [(OBPrivacyLinkButton *)v20 _font];
    [(UILabel *)v20->_buttonLabel setFont:v100];

    [(UILabel *)v20->_buttonLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v20->_buttonLabel setUserInteractionEnabled:0];
    [(UILabel *)v20->_buttonLabel setLineBreakMode:0];
    [(UILabel *)v20->_buttonLabel setText:v20->_buttonText];
    [(UILabel *)v20->_buttonLabel setNumberOfLines:0];
    LODWORD(v101) = 1148846080;
    [(UILabel *)v20->_buttonLabel setContentCompressionResistancePriority:0 forAxis:v101];
    LODWORD(v102) = 1148846080;
    [(UILabel *)v20->_buttonLabel setContentCompressionResistancePriority:1 forAxis:v102];
  }

  v103 = [(OBPrivacyLinkButton *)v20 tintColor];
  [(OBPrivacyLinkButton *)v20 _updateButtonColorWithColor:v103];

  v247 = MEMORY[0x1E696ACD8];
  v104 = [(UITextView *)v20->_textView bottomAnchor];
  v105 = [(UIView *)v20->_containerView bottomAnchor];
  v106 = [v104 constraintEqualToAnchor:v105];
  v277[0] = v106;
  v107 = [(UITextView *)v20->_textView trailingAnchor];
  v108 = [(UIView *)v20->_containerView trailingAnchor];
  v109 = [v107 constraintLessThanOrEqualToAnchor:v108];
  v277[1] = v109;
  v110 = [MEMORY[0x1E695DEC8] arrayWithObjects:v277 count:2];
  [v247 activateConstraints:v110];

  if (v20->_buttonLabel)
  {
    v111 = objc_alloc(MEMORY[0x1E69DCF90]);
    v276[0] = v20->_iconView;
    v276[1] = v20->_buttonLabel;
    v112 = 0x1E695D000uLL;
    v113 = [MEMORY[0x1E695DEC8] arrayWithObjects:v276 count:2];
    v114 = [v111 initWithArrangedSubviews:v113];

    [v114 setAxis:0];
    [v114 setSpacing:v22];
    [v114 setAlignment:3];
    [v114 setTranslatesAutoresizingMaskIntoConstraints:0];
    v248 = v114;
    [(UIView *)v20->_containerView addSubview:v114];
  }

  else
  {
    [(UIView *)v20->_containerView addSubview:v20->_iconView];
    v248 = 0;
    v112 = 0x1E695D000uLL;
  }

  if (v243 && (-[UIImageView image](v20->_iconView, "image"), v115 = objc_claimAutoreleasedReturnValue(), [v115 size], v117 = v116, v115, v117 > 0.0))
  {
    v118 = [(UIImageView *)v20->_iconView heightAnchor];
    v119 = [v118 constraintEqualToConstant:v21];
    [v119 setActive:1];

    v120 = [(UIImageView *)v20->_iconView widthAnchor];
    v121 = [(UIImageView *)v20->_iconView image];
    [v121 size];
    v123 = v21 * v122;
    v124 = [(UIImageView *)v20->_iconView image];
    [v124 size];
    v126 = [v120 constraintEqualToConstant:v123 / v125];
    [v126 setActive:1];

    v112 = 0x1E695D000;
  }

  else
  {
    v127 = [(UIImageView *)v20->_iconView widthAnchor];
    v128 = [v127 constraintEqualToConstant:0.0];
    [v128 setActive:1];

    v120 = [(UIImageView *)v20->_iconView heightAnchor];
    v121 = [v120 constraintEqualToConstant:0.0];
    [v121 setActive:1];
  }

  LODWORD(v129) = 1148846080;
  [(UIImageView *)v20->_iconView setContentHuggingPriority:1 forAxis:v129];
  LODWORD(v130) = 1148846080;
  [(UIImageView *)v20->_iconView setContentHuggingPriority:0 forAxis:v130];
  if (v234)
  {
    v230 = MEMORY[0x1E696ACD8];
    v235 = [(UIImageView *)v20->_iconView topAnchor];
    v131 = [(UIView *)v20->_containerView topAnchor];
    v132 = [v235 constraintEqualToAnchor:v131];
    v275[0] = v132;
    v133 = [(UIImageView *)v20->_iconView bottomAnchor];
    v134 = [(UITextView *)v20->_textView topAnchor];
    v135 = [v133 constraintLessThanOrEqualToAnchor:v134];
    v275[1] = v135;
    v136 = [*(v112 + 3784) arrayWithObjects:v275 count:2];
    [v230 activateConstraints:v136];

    if (+[OBFeatureFlags isNaturalUIEnabled]&& [(UITextView *)v20->_textView textAlignment]== NSTextAlignmentNatural)
    {
      v226 = MEMORY[0x1E696ACD8];
      v137 = [(UIImageView *)v20->_iconView leadingAnchor];
      [(UIView *)v20->_containerView leadingAnchor];
      v231 = v236 = v137;
      v222 = [v137 constraintEqualToAnchor:-4.0 constant:?];
      v274[0] = v222;
      v138 = [(UITextView *)v20->_textView leadingAnchor];
      v139 = [(UIView *)v20->_containerView leadingAnchor];
      v140 = [v138 constraintEqualToAnchor:v139];
      v274[1] = v140;
      v141 = [(UITextView *)v20->_textView trailingAnchor];
      v142 = [(UIView *)v20->_containerView trailingAnchor];
      v143 = [v141 constraintLessThanOrEqualToAnchor:v142];
      v274[2] = v143;
      v144 = v274;
    }

    else
    {
      v226 = MEMORY[0x1E696ACD8];
      v162 = [(UIImageView *)v20->_iconView centerXAnchor];
      [(UIView *)v20->_containerView centerXAnchor];
      v231 = v236 = v162;
      v222 = [v162 constraintEqualToAnchor:?];
      v273[0] = v222;
      v138 = [(UITextView *)v20->_textView leadingAnchor];
      v139 = [(UIView *)v20->_containerView leadingAnchor];
      v140 = [v138 constraintGreaterThanOrEqualToAnchor:v139];
      v273[1] = v140;
      v141 = [(UITextView *)v20->_textView centerXAnchor];
      v142 = [(UIImageView *)v20->_iconView centerXAnchor];
      v143 = [v141 constraintEqualToAnchor:v142];
      v273[2] = v143;
      v144 = v273;
    }

    v163 = [MEMORY[0x1E695DEC8] arrayWithObjects:v144 count:3];
    [v226 activateConstraints:v163];

    v164 = [(UIImageView *)v20->_iconView bottomAnchor];
    v165 = [(UITextView *)v20->_textView firstBaselineAnchor];
    v166 = -v22;
    v167 = v243;
    if (!v243)
    {
      v166 = 0.0;
    }

    v168 = [v164 constraintEqualToAnchor:v165 constant:v166];

    LODWORD(v169) = 1144750080;
    [v168 setPriority:v169];
    [v168 setActive:1];

    v15 = v241;
    v17 = v244;
    v160 = v248;
    if (v243)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v237 = MEMORY[0x1E696ACD8];
    if (v20->_buttonLabel)
    {
      v232 = [v248 topAnchor];
      v227 = [(UIView *)v20->_containerView topAnchor];
      v223 = [v232 constraintEqualToAnchor:v227];
      v272[0] = v223;
      v220 = [v248 bottomAnchor];
      v218 = [(UITextView *)v20->_textView topAnchor];
      v216 = [v220 constraintEqualToAnchor:v218];
      v272[1] = v216;
      v214 = [(UITextView *)v20->_textView bottomAnchor];
      v212 = [(UIView *)v20->_containerView bottomAnchor];
      v210 = [v214 constraintEqualToAnchor:v212];
      v272[2] = v210;
      v145 = [(UITextView *)v20->_textView leadingAnchor];
      v146 = [(UIView *)v20->_containerView leadingAnchor];
      v147 = [v145 constraintEqualToAnchor:v146];
      v272[3] = v147;
      v148 = [(UITextView *)v20->_textView trailingAnchor];
      v149 = [(UIView *)v20->_containerView trailingAnchor];
      v150 = [v148 constraintEqualToAnchor:v149];
      v272[4] = v150;
      v151 = [*(v112 + 3784) arrayWithObjects:v272 count:5];
      [v237 activateConstraints:v151];

      LODWORD(v148) = +[OBFeatureFlags isNaturalUIEnabled];
      v238 = MEMORY[0x1E696ACD8];
      v152 = [v248 leadingAnchor];
      v153 = [(UIView *)v20->_containerView leadingAnchor];
      if (v148)
      {
        v154 = [v152 constraintEqualToAnchor:v153];
        v271[0] = v154;
        v155 = [v248 trailingAnchor];
        v156 = [(UIView *)v20->_containerView trailingAnchor];
        v157 = [v155 constraintLessThanOrEqualToAnchor:v156];
        v271[1] = v157;
        [MEMORY[0x1E695DEC8] arrayWithObjects:v271 count:2];
        v159 = v158 = v152;
        [v238 activateConstraints:v159];

        v160 = v248;
      }

      else
      {
        v233 = [v152 constraintGreaterThanOrEqualToAnchor:v153];
        v270[0] = v233;
        v225 = [v248 trailingAnchor];
        v187 = [(UIView *)v20->_containerView trailingAnchor];
        v188 = [v225 constraintLessThanOrEqualToAnchor:v187];
        v270[1] = v188;
        [v248 centerXAnchor];
        v189 = v229 = v152;
        v190 = [(UIView *)v20->_containerView centerXAnchor];
        v191 = [v189 constraintEqualToAnchor:v190];
        v270[2] = v191;
        v192 = [MEMORY[0x1E695DEC8] arrayWithObjects:v270 count:3];
        [v238 activateConstraints:v192];

        v160 = v248;
      }

      v15 = v241;
    }

    else
    {
      v228 = [(UIImageView *)v20->_iconView leadingAnchor];
      v224 = [(UIView *)v20->_containerView leadingAnchor];
      v221 = [v228 constraintEqualToAnchor:v224];
      v269[0] = v221;
      v170 = [(UIImageView *)v20->_iconView trailingAnchor];
      v219 = v170;
      v171 = [(UITextView *)v20->_textView leadingAnchor];
      v217 = v171;
      v172 = -v22;
      if (!v243)
      {
        v172 = 0.0;
      }

      v215 = [v170 constraintEqualToAnchor:v171 constant:v172];
      v269[1] = v215;
      v213 = [(UITextView *)v20->_textView centerYAnchor];
      v211 = [(UIView *)v20->_containerView centerYAnchor];
      v209 = [v213 constraintEqualToAnchor:v211];
      v269[2] = v209;
      v173 = [(UITextView *)v20->_textView topAnchor];
      v174 = [(UIView *)v20->_containerView topAnchor];
      v175 = [v173 constraintGreaterThanOrEqualToAnchor:v174];
      v269[3] = v175;
      v176 = [(UITextView *)v20->_textView bottomAnchor];
      v177 = [(UIView *)v20->_containerView bottomAnchor];
      v178 = [v176 constraintLessThanOrEqualToAnchor:v177];
      v269[4] = v178;
      v179 = [*(v112 + 3784) arrayWithObjects:v269 count:5];
      [v237 activateConstraints:v179];

      v180 = +[OBFeatureFlags isNaturalUIEnabled];
      v181 = MEMORY[0x1E696ACD8];
      v182 = v20->_iconView;
      if (v180)
      {
        v183 = [(UIImageView *)v182 topAnchor];
        v184 = [(UITextView *)v20->_textView topAnchor];
        v185 = [v183 constraintEqualToAnchor:v184];
        v268 = v185;
        v186 = &v268;
      }

      else
      {
        v183 = [(UIImageView *)v182 centerYAnchor];
        v184 = [(UITextView *)v20->_textView centerYAnchor];
        v185 = [v183 constraintEqualToAnchor:v184];
        v267 = v185;
        v186 = &v267;
      }

      v15 = v241;
      v160 = v248;
      v193 = [MEMORY[0x1E695DEC8] arrayWithObjects:v186 count:1];
      [v181 activateConstraints:v193];

      if (![(NSString *)v20->_captionText length])
      {
        v194 = [(UITextView *)v20->_textView trailingAnchor];
        v195 = [(UIView *)v20->_containerView trailingAnchor];
        v196 = [v194 constraintEqualToAnchor:v195];
        [v196 setActive:1];

        LODWORD(v197) = 1148846080;
        [(UITextView *)v20->_textView setContentHuggingPriority:0 forAxis:v197];
      }
    }

    LODWORD(v161) = 1148846080;
    [(UITextView *)v20->_textView setContentHuggingPriority:1 forAxis:v161];
    v167 = v243;
    v17 = v244;
    if (v243)
    {
      goto LABEL_69;
    }
  }

  v198 = [(UITextView *)v20->_textView centerXAnchor];
  v199 = [(UIView *)v20->_containerView centerXAnchor];
  v200 = [v198 constraintEqualToAnchor:v199];
  [v200 setActive:1];

LABEL_69:
  v201 = v20->_buttonLabel;
  v202 = v20->_iconView;
  if (v201)
  {
    v266[0] = v20->_iconView;
    v266[1] = v201;
    v266[2] = v20->_textView;
    v203 = MEMORY[0x1E695DEC8];
    v204 = v266;
    v205 = 3;
  }

  else
  {
    v265[0] = v20->_iconView;
    v265[1] = v20->_textView;
    v203 = MEMORY[0x1E695DEC8];
    v204 = v265;
    v205 = 2;
  }

  v206 = [v203 arrayWithObjects:v204 count:v205];
  [(OBPrivacyLinkButton *)v20 setAccessibilityElements:v206];

  v18 = v239;
  v16 = v240;
LABEL_73:

  v207 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)layoutSubviews
{
  v36[1] = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = OBPrivacyLinkButton;
  [(OBPrivacyLinkButton *)&v34 layoutSubviews];
  if (self->_buttonLabel && [(NSString *)self->_captionText length]&& [(NSString *)self->_buttonText length]&& [(NSString *)self->_buttonText containsString:@" "])
  {
    v35 = *MEMORY[0x1E69DB648];
    v3 = [(OBPrivacyLinkButton *)self _font];
    v36[0] = v3;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];

    v5 = [(UITextView *)self->_textView text];
    [(UITextView *)self->_textView frame];
    [v5 boundingRectWithSize:1 options:v4 attributes:0 context:{v6, 1.79769313e308}];
    v8 = v7;

    captionText = self->_captionText;
    [(UITextView *)self->_textView frame];
    [(NSString *)captionText boundingRectWithSize:1 options:v4 attributes:0 context:v10, 1.79769313e308];
    v12 = v11;
    v13 = [(OBPrivacyLinkButton *)self _font];
    [v13 lineHeight];
    v15 = v8 / v14;

    v16 = [(OBPrivacyLinkButton *)self _font];
    [v16 lineHeight];
    v18 = v12 / v17;

    if (round(v15 - v18) >= 2.0)
    {
      v19 = [(NSString *)self->_buttonText stringByReplacingOccurrencesOfString:@" " withString:@" "];
      buttonText = self->_buttonText;
      self->_buttonText = v19;

      textView = self->_textView;
      v22 = [(OBPrivacyLinkButton *)self labelText];
      [(UITextView *)textView setAttributedText:v22];

      v23 = self->_textView;
      v24 = [(OBPrivacyLinkButton *)self _font];
      [(UITextView *)v23 setFont:v24];

      v25 = [(OBPrivacyLinkButton *)self tintColor];
      [(OBPrivacyLinkButton *)self _updateButtonColorWithColor:v25];

      [(OBPrivacyLinkButton *)self setNeedsLayout];
    }
  }

  [(OBPrivacyLinkButton *)self contentSize];
  v27 = v26;
  v29 = v28;
  [(OBPrivacyLinkButton *)self intrinsicContentSize];
  if (v27 != v31 || v29 != v30)
  {
    [(OBPrivacyLinkButton *)self intrinsicContentSize];
    [(OBPrivacyLinkButton *)self setContentSize:?];
    [(OBPrivacyLinkButton *)self invalidateIntrinsicContentSize];
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = OBPrivacyLinkButton;
  [(OBPrivacyLinkButton *)&v6 tintColorDidChange];
  v3 = [(OBPrivacyLinkButton *)self tintColor];

  if (v3)
  {
    v4 = [(OBPrivacyLinkButton *)self tintColor];
    [(OBPrivacyLinkButton *)self _updateButtonColorWithColor:v4];
  }

  v5 = [(OBPrivacyLinkButton *)self _iconTintColor];
  [(UIImageView *)self->_iconView setTintColor:v5];
}

- (CGSize)intrinsicContentSize
{
  v3 = [(OBPrivacyLinkButton *)self textView];
  [(OBPrivacyLinkButton *)self frame];
  v5 = v4;
  LODWORD(v4) = 1112014848;
  LODWORD(v6) = 1132068864;
  [v3 systemLayoutSizeFittingSize:v5 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v4, v6}];
  v8 = v7;

  if ([(OBPrivacyLinkButton *)self largeIcon]&& ([(UIImageView *)self->_iconView image], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    [(OBPrivacyLinkButton *)self frame];
    v11 = v10;
    [(OBPrivacyLinkButton *)self _iconToTextSpacingLarge];
    v8 = v8 + v12 + 30.0;
  }

  else
  {
    [(OBPrivacyLinkButton *)self frame];
    v11 = v13;
  }

  v14 = v11;
  v15 = v8;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)_updateButtonColorWithColor:(id)a3
{
  v4 = a3;
  buttonLabel = self->_buttonLabel;
  v15 = v4;
  if (buttonLabel || (buttonLabel = self->_textView, !self->_captionText))
  {
    [buttonLabel setTextColor:v4];
  }

  else
  {
    v6 = [buttonLabel attributedText];
    v7 = [v6 mutableCopy];

    v8 = *MEMORY[0x1E69DB650];
    v9 = [(OBPrivacyLinkButton *)self _rangeForButtonText];
    [v7 addAttribute:v8 value:v15 range:{v9, v10}];
    v11 = [(OBPrivacyLinkButton *)self underlineLinks];
    v12 = *MEMORY[0x1E69DB758];
    v14 = [(OBPrivacyLinkButton *)self _rangeForButtonText];
    if (v11)
    {
      [v7 addAttribute:v12 value:&unk_1F2CF8600 range:{v14, v13}];
    }

    else
    {
      [v7 removeAttribute:v12 range:{v14, v13}];
    }

    [(UITextView *)self->_textView setAttributedText:v7];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = OBPrivacyLinkButton;
  [(OBPrivacyLinkButton *)&v6 setEnabled:?];
  if (v3)
  {
    [(OBPrivacyLinkButton *)self setTintColor:0];
  }

  else
  {
    v5 = [MEMORY[0x1E69DC888] grayColor];
    [(OBPrivacyLinkButton *)self setTintColor:v5];
  }
}

- (void)setDisplayInfoIcon:(BOOL)a3
{
  self->_displayInfoIcon = a3;
  textView = self->_textView;
  v5 = [(OBPrivacyLinkButton *)self labelText];
  [(UITextView *)textView setAttributedText:v5];

  v6 = [(OBPrivacyLinkButton *)self tintColor];
  [(OBPrivacyLinkButton *)self _updateButtonColorWithColor:v6];
}

- (id)_localizedButtonText
{
  if (self->_buttonText)
  {
    v3 = MEMORY[0x1E696AAB0];
    v4 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"%@"];
    v5 = [v3 localizedAttributedStringWithFormat:v4, self->_buttonText];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_NSRange)_rangeForButtonText
{
  v3 = [(OBPrivacyLinkButton *)self _localizedButtonText];
  if (!v3)
  {
    goto LABEL_3;
  }

  v4 = [(UITextView *)self->_textView attributedText];
  v5 = [v4 string];
  v6 = [v3 string];
  v7 = [v5 rangeOfString:v6];
  v9 = v8;

  if (!v9)
  {
LABEL_3:
    v9 = 0;
    v7 = 0;
  }

  v10 = v7;
  v11 = v9;
  result.length = v11;
  result.location = v10;
  return result;
}

- (id)_font
{
  v3 = [(OBPrivacyLinkButton *)self iconView];
  v4 = [v3 image];
  if (v4)
  {

    v5 = MEMORY[0x1E69DDD10];
  }

  else
  {
    v6 = [(OBPrivacyLinkButton *)self captionText];

    v5 = MEMORY[0x1E69DDCF8];
    if (v6)
    {
      v5 = MEMORY[0x1E69DDD10];
    }
  }

  v7 = MEMORY[0x1E69DB878];
  v8 = *v5;
  v9 = [(OBPrivacyLinkButton *)self traitCollection];
  v10 = [v7 preferredFontForTextStyle:v8 compatibleWithTraitCollection:v9];

  return v10;
}

- (id)labelText
{
  v38[2] = *MEMORY[0x1E69E9840];
  if (self->_captionText)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    if ([(UIView *)self _obk_isRTL])
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    [v3 setAlignment:v4];
    v5 = objc_alloc(MEMORY[0x1E696AAB0]);
    captionText = self->_captionText;
    v37[0] = *MEMORY[0x1E69DB650];
    v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v37[1] = *MEMORY[0x1E69DB688];
    v38[0] = v7;
    v38[1] = v3;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
    v9 = [v5 initWithString:captionText attributes:v8];

    if (self->_captionAttachmentImage)
    {
      v10 = MEMORY[0x1E696AAB0];
      v11 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:?];
      v12 = [v10 attributedStringWithAttachment:v11];

      v13 = objc_alloc(MEMORY[0x1E696AAB0]);
      v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v15 = [(OBPrivacyLinkButton *)self displayLanguage];
      v16 = [OBUtilities localizedString:@"BUTTON_SPACE_BETWEEN_BUTTON_CAPTION_ATTACHMENT_IMAGE_AND_TEXT" forTable:@"Localizable" inBundle:v14 forLanguage:v15];
      v17 = [v13 initWithString:v16];

      v18 = objc_alloc_init(MEMORY[0x1E696AD40]);
      [v18 appendAttributedString:v12];
      [v18 appendAttributedString:v17];
      [v18 appendAttributedString:v9];

      v9 = v18;
    }
  }

  else
  {
    v9 = 0;
  }

  if (self->_buttonText && ![(OBPrivacyLinkButton *)self _isButtonAboveCaptionText])
  {
    v19 = objc_alloc(MEMORY[0x1E696AD40]);
    v20 = [(OBPrivacyLinkButton *)self _localizedButtonText];
    v21 = [v19 initWithAttributedString:v20];

    v22 = [(OBPrivacyLinkButton *)self buttonAttributes];

    if (v22)
    {
      v23 = [(OBPrivacyLinkButton *)self buttonAttributes];
      [v21 addAttributes:v23 range:{0, objc_msgSend(v21, "length")}];
    }

    if ([v9 length])
    {
      v24 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v9];
      v25 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
      [v24 appendAttributedString:v25];
    }

    else
    {
      if (!+[OBFeatureFlags isNaturalUIEnabled]|| ([(UIImageView *)self->_iconView image], v26 = objc_claimAutoreleasedReturnValue(), v26, v26))
      {
        v24 = v21;
        goto LABEL_20;
      }

      v24 = objc_opt_new();
      if (![(OBPrivacyLinkButton *)self displayInfoIcon])
      {
LABEL_16:
        [v24 appendAttributedString:v21];
LABEL_20:

        v9 = v24;
        goto LABEL_21;
      }

      v29 = MEMORY[0x1E69DCAD8];
      v30 = [(OBPrivacyLinkButton *)self _font];
      v25 = [v29 configurationWithFont:v30];

      v31 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"info.circle.fill"];
      v32 = [v31 imageByApplyingSymbolConfiguration:v25];

      v33 = [v32 imageWithRenderingMode:2];

      v34 = objc_opt_new();
      [v34 setImage:v33];
      v35 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v34];
      [v24 setAttributedString:v35];

      v36 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
      [v24 appendAttributedString:v36];
    }

    goto LABEL_16;
  }

LABEL_21:
  v27 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)buttonAttributes
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (UIAccessibilityButtonShapesEnabled())
  {
    v5 = *MEMORY[0x1E69DB758];
    v6[0] = &unk_1F2CF8600;
    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = OBPrivacyLinkButton;
  [(OBPrivacyLinkButton *)&v8 traitCollectionDidChange:a3];
  textView = self->_textView;
  v5 = [(OBPrivacyLinkButton *)self _font];
  [(UITextView *)textView setFont:v5];

  buttonLabel = self->_buttonLabel;
  v7 = [(OBPrivacyLinkButton *)self _font];
  [(UILabel *)buttonLabel setFont:v7];
}

- (void)setUnderlineLinks:(BOOL)a3
{
  self->_underlineLinks = a3;
  v4 = [(OBPrivacyLinkButton *)self tintColor];
  [(OBPrivacyLinkButton *)self _updateButtonColorWithColor:v4];
}

- (double)_iconToTextSpacingLarge
{
  v2 = +[OBFeatureFlags isNaturalUIEnabled];
  result = 16.0;
  if (v2)
  {
    return 22.0;
  }

  return result;
}

- (CGSize)contentSize
{
  objc_copyStruct(v4, &self->_contentSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end