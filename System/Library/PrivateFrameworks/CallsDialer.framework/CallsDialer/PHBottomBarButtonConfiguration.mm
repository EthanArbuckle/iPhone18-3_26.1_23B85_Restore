@interface PHBottomBarButtonConfiguration
+ (double)defaultHeight;
+ (double)defaultWidth;
+ (double)smallWidth;
+ (id)bottomBarGlyphWithGameControllerSFSymbol:(id)a3 sizeCategory:(int64_t)a4;
+ (id)bottomBarGlyphWithSymbolType:(int64_t)a3 sizeCategory:(int64_t)a4;
+ (id)bottomBarImageWithName:(id)a3 color:(id)a4 inBundle:(id)a5;
+ (id)imageColorForState:(unint64_t)a3;
+ (id)imageForAction:(int64_t)a3 callState:(int64_t)a4;
+ (id)textStyleForSizeCategory:(int64_t)a3;
+ (int64_t)symbolScaleForSymbolType:(int64_t)a3 sizeCategory:(int64_t)a4;
+ (int64_t)weightForSymbolType:(int64_t)a3;
- (PHBottomBarButtonConfiguration)initWithAction:(int64_t)a3;
- (PHBottomBarButtonConfiguration)initWithAction:(int64_t)a3 diameter:(double)a4 callState:(int64_t)a5 sizeCategory:(int64_t)a6 captureView:(id)a7 gameControllerContext:(id)a8;
- (_UIVisualEffectBackdropView)captureView;
@end

@implementation PHBottomBarButtonConfiguration

+ (double)defaultHeight
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  if ([v2 userInterfaceIdiom] == 1)
  {

    goto LABEL_4;
  }

  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 5)
  {
LABEL_4:
    v5 = [MEMORY[0x277D3A7E0] screenSize] - 10;
    if (v5 < 6)
    {
      return dbl_2429ED170[v5];
    }

    if ([MEMORY[0x277D3A7E0] inCallBottomBarSpacing] == 6)
    {
      return 82.0;
    }

    v14 = [MEMORY[0x277D3A7E0] inCallBottomBarSpacing];
    result = 72.0;
    if (v14 == 3)
    {
      return 82.0;
    }

    return result;
  }

  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 bounds];
  v9 = v8;
  v11 = v10;

  if (v9 >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  v13 = v12 * 0.1976;
  return roundf(v13);
}

+ (double)defaultWidth
{
  v2 = objc_opt_class();

  [v2 defaultHeight];
  return result;
}

+ (double)smallWidth
{
  v2 = objc_opt_class();

  [v2 smallHeight];
  return result;
}

+ (id)imageColorForState:(unint64_t)a3
{
  if (a3 == 4)
  {
    v3 = [MEMORY[0x277D75348] blackColor];
  }

  else if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277D75348] whiteColor];
  }

  return v3;
}

+ (id)imageForAction:(int64_t)a3 callState:(int64_t)a4
{
  if (a3 == 15 && a4 == 1)
  {
    v4 = [MEMORY[0x277D75348] whiteColor];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = @"end_call_voip";
LABEL_7:
    v7 = [PHBottomBarButtonConfiguration bottomBarImageWithName:v6 color:v4 inBundle:v5];
LABEL_8:
    v8 = v7;

    goto LABEL_9;
  }

  if (a3 == 22)
  {
    v4 = [MEMORY[0x277D6EDF8] sharedInstance];
    v5 = [v4 routeController];
    v7 = [v5 audioRouteGlyph];
    goto LABEL_8;
  }

  if (a3 == 21)
  {
    v4 = [MEMORY[0x277D75348] whiteColor];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = @"icon-mute-small";
    goto LABEL_7;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (PHBottomBarButtonConfiguration)initWithAction:(int64_t)a3 diameter:(double)a4 callState:(int64_t)a5 sizeCategory:(int64_t)a6 captureView:(id)a7 gameControllerContext:(id)a8
{
  v182[2] = *MEMORY[0x277D85DE8];
  obj = a7;
  v14 = a8;
  v15 = [objc_opt_class() imageColorForState:0];
  v16 = [MEMORY[0x277D75418] currentDevice];
  v17 = [v16 userInterfaceIdiom];

  [MEMORY[0x277D3A7E0] ambientInCallControlSize];
  v175 = v15;
  v19 = v18;
  switch(a3)
  {
    case 1:
      v159 = a3;
      v82 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v82 localizedStringForKey:@"ACCEPT" value:&stru_285532CB8 table:@"BottomBar"];

      v83 = [v14 sfSymbolForButton:1];
      if (v83)
      {
        v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v83 sizeCategory:a6];
      }

      else
      {
        v21 = 0;
      }

      v173 = a6;
      v174 = v14;
      v172 = a5;
      if (a5 == 1)
      {
        v23 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:10 sizeCategory:a6];
        v130 = [objc_opt_class() voipTintColor];
      }

      else
      {
        if (a6 == 1 || v17 != 1 || v19 == a4)
        {
          v135 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:1 sizeCategory:a6, v159];
        }

        else
        {
          v135 = [MEMORY[0x277D755B8] tpImageForSymbolType:1 textStyle:*MEMORY[0x277D76A08] scale:2 isStaticSize:1];
        }

        v23 = v135;
        v130 = [objc_opt_class() systemTintColor];
      }

      goto LABEL_152;
    case 2:
      v164 = a3;
      v84 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v84 localizedStringForKey:@"ACCEPT" value:&stru_285532CB8 table:@"BottomBar"];

      v77 = [v14 sfSymbolForButton:1];
      v174 = v14;
      v172 = a5;
      if (v77)
      {
        v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v77 sizeCategory:a6];
      }

      else
      {
        v21 = 0;
      }

      v131 = 30;
      goto LABEL_134;
    case 3:
      v164 = a3;
      v76 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v76 localizedStringForKey:@"ACCEPT" value:&stru_285532CB8 table:@"BottomBar"];

      v77 = [v14 sfSymbolForButton:1];
      v174 = v14;
      v172 = a5;
      if (v77)
      {
        v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v77 sizeCategory:a6];
      }

      else
      {
        v21 = 0;
      }

      v131 = 5;
LABEL_134:
      v173 = a6;
      v23 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:v131 sizeCategory:a6, v164];
      v20 = [objc_opt_class() systemTintColor];
      goto LABEL_173;
    case 4:
      v174 = v14;
      v165 = a3;
      if (a5 > 2)
      {
        v121 = @"end_voip_accept";
        if (a5 != 4)
        {
          v121 = 0;
        }

        if (a5 == 3)
        {
          v77 = @"end_accept_voip";
        }

        else
        {
          v77 = v121;
        }
      }

      else if (a5 == 1)
      {
        v77 = @"end_voip_accept_voip";
      }

      else if (a5 == 2)
      {
        v79 = [MEMORY[0x277D3A7E0] inCallBottomBarAssetSize];
        v80 = @"end_accept";
        if (v79 == 3)
        {
          v80 = @"end_accept_large";
        }

        v77 = v80;
      }

      else
      {
        v77 = 0;
      }

      v125 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v126 = v125;
      v127 = @"END_+_ACCEPT";
      goto LABEL_168;
    case 5:
      v174 = v14;
      v159 = a3;
      if ((a5 - 1) > 3)
      {
        v58 = 0;
      }

      else
      {
        v58 = off_278D74B78[a5 - 1];
      }

      v120 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v120 localizedStringForKey:@"ENDHOLD_+_ACCEPT" value:&stru_285532CB8 table:@"BottomBar"];

      v83 = [v14 sfSymbolForButton:1];
      v172 = a5;
      v173 = a6;
      if (v83)
      {
        v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v83 sizeCategory:a6];
      }

      else
      {
        v21 = 0;
      }

      v128 = MEMORY[0x277D755B8];
      v129 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v23 = [v128 imageNamed:v58 inBundle:v129];

      v130 = [MEMORY[0x277D75348] clearColor];
LABEL_152:
      v20 = v130;
      goto LABEL_153;
    case 6:
      v77 = 0;
      v174 = v14;
      v165 = a3;
      if (a5 > 2)
      {
        if (a5 == 4)
        {
LABEL_114:
          v123 = [MEMORY[0x277D3A7E0] inCallBottomBarAssetSize];
          v124 = @"hold_accept";
          if (v123 == 3)
          {
            v124 = @"hold_accept_large";
          }

          v77 = v124;
LABEL_117:
          v125 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v126 = v125;
          v127 = @"HOLD_+_ACCEPT";
LABEL_168:
          v24 = [v125 localizedStringForKey:v127 value:&stru_285532CB8 table:{@"BottomBar", v165}];

          v139 = [v174 sfSymbolForButton:1];
          v172 = a5;
          v173 = a6;
          if (v139)
          {
            v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v139 sizeCategory:a6];
          }

          else
          {
            v21 = 0;
          }

          v152 = MEMORY[0x277D755B8];
          v153 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v23 = [v152 imageNamed:v77 inBundle:v153];

          v140 = [MEMORY[0x277D75348] clearColor];
LABEL_172:
          v20 = v140;

LABEL_173:
LABEL_174:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          goto LABEL_175;
        }

        if (a5 != 3)
        {
          goto LABEL_117;
        }
      }

      else if (a5 != 1)
      {
        if (a5 != 2)
        {
          goto LABEL_117;
        }

        goto LABEL_114;
      }

      v77 = @"hold_accept_voip";
      goto LABEL_117;
    case 7:
      v168 = a3;
      v86 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v86 localizedStringForKey:@"DECLINE" value:&stru_285532CB8 table:@"BottomBar"];

      v83 = [v14 sfSymbolForButton:2];
      if (v83)
      {
        v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v83 sizeCategory:a6];
      }

      else
      {
        v21 = 0;
      }

      v172 = a5;
      v173 = a6;
      if ((a5 & 0xFFFFFFFFFFFFFFFDLL) == 1)
      {
        v136 = 11;
      }

      else
      {
        if (a6 != 1 && v17 == 1 && v19 != a4)
        {
          v137 = [MEMORY[0x277D755B8] tpImageForSymbolType:2 textStyle:*MEMORY[0x277D76A08] scale:2 isStaticSize:1];
          goto LABEL_156;
        }

        v136 = 2;
      }

      v137 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:v136 sizeCategory:a6, v168];
LABEL_156:
      v23 = v137;
      v146 = +[PHBottomBarButtonConfiguration usesGlass];
      v147 = [MEMORY[0x277D75348] systemRedColor];
      v20 = v147;
      v174 = v14;
      if (v146)
      {
        v148 = [v147 colorWithAlphaComponent:0.8];

        v20 = v148;
      }

LABEL_153:

      goto LABEL_174;
    case 8:
      v166 = a3;
      v81 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v81 localizedStringForKey:@"DECLINE" value:&stru_285532CB8 table:@"BottomBar"];

      v77 = [v14 sfSymbolForButton:2];
      v172 = a5;
      if (v77)
      {
        v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v77 sizeCategory:a6];
      }

      else
      {
        v21 = 0;
      }

      v173 = a6;
      v23 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:8 sizeCategory:a6, v166];
      v132 = +[PHBottomBarButtonConfiguration usesGlass];
      v133 = [MEMORY[0x277D75348] systemRedColor];
      v20 = v133;
      v174 = v14;
      if (v132)
      {
        v134 = [v133 colorWithAlphaComponent:0.8];

        v20 = v134;
      }

      goto LABEL_173;
    case 9:
      v170 = a3;
      v172 = a5;
      v174 = v14;
      v92 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v92 localizedStringForKey:@"SEND_MESSAGE" value:&stru_285532CB8 table:@"BottomBar"];

      v90 = 14;
      goto LABEL_60;
    case 10:
      v159 = a3;
      v172 = a5;
      v174 = v14;
      v70 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v70 localizedStringForKey:@"SCREENING_BLOCK" value:&stru_285532CB8 table:@"BottomBar"];

      v173 = a6;
      v23 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:15 sizeCategory:a6];
      v71 = [MEMORY[0x277D75348] systemGray3Color];
      goto LABEL_70;
    case 11:
      v170 = a3;
      v172 = a5;
      v174 = v14;
      v89 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v89 localizedStringForKey:@"SCREENING_STOP" value:&stru_285532CB8 table:@"BottomBar"];

      v90 = 9;
LABEL_60:
      v173 = a6;
      v23 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:v90 sizeCategory:a6, v170];
      v20 = [MEMORY[0x277D75348] clearColor];
      if (+[PHBottomBarButtonConfiguration usesGlass])
      {
        goto LABEL_111;
      }

      v29 = [MEMORY[0x277D75358] inCallControls];
      v32 = [MEMORY[0x277D75210] effectWithStyle:11];
      goto LABEL_105;
    case 12:
      v162 = a3;
      v172 = a5;
      v173 = a6;
      v174 = v14;
      v52 = MEMORY[0x277D755B8];
      v53 = *MEMORY[0x277D76A20];
      v54 = [MEMORY[0x277D75348] whiteColor];
      v182[0] = v54;
      v55 = [MEMORY[0x277D75348] clearColor];
      v182[1] = v55;
      v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v182 count:2];
      v23 = [v52 tpImageForSymbolType:14 textStyle:v53 scale:1 paletteColors:v56 isStaticSize:1];

      v57 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v57 localizedStringForKey:@"SEND_MESSAGE" value:&stru_285532CB8 table:@"BottomBar"];

      goto LABEL_21;
    case 13:
      v162 = a3;
      v172 = a5;
      v173 = a6;
      v174 = v14;
      v59 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v59 localizedStringForKey:@"CALL_BACK_LATER" value:&stru_285532CB8 table:@"BottomBar"];

      v60 = MEMORY[0x277D755B8];
      v61 = *MEMORY[0x277D76A20];
      v62 = [MEMORY[0x277D75348] whiteColor];
      v178[0] = v62;
      v63 = [MEMORY[0x277D75348] clearColor];
      v178[1] = v63;
      v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v178 count:2];
      v23 = [v60 tpImageForSymbolType:39 textStyle:v61 scale:1 paletteColors:v64 isStaticSize:1];

LABEL_21:
      v65 = MEMORY[0x277D75348];
      goto LABEL_91;
    case 14:
    case 16:
    case 17:
    case 23:
    case 32:
    case 33:
      v20 = [MEMORY[0x277D75348] clearColor];
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      goto LABEL_182;
    case 15:
      v98 = [v14 sfSymbolForButton:2];
      if (v98)
      {
        v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v98 sizeCategory:a6];
      }

      else
      {
        v21 = 0;
      }

      v173 = a6;
      v174 = v14;
      v172 = a5;
      if (a5 == 1)
      {
        v141 = [MEMORY[0x277D75348] whiteColor];
        v142 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = [PHBottomBarButtonConfiguration bottomBarImageWithName:@"end_call_voip" color:v141 inBundle:v142];
      }

      else
      {
        v143 = [MEMORY[0x277D75418] currentDevice];
        v144 = [v143 userInterfaceIdiom];

        if (v144 == 1)
        {
          [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:2 sizeCategory:a6];
        }

        else
        {
          [MEMORY[0x277D755B8] tpHierarchicalImageForSymbolType:2 pointSize:32.0];
        }
        v23 = ;
      }

      v149 = +[PHBottomBarButtonConfiguration usesGlass];
      v150 = [MEMORY[0x277D75348] systemRedColor];
      v20 = v150;
      v159 = a3;
      if (v149)
      {
        v151 = [v150 colorWithAlphaComponent:0.8];

        v20 = v151;
      }

      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      goto LABEL_163;
    case 18:
      v169 = a3;
      v172 = a5;
      v174 = v14;
      v87 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v87 localizedStringForKey:@"CALL_BACK" value:&stru_285532CB8 table:@"BottomBar"];

      v173 = a6;
      v23 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:1 sizeCategory:a6];
      v88 = MEMORY[0x277D75348];
      goto LABEL_63;
    case 19:
      v159 = a3;
      v91 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v91 localizedStringForKey:@"CANCEL" value:&stru_285532CB8 table:@"BottomBar"];

      v77 = [v14 sfSymbolForButton:2];
      v173 = a6;
      v174 = v14;
      v172 = a5;
      if (v77)
      {
        v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v77 sizeCategory:a6];
      }

      else
      {
        v21 = 0;
      }

      v138 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v23 = [PHBottomBarButtonConfiguration bottomBarImageWithName:@"cancel" color:v15 inBundle:v138];

      v139 = [MEMORY[0x277D75348] whiteColor];
      v140 = [v139 colorWithAlphaComponent:0.400000006];
      goto LABEL_172;
    case 20:
      v159 = a3;
      v172 = a5;
      v173 = a6;
      v174 = v14;
      v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v51 = [PHBottomBarButtonConfiguration bottomBarImageWithName:@"in-call-camera-flip" color:v15 inBundle:v50];
      goto LABEL_67;
    case 21:
      v159 = a3;
      v173 = a6;
      v174 = v14;
      v172 = a5;
      v99 = [objc_opt_class() imageForAction:21 callState:a5];
      v100 = [objc_opt_class() imageColorForState:0];
      v23 = [v99 _flatImageWithColor:v100];

      v101 = [objc_opt_class() imageColorForState:4];
      v22 = [v99 _flatImageWithColor:v101];

      v102 = [MEMORY[0x277D75348] whiteColor];
      v20 = [v102 colorWithAlphaComponent:0.400000006];

      v103 = [MEMORY[0x277D75348] whiteColor];
      v31 = [v103 colorWithAlphaComponent:0.699999988];

      v30 = [MEMORY[0x277D75348] whiteColor];

      v29 = 0;
      v32 = 0;
      v21 = 0;
      goto LABEL_164;
    case 22:
      v173 = a6;
      v174 = v14;
      v159 = a3;
      v172 = a5;
      if (!a6)
      {
        v96 = [objc_opt_class() imageForAction:22 callState:a5];
        v23 = [v96 _flatImageWithColor:v15];
        v145 = [MEMORY[0x277D75348] whiteColor];
        v20 = [v145 colorWithAlphaComponent:0.400000006];

LABEL_68:
LABEL_81:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v21 = 0;
LABEL_163:
        v22 = 0;
        goto LABEL_164;
      }

      if (a6 != 1)
      {
LABEL_52:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v20 = 0;
LABEL_65:
        v21 = 0;
        v22 = 0;
        v23 = 0;
LABEL_164:
        v24 = 0;
        goto LABEL_176;
      }

      v78 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v78 localizedStringForKey:@"AUDIO" value:&stru_285532CB8 table:@"BottomBar"];

      v23 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:12 sizeCategory:1];
      v75 = MEMORY[0x277D75348];
LABEL_32:
      v71 = [v75 whiteColor];
LABEL_70:
      v20 = v71;
LABEL_111:
      v29 = 0;
LABEL_112:
      v30 = 0;
      v31 = 0;
      v32 = 0;
LABEL_113:
      v21 = 0;
LABEL_175:
      v22 = 0;
LABEL_176:
      v177.receiver = self;
      v177.super_class = PHBottomBarButtonConfiguration;
      v154 = [(PHBottomBarButtonConfiguration *)&v177 init];
      p_isa = &v154->super.isa;
      if (v154)
      {
        v154->_diameter = a4;
        v154->_action = v171;
        v154->_callState = v172;
        if (v173 == 1)
        {
          v156 = 0;
        }

        else
        {
          v156 = v24;
        }

        objc_storeStrong(&v154->_title, v156);
        objc_storeStrong(p_isa + 7, v23);
        objc_storeStrong(p_isa + 8, v22);
        objc_storeStrong(p_isa + 9, v21);
        objc_storeStrong(p_isa + 10, v20);
        objc_storeStrong(p_isa + 11, v32);
        objc_storeStrong(p_isa + 12, v31);
        objc_storeStrong(p_isa + 13, v30);
        objc_storeStrong(p_isa + 14, v24);
        objc_storeStrong(p_isa + 15, v29);
        objc_storeWeak(p_isa + 5, obj);
      }

      self = p_isa;

      v25 = self;
      v14 = v174;
LABEL_182:

      v157 = *MEMORY[0x277D85DE8];
      return v25;
    case 24:
      v159 = a3;
      v172 = a5;
      v173 = a6;
      v174 = v14;
      v72 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v72 localizedStringForKey:@"SEND_TO_VOICEMAL" value:&stru_285532CB8 table:@"BottomBar"];

      v73 = [MEMORY[0x277D75348] systemRedColor];
      v74 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v23 = [PHBottomBarButtonConfiguration bottomBarImageWithName:@"send_to_voicemail" color:v73 inBundle:v74];

      v75 = MEMORY[0x277D75348];
      goto LABEL_32;
    case 25:
      v172 = a5;
      v173 = a6;
      v174 = v14;
      v113 = MEMORY[0x277D755B8];
      v114 = MEMORY[0x277D76A08];
      if (v18 != a4)
      {
        v114 = MEMORY[0x277D76A20];
      }

      v115 = *v114;
      if (v18 == a4)
      {
        v116 = 2;
      }

      else
      {
        v116 = 1;
      }

      v117 = [MEMORY[0x277D75348] whiteColor];
      v181[0] = v117;
      v118 = [MEMORY[0x277D75348] clearColor];
      v181[1] = v118;
      v119 = [MEMORY[0x277CBEA60] arrayWithObjects:v181 count:2];
      v23 = [v113 tpImageForSymbolType:31 textStyle:v115 scale:v116 paletteColors:v119 isStaticSize:1];

      v45 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v46 = v45;
      v47 = @"SEND_TO_CALL_SCREENING";
      goto LABEL_90;
    case 26:
      v172 = a5;
      v173 = a6;
      v174 = v14;
      v38 = MEMORY[0x277D755B8];
      v39 = MEMORY[0x277D76A08];
      if (v18 != a4)
      {
        v39 = MEMORY[0x277D76A20];
      }

      v40 = *v39;
      if (v18 == a4)
      {
        v41 = 2;
      }

      else
      {
        v41 = 1;
      }

      v42 = [MEMORY[0x277D75348] whiteColor];
      v180[0] = v42;
      v43 = [MEMORY[0x277D75348] clearColor];
      v180[1] = v43;
      v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v180 count:2];
      v23 = [v38 tpImageForSymbolType:96 textStyle:v40 scale:v41 paletteColors:v44 isStaticSize:1];

      v45 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v46 = v45;
      v47 = @"SEND_TO_LIVE_REPLY";
      goto LABEL_90;
    case 27:
      v172 = a5;
      v173 = a6;
      v174 = v14;
      v104 = MEMORY[0x277D755B8];
      v105 = MEMORY[0x277D76A08];
      if (v18 != a4)
      {
        v105 = MEMORY[0x277D76A20];
      }

      v106 = *v105;
      if (v18 == a4)
      {
        v107 = 2;
      }

      else
      {
        v107 = 1;
      }

      v108 = [MEMORY[0x277D75348] whiteColor];
      v179[0] = v108;
      v109 = [MEMORY[0x277D75348] clearColor];
      v179[1] = v109;
      v110 = [MEMORY[0x277CBEA60] arrayWithObjects:v179 count:2];
      v23 = [v104 tpImageForSymbolType:94 textStyle:v106 scale:v107 paletteColors:v110 isStaticSize:1];

      v45 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v46 = v45;
      v47 = @"SCREENING_MORE";
LABEL_90:
      v24 = [v45 localizedStringForKey:v47 value:&stru_285532CB8 table:@"BottomBar"];

      v65 = MEMORY[0x277D75348];
LABEL_91:
      v20 = [v65 clearColor];
      if (+[PHBottomBarButtonConfiguration usesGlass])
      {
        goto LABEL_111;
      }

      v29 = [MEMORY[0x277D75358] inCallControls];
      goto LABEL_112;
    case 28:
      v159 = a3;
      v172 = a5;
      v173 = a6;
      v174 = v14;
      v23 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:1 sizeCategory:a6];
      v20 = [MEMORY[0x277D75348] systemGreenColor];
      goto LABEL_81;
    case 29:
      v169 = a3;
      v172 = a5;
      v173 = a6;
      v174 = v14;
      v93 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v93 localizedStringForKey:@"LEAVE_A_MESSAGE" value:&stru_285532CB8 table:@"BottomBar"];

      v94 = [MEMORY[0x277D75348] whiteColor];
      v95 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v23 = [PHBottomBarButtonConfiguration bottomBarImageWithName:@"leave-a-message" color:v94 inBundle:v95];

      v88 = MEMORY[0x277D75348];
LABEL_63:
      v71 = [v88 systemGreenColor];
      goto LABEL_70;
    case 30:
      v167 = a3;
      v172 = a5;
      v174 = v14;
      v85 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v85 localizedStringForKey:@"SEND_MESSAGE" value:&stru_285532CB8 table:@"BottomBar"];

      v23 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:14 sizeCategory:a6];
      v173 = a6;
      if (+[PHBottomBarButtonConfiguration usesGlass])
      {
        v32 = 0;
      }

      else
      {
        v32 = [MEMORY[0x277D75210] effectWithStyle:11];
      }

      v20 = [MEMORY[0x277D75348] clearColor];
      v29 = 0;
      goto LABEL_105;
    case 31:
      v159 = a3;
      v172 = a5;
      v173 = a6;
      v174 = v14;
      v20 = [MEMORY[0x277D75348] whiteColor];
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      goto LABEL_65;
    case 34:
      v159 = a3;
      v172 = a5;
      v173 = a6;
      v174 = v14;
      v49 = MEMORY[0x277D755B8];
      v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v51 = [v49 imageNamed:@"in-call-button-effects" inBundle:v50];
LABEL_67:
      v23 = v51;

      v96 = [MEMORY[0x277D75348] whiteColor];
      v20 = [v96 colorWithAlphaComponent:0.400000006];
      goto LABEL_68;
    case 35:
      v160 = a3;
      v172 = a5;
      v174 = v14;
      v48 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v48 localizedStringForKey:@"BLOCK_CALLER" value:&stru_285532CB8 table:@"BottomBar"];

      v34 = 15;
      goto LABEL_14;
    case 36:
      v160 = a3;
      v172 = a5;
      v174 = v14;
      v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v33 localizedStringForKey:@"CREATE_CONTACT" value:&stru_285532CB8 table:@"BottomBar"];

      v34 = 89;
LABEL_14:
      v173 = a6;
      v23 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:v34 sizeCategory:a6, v160];
      v20 = [MEMORY[0x277D75348] clearColor];
      if (+[PHBottomBarButtonConfiguration usesGlass])
      {
        goto LABEL_111;
      }

      v32 = [MEMORY[0x277D75210] effectWithStyle:11];
      v29 = [MEMORY[0x277D75358] inCallControls];
LABEL_105:
      v30 = 0;
      v31 = 0;
      goto LABEL_113;
    case 37:
      v161 = a3;
      v172 = a5;
      v174 = v14;
      v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v35 localizedStringForKey:@"Close" value:&stru_285532CB8 table:@"BottomBar"];

      v36 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:8 sizeCategory:a6];
      v37 = [MEMORY[0x277D75348] systemBlackColor];
      v23 = [v36 tpFlattenedWithColor:v37];

      v173 = a6;
      if (+[PHBottomBarButtonConfiguration usesGlass])
      {
        v29 = 0;
        v32 = 0;
      }

      else
      {
        v32 = [MEMORY[0x277D75210] effectWithStyle:11];
        v29 = [MEMORY[0x277D75358] inCallControls];
      }

      v20 = [MEMORY[0x277D75348] systemWhiteColor];
      goto LABEL_105;
    case 38:
      v159 = a3;
      v172 = a5;
      v173 = a6;
      v174 = v14;
      v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v26 localizedStringForKey:@"ALERT_ACTION_TEXT_BUTTON_LABEL" value:&stru_285532CB8 table:@"Localizable-Stewie"];

      v27 = MEMORY[0x277D755B8];
      v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v23 = [v27 imageNamed:@"text_sos_icon" inBundle:v28];

      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v20 = 0;
      goto LABEL_113;
    case 39:
      v173 = a6;
      v174 = v14;
      v172 = a5;
      if (a5 == 1)
      {
        v111 = [MEMORY[0x277D75348] whiteColor];
        v112 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = [PHBottomBarButtonConfiguration bottomBarImageWithName:@"end_call_voip" color:v111 inBundle:v112];
      }

      else
      {
        v23 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:2 sizeCategory:a6];
      }

      v20 = [MEMORY[0x277D75348] systemRedColor];
      v122 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v122 localizedStringForKey:@"ALERT_ACTION_END_BUTTON_LABEL" value:&stru_285532CB8 table:@"Localizable-Stewie"];

      goto LABEL_111;
    case 40:
      v159 = a3;
      v172 = a5;
      v174 = v14;
      v97 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v97 localizedStringForKey:@"PICK_UP" value:&stru_285532CB8 table:@"BottomBar"];

      v173 = a6;
      v23 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:1 sizeCategory:a6];
      v71 = [objc_opt_class() systemTintColor];
      goto LABEL_70;
    case 41:
      v163 = a3;
      v172 = a5;
      v66 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v66 localizedStringForKey:@"GAME_CONTROLLER_FOCUS" value:&stru_285532CB8 table:@"BottomBar"];

      v174 = v14;
      v67 = [v14 sfSymbolForButton:0];
      v173 = a6;
      v68 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v67 sizeCategory:a6];
      v69 = [MEMORY[0x277D75348] systemBlackColor];
      v23 = [v68 tpFlattenedWithColor:v69];

      v29 = 0;
      v32 = 0;
      if (!+[PHBottomBarButtonConfiguration usesGlass])
      {
        v32 = [MEMORY[0x277D75210] effectWithStyle:11];
        v29 = [MEMORY[0x277D75358] inCallControls];
      }

      v20 = [MEMORY[0x277D75348] systemWhiteColor];

      goto LABEL_105;
    default:
      v159 = a3;
      v172 = a5;
      v173 = a6;
      v174 = v14;
      goto LABEL_52;
  }
}

- (PHBottomBarButtonConfiguration)initWithAction:(int64_t)a3
{
  [objc_opt_class() defaultWidth];

  return [(PHBottomBarButtonConfiguration *)self initWithAction:a3 diameter:2 callState:?];
}

+ (id)bottomBarGlyphWithSymbolType:(int64_t)a3 sizeCategory:(int64_t)a4
{
  v7 = [a1 textStyleForSizeCategory:a4];
  v8 = [a1 symbolScaleForSymbolType:a3 sizeCategory:a4];
  v9 = [a1 weightForSymbolType:a3];
  v10 = [MEMORY[0x277D755B8] tpImageForSymbolType:a3 textStyle:v7 scale:v8 symbolWeight:v9];

  return v10;
}

+ (id)bottomBarGlyphWithGameControllerSFSymbol:(id)a3 sizeCategory:(int64_t)a4
{
  v6 = a3;
  v7 = [a1 textStyleForSizeCategory:a4];
  v8 = [MEMORY[0x277D755B8] tpImageForGameControllerSFSymbol:v6 textStyle:v7 scale:-1 symbolWeight:7];

  return v8;
}

+ (int64_t)weightForSymbolType:(int64_t)a3
{
  if ((a3 & 0xFFFFFFFFFFFFFFFCLL) == 8)
  {
    return 7;
  }

  else
  {
    return 0;
  }
}

+ (id)textStyleForSizeCategory:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = MEMORY[0x277D76918];
  }

  else
  {
    if (a3)
    {
      goto LABEL_6;
    }

    v4 = MEMORY[0x277D769A8];
  }

  a1 = *v4;
LABEL_6:

  return a1;
}

+ (int64_t)symbolScaleForSymbolType:(int64_t)a3 sizeCategory:(int64_t)a4
{
  if (a4 != 1 || a3 > 0x24)
  {
    return -1;
  }

  if (((1 << a3) & 0x1000001120) != 0)
  {
    return 2;
  }

  if (((1 << a3) & 6) != 0)
  {
    return 3;
  }

  if (a3 == 9)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

+ (id)bottomBarImageWithName:(id)a3 color:(id)a4 inBundle:(id)a5
{
  v7 = MEMORY[0x277D755B8];
  v8 = a4;
  v9 = [v7 imageNamed:a3 inBundle:a5];
  v10 = [v9 tpFlattenedWithColor:v8];

  return v10;
}

- (_UIVisualEffectBackdropView)captureView
{
  WeakRetained = objc_loadWeakRetained(&self->_captureView);

  return WeakRetained;
}

@end