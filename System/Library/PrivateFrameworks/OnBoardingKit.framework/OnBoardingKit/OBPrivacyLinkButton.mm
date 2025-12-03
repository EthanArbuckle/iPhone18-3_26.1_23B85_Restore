@interface OBPrivacyLinkButton
- (CGSize)contentSize;
- (CGSize)intrinsicContentSize;
- (OBPrivacyLinkButton)initWithCaption:(id)caption captionAttachmentImage:(id)image buttonText:(id)text symbolName:(id)name useLargeIcon:(BOOL)icon displayLanguage:(id)language;
- (_NSRange)_rangeForButtonText;
- (double)_iconToTextSpacingLarge;
- (id)_font;
- (id)_localizedButtonText;
- (id)buttonAttributes;
- (id)labelText;
- (void)_updateButtonColorWithColor:(id)color;
- (void)layoutSubviews;
- (void)setDisplayInfoIcon:(BOOL)icon;
- (void)setEnabled:(BOOL)enabled;
- (void)setUnderlineLinks:(BOOL)links;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation OBPrivacyLinkButton

- (OBPrivacyLinkButton)initWithCaption:(id)caption captionAttachmentImage:(id)image buttonText:(id)text symbolName:(id)name useLargeIcon:(BOOL)icon displayLanguage:(id)language
{
  iconCopy = icon;
  v284[3] = *MEMORY[0x1E69E9840];
  captionCopy = caption;
  imageCopy = image;
  textCopy = text;
  nameCopy = name;
  languageCopy = language;
  v264.receiver = self;
  v264.super_class = OBPrivacyLinkButton;
  v19 = [(OBPrivacyLinkButton *)&v264 init];
  v20 = v19;
  if (!v19)
  {
    goto LABEL_73;
  }

  if (iconCopy)
  {
    v21 = 30.0;
  }

  else
  {
    v21 = 20.0;
  }

  v22 = 3.0;
  if (iconCopy)
  {
    [(OBPrivacyLinkButton *)v19 _iconToTextSpacingLarge];
    v22 = v23;
  }

  [(OBPrivacyLinkButton *)v20 setIsAccessibilityElement:0];
  v20->_largeIcon = iconCopy;
  v20->_displayInfoIcon = 0;
  objc_storeStrong(&v20->_captionText, caption);
  objc_storeStrong(&v20->_captionAttachmentImage, image);
  if (captionCopy)
  {
    v24 = [textCopy stringByReplacingOccurrencesOfString:@" " withString:@" "];
  }

  else
  {
    v24 = textCopy;
  }

  v234 = iconCopy;
  v239 = languageCopy;
  v240 = textCopy;
  v244 = nameCopy;
  objc_storeStrong(&v20->_buttonText, v24);
  v241 = captionCopy;
  if (captionCopy)
  {
  }

  objc_storeStrong(&v20->_displayLanguage, language);
  v25 = objc_alloc_init(MEMORY[0x1E69DD250]);
  containerView = v20->_containerView;
  v20->_containerView = v25;

  [(UIView *)v20->_containerView setIsAccessibilityElement:0];
  [(UIView *)v20->_containerView setUserInteractionEnabled:0];
  [(UIView *)v20->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBPrivacyLinkButton *)v20 addSubview:v20->_containerView];
  v245 = MEMORY[0x1E696ACD8];
  centerYAnchor = [(UIView *)v20->_containerView centerYAnchor];
  centerYAnchor2 = [(OBPrivacyLinkButton *)v20 centerYAnchor];
  v27 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v284[0] = v27;
  bottomAnchor = [(UIView *)v20->_containerView bottomAnchor];
  bottomAnchor2 = [(OBPrivacyLinkButton *)v20 bottomAnchor];
  v30 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v284[1] = v30;
  topAnchor = [(UIView *)v20->_containerView topAnchor];
  topAnchor2 = [(OBPrivacyLinkButton *)v20 topAnchor];
  v33 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v284[2] = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v284 count:3];
  [v245 activateConstraints:v34];

  v35 = +[OBFeatureFlags isNaturalUIEnabled];
  v36 = MEMORY[0x1E696ACD8];
  v37 = v20->_containerView;
  if (v35)
  {
    leadingAnchor = [(UIView *)v37 leadingAnchor];
    leadingAnchor2 = [(OBPrivacyLinkButton *)v20 leadingAnchor];
    v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v283[0] = v40;
    trailingAnchor = [(UIView *)v20->_containerView trailingAnchor];
    trailingAnchor2 = [(OBPrivacyLinkButton *)v20 trailingAnchor];
    v43 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    v283[1] = v43;
    rightAnchor = [MEMORY[0x1E695DEC8] arrayWithObjects:v283 count:2];
    [v36 activateConstraints:rightAnchor];
  }

  else
  {
    centerXAnchor = [(UIView *)v37 centerXAnchor];
    centerXAnchor2 = [(OBPrivacyLinkButton *)v20 centerXAnchor];
    v40 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v282[0] = v40;
    trailingAnchor = [(UIView *)v20->_containerView leftAnchor];
    trailingAnchor2 = [(OBPrivacyLinkButton *)v20 leftAnchor];
    v43 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2];
    v282[1] = v43;
    rightAnchor = [(UIView *)v20->_containerView rightAnchor];
    rightAnchor2 = [(OBPrivacyLinkButton *)v20 rightAnchor];
    [rightAnchor constraintLessThanOrEqualToAnchor:rightAnchor2];
    v47 = v46 = v36;
    v282[2] = v47;
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v282 count:3];
    v49 = v46;
    leadingAnchor2 = centerXAnchor2;
    [v49 activateConstraints:v48];

    leadingAnchor = centerXAnchor;
  }

  LODWORD(v50) = 1148846080;
  [(UIView *)v20->_containerView setContentHuggingPriority:0 forAxis:v50];
  LODWORD(v51) = 1148846080;
  [(UIView *)v20->_containerView setContentHuggingPriority:1 forAxis:v51];
  bottomAnchor3 = [(UIView *)v20->_containerView bottomAnchor];
  bottomAnchor4 = [(OBPrivacyLinkButton *)v20 bottomAnchor];
  v246 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v281[0] = v246;
  topAnchor3 = [(UIView *)v20->_containerView topAnchor];
  topAnchor4 = [(OBPrivacyLinkButton *)v20 topAnchor];
  v54 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v281[1] = v54;
  leftAnchor = [(UIView *)v20->_containerView leftAnchor];
  leftAnchor2 = [(OBPrivacyLinkButton *)v20 leftAnchor];
  v57 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v281[2] = v57;
  rightAnchor3 = [(UIView *)v20->_containerView rightAnchor];
  rightAnchor4 = [(OBPrivacyLinkButton *)v20 rightAnchor];
  v60 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
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

  topAnchor5 = [(UIView *)v20->_containerView topAnchor];
  topAnchor6 = [(OBPrivacyLinkButton *)v20 topAnchor];
  v70 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v279[0] = v70;
  bottomAnchor5 = [(UIView *)v20->_containerView bottomAnchor];
  bottomAnchor6 = [(OBPrivacyLinkButton *)v20 bottomAnchor];
  v73 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
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
  _iconTintColor = [(OBPrivacyLinkButton *)v20 _iconTintColor];
  [(UIImageView *)v20->_iconView setTintColor:_iconTintColor];

  [(UIImageView *)v20->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
  v87 = objc_alloc_init(MEMORY[0x1E69DD168]);
  textView = v20->_textView;
  v20->_textView = v87;

  v89 = v20->_textView;
  labelText = [(OBPrivacyLinkButton *)v20 labelText];
  [(UITextView *)v89 setAttributedText:labelText];

  v91 = v20->_textView;
  _font = [(OBPrivacyLinkButton *)v20 _font];
  [(UITextView *)v91 setFont:_font];

  [(UITextView *)v20->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
  if (+[OBFeatureFlags isNaturalUIEnabled])
  {
    if (v20->_captionText)
    {
      v85 = 4;
    }

    else
    {
      image = [(UIImageView *)v20->_iconView image];

      if (image)
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
  textContainer = [(UITextView *)v20->_textView textContainer];
  [textContainer setLineFragmentPadding:0.0];

  [(UITextView *)v20->_textView setEditable:0];
  [(UITextView *)v20->_textView setSelectable:0];
  [(UITextView *)v20->_textView setScrollEnabled:0];
  [(UITextView *)v20->_textView setUserInteractionEnabled:0];
  v95 = v20->_textView;
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UITextView *)v95 setBackgroundColor:clearColor];

  [(UIView *)v20->_containerView addSubview:v20->_textView];
  if ([(OBPrivacyLinkButton *)v20 _isButtonAboveCaptionText])
  {
    v97 = objc_alloc(MEMORY[0x1E69DCC10]);
    v98 = [v97 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    buttonLabel = v20->_buttonLabel;
    v20->_buttonLabel = v98;

    _font2 = [(OBPrivacyLinkButton *)v20 _font];
    [(UILabel *)v20->_buttonLabel setFont:_font2];

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

  tintColor = [(OBPrivacyLinkButton *)v20 tintColor];
  [(OBPrivacyLinkButton *)v20 _updateButtonColorWithColor:tintColor];

  v247 = MEMORY[0x1E696ACD8];
  bottomAnchor7 = [(UITextView *)v20->_textView bottomAnchor];
  bottomAnchor8 = [(UIView *)v20->_containerView bottomAnchor];
  v106 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
  v277[0] = v106;
  trailingAnchor3 = [(UITextView *)v20->_textView trailingAnchor];
  trailingAnchor4 = [(UIView *)v20->_containerView trailingAnchor];
  v109 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];
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
    heightAnchor = [(UIImageView *)v20->_iconView heightAnchor];
    v119 = [heightAnchor constraintEqualToConstant:v21];
    [v119 setActive:1];

    widthAnchor = [(UIImageView *)v20->_iconView widthAnchor];
    image2 = [(UIImageView *)v20->_iconView image];
    [image2 size];
    v123 = v21 * v122;
    image3 = [(UIImageView *)v20->_iconView image];
    [image3 size];
    v125 = [widthAnchor constraintEqualToConstant:v123 / v125];
    [v125 setActive:1];

    v112 = 0x1E695D000;
  }

  else
  {
    widthAnchor2 = [(UIImageView *)v20->_iconView widthAnchor];
    v128 = [widthAnchor2 constraintEqualToConstant:0.0];
    [v128 setActive:1];

    widthAnchor = [(UIImageView *)v20->_iconView heightAnchor];
    image2 = [widthAnchor constraintEqualToConstant:0.0];
    [image2 setActive:1];
  }

  LODWORD(v129) = 1148846080;
  [(UIImageView *)v20->_iconView setContentHuggingPriority:1 forAxis:v129];
  LODWORD(v130) = 1148846080;
  [(UIImageView *)v20->_iconView setContentHuggingPriority:0 forAxis:v130];
  if (v234)
  {
    v230 = MEMORY[0x1E696ACD8];
    topAnchor7 = [(UIImageView *)v20->_iconView topAnchor];
    topAnchor8 = [(UIView *)v20->_containerView topAnchor];
    v132 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
    v275[0] = v132;
    bottomAnchor9 = [(UIImageView *)v20->_iconView bottomAnchor];
    topAnchor9 = [(UITextView *)v20->_textView topAnchor];
    v135 = [bottomAnchor9 constraintLessThanOrEqualToAnchor:topAnchor9];
    v275[1] = v135;
    v136 = [*(v112 + 3784) arrayWithObjects:v275 count:2];
    [v230 activateConstraints:v136];

    if (+[OBFeatureFlags isNaturalUIEnabled]&& [(UITextView *)v20->_textView textAlignment]== NSTextAlignmentNatural)
    {
      v226 = MEMORY[0x1E696ACD8];
      leadingAnchor3 = [(UIImageView *)v20->_iconView leadingAnchor];
      [(UIView *)v20->_containerView leadingAnchor];
      v231 = v236 = leadingAnchor3;
      v222 = [leadingAnchor3 constraintEqualToAnchor:-4.0 constant:?];
      v274[0] = v222;
      leadingAnchor4 = [(UITextView *)v20->_textView leadingAnchor];
      leadingAnchor5 = [(UIView *)v20->_containerView leadingAnchor];
      v140 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
      v274[1] = v140;
      trailingAnchor5 = [(UITextView *)v20->_textView trailingAnchor];
      trailingAnchor6 = [(UIView *)v20->_containerView trailingAnchor];
      v143 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:trailingAnchor6];
      v274[2] = v143;
      v144 = v274;
    }

    else
    {
      v226 = MEMORY[0x1E696ACD8];
      centerXAnchor3 = [(UIImageView *)v20->_iconView centerXAnchor];
      [(UIView *)v20->_containerView centerXAnchor];
      v231 = v236 = centerXAnchor3;
      v222 = [centerXAnchor3 constraintEqualToAnchor:?];
      v273[0] = v222;
      leadingAnchor4 = [(UITextView *)v20->_textView leadingAnchor];
      leadingAnchor5 = [(UIView *)v20->_containerView leadingAnchor];
      v140 = [leadingAnchor4 constraintGreaterThanOrEqualToAnchor:leadingAnchor5];
      v273[1] = v140;
      trailingAnchor5 = [(UITextView *)v20->_textView centerXAnchor];
      trailingAnchor6 = [(UIImageView *)v20->_iconView centerXAnchor];
      v143 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
      v273[2] = v143;
      v144 = v273;
    }

    v163 = [MEMORY[0x1E695DEC8] arrayWithObjects:v144 count:3];
    [v226 activateConstraints:v163];

    bottomAnchor10 = [(UIImageView *)v20->_iconView bottomAnchor];
    firstBaselineAnchor = [(UITextView *)v20->_textView firstBaselineAnchor];
    v166 = -v22;
    v167 = v243;
    if (!v243)
    {
      v166 = 0.0;
    }

    v168 = [bottomAnchor10 constraintEqualToAnchor:firstBaselineAnchor constant:v166];

    LODWORD(v169) = 1144750080;
    [v168 setPriority:v169];
    [v168 setActive:1];

    captionCopy = v241;
    nameCopy = v244;
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
      topAnchor10 = [v248 topAnchor];
      topAnchor11 = [(UIView *)v20->_containerView topAnchor];
      v223 = [topAnchor10 constraintEqualToAnchor:topAnchor11];
      v272[0] = v223;
      bottomAnchor11 = [v248 bottomAnchor];
      topAnchor12 = [(UITextView *)v20->_textView topAnchor];
      v216 = [bottomAnchor11 constraintEqualToAnchor:topAnchor12];
      v272[1] = v216;
      bottomAnchor12 = [(UITextView *)v20->_textView bottomAnchor];
      bottomAnchor13 = [(UIView *)v20->_containerView bottomAnchor];
      v210 = [bottomAnchor12 constraintEqualToAnchor:bottomAnchor13];
      v272[2] = v210;
      leadingAnchor6 = [(UITextView *)v20->_textView leadingAnchor];
      leadingAnchor7 = [(UIView *)v20->_containerView leadingAnchor];
      v147 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
      v272[3] = v147;
      trailingAnchor7 = [(UITextView *)v20->_textView trailingAnchor];
      trailingAnchor8 = [(UIView *)v20->_containerView trailingAnchor];
      v150 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
      v272[4] = v150;
      v151 = [*(v112 + 3784) arrayWithObjects:v272 count:5];
      [v237 activateConstraints:v151];

      LODWORD(trailingAnchor7) = +[OBFeatureFlags isNaturalUIEnabled];
      v238 = MEMORY[0x1E696ACD8];
      leadingAnchor8 = [v248 leadingAnchor];
      leadingAnchor9 = [(UIView *)v20->_containerView leadingAnchor];
      if (trailingAnchor7)
      {
        v154 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
        v271[0] = v154;
        trailingAnchor9 = [v248 trailingAnchor];
        trailingAnchor10 = [(UIView *)v20->_containerView trailingAnchor];
        v157 = [trailingAnchor9 constraintLessThanOrEqualToAnchor:trailingAnchor10];
        v271[1] = v157;
        [MEMORY[0x1E695DEC8] arrayWithObjects:v271 count:2];
        v159 = v158 = leadingAnchor8;
        [v238 activateConstraints:v159];

        v160 = v248;
      }

      else
      {
        v233 = [leadingAnchor8 constraintGreaterThanOrEqualToAnchor:leadingAnchor9];
        v270[0] = v233;
        trailingAnchor11 = [v248 trailingAnchor];
        trailingAnchor12 = [(UIView *)v20->_containerView trailingAnchor];
        v188 = [trailingAnchor11 constraintLessThanOrEqualToAnchor:trailingAnchor12];
        v270[1] = v188;
        [v248 centerXAnchor];
        v189 = v229 = leadingAnchor8;
        centerXAnchor4 = [(UIView *)v20->_containerView centerXAnchor];
        v191 = [v189 constraintEqualToAnchor:centerXAnchor4];
        v270[2] = v191;
        v192 = [MEMORY[0x1E695DEC8] arrayWithObjects:v270 count:3];
        [v238 activateConstraints:v192];

        v160 = v248;
      }

      captionCopy = v241;
    }

    else
    {
      leadingAnchor10 = [(UIImageView *)v20->_iconView leadingAnchor];
      leadingAnchor11 = [(UIView *)v20->_containerView leadingAnchor];
      v221 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor11];
      v269[0] = v221;
      trailingAnchor13 = [(UIImageView *)v20->_iconView trailingAnchor];
      v219 = trailingAnchor13;
      leadingAnchor12 = [(UITextView *)v20->_textView leadingAnchor];
      v217 = leadingAnchor12;
      v172 = -v22;
      if (!v243)
      {
        v172 = 0.0;
      }

      v215 = [trailingAnchor13 constraintEqualToAnchor:leadingAnchor12 constant:v172];
      v269[1] = v215;
      centerYAnchor3 = [(UITextView *)v20->_textView centerYAnchor];
      centerYAnchor4 = [(UIView *)v20->_containerView centerYAnchor];
      v209 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
      v269[2] = v209;
      topAnchor13 = [(UITextView *)v20->_textView topAnchor];
      topAnchor14 = [(UIView *)v20->_containerView topAnchor];
      v175 = [topAnchor13 constraintGreaterThanOrEqualToAnchor:topAnchor14];
      v269[3] = v175;
      bottomAnchor14 = [(UITextView *)v20->_textView bottomAnchor];
      bottomAnchor15 = [(UIView *)v20->_containerView bottomAnchor];
      v178 = [bottomAnchor14 constraintLessThanOrEqualToAnchor:bottomAnchor15];
      v269[4] = v178;
      v179 = [*(v112 + 3784) arrayWithObjects:v269 count:5];
      [v237 activateConstraints:v179];

      v180 = +[OBFeatureFlags isNaturalUIEnabled];
      v181 = MEMORY[0x1E696ACD8];
      v182 = v20->_iconView;
      if (v180)
      {
        topAnchor15 = [(UIImageView *)v182 topAnchor];
        topAnchor16 = [(UITextView *)v20->_textView topAnchor];
        v185 = [topAnchor15 constraintEqualToAnchor:topAnchor16];
        v268 = v185;
        v186 = &v268;
      }

      else
      {
        topAnchor15 = [(UIImageView *)v182 centerYAnchor];
        topAnchor16 = [(UITextView *)v20->_textView centerYAnchor];
        v185 = [topAnchor15 constraintEqualToAnchor:topAnchor16];
        v267 = v185;
        v186 = &v267;
      }

      captionCopy = v241;
      v160 = v248;
      v193 = [MEMORY[0x1E695DEC8] arrayWithObjects:v186 count:1];
      [v181 activateConstraints:v193];

      if (![(NSString *)v20->_captionText length])
      {
        trailingAnchor14 = [(UITextView *)v20->_textView trailingAnchor];
        trailingAnchor15 = [(UIView *)v20->_containerView trailingAnchor];
        v196 = [trailingAnchor14 constraintEqualToAnchor:trailingAnchor15];
        [v196 setActive:1];

        LODWORD(v197) = 1148846080;
        [(UITextView *)v20->_textView setContentHuggingPriority:0 forAxis:v197];
      }
    }

    LODWORD(v161) = 1148846080;
    [(UITextView *)v20->_textView setContentHuggingPriority:1 forAxis:v161];
    v167 = v243;
    nameCopy = v244;
    if (v243)
    {
      goto LABEL_69;
    }
  }

  centerXAnchor5 = [(UITextView *)v20->_textView centerXAnchor];
  centerXAnchor6 = [(UIView *)v20->_containerView centerXAnchor];
  v200 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
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

  languageCopy = v239;
  textCopy = v240;
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
    _font = [(OBPrivacyLinkButton *)self _font];
    v36[0] = _font;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];

    text = [(UITextView *)self->_textView text];
    [(UITextView *)self->_textView frame];
    [text boundingRectWithSize:1 options:v4 attributes:0 context:{v6, 1.79769313e308}];
    v8 = v7;

    captionText = self->_captionText;
    [(UITextView *)self->_textView frame];
    [(NSString *)captionText boundingRectWithSize:1 options:v4 attributes:0 context:v10, 1.79769313e308];
    v12 = v11;
    _font2 = [(OBPrivacyLinkButton *)self _font];
    [_font2 lineHeight];
    v15 = v8 / v14;

    _font3 = [(OBPrivacyLinkButton *)self _font];
    [_font3 lineHeight];
    v18 = v12 / v17;

    if (round(v15 - v18) >= 2.0)
    {
      v19 = [(NSString *)self->_buttonText stringByReplacingOccurrencesOfString:@" " withString:@" "];
      buttonText = self->_buttonText;
      self->_buttonText = v19;

      textView = self->_textView;
      labelText = [(OBPrivacyLinkButton *)self labelText];
      [(UITextView *)textView setAttributedText:labelText];

      v23 = self->_textView;
      _font4 = [(OBPrivacyLinkButton *)self _font];
      [(UITextView *)v23 setFont:_font4];

      tintColor = [(OBPrivacyLinkButton *)self tintColor];
      [(OBPrivacyLinkButton *)self _updateButtonColorWithColor:tintColor];

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
  tintColor = [(OBPrivacyLinkButton *)self tintColor];

  if (tintColor)
  {
    tintColor2 = [(OBPrivacyLinkButton *)self tintColor];
    [(OBPrivacyLinkButton *)self _updateButtonColorWithColor:tintColor2];
  }

  _iconTintColor = [(OBPrivacyLinkButton *)self _iconTintColor];
  [(UIImageView *)self->_iconView setTintColor:_iconTintColor];
}

- (CGSize)intrinsicContentSize
{
  textView = [(OBPrivacyLinkButton *)self textView];
  [(OBPrivacyLinkButton *)self frame];
  v5 = v4;
  LODWORD(v4) = 1112014848;
  LODWORD(v6) = 1132068864;
  [textView systemLayoutSizeFittingSize:v5 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v4, v6}];
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

- (void)_updateButtonColorWithColor:(id)color
{
  colorCopy = color;
  buttonLabel = self->_buttonLabel;
  v15 = colorCopy;
  if (buttonLabel || (buttonLabel = self->_textView, !self->_captionText))
  {
    [buttonLabel setTextColor:colorCopy];
  }

  else
  {
    attributedText = [buttonLabel attributedText];
    v7 = [attributedText mutableCopy];

    v8 = *MEMORY[0x1E69DB650];
    _rangeForButtonText = [(OBPrivacyLinkButton *)self _rangeForButtonText];
    [v7 addAttribute:v8 value:v15 range:{_rangeForButtonText, v10}];
    underlineLinks = [(OBPrivacyLinkButton *)self underlineLinks];
    v12 = *MEMORY[0x1E69DB758];
    _rangeForButtonText2 = [(OBPrivacyLinkButton *)self _rangeForButtonText];
    if (underlineLinks)
    {
      [v7 addAttribute:v12 value:&unk_1F2CF8600 range:{_rangeForButtonText2, v13}];
    }

    else
    {
      [v7 removeAttribute:v12 range:{_rangeForButtonText2, v13}];
    }

    [(UITextView *)self->_textView setAttributedText:v7];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6.receiver = self;
  v6.super_class = OBPrivacyLinkButton;
  [(OBPrivacyLinkButton *)&v6 setEnabled:?];
  if (enabledCopy)
  {
    [(OBPrivacyLinkButton *)self setTintColor:0];
  }

  else
  {
    grayColor = [MEMORY[0x1E69DC888] grayColor];
    [(OBPrivacyLinkButton *)self setTintColor:grayColor];
  }
}

- (void)setDisplayInfoIcon:(BOOL)icon
{
  self->_displayInfoIcon = icon;
  textView = self->_textView;
  labelText = [(OBPrivacyLinkButton *)self labelText];
  [(UITextView *)textView setAttributedText:labelText];

  tintColor = [(OBPrivacyLinkButton *)self tintColor];
  [(OBPrivacyLinkButton *)self _updateButtonColorWithColor:tintColor];
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
  _localizedButtonText = [(OBPrivacyLinkButton *)self _localizedButtonText];
  if (!_localizedButtonText)
  {
    goto LABEL_3;
  }

  attributedText = [(UITextView *)self->_textView attributedText];
  string = [attributedText string];
  string2 = [_localizedButtonText string];
  v7 = [string rangeOfString:string2];
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
  iconView = [(OBPrivacyLinkButton *)self iconView];
  image = [iconView image];
  if (image)
  {

    v5 = MEMORY[0x1E69DDD10];
  }

  else
  {
    captionText = [(OBPrivacyLinkButton *)self captionText];

    v5 = MEMORY[0x1E69DDCF8];
    if (captionText)
    {
      v5 = MEMORY[0x1E69DDD10];
    }
  }

  v7 = MEMORY[0x1E69DB878];
  v8 = *v5;
  traitCollection = [(OBPrivacyLinkButton *)self traitCollection];
  v10 = [v7 preferredFontForTextStyle:v8 compatibleWithTraitCollection:traitCollection];

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
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v37[1] = *MEMORY[0x1E69DB688];
    v38[0] = secondaryLabelColor;
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
      displayLanguage = [(OBPrivacyLinkButton *)self displayLanguage];
      v16 = [OBUtilities localizedString:@"BUTTON_SPACE_BETWEEN_BUTTON_CAPTION_ATTACHMENT_IMAGE_AND_TEXT" forTable:@"Localizable" inBundle:v14 forLanguage:displayLanguage];
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
    _localizedButtonText = [(OBPrivacyLinkButton *)self _localizedButtonText];
    v21 = [v19 initWithAttributedString:_localizedButtonText];

    buttonAttributes = [(OBPrivacyLinkButton *)self buttonAttributes];

    if (buttonAttributes)
    {
      buttonAttributes2 = [(OBPrivacyLinkButton *)self buttonAttributes];
      [v21 addAttributes:buttonAttributes2 range:{0, objc_msgSend(v21, "length")}];
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
      _font = [(OBPrivacyLinkButton *)self _font];
      v25 = [v29 configurationWithFont:_font];

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

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = OBPrivacyLinkButton;
  [(OBPrivacyLinkButton *)&v8 traitCollectionDidChange:change];
  textView = self->_textView;
  _font = [(OBPrivacyLinkButton *)self _font];
  [(UITextView *)textView setFont:_font];

  buttonLabel = self->_buttonLabel;
  _font2 = [(OBPrivacyLinkButton *)self _font];
  [(UILabel *)buttonLabel setFont:_font2];
}

- (void)setUnderlineLinks:(BOOL)links
{
  self->_underlineLinks = links;
  tintColor = [(OBPrivacyLinkButton *)self tintColor];
  [(OBPrivacyLinkButton *)self _updateButtonColorWithColor:tintColor];
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