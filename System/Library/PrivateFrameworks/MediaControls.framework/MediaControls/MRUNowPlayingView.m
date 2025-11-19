@interface MRUNowPlayingView
- (CGRect)suggestionsFrame;
- (CGSize)artworkOverrideSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MRUNowPlayingView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)contentEdgeInsets;
- (void)layoutSubviews;
- (void)layoutSubviewsHorizontal;
- (void)layoutSubviewsSmall;
- (void)layoutSubviewsVertical;
- (void)setContentEdgeInsets:(UIEdgeInsets)a3;
- (void)setContext:(int64_t)a3;
- (void)setLayout:(int64_t)a3;
- (void)setOnScreen:(BOOL)a3;
- (void)setShowArtworkView:(BOOL)a3;
- (void)setShowSuggestionsView:(BOOL)a3;
- (void)setShowTimeControlsView:(BOOL)a3;
- (void)setShowTransportControlsView:(BOOL)a3;
- (void)setShowVolumeControlsView:(BOOL)a3;
- (void)setStylingProvider:(id)a3;
- (void)setSuggestionsView:(id)a3;
- (void)setSupportsHorizontalLayout:(BOOL)a3;
- (void)setUseArtworkOverrideSize:(BOOL)a3;
- (void)updateArtworkStyle;
- (void)updateLayout;
- (void)updateOnScreen;
- (void)updateTextAlignment;
- (void)updateVisibility;
@end

@implementation MRUNowPlayingView

- (MRUNowPlayingView)initWithFrame:(CGRect)a3
{
  v20.receiver = self;
  v20.super_class = MRUNowPlayingView;
  v3 = [(MRUNowPlayingView *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(MRUNowPlayingView *)v3 layer];
    [v5 setHitTestsAsOpaque:1];

    v6 = objc_alloc_init(MRUNowPlayingHeaderView);
    headerView = v4->_headerView;
    v4->_headerView = v6;

    [(MRUNowPlayingView *)v4 addSubview:v4->_headerView];
    v8 = objc_alloc_init(MRUNowPlayingTimeControlsView);
    timeControlsView = v4->_timeControlsView;
    v4->_timeControlsView = v8;

    [(MRUNowPlayingView *)v4 addSubview:v4->_timeControlsView];
    v10 = objc_alloc_init(MRUNowPlayingTransportControlsView);
    transportControlsView = v4->_transportControlsView;
    v4->_transportControlsView = v10;

    [(MRUNowPlayingView *)v4 addSubview:v4->_transportControlsView];
    v12 = objc_alloc_init(MRUNowPlayingVolumeControlsView);
    volumeControlsView = v4->_volumeControlsView;
    v4->_volumeControlsView = v12;

    [(MRUNowPlayingView *)v4 addSubview:v4->_volumeControlsView];
    v14 = objc_alloc_init(MRUNowPlayingContainerView);
    containerView = v4->_containerView;
    v4->_containerView = v14;

    [(MRUNowPlayingView *)v4 addSubview:v4->_containerView];
    v16 = objc_alloc_init(MRUArtworkView);
    artworkView = v4->_artworkView;
    v4->_artworkView = v16;

    v18 = [(MRUArtworkView *)v4->_artworkView pointerInteraction];
    [v18 setEnabled:1];

    [(MRUArtworkView *)v4->_artworkView setRefreshInterval:0.45];
    [(MRUNowPlayingView *)v4 addSubview:v4->_artworkView];
    v4->_showArtworkView = 1;
    v4->_showTimeControlsView = 1;
    v4->_showTransportControlsView = 1;
    v4->_showVolumeControlsView = 1;
    [(MRUNowPlayingView *)v4 updateLayout];
    [(MRUNowPlayingView *)v4 updateArtworkStyle];
    [(MRUNowPlayingView *)v4 updateTextAlignment];
    [(MRUNowPlayingView *)v4 updateVisibility];
  }

  return v4;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MRUNowPlayingView;
  [(MRUNowPlayingView *)&v3 layoutSubviews];
  if (self->_supportsHorizontalLayout && !MRULayoutShouldBeVertical())
  {
    [(MRUNowPlayingView *)self layoutSubviewsHorizontal];
  }

  else
  {
    [(MRUNowPlayingView *)self layoutSubviewsVertical];
  }
}

- (void)layoutSubviewsVertical
{
  [(MRUNowPlayingView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(MRUNowPlayingView *)self traitCollection];
  [v11 displayScale];
  v13 = v12;

  layout = self->_layout;
  if (layout > 1)
  {
    switch(layout)
    {
      case 2:
        v305 = v13;
        [(MRUNowPlayingView *)self suggestionsFrame];
        v96 = v95;
        v98 = v97;
        v100 = v99;
        v102 = v101;
        [(UIView *)self->_suggestionsView setFrame:?];
        if (self->_showSuggestionsView)
        {
          v329.origin.x = v96;
          v329.origin.y = v98;
          v329.size.width = v100;
          v329.size.height = v102;
          CGRectGetHeight(v329);
          UIRectInset();
          v104 = v103;
          v106 = v105;
          v108 = v107;
          v110 = v109;
        }

        else
        {
          top = self->_contentEdgeInsets.top;
          left = self->_contentEdgeInsets.left;
          v104 = v4 + left;
          v106 = v6 + top;
          v108 = v8 - (left + self->_contentEdgeInsets.right);
          v110 = v10 - (top + self->_contentEdgeInsets.bottom);
        }

        [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView sizeThatFits:v108, v110];
        v146 = v145;
        v148 = v147;
        v338.origin.x = v104;
        v338.origin.y = v106;
        v338.size.width = v108;
        v338.size.height = v110;
        MinX = CGRectGetMinX(v338);
        v339.origin.x = v104;
        v339.origin.y = v106;
        v339.size.width = v108;
        v339.size.height = v110;
        MaxY = CGRectGetMaxY(v339);
        v151 = MaxY - v148;
        [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView setFrame:MinX, MaxY - v148, v146, v148];
        if (self->_showVolumeControlsView)
        {
          v340.origin.x = MinX;
          v340.origin.y = v151;
          v340.size.width = v146;
          v340.size.height = v148;
          CGRectGetHeight(v340);
          UIRectInset();
          v104 = v152;
          v106 = v153;
          v108 = v154;
          v110 = v155;
        }

        [(MRUNowPlayingTransportControlsView *)self->_transportControlsView sizeThatFits:v108, v110];
        v157 = v156;
        v159 = v158;
        v341.origin.x = v104;
        v341.origin.y = v106;
        v341.size.width = v108;
        v341.size.height = v110;
        v160 = CGRectGetMinX(v341);
        v342.origin.x = v104;
        v342.origin.y = v106;
        v342.size.width = v108;
        v342.size.height = v110;
        v161 = CGRectGetMaxY(v342);
        v162 = v161 - v159;
        [(MRUNowPlayingTransportControlsView *)self->_transportControlsView setFrame:v160, v161 - v159, v157, v159];
        if (self->_showTransportControlsView)
        {
          v343.origin.x = v160;
          v343.origin.y = v162;
          v343.size.width = v157;
          v343.size.height = v159;
          CGRectGetHeight(v343);
          UIRectInset();
          v104 = v163;
          v106 = v164;
          v108 = v165;
          v110 = v166;
        }

        [(MRUNowPlayingTimeControlsView *)self->_timeControlsView sizeThatFits:v108, v110];
        v168 = v167;
        v170 = v169;
        v344.origin.x = v104;
        v344.origin.y = v106;
        v344.size.width = v108;
        v344.size.height = v110;
        v171 = CGRectGetMinX(v344);
        v345.origin.x = v104;
        v345.origin.y = v106;
        v345.size.width = v108;
        v345.size.height = v110;
        v172 = CGRectGetMaxY(v345);
        v173 = v172 - v170;
        [(MRUNowPlayingTimeControlsView *)self->_timeControlsView setFrame:v171, v172 - v170, v168, v170];
        if (self->_showTimeControlsView && !self->_showSuggestionsView)
        {
          v346.origin.x = v171;
          v346.origin.y = v173;
          v346.size.width = v168;
          v346.size.height = v170;
          CGRectGetHeight(v346);
          UIRectInset();
          v104 = v174;
          v106 = v175;
          v108 = v176;
          v110 = v177;
        }

        [(MRUNowPlayingHeaderView *)self->_headerView sizeThatFits:v108, v110];
        v179 = v178;
        v181 = v180;
        v347.origin.x = v104;
        v347.origin.y = v106;
        v347.size.width = v108;
        v347.size.height = v110;
        v182 = CGRectGetMinX(v347);
        v348.origin.x = v104;
        v348.origin.y = v106;
        v348.size.width = v108;
        v348.size.height = v110;
        v183 = CGRectGetMaxY(v348);
        v184 = v183 - v181;
        [(MRUNowPlayingHeaderView *)self->_headerView setFrame:v182, v183 - v181, v179, v181];
        v349.origin.x = v182;
        v349.origin.y = v184;
        v349.size.width = v179;
        v349.size.height = v181;
        CGRectGetHeight(v349);
        UIRectInset();
        v189 = v185;
        v190 = v186;
        v191 = v187;
        v192 = v188;
        if (self->_showSuggestionsView)
        {
          v193 = CGRectGetMinX(*&v185);
          [(MRUNowPlayingView *)self bounds];
          v194 = CGRectGetMinY(v350) + self->_contentEdgeInsets.top;
          v351.origin.x = v189;
          v351.origin.y = v190;
          v351.size.width = v191;
          v351.size.height = v192;
          Width = CGRectGetWidth(v351);
          v352.origin.x = v189;
          v352.origin.y = v190;
          v352.size.width = v191;
          v352.size.height = v192;
          v192 = CGRectGetWidth(v352);
          v191 = Width;
          v190 = v194;
          v189 = v193;
        }

        else if (self->_useArtworkOverrideSize)
        {
          v295 = v305;
          UIRectCenteredIntegralRectScale();
          v189 = v196;
          v190 = v197;
          v191 = v198;
          v192 = v199;
        }

        artworkView = self->_artworkView;
        v138 = v189;
        v139 = v190;
        v140 = v191;
        v141 = v192;
        break;
      case 3:
        [(MRUNowPlayingView *)self suggestionsFrame];
        [(UIView *)self->_suggestionsView setFrame:?];
        v111 = self->_contentEdgeInsets.top;
        v112 = self->_contentEdgeInsets.left;
        v113 = v4 + v112;
        v114 = v6 + v111;
        v115 = v8 - (v112 + self->_contentEdgeInsets.right);
        v116 = v10 - (v111 + self->_contentEdgeInsets.bottom);
        [(MRUNowPlayingTimeControlsView *)self->_timeControlsView sizeThatFits:v115, v116];
        v118 = v117;
        v120 = v119;
        rect_8 = v119;
        v330.origin.x = v113;
        v330.origin.y = v114;
        v330.size.width = v115;
        v330.size.height = v116;
        v121 = CGRectGetMinX(v330);
        v331.origin.x = v113;
        v331.origin.y = v114;
        v331.size.width = v115;
        v331.size.height = v116;
        v306 = v13;
        v122 = CGRectGetMaxY(v331);
        [(MRUNowPlayingTimeControlsView *)self->_timeControlsView setFrame:v121, v122, v118, v120];
        [(MRUNowPlayingTransportControlsView *)self->_transportControlsView sizeThatFits:v115, v116];
        v124 = v123;
        rect_16 = v123;
        rect_24 = v125;
        v332.origin.x = v113;
        v332.origin.y = v114;
        v332.size.width = v115;
        v332.size.height = v116;
        recta = CGRectGetMinX(v332);
        v333.origin.x = v121;
        v333.origin.y = v122;
        v333.size.width = v118;
        v333.size.height = rect_8;
        v126 = CGRectGetMaxY(v333) + 7.0;
        [(MRUNowPlayingTransportControlsView *)self->_transportControlsView setFrame:recta, v126, v124, rect_24];
        [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView sizeThatFits:v115, v116];
        rect_8a = v127;
        v297 = v128;
        v334.origin.x = v113;
        v334.origin.y = v114;
        v334.size.width = v115;
        v334.size.height = v116;
        v129 = CGRectGetMinX(v334);
        v335.origin.x = recta;
        v335.origin.y = v126;
        v335.size.width = rect_16;
        v335.size.height = rect_24;
        [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView setFrame:v129, CGRectGetMaxY(v335) + 7.0, rect_8a, v297];
        [(MRUArtworkView *)self->_artworkView sizeThatFits:v115, v116];
        v336.origin.x = v113;
        v336.origin.y = v114;
        v336.size.width = v115;
        v336.size.height = v116;
        CGRectGetMinX(v336);
        UIRectCenteredYInRectScale();
        [(MRUNowPlayingView *)self bounds];
        MPRectByApplyingUserInterfaceLayoutDirectionInRect();
        [(MRUArtworkView *)self->_artworkView setFrame:?];
        UIRectInset();
        v131 = v130;
        v133 = v132;
        v135 = v134;
        v137 = v136;
        [(MRUNowPlayingHeaderView *)self->_headerView sizeThatFits:v134, v136];
        v337.origin.x = v131;
        v337.origin.y = v133;
        v337.size.width = v135;
        v337.size.height = v137;
        CGRectGetMinX(v337);
        UIRectCenteredYInRectScale();
        [(MRUNowPlayingView *)self bounds];
        MPRectByApplyingUserInterfaceLayoutDirectionInRect();
        artworkView = self->_headerView;
        break;
      case 4:
        v303 = v13;
        v15 = +[MRUFeatureFlagProvider isAutobahnEnabled];
        [(MRUNowPlayingView *)self suggestionsFrame];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        [(UIView *)self->_suggestionsView setFrame:?];
        if (v15)
        {
          if (self->_showSuggestionsView)
          {
            v308.origin.x = v17;
            v308.origin.y = v19;
            v308.size.width = v21;
            v308.size.height = v23;
            CGRectGetHeight(v308);
            UIRectInset();
            v25 = v24;
            v27 = v26;
            v29 = v28;
            v31 = v30;
          }

          else
          {
            v209 = self->_contentEdgeInsets.top;
            v210 = self->_contentEdgeInsets.left;
            v25 = v4 + v210;
            v27 = v6 + v209;
            v29 = v8 - (v210 + self->_contentEdgeInsets.right);
            v31 = v10 - (v209 + self->_contentEdgeInsets.bottom);
          }

          [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView sizeThatFits:v29, v31];
          v212 = v211;
          v214 = v213;
          v356.origin.x = v25;
          v356.origin.y = v27;
          v356.size.width = v29;
          v356.size.height = v31;
          v215 = CGRectGetMinX(v356);
          v357.origin.x = v25;
          v357.origin.y = v27;
          v357.size.width = v29;
          v357.size.height = v31;
          v216 = CGRectGetMaxY(v357);
          v217 = v216 - v214;
          [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView setFrame:v215, v216 - v214, v212, v214];
          if (self->_showVolumeControlsView)
          {
            v358.origin.x = v215;
            v358.origin.y = v217;
            v358.size.width = v212;
            v358.size.height = v214;
            CGRectGetHeight(v358);
            UIRectInset();
            v25 = v218;
            v27 = v219;
            v29 = v220;
            v31 = v221;
          }

          [(MRUNowPlayingTransportControlsView *)self->_transportControlsView sizeThatFits:v29, v31];
          v223 = v222;
          v225 = v224;
          v359.origin.x = v25;
          v359.origin.y = v27;
          v359.size.width = v29;
          v359.size.height = v31;
          v226 = CGRectGetMinX(v359);
          v360.origin.x = v25;
          v360.origin.y = v27;
          v360.size.width = v29;
          v360.size.height = v31;
          v227 = CGRectGetMaxY(v360);
          v228 = v227 - v225;
          [(MRUNowPlayingTransportControlsView *)self->_transportControlsView setFrame:v226, v227 - v225, v223, v225];
          if (self->_showTransportControlsView)
          {
            v361.origin.x = v226;
            v361.origin.y = v228;
            v361.size.width = v223;
            v361.size.height = v225;
            CGRectGetHeight(v361);
            UIRectInset();
            v25 = v229;
            v27 = v230;
            v29 = v231;
            v31 = v232;
          }

          [(MRUNowPlayingTimeControlsView *)self->_timeControlsView sizeThatFits:v29, v31];
          v362.origin.x = v25;
          v362.origin.y = v27;
          v362.size.width = v29;
          v362.size.height = v31;
          CGRectGetMinX(v362);
          v363.origin.x = v25;
          v363.origin.y = v27;
          v363.size.width = v29;
          v363.size.height = v31;
          CGRectGetMaxY(v363);
          UIRectInset();
          v234 = v233;
          v236 = v235;
          v238 = v237;
          v240 = v239;
          [(MRUNowPlayingView *)self bounds];
          MPRectByApplyingUserInterfaceLayoutDirectionInRect();
          [(MRUNowPlayingTimeControlsView *)self->_timeControlsView setFrame:?];
          if (self->_showTimeControlsView)
          {
            v364.origin.x = v234;
            v364.origin.y = v236;
            v364.size.width = v238;
            v364.size.height = v240;
            CGRectGetHeight(v364);
            UIRectInset();
            v25 = v241;
            v27 = v242;
            v29 = v243;
            v31 = v244;
          }

          if (!self->_showSuggestionsView && self->_showArtworkView)
          {
            UIRectInset();
            v25 = v245;
            v27 = v246;
            v29 = v247;
            v31 = v248;
          }

          v365.origin.x = v25;
          v365.origin.y = v27;
          v365.size.width = v29;
          v365.size.height = v31;
          CGRectGetMinX(v365);
          v366.origin.x = v25;
          v366.origin.y = v27;
          v366.size.width = v29;
          v366.size.height = v31;
          CGRectGetMinY(v366);
          [(MRUNowPlayingView *)self bounds];
          MPRectByApplyingUserInterfaceLayoutDirectionInRect();
          [(MRUArtworkView *)self->_artworkView setFrame:?];
          if (self->_showSuggestionsView)
          {
            v249 = v303;
          }

          else
          {
            v249 = v303;
            if (self->_showArtworkView)
            {
              UIRectInset();
              v25 = v291;
              v27 = v292;
              v29 = v293;
              v31 = v294;
            }
          }

          v290 = 424;
          [(MRUNowPlayingHeaderView *)self->_headerView sizeThatFits:v29, v31];
          v383.origin.x = v25;
          v383.origin.y = v27;
          v383.size.width = v29;
          v383.size.height = v31;
          CGRectGetMinX(v383);
          v384.origin.x = v25;
          v384.origin.y = v27;
          v384.size.width = v29;
          v384.size.height = v31;
          CGRectGetMinY(v384);
          UIRectCenteredYInRectScale();
          [(MRUNowPlayingView *)self bounds];
          MPRectByApplyingUserInterfaceLayoutDirectionInRect();
        }

        else
        {
          if (self->_showSuggestionsView)
          {
            v355.origin.x = v17;
            v355.origin.y = v19;
            v355.size.width = v21;
            v355.size.height = v23;
            CGRectGetHeight(v355);
            UIRectInset();
            v202 = v201;
            v204 = v203;
            v206 = v205;
            v208 = v207;
          }

          else
          {
            v250 = self->_contentEdgeInsets.top;
            v251 = self->_contentEdgeInsets.left;
            v202 = v4 + v251;
            v204 = v6 + v250;
            v206 = v8 - (v251 + self->_contentEdgeInsets.right);
            v208 = v10 - (v250 + self->_contentEdgeInsets.bottom);
          }

          v367.origin.x = v202;
          v367.origin.y = v204;
          v367.size.width = v206;
          v367.size.height = v208;
          v252 = CGRectGetMinX(v367);
          v368.origin.x = v202;
          v368.origin.y = v204;
          v368.size.width = v206;
          v368.size.height = v208;
          MinY = CGRectGetMinY(v368);
          v369.origin.x = v202;
          v369.origin.y = v204;
          v369.size.width = v206;
          v369.size.height = v208;
          v254 = CGRectGetWidth(v369);
          v255 = 100.0;
          [(MRUNowPlayingHeaderView *)self->_headerView sizeThatFits:v254, 100.0];
          if (self->_showSuggestionsView)
          {
            v255 = v256;
          }

          [(MRUArtworkView *)self->_artworkView sizeThatFits:v254, v255];
          v370.origin.x = v252;
          v370.origin.y = MinY;
          v370.size.width = v254;
          v370.size.height = v255;
          CGRectGetMinX(v370);
          v371.origin.x = v252;
          v371.origin.y = MinY;
          v371.size.width = v254;
          v371.size.height = v255;
          CGRectGetMinY(v371);
          [(MRUNowPlayingView *)self bounds];
          MPRectByApplyingUserInterfaceLayoutDirectionInRect();
          [(MRUArtworkView *)self->_artworkView setFrame:?];
          if (!self->_showSuggestionsView && self->_showArtworkView)
          {
            UIRectInset();
            v252 = v257;
            MinY = v258;
            v254 = v259;
            v255 = v260;
          }

          v372.origin.x = v252;
          v372.origin.y = MinY;
          v372.size.width = v254;
          v372.size.height = v255;
          CGRectGetMinX(v372);
          v373.origin.x = v252;
          v373.origin.y = MinY;
          v373.size.width = v254;
          v373.size.height = v255;
          CGRectGetMinY(v373);
          v374.origin.x = v252;
          v374.origin.y = MinY;
          v374.size.width = v254;
          v374.size.height = v255;
          CGRectGetWidth(v374);
          UIRectCenteredYInRectScale();
          [(MRUNowPlayingView *)self bounds];
          MPRectByApplyingUserInterfaceLayoutDirectionInRect();
          [(MRUNowPlayingHeaderView *)self->_headerView setFrame:?];
          v375.origin.x = v252;
          v375.origin.y = MinY;
          v375.size.width = v254;
          v375.size.height = v255;
          CGRectGetHeight(v375);
          UIRectInset();
          v262 = v261;
          v264 = v263;
          v266 = v265;
          v268 = v267;
          [(MRUNowPlayingTimeControlsView *)self->_timeControlsView sizeThatFits:v265, v267];
          v270 = v269;
          v272 = v271;
          v376.origin.x = v262;
          v376.origin.y = v264;
          v376.size.width = v266;
          v376.size.height = v268;
          v273 = CGRectGetMinX(v376);
          v377.origin.x = v262;
          v377.origin.y = v264;
          v377.size.width = v266;
          v377.size.height = v268;
          v274 = CGRectGetMinY(v377) - 7.0;
          [(MRUNowPlayingTimeControlsView *)self->_timeControlsView setFrame:v273, v274, v270, v272];
          if (!self->_showSuggestionsView && self->_showTimeControlsView)
          {
            v378.origin.x = v273;
            v378.origin.y = v274;
            v378.size.width = v270;
            v378.size.height = v272;
            CGRectGetHeight(v378);
            UIRectInset();
            v262 = v275;
            v264 = v276;
            v266 = v277;
            v268 = v278;
          }

          [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView sizeThatFits:v266, v268];
          v280 = v279;
          v282 = v281;
          v379.origin.x = v262;
          v379.origin.y = v264;
          v379.size.width = v266;
          v379.size.height = v268;
          v283 = CGRectGetMinX(v379);
          v380.origin.x = v262;
          v380.origin.y = v264;
          v380.size.width = v266;
          v380.size.height = v268;
          v284 = CGRectGetMaxY(v380);
          v285 = v284 - v282;
          [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView setFrame:v283, v284 - v282, v280, v282];
          if (self->_showVolumeControlsView)
          {
            v381.origin.x = v283;
            v381.origin.y = v285;
            v381.size.width = v280;
            v381.size.height = v282;
            CGRectGetHeight(v381);
            UIRectInset();
            v262 = v286;
            v264 = v287;
            v266 = v288;
            v268 = v289;
          }

          v290 = 440;
          [(MRUNowPlayingTransportControlsView *)self->_transportControlsView sizeThatFits:v266, v268];
          v382.origin.x = v262;
          v382.origin.y = v264;
          v382.size.width = v266;
          v382.size.height = v268;
          CGRectGetMinX(v382);
          v296 = v303;
          UIRectCenteredYInRectScale();
        }

        [*(&self->super.super.super.isa + v290) setFrame:v296];
        [(MRUNowPlayingView *)self bounds];
        CGRectGetMaxX(v385);
        [(MRUNowPlayingView *)self bounds];
        CGRectGetMinY(v386);
        [(MRUNowPlayingView *)self bounds];
        CGRectGetHeight(v387);
        [(MRUNowPlayingView *)self bounds];
        MPRectByApplyingUserInterfaceLayoutDirectionInRect();
        containerView = self->_containerView;
        goto LABEL_71;
      default:
        return;
    }

    [artworkView setFrame:{v138, v139, v140, v141, v295}];
    [(MRUNowPlayingView *)self bounds];
    v200 = CGRectGetMaxY(v353);
    [(MRUNowPlayingView *)self bounds];
    v94 = CGRectGetWidth(v354);
    containerView = self->_containerView;
    v92 = 0.0;
    v90 = 0.0;
    v93 = v200;
LABEL_71:

    [(MRUNowPlayingContainerView *)containerView setFrame:v92, v93, v94, v90];
    return;
  }

  if (layout)
  {
    if (layout != 1)
    {
      return;
    }

    [(MRUNowPlayingView *)self suggestionsFrame];
    [(UIView *)self->_suggestionsView setFrame:?];
    UIRectInset();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    [(MRUNowPlayingHeaderView *)self->_headerView sizeThatFits:v36, v38];
    v41 = v40;
    v309.origin.x = v33;
    v309.origin.y = v35;
    v309.size.width = v37;
    v309.size.height = v39;
    v42 = CGRectGetMinX(v309);
    v310.origin.x = v33;
    v310.origin.y = v35;
    v310.size.width = v37;
    v310.size.height = v39;
    v304 = v13;
    v43 = CGRectGetMinY(v310);
    v311.origin.x = v33;
    v311.origin.y = v35;
    v311.size.width = v37;
    v311.size.height = v39;
    v44 = CGRectGetWidth(v311);
    if (v41 <= 60.0)
    {
      v45 = 60.0;
    }

    else
    {
      v45 = v41;
    }

    v312.origin.x = v42;
    v312.origin.y = v43;
    v312.size.width = v44;
    v312.size.height = v45;
    CGRectGetMinX(v312);
    v313.origin.x = v42;
    v313.origin.y = v43;
    v313.size.width = v44;
    v313.size.height = v45;
    CGRectGetMinY(v313);
    [(MRUNowPlayingView *)self bounds];
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
    [(MRUArtworkView *)self->_artworkView setFrame:?];
    UIRectInset();
    x = v314.origin.x;
    y = v314.origin.y;
    v48 = v314.size.width;
    height = v314.size.height;
    CGRectGetMinX(v314);
    v315.origin.x = x;
    v315.origin.y = y;
    v315.size.width = v48;
    v315.size.height = height;
    CGRectGetWidth(v315);
    UIRectCenteredYInRectScale();
    [(MRUNowPlayingView *)self bounds];
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
    [(MRUNowPlayingHeaderView *)self->_headerView setFrame:?];
    v316.origin.x = x;
    v316.origin.y = y;
    v316.size.width = v48;
    v316.size.height = height;
    CGRectGetHeight(v316);
    UIRectInset();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    [(MRUNowPlayingTimeControlsView *)self->_timeControlsView sizeThatFits:v54, v56];
    v59 = v58;
    v61 = v60;
    v317.origin.x = v51;
    v317.origin.y = v53;
    v317.size.width = v55;
    v317.size.height = v57;
    v62 = CGRectGetMinX(v317);
    v318.origin.x = v51;
    v318.origin.y = v53;
    v318.size.width = v55;
    v318.size.height = v57;
    v63 = CGRectGetMinY(v318) - 7.0;
    [(MRUNowPlayingTimeControlsView *)self->_timeControlsView setFrame:v62, v63, v59, v61];
    if (self->_showTimeControlsView)
    {
      v319.origin.x = v62;
      v319.origin.y = v63;
      v319.size.width = v59;
      v319.size.height = v61;
      CGRectGetHeight(v319);
      UIRectInset();
      v51 = v64;
      v53 = v65;
      v55 = v66;
      v57 = v67;
    }

    [(MRUNowPlayingTransportControlsView *)self->_transportControlsView sizeThatFits:v55, v57];
    v69 = v68;
    v71 = v70;
    v320.origin.x = v51;
    v320.origin.y = v53;
    v320.size.width = v55;
    v320.size.height = v57;
    v72 = CGRectGetMinX(v320);
    v321.origin.x = v51;
    v321.origin.y = v53;
    v321.size.width = v55;
    v321.size.height = v57;
    v73 = CGRectGetMinY(v321);
    [(MRUNowPlayingTransportControlsView *)self->_transportControlsView setFrame:v72, v73, v69, v71];
    if (self->_showTransportControlsView)
    {
      v322.origin.x = v72;
      v322.origin.y = v73;
      v322.size.width = v69;
      v322.size.height = v71;
      CGRectGetHeight(v322);
      UIRectInset();
      v51 = v74;
      v53 = v75;
      v55 = v76;
      v57 = v77;
    }

    [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView sizeThatFits:v55, v57];
    v79 = v78;
    v81 = v80;
    v323.origin.x = v51;
    v323.origin.y = v53;
    v323.size.width = v55;
    v323.size.height = v57;
    v82 = CGRectGetMinX(v323);
    v324.origin.x = v51;
    v324.origin.y = v53;
    v324.size.width = v55;
    v324.size.height = v57;
    v83 = CGRectGetMinY(v324);
    [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView setFrame:v82, v83, v79, v81];
    if (self->_showVolumeControlsView)
    {
      v325.origin.x = v82;
      v325.origin.y = v83;
      v325.size.width = v79;
      v325.size.height = v81;
      CGRectGetHeight(v325);
      UIRectInset();
      v51 = v84;
      v53 = v85;
      v55 = v86;
      v57 = v87;
    }

    v326.origin.x = v51;
    v326.origin.y = v53;
    v326.size.width = v55;
    v326.size.height = v57;
    v88 = CGRectGetMinY(v326);
    [(MRUNowPlayingView *)self bounds];
    v89 = CGRectGetWidth(v327);
    v328.origin.x = v51;
    v328.origin.y = v53;
    v328.size.width = v55;
    v328.size.height = v57;
    v90 = CGRectGetHeight(v328);
    containerView = self->_containerView;
    v92 = 0.0;
    v93 = v88;
    v94 = v89;
    goto LABEL_71;
  }

  [(MRUNowPlayingView *)self layoutSubviewsSmall];
}

- (void)layoutSubviewsHorizontal
{
  [(MRUNowPlayingView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(MRUNowPlayingView *)self traitCollection];
  [v11 displayScale];
  v13 = v12;

  layout = self->_layout;
  if (layout > 1)
  {
    switch(layout)
    {
      case 2:
        v265 = v13;
        [(MRUNowPlayingView *)self suggestionsFrame];
        recta = v80;
        v255 = v82;
        v258 = v81;
        v253 = v83;
        [(UIView *)self->_suggestionsView setFrame:?];
        top = self->_contentEdgeInsets.top;
        left = self->_contentEdgeInsets.left;
        v86 = v4 + left;
        v87 = v6 + top;
        v88 = v8 - (left + self->_contentEdgeInsets.right);
        v89 = v10 - (top + self->_contentEdgeInsets.bottom);
        [(MRUArtworkView *)self->_artworkView sizeThatFits:v88, v89];
        v91 = v90;
        v93 = v92;
        v291.origin.x = v86;
        v291.origin.y = v87;
        v291.size.width = v88;
        v291.size.height = v89;
        MinX = CGRectGetMinX(v291);
        v292.origin.x = v86;
        v292.origin.y = v87;
        v292.size.width = v88;
        v292.size.height = v89;
        MinY = CGRectGetMinY(v292);
        [(MRUNowPlayingView *)self bounds];
        MPRectByApplyingUserInterfaceLayoutDirectionInRect();
        [(MRUArtworkView *)self->_artworkView setFrame:?];
        if (self->_showSuggestionsView)
        {
          v96 = recta;
          v98 = v255;
          v97 = v258;
          v99 = v253;
        }

        else
        {
          v96 = MinX;
          v97 = MinY;
          v98 = v91;
          v99 = v93;
        }

        CGRectGetWidth(*&v96);
        UIRectInset();
        v130 = v129;
        v132 = v131;
        v134 = v133;
        v136 = v135;
        [(MRUNowPlayingHeaderView *)self->_headerView sizeThatFits:v133, v135];
        v138 = v137;
        v140 = v139;
        v302.origin.x = v130;
        v302.origin.y = v132;
        v302.size.width = v134;
        v302.size.height = v136;
        v141 = CGRectGetMinX(v302);
        v303.origin.x = v130;
        v303.origin.y = v132;
        v303.size.width = v134;
        v303.size.height = v136;
        v142 = CGRectGetMinY(v303);
        [(MRUNowPlayingView *)self bounds];
        MPRectByApplyingUserInterfaceLayoutDirectionInRect();
        [(MRUNowPlayingHeaderView *)self->_headerView setFrame:?];
        v304.origin.x = v141;
        v304.origin.y = v142;
        v304.size.width = v138;
        v304.size.height = v140;
        CGRectGetHeight(v304);
        UIRectInset();
        v144 = v143;
        v146 = v145;
        v148 = v147;
        v150 = v149;
        [(MRUNowPlayingTimeControlsView *)self->_timeControlsView sizeThatFits:v147, v149];
        v152 = v151;
        v154 = v153;
        v305.origin.x = v144;
        v305.origin.y = v146;
        v305.size.width = v148;
        v305.size.height = v150;
        v155 = CGRectGetMinX(v305);
        v306.origin.x = v144;
        v306.origin.y = v146;
        v306.size.width = v148;
        v306.size.height = v150;
        v156 = CGRectGetMinY(v306) - 7.0;
        [(MRUNowPlayingView *)self bounds];
        MPRectByApplyingUserInterfaceLayoutDirectionInRect();
        [(MRUNowPlayingTimeControlsView *)self->_timeControlsView setFrame:?];
        if (self->_showTimeControlsView)
        {
          v307.origin.x = v155;
          v307.origin.y = v156;
          v307.size.width = v152;
          v307.size.height = v154;
          CGRectGetHeight(v307);
          UIRectInset();
          v144 = v157;
          v146 = v158;
          v148 = v159;
          v150 = v160;
        }

        [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView sizeThatFits:v148, v150];
        v162 = v161;
        v164 = v163;
        v308.origin.x = v144;
        v308.origin.y = v146;
        v308.size.width = v148;
        v308.size.height = v150;
        v165 = CGRectGetMinX(v308);
        v309.origin.x = v144;
        v309.origin.y = v146;
        v309.size.width = v148;
        v309.size.height = v150;
        v166 = CGRectGetMaxY(v309) - v164;
        [(MRUNowPlayingView *)self bounds];
        MPRectByApplyingUserInterfaceLayoutDirectionInRect();
        [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView setFrame:?];
        if (self->_showVolumeControlsView)
        {
          v310.origin.x = v165;
          v310.origin.y = v166;
          v310.size.width = v162;
          v310.size.height = v164;
          CGRectGetHeight(v310);
          UIRectInset();
          v144 = v167;
          v146 = v168;
          v148 = v169;
          v150 = v170;
        }

        v171 = 440;
        [(MRUNowPlayingTransportControlsView *)self->_transportControlsView sizeThatFits:v148, v150];
        v311.origin.x = v144;
        v311.origin.y = v146;
        v311.size.width = v148;
        v311.size.height = v150;
        CGRectGetMinX(v311);
        UIRectCenteredYInRectScale();
        [(MRUNowPlayingView *)self bounds];
        break;
      case 3:
        [(MRUNowPlayingView *)self suggestionsFrame];
        [(UIView *)self->_suggestionsView setFrame:?];
        v100 = self->_contentEdgeInsets.top;
        v101 = self->_contentEdgeInsets.left;
        v102 = v4 + v101;
        v103 = v6 + v100;
        v104 = v8 - (v101 + self->_contentEdgeInsets.right);
        v266 = v13;
        v105 = v10 - (v100 + self->_contentEdgeInsets.bottom);
        [(MRUNowPlayingTimeControlsView *)self->_timeControlsView sizeThatFits:v104, v105];
        v107 = v106;
        v254 = v106;
        v256 = v108;
        v293.origin.x = v102;
        v293.origin.y = v103;
        v293.size.width = v104;
        v293.size.height = v105;
        v251 = CGRectGetMinX(v293);
        v294.origin.x = v102;
        v294.origin.y = v103;
        v109 = v103;
        v259 = v103;
        v294.size.width = v104;
        v294.size.height = v105;
        v110 = CGRectGetMaxY(v294) + 7.0;
        [(MRUNowPlayingTimeControlsView *)self->_timeControlsView setFrame:v251, v110, v107, v256];
        [(MRUNowPlayingTransportControlsView *)self->_transportControlsView sizeThatFits:v104, v105];
        v112 = v111;
        v252 = v111;
        v250 = v113;
        v114 = v102;
        rectc = v102;
        v295.origin.x = v102;
        v295.origin.y = v109;
        v295.size.width = v104;
        v295.size.height = v105;
        v115 = CGRectGetMinX(v295);
        v296.origin.x = v251;
        v296.origin.y = v110;
        v296.size.width = v254;
        v296.size.height = v256;
        MaxY = CGRectGetMaxY(v296);
        [(MRUNowPlayingTransportControlsView *)self->_transportControlsView setFrame:v115, MaxY, v112, v250];
        [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView sizeThatFits:v104, v105];
        v257 = v117;
        v119 = v118;
        v297.origin.x = v114;
        v297.origin.y = v259;
        v297.size.width = v104;
        v297.size.height = v105;
        v120 = CGRectGetMinX(v297);
        v298.origin.x = v115;
        v298.origin.y = MaxY;
        v298.size.width = v252;
        v298.size.height = v250;
        [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView setFrame:v120, CGRectGetMaxY(v298) + 7.0, v257, v119];
        [(MRUArtworkView *)self->_artworkView sizeThatFits:v104, v105];
        v299.origin.x = rectc;
        v299.origin.y = v259;
        v299.size.width = v104;
        v299.size.height = v105;
        CGRectGetMinX(v299);
        UIRectCenteredYInRectScale();
        [(MRUNowPlayingView *)self bounds];
        MPRectByApplyingUserInterfaceLayoutDirectionInRect();
        [(MRUArtworkView *)self->_artworkView setFrame:?];
        UIRectInset();
        v122 = v121;
        v124 = v123;
        v126 = v125;
        v128 = v127;
        [(MRUNowPlayingHeaderView *)self->_headerView sizeThatFits:v125, v127];
        v300.origin.x = v122;
        v300.origin.y = v124;
        v300.size.width = v126;
        v300.size.height = v128;
        CGRectGetMinX(v300);
        UIRectCenteredYInRectScale();
        [(MRUNowPlayingView *)self bounds];
        MPRectByApplyingUserInterfaceLayoutDirectionInRect();
        [(MRUNowPlayingHeaderView *)self->_headerView setFrame:?];
        [(MRUNowPlayingView *)self bounds];
        CGRectGetMinX(v301);
LABEL_54:
        [(MRUNowPlayingView *)self bounds];
        CGRectGetMinY(v342);
        [(MRUNowPlayingView *)self bounds];
        CGRectGetHeight(v343);
        [(MRUNowPlayingView *)self bounds];
        MPRectByApplyingUserInterfaceLayoutDirectionInRect();
        containerView = self->_containerView;
LABEL_55:

        [containerView setFrame:?];
        return;
      case 4:
        rect = v10;
        v15 = +[MRUFeatureFlagProvider isAutobahnEnabled];
        [(MRUNowPlayingView *)self suggestionsFrame];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        [(UIView *)self->_suggestionsView setFrame:?];
        if (!v15)
        {
          v267 = v13;
          if (self->_showSuggestionsView)
          {
            v312.origin.x = v17;
            v312.origin.y = v19;
            v312.size.width = v21;
            v312.size.height = v23;
            CGRectGetHeight(v312);
            UIRectInset();
            v173 = v172;
            v175 = v174;
            v177 = v176;
            v179 = v178;
          }

          else
          {
            v208 = self->_contentEdgeInsets.top;
            v209 = self->_contentEdgeInsets.left;
            v173 = v4 + v209;
            v175 = v6 + v208;
            v177 = v8 - (v209 + self->_contentEdgeInsets.right);
            v179 = rect - (v208 + self->_contentEdgeInsets.bottom);
          }

          v325.origin.x = v173;
          v325.origin.y = v175;
          v325.size.width = v177;
          v325.size.height = v179;
          v210 = CGRectGetMinX(v325);
          v326.origin.x = v173;
          v326.origin.y = v175;
          v326.size.width = v177;
          v326.size.height = v179;
          v211 = CGRectGetMinY(v326);
          v327.origin.x = v173;
          v327.origin.y = v175;
          v327.size.width = v177;
          v327.size.height = v179;
          Width = CGRectGetWidth(v327);
          v213 = 100.0;
          [(MRUNowPlayingHeaderView *)self->_headerView sizeThatFits:Width, 100.0];
          if (self->_showSuggestionsView)
          {
            v213 = v214;
          }

          [(MRUArtworkView *)self->_artworkView sizeThatFits:Width, v213];
          v328.origin.x = v210;
          v328.origin.y = v211;
          v328.size.width = Width;
          v328.size.height = v213;
          CGRectGetMinX(v328);
          v329.origin.x = v210;
          v329.origin.y = v211;
          v329.size.width = Width;
          v329.size.height = v213;
          CGRectGetMinY(v329);
          [(MRUNowPlayingView *)self bounds];
          MPRectByApplyingUserInterfaceLayoutDirectionInRect();
          [(MRUArtworkView *)self->_artworkView setFrame:?];
          if (self->_showSuggestionsView)
          {
            v215 = v267;
          }

          else
          {
            v215 = v267;
            if (self->_showArtworkView)
            {
              UIRectInset();
              v210 = v216;
              v211 = v217;
              Width = v218;
              v213 = v219;
            }
          }

          v330.origin.x = v210;
          v330.origin.y = v211;
          v330.size.width = Width;
          v330.size.height = v213;
          CGRectGetMinX(v330);
          v331.origin.x = v210;
          v331.origin.y = v211;
          v331.size.width = Width;
          v331.size.height = v213;
          CGRectGetMinY(v331);
          v332.origin.x = v210;
          v332.origin.y = v211;
          v332.size.width = Width;
          v332.size.height = v213;
          CGRectGetWidth(v332);
          UIRectCenteredYInRectScale();
          [(MRUNowPlayingView *)self bounds];
          MPRectByApplyingUserInterfaceLayoutDirectionInRect();
          [(MRUNowPlayingHeaderView *)self->_headerView setFrame:?];
          v333.origin.x = v210;
          v333.origin.y = v211;
          v333.size.width = Width;
          v333.size.height = v213;
          CGRectGetHeight(v333);
          UIRectInset();
          v221 = v220;
          v223 = v222;
          v225 = v224;
          v227 = v226;
          [(MRUNowPlayingTimeControlsView *)self->_timeControlsView sizeThatFits:v224, v226];
          v229 = v228;
          v231 = v230;
          v334.origin.x = v221;
          v334.origin.y = v223;
          v334.size.width = v225;
          v334.size.height = v227;
          v232 = CGRectGetMinX(v334);
          v335.origin.x = v221;
          v335.origin.y = v223;
          v335.size.width = v225;
          v335.size.height = v227;
          v233 = CGRectGetMinY(v335) - 7.0;
          [(MRUNowPlayingTimeControlsView *)self->_timeControlsView setFrame:v232, v233, v229, v231];
          if (!self->_showSuggestionsView && self->_showTimeControlsView)
          {
            v336.origin.x = v232;
            v336.origin.y = v233;
            v336.size.width = v229;
            v336.size.height = v231;
            CGRectGetHeight(v336);
            UIRectInset();
            v221 = v234;
            v223 = v235;
            v225 = v236;
            v227 = v237;
          }

          [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView sizeThatFits:v225, v227];
          v239 = v238;
          v241 = v240;
          v337.origin.x = v221;
          v337.origin.y = v223;
          v337.size.width = v225;
          v337.size.height = v227;
          v242 = CGRectGetMinX(v337);
          v338.origin.x = v221;
          v338.origin.y = v223;
          v338.size.width = v225;
          v338.size.height = v227;
          v243 = CGRectGetMaxY(v338);
          v244 = v243 - v241;
          [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView setFrame:v242, v243 - v241, v239, v241];
          if (self->_showVolumeControlsView)
          {
            v339.origin.x = v242;
            v339.origin.y = v244;
            v339.size.width = v239;
            v339.size.height = v241;
            CGRectGetHeight(v339);
            UIRectInset();
            v221 = v245;
            v223 = v246;
            v225 = v247;
            v227 = v248;
          }

          v171 = 440;
          [(MRUNowPlayingTransportControlsView *)self->_transportControlsView sizeThatFits:v225, v227];
          v340.origin.x = v221;
          v340.origin.y = v223;
          v340.size.width = v225;
          v340.size.height = v227;
          CGRectGetMinX(v340);
          v249 = v267;
          UIRectCenteredYInRectScale();
          goto LABEL_53;
        }

        if (self->_showSuggestionsView)
        {
          v269.origin.x = v17;
          v269.origin.y = v19;
          v269.size.width = v21;
          v269.size.height = v23;
          CGRectGetHeight(v269);
          UIRectInset();
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v31 = v30;
        }

        else
        {
          v180 = self->_contentEdgeInsets.top;
          v181 = self->_contentEdgeInsets.left;
          v25 = v4 + v181;
          v27 = v6 + v180;
          v29 = v8 - (v181 + self->_contentEdgeInsets.right);
          v31 = rect - (v180 + self->_contentEdgeInsets.bottom);
        }

        [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView sizeThatFits:v29, v31];
        v183 = v182;
        v185 = v184;
        v313.origin.x = v25;
        v313.origin.y = v27;
        v313.size.width = v29;
        v313.size.height = v31;
        v186 = CGRectGetMinX(v313);
        v314.origin.x = v25;
        v314.origin.y = v27;
        v314.size.width = v29;
        v314.size.height = v31;
        v187 = CGRectGetMaxY(v314);
        v188 = v187 - v185;
        [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView setFrame:v186, v187 - v185, v183, v185];
        if (self->_showVolumeControlsView)
        {
          v315.origin.x = v186;
          v315.origin.y = v188;
          v315.size.width = v183;
          v315.size.height = v185;
          CGRectGetHeight(v315);
          UIRectInset();
          v25 = v189;
          v27 = v190;
          v29 = v191;
          v31 = v192;
        }

        [(MRUNowPlayingTransportControlsView *)self->_transportControlsView sizeThatFits:v29, v31];
        v194 = v193;
        v196 = v195;
        v316.origin.x = v25;
        v316.origin.y = v27;
        v316.size.width = v29;
        v316.size.height = v31;
        v197 = CGRectGetMinX(v316);
        v317.origin.x = v25;
        v317.origin.y = v27;
        v317.size.width = v29;
        v317.size.height = v31;
        v198 = CGRectGetMaxY(v317);
        v199 = v198 - v196;
        [(MRUNowPlayingTransportControlsView *)self->_transportControlsView setFrame:v197, v198 - v196, v194, v196];
        if (self->_showTransportControlsView)
        {
          v318.origin.x = v197;
          v318.origin.y = v199;
          v318.size.width = v194;
          v318.size.height = v196;
          CGRectGetHeight(v318);
          UIRectInset();
          v25 = v200;
          v27 = v201;
          v29 = v202;
          v31 = v203;
        }

        v319.origin.x = v25;
        v319.origin.y = v27;
        v319.size.width = v29;
        v319.size.height = v31;
        CGRectGetMinX(v319);
        v320.origin.x = v25;
        v320.origin.y = v27;
        v320.size.width = v29;
        v320.size.height = v31;
        CGRectGetMinY(v320);
        [(MRUNowPlayingView *)self bounds];
        MPRectByApplyingUserInterfaceLayoutDirectionInRect();
        [(MRUArtworkView *)self->_artworkView setFrame:?];
        if (!self->_showSuggestionsView && self->_showArtworkView)
        {
          UIRectInset();
          v25 = v204;
          v27 = v205;
          v29 = v206;
          v31 = v207;
        }

        [(MRUNowPlayingTimeControlsView *)self->_timeControlsView sizeThatFits:v29, v31];
        v321.origin.x = v25;
        v321.origin.y = v27;
        v321.size.width = v29;
        v321.size.height = v31;
        CGRectGetMinX(v321);
        v322.origin.x = v25;
        v322.origin.y = v27;
        v322.size.width = v29;
        v322.size.height = v31;
        CGRectGetMaxY(v322);
        UIRectInset();
        [(MRUNowPlayingView *)self bounds];
        MPRectByApplyingUserInterfaceLayoutDirectionInRect();
        [(MRUNowPlayingTimeControlsView *)self->_timeControlsView setFrame:?];
        v171 = 424;
        [(MRUNowPlayingHeaderView *)self->_headerView sizeThatFits:v29, v31];
        v323.origin.x = v25;
        v323.origin.y = v27;
        v323.size.width = v29;
        v323.size.height = v31;
        CGRectGetMinX(v323);
        v324.origin.x = v25;
        v324.origin.y = v27;
        v324.size.width = v29;
        v324.size.height = v31;
        CGRectGetMinY(v324);
        [(MRUNowPlayingView *)self bounds];
        break;
      default:
        return;
    }

    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
LABEL_53:
    [*(&self->super.super.super.isa + v171) setFrame:v249];
    [(MRUNowPlayingView *)self bounds];
    CGRectGetMaxX(v341);
    goto LABEL_54;
  }

  if (layout)
  {
    if (layout != 1)
    {
      return;
    }

    [(MRUNowPlayingView *)self suggestionsFrame];
    [(UIView *)self->_suggestionsView setFrame:?];
    v270.origin.x = v4;
    v270.origin.y = v6;
    v270.size.width = v8;
    v270.size.height = v10;
    v32 = CGRectGetWidth(v270) * 0.5;
    v271.origin.x = v4;
    v271.origin.y = v6;
    v271.size.width = v8;
    v271.size.height = v10;
    rectb = CGRectGetHeight(v271);
    v272.origin.x = v4;
    v272.origin.y = v6;
    v272.size.width = v8;
    v272.size.height = v10;
    MaxX = CGRectGetMaxX(v272);
    v273.origin.y = v6;
    v34 = MaxX - v32;
    v273.origin.x = v4;
    v273.size.width = v8;
    v273.size.height = v10;
    v35 = CGRectGetMinY(v273);
    [(MRUNowPlayingView *)self bounds];
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
    [(MRUNowPlayingContainerView *)self->_containerView setFrame:?];
    v264 = v13;
    v274.origin.x = v34;
    v274.origin.y = v35;
    v274.size.width = v32;
    v274.size.height = rectb;
    CGRectGetWidth(v274);
    UIRectInset();
    x = v275.origin.x;
    y = v275.origin.y;
    v38 = v275.size.width;
    height = v275.size.height;
    v40 = CGRectGetMinX(v275);
    v276.origin.x = x;
    v276.origin.y = y;
    v276.size.width = v38;
    v276.size.height = height;
    v41 = CGRectGetMinY(v276);
    v277.origin.x = x;
    v277.origin.y = y;
    v277.size.width = v38;
    v277.size.height = height;
    v42 = CGRectGetWidth(v277);
    [(MRUArtworkView *)self->_artworkView sizeThatFits:v42, 60.0];
    v278.origin.x = v40;
    v278.origin.y = v41;
    v278.size.width = v42;
    v278.size.height = 60.0;
    CGRectGetMinX(v278);
    v279.origin.x = v40;
    v279.origin.y = v41;
    v279.size.width = v42;
    v279.size.height = 60.0;
    CGRectGetMinY(v279);
    [(MRUNowPlayingView *)self bounds];
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
    [(MRUArtworkView *)self->_artworkView setFrame:?];
    UIRectInset();
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    [(MRUNowPlayingHeaderView *)self->_headerView sizeThatFits:v47, v49];
    v280.origin.x = v44;
    v280.origin.y = v46;
    v280.size.width = v48;
    v280.size.height = v50;
    CGRectGetMinX(v280);
    v281.origin.x = v44;
    v281.origin.y = v46;
    v281.size.width = v48;
    v281.size.height = v50;
    CGRectGetMinY(v281);
    v282.origin.x = v44;
    v282.origin.y = v46;
    v282.size.width = v48;
    v282.size.height = v50;
    CGRectGetWidth(v282);
    UIRectCenteredYInRectScale();
    [(MRUNowPlayingView *)self bounds];
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
    [(MRUNowPlayingHeaderView *)self->_headerView setFrame:?];
    v283.origin.x = v44;
    v283.origin.y = v46;
    v283.size.width = v48;
    v283.size.height = v50;
    CGRectGetHeight(v283);
    UIRectInset();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    [(MRUNowPlayingTimeControlsView *)self->_timeControlsView sizeThatFits:v55, v57];
    v60 = v59;
    v62 = v61;
    v284.origin.x = v52;
    v284.origin.y = v54;
    v284.size.width = v56;
    v284.size.height = v58;
    v63 = CGRectGetMinX(v284);
    v285.origin.x = v52;
    v285.origin.y = v54;
    v285.size.width = v56;
    v285.size.height = v58;
    v64 = CGRectGetMinY(v285);
    [(MRUNowPlayingView *)self bounds];
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
    [(MRUNowPlayingTimeControlsView *)self->_timeControlsView setFrame:?];
    if (self->_showTimeControlsView)
    {
      v286.origin.x = v63;
      v286.origin.y = v64;
      v286.size.width = v60;
      v286.size.height = v62;
      CGRectGetHeight(v286);
      UIRectInset();
      v52 = v65;
      v54 = v66;
      v56 = v67;
      v58 = v68;
    }

    [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView sizeThatFits:v56, v58];
    v70 = v69;
    v72 = v71;
    v287.origin.x = v52;
    v287.origin.y = v54;
    v287.size.width = v56;
    v287.size.height = v58;
    v73 = CGRectGetMinX(v287);
    v288.origin.x = v52;
    v288.origin.y = v54;
    v288.size.width = v56;
    v288.size.height = v58;
    v74 = CGRectGetMaxY(v288) - v72;
    [(MRUNowPlayingView *)self bounds];
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
    [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView setFrame:?];
    if (self->_showVolumeControlsView)
    {
      v289.origin.x = v73;
      v289.origin.y = v74;
      v289.size.width = v70;
      v289.size.height = v72;
      CGRectGetHeight(v289);
      UIRectInset();
      v52 = v75;
      v54 = v76;
      v56 = v77;
      v58 = v78;
    }

    [(MRUNowPlayingTransportControlsView *)self->_transportControlsView sizeThatFits:v56, v58];
    v290.origin.x = v52;
    v290.origin.y = v54;
    v290.size.width = v56;
    v290.size.height = v58;
    CGRectGetMinX(v290);
    UIRectCenteredYInRectScale();
    [(MRUNowPlayingView *)self bounds];
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
    containerView = self->_transportControlsView;
    goto LABEL_55;
  }

  [(MRUNowPlayingView *)self layoutSubviewsSmall];
}

- (void)layoutSubviewsSmall
{
  [(MRUNowPlayingView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(MRUNowPlayingView *)self traitCollection];
  [v11 displayScale];
  v13 = v12;

  v36.origin.x = v4;
  v36.origin.y = v6;
  v36.size.width = v8;
  v36.size.height = v10;
  CGRectGetHeight(v36);
  UIRoundToScale();
  v15 = v14 * -0.5;
  [(MRUNowPlayingHeaderView *)self->_headerView sizeThatFits:v8, v10];
  UIRectCenteredIntegralRectScale();
  [(MRUNowPlayingHeaderView *)self->_headerView setFrame:v13];
  [(MRUNowPlayingTransportControlsView *)self->_transportControlsView sizeThatFits:v8, v10];
  v17 = v16;
  v19 = v18;
  v37.origin.x = v4;
  v37.origin.y = v6;
  v37.size.width = v8;
  v37.size.height = v10;
  v20 = CGRectGetMaxY(v37) - v19 + v15 - 6.0;
  v38.origin.x = v4;
  v38.origin.y = v6;
  v38.size.width = v8;
  v38.size.height = v10;
  [(MRUNowPlayingTransportControlsView *)self->_transportControlsView setFrame:CGRectGetMinX(v38), v20, v17, v19];
  [(MRUNowPlayingView *)self suggestionsFrame];
  [(UIView *)self->_suggestionsView setFrame:?];
  [(MRUArtworkView *)self->_artworkView setFrame:v4 + self->_contentEdgeInsets.left, v6 + self->_contentEdgeInsets.top, v8 - (self->_contentEdgeInsets.left + self->_contentEdgeInsets.right), v10 - (self->_contentEdgeInsets.top + self->_contentEdgeInsets.bottom)];
  [(MRUNowPlayingTimeControlsView *)self->_timeControlsView sizeThatFits:v8, v10];
  v22 = v21;
  v24 = v23;
  v39.origin.x = v4;
  v39.origin.y = v6;
  v39.size.width = v8;
  v39.size.height = v10;
  MinX = CGRectGetMinX(v39);
  [(MRUNowPlayingHeaderView *)self->_headerView frame];
  [(MRUNowPlayingTimeControlsView *)self->_timeControlsView setFrame:MinX, CGRectGetMaxY(v40), v22, v24];
  [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView sizeThatFits:v8, v10];
  v27 = v26;
  v29 = v28;
  v41.origin.x = v4;
  v41.origin.y = v6;
  v41.size.width = v8;
  v41.size.height = v10;
  v30 = CGRectGetMinX(v41);
  [(MRUNowPlayingTransportControlsView *)self->_transportControlsView frame];
  MaxY = CGRectGetMaxY(v42);
  [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView setFrame:v30, MaxY, v27, v29];
  v43.origin.x = v30;
  v43.origin.y = MaxY;
  v43.size.width = v27;
  v43.size.height = v29;
  v32 = CGRectGetMaxY(v43);
  [(MRUNowPlayingView *)self bounds];
  Width = CGRectGetWidth(v44);
  containerView = self->_containerView;

  [(MRUNowPlayingContainerView *)containerView setFrame:0.0, v32, Width, 0.0];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  layout = self->_layout;
  if (layout <= 2)
  {
    if (layout == 1)
    {
      if (!self->_supportsHorizontalLayout || MRULayoutShouldBeVertical())
      {
        top = self->_contentEdgeInsets.top;
        v14 = width - (self->_contentEdgeInsets.left + self->_contentEdgeInsets.right);
        v15 = height - top;
        if (self->_showVolumeControlsView)
        {
          [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView sizeThatFits:width - (self->_contentEdgeInsets.left + self->_contentEdgeInsets.right), v15];
          v15 = v15 - (v16 + 7.0);
          top = top + v16 + 7.0;
        }

        if (self->_showTransportControlsView)
        {
          [(MRUNowPlayingTransportControlsView *)self->_transportControlsView sizeThatFits:v14, v15];
          v15 = v15 - (v17 + 7.0);
          top = top + v17 + 7.0;
        }

        if (self->_showTimeControlsView)
        {
          [(MRUNowPlayingTimeControlsView *)self->_timeControlsView sizeThatFits:v14, v15];
          v15 = v15 - (v18 + 7.0);
          top = top + v18 + 7.0;
        }

        [(MRUNowPlayingContainerView *)self->_containerView sizeThatFits:v14, v15 - 60.0];
        height = top + 60.0 + v19;
        goto LABEL_66;
      }
    }

    else
    {
      if (layout != 2)
      {
        goto LABEL_66;
      }

      if (!self->_supportsHorizontalLayout || MRULayoutShouldBeVertical())
      {
        bottom = self->_contentEdgeInsets.bottom;
        v8 = self->_contentEdgeInsets.left + self->_contentEdgeInsets.right;
        if (self->_showSuggestionsView)
        {
          [(UIView *)self->_suggestionsView sizeThatFits:width, height];
          v10 = height - bottom - v9;
          v11 = bottom + v9;
        }

        else
        {
          v11 = bottom + self->_contentEdgeInsets.top;
          v10 = height - v11;
        }

        v41 = width - v8;
        if (self->_showVolumeControlsView)
        {
          [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView sizeThatFits:v41, v10];
          v10 = v10 - (v42 + 7.0);
          v11 = v11 + v42 + 7.0;
        }

        if (self->_showTransportControlsView)
        {
          [(MRUNowPlayingTransportControlsView *)self->_transportControlsView sizeThatFits:v41, v10];
          v10 = v10 - (v43 + 7.0);
          v11 = v11 + v43 + 7.0;
        }

        if (self->_showTimeControlsView && !self->_showSuggestionsView)
        {
          [(MRUNowPlayingTimeControlsView *)self->_timeControlsView sizeThatFits:v41, v10];
          v10 = v10 - (v44 + 7.0);
          v11 = v11 + v44 + 7.0;
        }

        [(MRUNowPlayingHeaderView *)self->_headerView sizeThatFits:v41, v10];
        height = v11 + v45;
        if (!self->_showSuggestionsView)
        {
          v38 = v10 - v45;
          artworkView = self->_artworkView;
          v37 = v41;
          goto LABEL_55;
        }

        goto LABEL_66;
      }
    }

    v25 = (self->_contentEdgeInsets.left + self->_contentEdgeInsets.right) * 1.5;
    v26 = height - (self->_contentEdgeInsets.top + self->_contentEdgeInsets.bottom);
    if (width - v25 < v26)
    {
      v26 = width - v25;
    }

    v27 = v25 + v26 * 2.0;
    if (v27 < width)
    {
      width = v27;
    }

    goto LABEL_66;
  }

  if (layout == 4)
  {
    v20 = self->_contentEdgeInsets.bottom;
    v21 = self->_contentEdgeInsets.left + self->_contentEdgeInsets.right;
    if (self->_showSuggestionsView)
    {
      [(UIView *)self->_suggestionsView sizeThatFits:a3.width, a3.height];
      v23 = height - v20 - v22;
      v24 = v20 + v22;
    }

    else
    {
      v24 = v20 + self->_contentEdgeInsets.top;
      v23 = a3.height - v24;
    }

    v28 = width - v21;
    v29 = +[MRUFeatureFlagProvider isAutobahnEnabled];
    headerView = self->_headerView;
    if (v29)
    {
      [(MRUNowPlayingHeaderView *)headerView sizeThatFits:v28, v23];
      if (self->_showArtworkView && !self->_showSuggestionsView)
      {
        v32 = 57.0;
        if (v31 > 57.0)
        {
          v32 = v31;
        }

        v31 = v32 + 7.0;
      }

      v33 = v23 - v31;
      height = v24 + v31;
      if (self->_showTimeControlsView)
      {
        [(MRUNowPlayingTimeControlsView *)self->_timeControlsView sizeThatFits:v28, v33];
        v33 = v33 - v34;
        height = height + v34;
      }

      if (self->_showTransportControlsView)
      {
        [(MRUNowPlayingTransportControlsView *)self->_transportControlsView sizeThatFits:v28, v33];
        v33 = v33 - (v35 + 7.0);
        height = height + v35 + 7.0;
      }

      if (self->_showVolumeControlsView)
      {
        artworkView = self->_volumeControlsView;
        v37 = v28;
        v38 = v33;
LABEL_55:
        [artworkView sizeThatFits:{v37, v38}];
LABEL_65:
        height = height + v46 + 7.0;
      }
    }

    else
    {
      [(MRUNowPlayingHeaderView *)headerView sizeThatFits:v28, v23];
      if (self->_showArtworkView && !self->_showSuggestionsView)
      {
        v40 = 100.0;
        if (v39 > 100.0)
        {
          v40 = v39;
        }
      }

      else
      {
        v40 = v39 + 7.0 * 2.0;
      }

      v47 = v23 - v40;
      height = v24 + v40;
      if (self->_showTimeControlsView && !self->_showSuggestionsView)
      {
        [(MRUNowPlayingTimeControlsView *)self->_timeControlsView sizeThatFits:v28, v47];
        v47 = v47 - (v48 + 7.0);
        height = height + v48 + 7.0;
      }

      if (self->_showTransportControlsView)
      {
        [(MRUNowPlayingTransportControlsView *)self->_transportControlsView sizeThatFits:v28, v47];
        v47 = v47 - (v49 + 7.0);
        height = height + v49 + 7.0;
      }

      if (self->_showVolumeControlsView)
      {
        [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView sizeThatFits:v28, v47];
        goto LABEL_65;
      }
    }
  }

  else if (layout == 3)
  {
    [(MRUNowPlayingHeaderView *)self->_headerView sizeThatFits:a3.width, a3.height];
    if (v12 <= 60.0)
    {
      height = 60.0;
    }

    else
    {
      height = v12;
    }
  }

LABEL_66:
  v50 = width;
  v51 = height;
  result.height = v51;
  result.width = v50;
  return result;
}

- (void)setLayout:(int64_t)a3
{
  if (self->_layout != a3)
  {
    self->_layout = a3;
    [(MRUNowPlayingView *)self updateLayout];
    [(MRUNowPlayingView *)self updateArtworkStyle];
    [(MRUNowPlayingView *)self updateTextAlignment];
    [(MRUNowPlayingView *)self updateOnScreen];
    [(MRUNowPlayingView *)self updateVisibility];

    [(MRUNowPlayingView *)self setNeedsLayout];
  }
}

- (void)setContext:(int64_t)a3
{
  if (self->_context != a3)
  {
    self->_context = a3;
    [(MRUNowPlayingView *)self updateArtworkStyle];

    [(MRUNowPlayingView *)self setNeedsLayout];
  }
}

- (void)setStylingProvider:(id)a3
{
  v5 = a3;
  if (self->_stylingProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_stylingProvider, a3);
    [(MRUArtworkView *)self->_artworkView setStylingProvider:v6];
    [(MRUNowPlayingHeaderView *)self->_headerView setStylingProvider:v6];
    [(MRUNowPlayingTimeControlsView *)self->_timeControlsView setStylingProvider:v6];
    [(MRUNowPlayingTransportControlsView *)self->_transportControlsView setStylingProvider:v6];
    [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView setStylingProvider:v6];
    [(MRUNowPlayingContainerView *)self->_containerView setStylingProvider:v6];
    v5 = v6;
  }
}

- (void)setSuggestionsView:(id)a3
{
  v5 = a3;
  suggestionsView = self->_suggestionsView;
  if (suggestionsView != v5)
  {
    [(UIView *)suggestionsView removeFromSuperview];
    objc_storeStrong(&self->_suggestionsView, a3);
    [(MRUNowPlayingView *)self addSubview:v5];
    v7 = MEMORY[0x1E69DD250];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __40__MRUNowPlayingView_setSuggestionsView___block_invoke;
    v11 = &unk_1E76639D0;
    v12 = v5;
    v13 = self;
    [v7 performWithoutAnimation:&v8];
    [(MRUNowPlayingView *)self updateVisibility:v8];
    [(MRUNowPlayingView *)self setNeedsLayout];
  }
}

uint64_t __40__MRUNowPlayingView_setSuggestionsView___block_invoke(uint64_t a1)
{
  [*(a1 + 40) suggestionsFrame];
  [*(a1 + 32) setFrame:?];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)setOnScreen:(BOOL)a3
{
  if (self->_onScreen != a3)
  {
    self->_onScreen = a3;
    [(MRUNowPlayingView *)self updateOnScreen];
  }
}

- (void)setShowArtworkView:(BOOL)a3
{
  if (self->_showArtworkView != a3)
  {
    self->_showArtworkView = a3;
    [(MRUNowPlayingView *)self updateTextAlignment];
    [(MRUNowPlayingView *)self updateVisibility];

    [(MRUNowPlayingView *)self setNeedsLayout];
  }
}

- (void)setShowTimeControlsView:(BOOL)a3
{
  if (self->_showTimeControlsView != a3)
  {
    self->_showTimeControlsView = a3;
    [(MRUNowPlayingView *)self updateVisibility];

    [(MRUNowPlayingView *)self setNeedsLayout];
  }
}

- (void)setShowTransportControlsView:(BOOL)a3
{
  if (self->_showTransportControlsView != a3)
  {
    self->_showTransportControlsView = a3;
    [(MRUNowPlayingView *)self updateVisibility];

    [(MRUNowPlayingView *)self setNeedsLayout];
  }
}

- (void)setShowVolumeControlsView:(BOOL)a3
{
  if (self->_showVolumeControlsView != a3)
  {
    self->_showVolumeControlsView = a3;
    [(MRUNowPlayingView *)self updateVisibility];

    [(MRUNowPlayingView *)self setNeedsLayout];
  }
}

- (void)setShowSuggestionsView:(BOOL)a3
{
  if (self->_showSuggestionsView != a3)
  {
    self->_showSuggestionsView = a3;
    [(MRUNowPlayingView *)self updateTextAlignment];
    [(MRUNowPlayingView *)self updateVisibility];

    [(MRUNowPlayingView *)self setNeedsLayout];
  }
}

- (void)setSupportsHorizontalLayout:(BOOL)a3
{
  if (self->_supportsHorizontalLayout != a3)
  {
    self->_supportsHorizontalLayout = a3;
    [(MRUNowPlayingContainerView *)self->_containerView setSupportsHorizontalLayout:?];

    [(MRUNowPlayingView *)self setNeedsLayout];
  }
}

- (void)setContentEdgeInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentEdgeInsets.top, v3), vceqq_f64(*&self->_contentEdgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentEdgeInsets = a3;
    [(MRUNowPlayingView *)self setNeedsLayout];
  }
}

- (void)setUseArtworkOverrideSize:(BOOL)a3
{
  self->_useArtworkOverrideSize = a3;
  [(MRUNowPlayingView *)self setNeedsLayout];

  [(MRUNowPlayingView *)self updateVisibility];
}

- (void)updateArtworkStyle
{
  [(MRUArtworkView *)self->_artworkView setShowPlaceholder:self->_context != 3];
  layout = self->_layout;
  if (layout > 2)
  {
    if (layout == 4)
    {
      v4 = 1;
    }

    else
    {
      if (layout != 3)
      {
        return;
      }

      if (self->_context == 3)
      {
        v4 = 6;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else if (layout >= 2)
  {
    if (layout != 2)
    {
      return;
    }

    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  artworkView = self->_artworkView;

  [(MRUArtworkView *)artworkView setStyle:v4];
}

- (void)updateLayout
{
  [(MRUNowPlayingHeaderView *)self->_headerView setLayout:MRUNowPlayingHeaderLayoutFromNowPlayingLayout(self->_layout)];
  v3 = MRUNowPlayingLabelViewLayoutFromNowPlayingLayout(self->_layout);
  v4 = [(MRUNowPlayingHeaderView *)self->_headerView labelView];
  [v4 setLayout:v3];

  [(MRUNowPlayingTimeControlsView *)self->_timeControlsView setLayout:MRUNowPlayingTimeControlsLayoutFromNowPlayingLayout(self->_layout)];
  [(MRUNowPlayingTransportControlsView *)self->_transportControlsView setLayout:MRUNowPlayingTransportControlsLayoutFromNowPlayingLayout(self->_layout)];
  v5 = MRUNowPlayingTimeControlsLayoutFromNowPlayingLayout(self->_layout);
  volumeControlsView = self->_volumeControlsView;

  [(MRUNowPlayingVolumeControlsView *)volumeControlsView setLayout:v5];
}

- (void)updateTextAlignment
{
  layout = self->_layout;
  if (!layout)
  {
    goto LABEL_5;
  }

  if (layout == 4 && +[MRUFeatureFlagProvider isAutobahnEnabled])
  {
    if (self->_showSuggestionsView)
    {
LABEL_5:
      v4 = 1;
      goto LABEL_7;
    }

    if (self->_showArtworkView)
    {
      v4 = 4;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 4;
  }

LABEL_7:
  headerView = self->_headerView;

  [(MRUNowPlayingHeaderView *)headerView setTextAlignment:v4];
}

- (void)updateOnScreen
{
  layout = self->_layout;
  if (layout <= 4)
  {
    if (((1 << layout) & 0x16) != 0)
    {
      onScreen = self->_onScreen;
      v6 = [(MRUNowPlayingHeaderView *)self->_headerView labelView];
      [v6 setMarqueeEnabled:onScreen];

      v7 = self->_onScreen;
    }

    else
    {
      v8 = [(MRUNowPlayingHeaderView *)self->_headerView labelView];
      [v8 setMarqueeEnabled:0];

      v7 = 0;
    }

    timeControlsView = self->_timeControlsView;

    [(MRUNowPlayingTimeControlsView *)timeControlsView setOnScreen:v7];
  }
}

- (void)updateVisibility
{
  layout = self->_layout;
  if (layout <= 1)
  {
    if (layout)
    {
      if (layout != 1)
      {
        return;
      }

      [(MRUArtworkView *)self->_artworkView setAlpha:1.0];
      [(MRUNowPlayingHeaderView *)self->_headerView setAlpha:1.0];
      v7 = 0.0;
      if (self->_showTimeControlsView)
      {
        v11 = 1.0;
      }

      else
      {
        v11 = 0.0;
      }

      [(MRUNowPlayingTimeControlsView *)self->_timeControlsView setAlpha:v11];
      if (self->_showTransportControlsView)
      {
        v12 = 1.0;
      }

      else
      {
        v12 = 0.0;
      }

      [(MRUNowPlayingTransportControlsView *)self->_transportControlsView setAlpha:v12];
      volumeControlsView = self->_volumeControlsView;
      v14 = 1.0;
      goto LABEL_47;
    }

    v7 = 0.0;
    [(MRUArtworkView *)self->_artworkView setAlpha:0.0];
    [(MRUNowPlayingHeaderView *)self->_headerView setAlpha:1.0];
    [(MRUNowPlayingTimeControlsView *)self->_timeControlsView setAlpha:0.0];
    transportControlsView = self->_transportControlsView;
    v19 = 1.0;
  }

  else
  {
    if (layout == 2)
    {
      v15 = 0.0;
      v16 = 0.0;
      if (!self->_showSuggestionsView && self->_showArtworkView)
      {
        v16 = 1.0;
      }

      [(MRUArtworkView *)self->_artworkView setAlpha:v16];
      v6 = 1.0;
      [(MRUNowPlayingHeaderView *)self->_headerView setAlpha:1.0];
      if (self->_showTimeControlsView)
      {
        v15 = 1.0;
        if (self->_showSuggestionsView)
        {
          if (MRULayoutShouldBeVertical())
          {
            v15 = 0.0;
          }

          else
          {
            v15 = 1.0;
          }
        }
      }

      [(MRUNowPlayingTimeControlsView *)self->_timeControlsView setAlpha:v15];
      v7 = 0.0;
      if (self->_showTransportControlsView)
      {
        v17 = 1.0;
      }

      else
      {
        v17 = 0.0;
      }

      [(MRUNowPlayingTransportControlsView *)self->_transportControlsView setAlpha:v17];
      v10 = self->_volumeControlsView;
      v9 = 1.0;
LABEL_41:
      [(MRUNowPlayingVolumeControlsView *)v10 setAlpha:v9];
      if (self->_showSuggestionsView)
      {
        v7 = v6;
      }

      goto LABEL_48;
    }

    if (layout != 3)
    {
      if (layout != 4)
      {
        return;
      }

      v4 = 0.0;
      v5 = 0.0;
      if (!self->_showSuggestionsView && self->_showArtworkView)
      {
        v5 = 1.0;
      }

      [(MRUArtworkView *)self->_artworkView setAlpha:v5];
      v6 = 1.0;
      [(MRUNowPlayingHeaderView *)self->_headerView setAlpha:1.0];
      if (self->_showTimeControlsView)
      {
        v4 = 1.0;
        if (self->_showSuggestionsView)
        {
          if (+[MRUFeatureFlagProvider isAutobahnEnabled])
          {
            v4 = 1.0;
          }

          else
          {
            v4 = 0.0;
          }
        }
      }

      [(MRUNowPlayingTimeControlsView *)self->_timeControlsView setAlpha:v4];
      v7 = 0.0;
      if (self->_showTransportControlsView)
      {
        v8 = 1.0;
      }

      else
      {
        v8 = 0.0;
      }

      [(MRUNowPlayingTransportControlsView *)self->_transportControlsView setAlpha:v8];
      if (self->_showVolumeControlsView)
      {
        v9 = 1.0;
      }

      else
      {
        v9 = 0.0;
      }

      v10 = self->_volumeControlsView;
      goto LABEL_41;
    }

    [(MRUArtworkView *)self->_artworkView setAlpha:1.0];
    [(MRUNowPlayingHeaderView *)self->_headerView setAlpha:1.0];
    v7 = 0.0;
    [(MRUNowPlayingTimeControlsView *)self->_timeControlsView setAlpha:0.0];
    transportControlsView = self->_transportControlsView;
    v19 = 0.0;
  }

  [(MRUNowPlayingTransportControlsView *)transportControlsView setAlpha:v19];
  volumeControlsView = self->_volumeControlsView;
  v14 = 0.0;
LABEL_47:
  [(MRUNowPlayingVolumeControlsView *)volumeControlsView setAlpha:v14];
LABEL_48:
  suggestionsView = self->_suggestionsView;

  [(UIView *)suggestionsView setAlpha:v7];
}

- (CGRect)suggestionsFrame
{
  [(MRUNowPlayingView *)self bounds];
  v8 = v7;
  v9 = MinY;
  v11 = v10;
  v13 = v12;
  if (self->_supportsHorizontalLayout && !MRULayoutShouldBeVertical())
  {
    layout = self->_layout;
    if (layout <= 1)
    {
      if (!layout)
      {
        [(UIView *)self->_suggestionsView sizeThatFits:v11, v13];
        v38.origin.x = v8;
        v38.origin.y = v9;
        v38.size.width = v11;
        v38.size.height = v13;
        CGRectGetMinX(v38);
        v39.origin.x = v8;
        v39.origin.y = v9;
        v39.size.width = v11;
        v39.size.height = v13;
        CGRectGetMinY(v39);
        [(MRUNowPlayingView *)self bounds];
        goto LABEL_18;
      }

      if (layout != 1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (layout == 2)
      {
        v34.origin.x = v8;
        v34.origin.y = v9;
        v34.size.width = v11;
        v34.size.height = v13;
        CGRectGetMinX(v34);
        v35.origin.x = v8;
        v35.origin.y = v9;
        v35.size.width = v11;
        v35.size.height = v13;
        CGRectGetMinY(v35);
        v36.origin.x = v8;
        v36.origin.y = v9;
        v36.size.width = v11;
        v36.size.height = v13;
        CGRectGetWidth(v36);
        goto LABEL_16;
      }

      if (layout != 3)
      {
        if (layout != 4)
        {
          goto LABEL_19;
        }

LABEL_10:
        [(UIView *)self->_suggestionsView sizeThatFits:v11, v13];
        v2 = v18;
        v3 = v19;
        v28.origin.x = v8;
        v28.origin.y = v9;
        v28.size.width = v11;
        v28.size.height = v13;
        MinX = CGRectGetMinX(v28);
        v29.origin.x = v8;
        v29.origin.y = v9;
        v29.size.width = v11;
        v29.size.height = v13;
        MinY = CGRectGetMinY(v29);
        goto LABEL_19;
      }
    }

    v30.origin.x = v8;
    v30.origin.y = v9;
    v30.size.width = v11;
    v30.size.height = v13;
    CGRectGetMinX(v30);
    v31.origin.x = v8;
    v31.origin.y = v9;
    v31.size.width = v11;
    v31.size.height = v13;
    CGRectGetWidth(v31);
    v32.origin.x = v8;
    v32.origin.y = v9;
    v32.size.width = v11;
    v32.size.height = v13;
    CGRectGetMinY(v32);
    v33.origin.x = v8;
    v33.origin.y = v9;
    v33.size.width = v11;
    v33.size.height = v13;
    CGRectGetWidth(v33);
LABEL_16:
    v37.origin.x = v8;
    v37.origin.y = v9;
    v37.size.width = v11;
    v37.size.height = v13;
    CGRectGetHeight(v37);
    [(MRUNowPlayingView *)self bounds];
LABEL_18:
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
    MinX = v20;
    v2 = v21;
    v3 = v22;
    goto LABEL_19;
  }

  v14 = self->_layout;
  if (v14 > 4)
  {
    goto LABEL_19;
  }

  if (((1 << v14) & 0xB) == 0)
  {
    goto LABEL_10;
  }

  [(UIView *)self->_suggestionsView sizeThatFits:v11, v13];
  v2 = v15;
  v3 = v16;
  v26.origin.x = v8;
  v26.origin.y = v9;
  v26.size.width = v11;
  v26.size.height = v13;
  MinX = CGRectGetMinX(v26);
  v27.origin.x = v8;
  v27.origin.y = v9;
  v27.size.width = v11;
  v27.size.height = v13;
  MinY = CGRectGetMinY(v27) - v3;
LABEL_19:
  v23 = MinX;
  v24 = v2;
  v25 = v3;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = MinY;
  result.origin.x = v23;
  return result;
}

- (UIEdgeInsets)contentEdgeInsets
{
  top = self->_contentEdgeInsets.top;
  left = self->_contentEdgeInsets.left;
  bottom = self->_contentEdgeInsets.bottom;
  right = self->_contentEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)artworkOverrideSize
{
  width = self->_artworkOverrideSize.width;
  height = self->_artworkOverrideSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end