@interface PHBottomBarButtonConfiguration
+ (double)defaultHeight;
+ (double)defaultWidth;
+ (double)smallWidth;
+ (id)bottomBarGlyphWithGameControllerSFSymbol:(id)symbol sizeCategory:(int64_t)category;
+ (id)bottomBarGlyphWithSymbolType:(int64_t)type sizeCategory:(int64_t)category;
+ (id)bottomBarImageWithName:(id)name color:(id)color inBundle:(id)bundle;
+ (id)imageColorForState:(unint64_t)state;
+ (id)imageForAction:(int64_t)action callState:(int64_t)state;
+ (id)textStyleForSizeCategory:(int64_t)category;
+ (int64_t)symbolScaleForSymbolType:(int64_t)type sizeCategory:(int64_t)category;
+ (int64_t)weightForSymbolType:(int64_t)type;
- (PHBottomBarButtonConfiguration)initWithAction:(int64_t)action;
- (PHBottomBarButtonConfiguration)initWithAction:(int64_t)action diameter:(double)diameter callState:(int64_t)state sizeCategory:(int64_t)category captureView:(id)view gameControllerContext:(id)context;
- (_UIVisualEffectBackdropView)captureView;
@end

@implementation PHBottomBarButtonConfiguration

+ (double)defaultHeight
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 1)
  {

    goto LABEL_4;
  }

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
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

    inCallBottomBarSpacing = [MEMORY[0x277D3A7E0] inCallBottomBarSpacing];
    result = 72.0;
    if (inCallBottomBarSpacing == 3)
    {
      return 82.0;
    }

    return result;
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
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

+ (id)imageColorForState:(unint64_t)state
{
  if (state == 4)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
  }

  else if (state)
  {
    blackColor = 0;
  }

  else
  {
    blackColor = [MEMORY[0x277D75348] whiteColor];
  }

  return blackColor;
}

+ (id)imageForAction:(int64_t)action callState:(int64_t)state
{
  if (action == 15 && state == 1)
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    routeController = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = @"end_call_voip";
LABEL_7:
    audioRouteGlyph = [PHBottomBarButtonConfiguration bottomBarImageWithName:v6 color:whiteColor inBundle:routeController];
LABEL_8:
    v8 = audioRouteGlyph;

    goto LABEL_9;
  }

  if (action == 22)
  {
    whiteColor = [MEMORY[0x277D6EDF8] sharedInstance];
    routeController = [whiteColor routeController];
    audioRouteGlyph = [routeController audioRouteGlyph];
    goto LABEL_8;
  }

  if (action == 21)
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    routeController = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = @"icon-mute-small";
    goto LABEL_7;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (PHBottomBarButtonConfiguration)initWithAction:(int64_t)action diameter:(double)diameter callState:(int64_t)state sizeCategory:(int64_t)category captureView:(id)view gameControllerContext:(id)context
{
  v182[2] = *MEMORY[0x277D85DE8];
  obj = view;
  contextCopy = context;
  v15 = [objc_opt_class() imageColorForState:0];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  [MEMORY[0x277D3A7E0] ambientInCallControlSize];
  v175 = v15;
  v19 = v18;
  switch(action)
  {
    case 1:
      actionCopy32 = action;
      v82 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v82 localizedStringForKey:@"ACCEPT" value:&stru_285532CB8 table:@"BottomBar"];

      v83 = [contextCopy sfSymbolForButton:1];
      if (v83)
      {
        v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v83 sizeCategory:category];
      }

      else
      {
        v21 = 0;
      }

      categoryCopy32 = category;
      v174 = contextCopy;
      stateCopy35 = state;
      if (state == 1)
      {
        actionCopy3 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:10 sizeCategory:category];
        voipTintColor = [objc_opt_class() voipTintColor];
      }

      else
      {
        if (category == 1 || userInterfaceIdiom != 1 || v19 == diameter)
        {
          actionCopy32 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:1 sizeCategory:category, actionCopy32];
        }

        else
        {
          actionCopy32 = [MEMORY[0x277D755B8] tpImageForSymbolType:1 textStyle:*MEMORY[0x277D76A08] scale:2 isStaticSize:1];
        }

        actionCopy3 = actionCopy32;
        voipTintColor = [objc_opt_class() systemTintColor];
      }

      goto LABEL_152;
    case 2:
      actionCopy3 = action;
      v84 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v84 localizedStringForKey:@"ACCEPT" value:&stru_285532CB8 table:@"BottomBar"];

      v77 = [contextCopy sfSymbolForButton:1];
      v174 = contextCopy;
      stateCopy35 = state;
      if (v77)
      {
        v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v77 sizeCategory:category];
      }

      else
      {
        v21 = 0;
      }

      v131 = 30;
      goto LABEL_134;
    case 3:
      actionCopy3 = action;
      v76 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v76 localizedStringForKey:@"ACCEPT" value:&stru_285532CB8 table:@"BottomBar"];

      v77 = [contextCopy sfSymbolForButton:1];
      v174 = contextCopy;
      stateCopy35 = state;
      if (v77)
      {
        v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v77 sizeCategory:category];
      }

      else
      {
        v21 = 0;
      }

      v131 = 5;
LABEL_134:
      categoryCopy32 = category;
      actionCopy3 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:v131 sizeCategory:category, actionCopy3];
      systemTintColor = [objc_opt_class() systemTintColor];
      goto LABEL_173;
    case 4:
      v174 = contextCopy;
      actionCopy6 = action;
      if (state > 2)
      {
        v121 = @"end_voip_accept";
        if (state != 4)
        {
          v121 = 0;
        }

        if (state == 3)
        {
          v77 = @"end_accept_voip";
        }

        else
        {
          v77 = v121;
        }
      }

      else if (state == 1)
      {
        v77 = @"end_voip_accept_voip";
      }

      else if (state == 2)
      {
        inCallBottomBarAssetSize = [MEMORY[0x277D3A7E0] inCallBottomBarAssetSize];
        v80 = @"end_accept";
        if (inCallBottomBarAssetSize == 3)
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
      v174 = contextCopy;
      actionCopy32 = action;
      if ((state - 1) > 3)
      {
        v58 = 0;
      }

      else
      {
        v58 = off_278D74B78[state - 1];
      }

      v120 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v120 localizedStringForKey:@"ENDHOLD_+_ACCEPT" value:&stru_285532CB8 table:@"BottomBar"];

      v83 = [contextCopy sfSymbolForButton:1];
      stateCopy35 = state;
      categoryCopy32 = category;
      if (v83)
      {
        v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v83 sizeCategory:category];
      }

      else
      {
        v21 = 0;
      }

      v128 = MEMORY[0x277D755B8];
      v129 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      actionCopy3 = [v128 imageNamed:v58 inBundle:v129];

      voipTintColor = [MEMORY[0x277D75348] clearColor];
LABEL_152:
      systemTintColor = voipTintColor;
      goto LABEL_153;
    case 6:
      v77 = 0;
      v174 = contextCopy;
      actionCopy6 = action;
      if (state > 2)
      {
        if (state == 4)
        {
LABEL_114:
          inCallBottomBarAssetSize2 = [MEMORY[0x277D3A7E0] inCallBottomBarAssetSize];
          v124 = @"hold_accept";
          if (inCallBottomBarAssetSize2 == 3)
          {
            v124 = @"hold_accept_large";
          }

          v77 = v124;
LABEL_117:
          v125 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v126 = v125;
          v127 = @"HOLD_+_ACCEPT";
LABEL_168:
          v24 = [v125 localizedStringForKey:v127 value:&stru_285532CB8 table:{@"BottomBar", actionCopy6}];

          whiteColor4 = [v174 sfSymbolForButton:1];
          stateCopy35 = state;
          categoryCopy32 = category;
          if (whiteColor4)
          {
            v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:whiteColor4 sizeCategory:category];
          }

          else
          {
            v21 = 0;
          }

          v152 = MEMORY[0x277D755B8];
          v153 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          actionCopy3 = [v152 imageNamed:v77 inBundle:v153];

          clearColor = [MEMORY[0x277D75348] clearColor];
LABEL_172:
          systemTintColor = clearColor;

LABEL_173:
LABEL_174:
          inCallControls = 0;
          whiteColor7 = 0;
          v31 = 0;
          v32 = 0;
          goto LABEL_175;
        }

        if (state != 3)
        {
          goto LABEL_117;
        }
      }

      else if (state != 1)
      {
        if (state != 2)
        {
          goto LABEL_117;
        }

        goto LABEL_114;
      }

      v77 = @"hold_accept_voip";
      goto LABEL_117;
    case 7:
      actionCopy7 = action;
      v86 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v86 localizedStringForKey:@"DECLINE" value:&stru_285532CB8 table:@"BottomBar"];

      v83 = [contextCopy sfSymbolForButton:2];
      if (v83)
      {
        v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v83 sizeCategory:category];
      }

      else
      {
        v21 = 0;
      }

      stateCopy35 = state;
      categoryCopy32 = category;
      if ((state & 0xFFFFFFFFFFFFFFFDLL) == 1)
      {
        v136 = 11;
      }

      else
      {
        if (category != 1 && userInterfaceIdiom == 1 && v19 != diameter)
        {
          actionCopy7 = [MEMORY[0x277D755B8] tpImageForSymbolType:2 textStyle:*MEMORY[0x277D76A08] scale:2 isStaticSize:1];
          goto LABEL_156;
        }

        v136 = 2;
      }

      actionCopy7 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:v136 sizeCategory:category, actionCopy7];
LABEL_156:
      actionCopy3 = actionCopy7;
      v146 = +[PHBottomBarButtonConfiguration usesGlass];
      systemRedColor = [MEMORY[0x277D75348] systemRedColor];
      systemTintColor = systemRedColor;
      v174 = contextCopy;
      if (v146)
      {
        v148 = [systemRedColor colorWithAlphaComponent:0.8];

        systemTintColor = v148;
      }

LABEL_153:

      goto LABEL_174;
    case 8:
      actionCopy8 = action;
      v81 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v81 localizedStringForKey:@"DECLINE" value:&stru_285532CB8 table:@"BottomBar"];

      v77 = [contextCopy sfSymbolForButton:2];
      stateCopy35 = state;
      if (v77)
      {
        v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v77 sizeCategory:category];
      }

      else
      {
        v21 = 0;
      }

      categoryCopy32 = category;
      actionCopy3 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:8 sizeCategory:category, actionCopy8];
      v132 = +[PHBottomBarButtonConfiguration usesGlass];
      systemRedColor2 = [MEMORY[0x277D75348] systemRedColor];
      systemTintColor = systemRedColor2;
      v174 = contextCopy;
      if (v132)
      {
        v134 = [systemRedColor2 colorWithAlphaComponent:0.8];

        systemTintColor = v134;
      }

      goto LABEL_173;
    case 9:
      actionCopy11 = action;
      stateCopy35 = state;
      v174 = contextCopy;
      v92 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v92 localizedStringForKey:@"SEND_MESSAGE" value:&stru_285532CB8 table:@"BottomBar"];

      v90 = 14;
      goto LABEL_60;
    case 10:
      actionCopy32 = action;
      stateCopy35 = state;
      v174 = contextCopy;
      v70 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v70 localizedStringForKey:@"SCREENING_BLOCK" value:&stru_285532CB8 table:@"BottomBar"];

      categoryCopy32 = category;
      actionCopy3 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:15 sizeCategory:category];
      systemGray3Color = [MEMORY[0x277D75348] systemGray3Color];
      goto LABEL_70;
    case 11:
      actionCopy11 = action;
      stateCopy35 = state;
      v174 = contextCopy;
      v89 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v89 localizedStringForKey:@"SCREENING_STOP" value:&stru_285532CB8 table:@"BottomBar"];

      v90 = 9;
LABEL_60:
      categoryCopy32 = category;
      actionCopy3 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:v90 sizeCategory:category, actionCopy11];
      systemTintColor = [MEMORY[0x277D75348] clearColor];
      if (+[PHBottomBarButtonConfiguration usesGlass])
      {
        goto LABEL_111;
      }

      inCallControls = [MEMORY[0x277D75358] inCallControls];
      v32 = [MEMORY[0x277D75210] effectWithStyle:11];
      goto LABEL_105;
    case 12:
      actionCopy13 = action;
      stateCopy35 = state;
      categoryCopy32 = category;
      v174 = contextCopy;
      v52 = MEMORY[0x277D755B8];
      v53 = *MEMORY[0x277D76A20];
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      v182[0] = whiteColor;
      clearColor2 = [MEMORY[0x277D75348] clearColor];
      v182[1] = clearColor2;
      v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v182 count:2];
      actionCopy3 = [v52 tpImageForSymbolType:14 textStyle:v53 scale:1 paletteColors:v56 isStaticSize:1];

      v57 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v57 localizedStringForKey:@"SEND_MESSAGE" value:&stru_285532CB8 table:@"BottomBar"];

      goto LABEL_21;
    case 13:
      actionCopy13 = action;
      stateCopy35 = state;
      categoryCopy32 = category;
      v174 = contextCopy;
      v59 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v59 localizedStringForKey:@"CALL_BACK_LATER" value:&stru_285532CB8 table:@"BottomBar"];

      v60 = MEMORY[0x277D755B8];
      v61 = *MEMORY[0x277D76A20];
      whiteColor2 = [MEMORY[0x277D75348] whiteColor];
      v178[0] = whiteColor2;
      clearColor3 = [MEMORY[0x277D75348] clearColor];
      v178[1] = clearColor3;
      v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v178 count:2];
      actionCopy3 = [v60 tpImageForSymbolType:39 textStyle:v61 scale:1 paletteColors:v64 isStaticSize:1];

LABEL_21:
      v65 = MEMORY[0x277D75348];
      goto LABEL_91;
    case 14:
    case 16:
    case 17:
    case 23:
    case 32:
    case 33:
      systemTintColor = [MEMORY[0x277D75348] clearColor];
      v21 = 0;
      v22 = 0;
      actionCopy3 = 0;
      v24 = 0;
      selfCopy = 0;
      goto LABEL_182;
    case 15:
      v98 = [contextCopy sfSymbolForButton:2];
      if (v98)
      {
        v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v98 sizeCategory:category];
      }

      else
      {
        v21 = 0;
      }

      categoryCopy32 = category;
      v174 = contextCopy;
      stateCopy35 = state;
      if (state == 1)
      {
        whiteColor3 = [MEMORY[0x277D75348] whiteColor];
        v142 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        actionCopy3 = [PHBottomBarButtonConfiguration bottomBarImageWithName:@"end_call_voip" color:whiteColor3 inBundle:v142];
      }

      else
      {
        currentDevice2 = [MEMORY[0x277D75418] currentDevice];
        userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

        if (userInterfaceIdiom2 == 1)
        {
          [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:2 sizeCategory:category];
        }

        else
        {
          [MEMORY[0x277D755B8] tpHierarchicalImageForSymbolType:2 pointSize:32.0];
        }
        actionCopy3 = ;
      }

      v149 = +[PHBottomBarButtonConfiguration usesGlass];
      systemRedColor3 = [MEMORY[0x277D75348] systemRedColor];
      systemTintColor = systemRedColor3;
      actionCopy32 = action;
      if (v149)
      {
        v151 = [systemRedColor3 colorWithAlphaComponent:0.8];

        systemTintColor = v151;
      }

      inCallControls = 0;
      whiteColor7 = 0;
      v31 = 0;
      v32 = 0;
      goto LABEL_163;
    case 18:
      actionCopy22 = action;
      stateCopy35 = state;
      v174 = contextCopy;
      v87 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v87 localizedStringForKey:@"CALL_BACK" value:&stru_285532CB8 table:@"BottomBar"];

      categoryCopy32 = category;
      actionCopy3 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:1 sizeCategory:category];
      v88 = MEMORY[0x277D75348];
      goto LABEL_63;
    case 19:
      actionCopy32 = action;
      v91 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v91 localizedStringForKey:@"CANCEL" value:&stru_285532CB8 table:@"BottomBar"];

      v77 = [contextCopy sfSymbolForButton:2];
      categoryCopy32 = category;
      v174 = contextCopy;
      stateCopy35 = state;
      if (v77)
      {
        v21 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v77 sizeCategory:category];
      }

      else
      {
        v21 = 0;
      }

      v138 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      actionCopy3 = [PHBottomBarButtonConfiguration bottomBarImageWithName:@"cancel" color:v15 inBundle:v138];

      whiteColor4 = [MEMORY[0x277D75348] whiteColor];
      clearColor = [whiteColor4 colorWithAlphaComponent:0.400000006];
      goto LABEL_172;
    case 20:
      actionCopy32 = action;
      stateCopy35 = state;
      categoryCopy32 = category;
      v174 = contextCopy;
      v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v51 = [PHBottomBarButtonConfiguration bottomBarImageWithName:@"in-call-camera-flip" color:v15 inBundle:v50];
      goto LABEL_67;
    case 21:
      actionCopy32 = action;
      categoryCopy32 = category;
      v174 = contextCopy;
      stateCopy35 = state;
      v99 = [objc_opt_class() imageForAction:21 callState:state];
      v100 = [objc_opt_class() imageColorForState:0];
      actionCopy3 = [v99 _flatImageWithColor:v100];

      v101 = [objc_opt_class() imageColorForState:4];
      v22 = [v99 _flatImageWithColor:v101];

      whiteColor5 = [MEMORY[0x277D75348] whiteColor];
      systemTintColor = [whiteColor5 colorWithAlphaComponent:0.400000006];

      whiteColor6 = [MEMORY[0x277D75348] whiteColor];
      v31 = [whiteColor6 colorWithAlphaComponent:0.699999988];

      whiteColor7 = [MEMORY[0x277D75348] whiteColor];

      inCallControls = 0;
      v32 = 0;
      v21 = 0;
      goto LABEL_164;
    case 22:
      categoryCopy32 = category;
      v174 = contextCopy;
      actionCopy32 = action;
      stateCopy35 = state;
      if (!category)
      {
        whiteColor13 = [objc_opt_class() imageForAction:22 callState:state];
        actionCopy3 = [whiteColor13 _flatImageWithColor:v15];
        whiteColor8 = [MEMORY[0x277D75348] whiteColor];
        systemTintColor = [whiteColor8 colorWithAlphaComponent:0.400000006];

LABEL_68:
LABEL_81:
        inCallControls = 0;
        whiteColor7 = 0;
        v31 = 0;
        v32 = 0;
        v21 = 0;
LABEL_163:
        v22 = 0;
        goto LABEL_164;
      }

      if (category != 1)
      {
LABEL_52:
        inCallControls = 0;
        whiteColor7 = 0;
        v31 = 0;
        v32 = 0;
        systemTintColor = 0;
LABEL_65:
        v21 = 0;
        v22 = 0;
        actionCopy3 = 0;
LABEL_164:
        v24 = 0;
        goto LABEL_176;
      }

      v78 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v78 localizedStringForKey:@"AUDIO" value:&stru_285532CB8 table:@"BottomBar"];

      actionCopy3 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:12 sizeCategory:1];
      v75 = MEMORY[0x277D75348];
LABEL_32:
      systemGray3Color = [v75 whiteColor];
LABEL_70:
      systemTintColor = systemGray3Color;
LABEL_111:
      inCallControls = 0;
LABEL_112:
      whiteColor7 = 0;
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
        v154->_diameter = diameter;
        v154->_action = v171;
        v154->_callState = stateCopy35;
        if (categoryCopy32 == 1)
        {
          v156 = 0;
        }

        else
        {
          v156 = v24;
        }

        objc_storeStrong(&v154->_title, v156);
        objc_storeStrong(p_isa + 7, actionCopy3);
        objc_storeStrong(p_isa + 8, v22);
        objc_storeStrong(p_isa + 9, v21);
        objc_storeStrong(p_isa + 10, systemTintColor);
        objc_storeStrong(p_isa + 11, v32);
        objc_storeStrong(p_isa + 12, v31);
        objc_storeStrong(p_isa + 13, whiteColor7);
        objc_storeStrong(p_isa + 14, v24);
        objc_storeStrong(p_isa + 15, inCallControls);
        objc_storeWeak(p_isa + 5, obj);
      }

      self = p_isa;

      selfCopy = self;
      contextCopy = v174;
LABEL_182:

      v157 = *MEMORY[0x277D85DE8];
      return selfCopy;
    case 24:
      actionCopy32 = action;
      stateCopy35 = state;
      categoryCopy32 = category;
      v174 = contextCopy;
      v72 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v72 localizedStringForKey:@"SEND_TO_VOICEMAL" value:&stru_285532CB8 table:@"BottomBar"];

      systemRedColor4 = [MEMORY[0x277D75348] systemRedColor];
      v74 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      actionCopy3 = [PHBottomBarButtonConfiguration bottomBarImageWithName:@"send_to_voicemail" color:systemRedColor4 inBundle:v74];

      v75 = MEMORY[0x277D75348];
      goto LABEL_32;
    case 25:
      stateCopy35 = state;
      categoryCopy32 = category;
      v174 = contextCopy;
      v113 = MEMORY[0x277D755B8];
      v114 = MEMORY[0x277D76A08];
      if (v18 != diameter)
      {
        v114 = MEMORY[0x277D76A20];
      }

      v115 = *v114;
      if (v18 == diameter)
      {
        v116 = 2;
      }

      else
      {
        v116 = 1;
      }

      whiteColor9 = [MEMORY[0x277D75348] whiteColor];
      v181[0] = whiteColor9;
      clearColor4 = [MEMORY[0x277D75348] clearColor];
      v181[1] = clearColor4;
      v119 = [MEMORY[0x277CBEA60] arrayWithObjects:v181 count:2];
      actionCopy3 = [v113 tpImageForSymbolType:31 textStyle:v115 scale:v116 paletteColors:v119 isStaticSize:1];

      v45 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v46 = v45;
      v47 = @"SEND_TO_CALL_SCREENING";
      goto LABEL_90;
    case 26:
      stateCopy35 = state;
      categoryCopy32 = category;
      v174 = contextCopy;
      v38 = MEMORY[0x277D755B8];
      v39 = MEMORY[0x277D76A08];
      if (v18 != diameter)
      {
        v39 = MEMORY[0x277D76A20];
      }

      v40 = *v39;
      if (v18 == diameter)
      {
        v41 = 2;
      }

      else
      {
        v41 = 1;
      }

      whiteColor10 = [MEMORY[0x277D75348] whiteColor];
      v180[0] = whiteColor10;
      clearColor5 = [MEMORY[0x277D75348] clearColor];
      v180[1] = clearColor5;
      v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v180 count:2];
      actionCopy3 = [v38 tpImageForSymbolType:96 textStyle:v40 scale:v41 paletteColors:v44 isStaticSize:1];

      v45 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v46 = v45;
      v47 = @"SEND_TO_LIVE_REPLY";
      goto LABEL_90;
    case 27:
      stateCopy35 = state;
      categoryCopy32 = category;
      v174 = contextCopy;
      v104 = MEMORY[0x277D755B8];
      v105 = MEMORY[0x277D76A08];
      if (v18 != diameter)
      {
        v105 = MEMORY[0x277D76A20];
      }

      v106 = *v105;
      if (v18 == diameter)
      {
        v107 = 2;
      }

      else
      {
        v107 = 1;
      }

      whiteColor11 = [MEMORY[0x277D75348] whiteColor];
      v179[0] = whiteColor11;
      clearColor6 = [MEMORY[0x277D75348] clearColor];
      v179[1] = clearColor6;
      v110 = [MEMORY[0x277CBEA60] arrayWithObjects:v179 count:2];
      actionCopy3 = [v104 tpImageForSymbolType:94 textStyle:v106 scale:v107 paletteColors:v110 isStaticSize:1];

      v45 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v46 = v45;
      v47 = @"SCREENING_MORE";
LABEL_90:
      v24 = [v45 localizedStringForKey:v47 value:&stru_285532CB8 table:@"BottomBar"];

      v65 = MEMORY[0x277D75348];
LABEL_91:
      systemTintColor = [v65 clearColor];
      if (+[PHBottomBarButtonConfiguration usesGlass])
      {
        goto LABEL_111;
      }

      inCallControls = [MEMORY[0x277D75358] inCallControls];
      goto LABEL_112;
    case 28:
      actionCopy32 = action;
      stateCopy35 = state;
      categoryCopy32 = category;
      v174 = contextCopy;
      actionCopy3 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:1 sizeCategory:category];
      systemTintColor = [MEMORY[0x277D75348] systemGreenColor];
      goto LABEL_81;
    case 29:
      actionCopy22 = action;
      stateCopy35 = state;
      categoryCopy32 = category;
      v174 = contextCopy;
      v93 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v93 localizedStringForKey:@"LEAVE_A_MESSAGE" value:&stru_285532CB8 table:@"BottomBar"];

      whiteColor12 = [MEMORY[0x277D75348] whiteColor];
      v95 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      actionCopy3 = [PHBottomBarButtonConfiguration bottomBarImageWithName:@"leave-a-message" color:whiteColor12 inBundle:v95];

      v88 = MEMORY[0x277D75348];
LABEL_63:
      systemGray3Color = [v88 systemGreenColor];
      goto LABEL_70;
    case 30:
      actionCopy23 = action;
      stateCopy35 = state;
      v174 = contextCopy;
      v85 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v85 localizedStringForKey:@"SEND_MESSAGE" value:&stru_285532CB8 table:@"BottomBar"];

      actionCopy3 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:14 sizeCategory:category];
      categoryCopy32 = category;
      if (+[PHBottomBarButtonConfiguration usesGlass])
      {
        v32 = 0;
      }

      else
      {
        v32 = [MEMORY[0x277D75210] effectWithStyle:11];
      }

      systemTintColor = [MEMORY[0x277D75348] clearColor];
      inCallControls = 0;
      goto LABEL_105;
    case 31:
      actionCopy32 = action;
      stateCopy35 = state;
      categoryCopy32 = category;
      v174 = contextCopy;
      systemTintColor = [MEMORY[0x277D75348] whiteColor];
      inCallControls = 0;
      whiteColor7 = 0;
      v31 = 0;
      v32 = 0;
      goto LABEL_65;
    case 34:
      actionCopy32 = action;
      stateCopy35 = state;
      categoryCopy32 = category;
      v174 = contextCopy;
      v49 = MEMORY[0x277D755B8];
      v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v51 = [v49 imageNamed:@"in-call-button-effects" inBundle:v50];
LABEL_67:
      actionCopy3 = v51;

      whiteColor13 = [MEMORY[0x277D75348] whiteColor];
      systemTintColor = [whiteColor13 colorWithAlphaComponent:0.400000006];
      goto LABEL_68;
    case 35:
      actionCopy27 = action;
      stateCopy35 = state;
      v174 = contextCopy;
      v48 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v48 localizedStringForKey:@"BLOCK_CALLER" value:&stru_285532CB8 table:@"BottomBar"];

      v34 = 15;
      goto LABEL_14;
    case 36:
      actionCopy27 = action;
      stateCopy35 = state;
      v174 = contextCopy;
      v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v33 localizedStringForKey:@"CREATE_CONTACT" value:&stru_285532CB8 table:@"BottomBar"];

      v34 = 89;
LABEL_14:
      categoryCopy32 = category;
      actionCopy3 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:v34 sizeCategory:category, actionCopy27];
      systemTintColor = [MEMORY[0x277D75348] clearColor];
      if (+[PHBottomBarButtonConfiguration usesGlass])
      {
        goto LABEL_111;
      }

      v32 = [MEMORY[0x277D75210] effectWithStyle:11];
      inCallControls = [MEMORY[0x277D75358] inCallControls];
LABEL_105:
      whiteColor7 = 0;
      v31 = 0;
      goto LABEL_113;
    case 37:
      actionCopy28 = action;
      stateCopy35 = state;
      v174 = contextCopy;
      v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v35 localizedStringForKey:@"Close" value:&stru_285532CB8 table:@"BottomBar"];

      v36 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:8 sizeCategory:category];
      systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
      actionCopy3 = [v36 tpFlattenedWithColor:systemBlackColor];

      categoryCopy32 = category;
      if (+[PHBottomBarButtonConfiguration usesGlass])
      {
        inCallControls = 0;
        v32 = 0;
      }

      else
      {
        v32 = [MEMORY[0x277D75210] effectWithStyle:11];
        inCallControls = [MEMORY[0x277D75358] inCallControls];
      }

      systemTintColor = [MEMORY[0x277D75348] systemWhiteColor];
      goto LABEL_105;
    case 38:
      actionCopy32 = action;
      stateCopy35 = state;
      categoryCopy32 = category;
      v174 = contextCopy;
      v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v26 localizedStringForKey:@"ALERT_ACTION_TEXT_BUTTON_LABEL" value:&stru_285532CB8 table:@"Localizable-Stewie"];

      v27 = MEMORY[0x277D755B8];
      v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      actionCopy3 = [v27 imageNamed:@"text_sos_icon" inBundle:v28];

      inCallControls = 0;
      whiteColor7 = 0;
      v31 = 0;
      v32 = 0;
      systemTintColor = 0;
      goto LABEL_113;
    case 39:
      categoryCopy32 = category;
      v174 = contextCopy;
      stateCopy35 = state;
      if (state == 1)
      {
        whiteColor14 = [MEMORY[0x277D75348] whiteColor];
        v112 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        actionCopy3 = [PHBottomBarButtonConfiguration bottomBarImageWithName:@"end_call_voip" color:whiteColor14 inBundle:v112];
      }

      else
      {
        actionCopy3 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:2 sizeCategory:category];
      }

      systemTintColor = [MEMORY[0x277D75348] systemRedColor];
      v122 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v122 localizedStringForKey:@"ALERT_ACTION_END_BUTTON_LABEL" value:&stru_285532CB8 table:@"Localizable-Stewie"];

      goto LABEL_111;
    case 40:
      actionCopy32 = action;
      stateCopy35 = state;
      v174 = contextCopy;
      v97 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v97 localizedStringForKey:@"PICK_UP" value:&stru_285532CB8 table:@"BottomBar"];

      categoryCopy32 = category;
      actionCopy3 = [PHBottomBarButtonConfiguration bottomBarGlyphWithSymbolType:1 sizeCategory:category];
      systemGray3Color = [objc_opt_class() systemTintColor];
      goto LABEL_70;
    case 41:
      actionCopy31 = action;
      stateCopy35 = state;
      v66 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v66 localizedStringForKey:@"GAME_CONTROLLER_FOCUS" value:&stru_285532CB8 table:@"BottomBar"];

      v174 = contextCopy;
      v67 = [contextCopy sfSymbolForButton:0];
      categoryCopy32 = category;
      v68 = [PHBottomBarButtonConfiguration bottomBarGlyphWithGameControllerSFSymbol:v67 sizeCategory:category];
      systemBlackColor2 = [MEMORY[0x277D75348] systemBlackColor];
      actionCopy3 = [v68 tpFlattenedWithColor:systemBlackColor2];

      inCallControls = 0;
      v32 = 0;
      if (!+[PHBottomBarButtonConfiguration usesGlass])
      {
        v32 = [MEMORY[0x277D75210] effectWithStyle:11];
        inCallControls = [MEMORY[0x277D75358] inCallControls];
      }

      systemTintColor = [MEMORY[0x277D75348] systemWhiteColor];

      goto LABEL_105;
    default:
      actionCopy32 = action;
      stateCopy35 = state;
      categoryCopy32 = category;
      v174 = contextCopy;
      goto LABEL_52;
  }
}

- (PHBottomBarButtonConfiguration)initWithAction:(int64_t)action
{
  [objc_opt_class() defaultWidth];

  return [(PHBottomBarButtonConfiguration *)self initWithAction:action diameter:2 callState:?];
}

+ (id)bottomBarGlyphWithSymbolType:(int64_t)type sizeCategory:(int64_t)category
{
  v7 = [self textStyleForSizeCategory:category];
  v8 = [self symbolScaleForSymbolType:type sizeCategory:category];
  v9 = [self weightForSymbolType:type];
  v10 = [MEMORY[0x277D755B8] tpImageForSymbolType:type textStyle:v7 scale:v8 symbolWeight:v9];

  return v10;
}

+ (id)bottomBarGlyphWithGameControllerSFSymbol:(id)symbol sizeCategory:(int64_t)category
{
  symbolCopy = symbol;
  v7 = [self textStyleForSizeCategory:category];
  v8 = [MEMORY[0x277D755B8] tpImageForGameControllerSFSymbol:symbolCopy textStyle:v7 scale:-1 symbolWeight:7];

  return v8;
}

+ (int64_t)weightForSymbolType:(int64_t)type
{
  if ((type & 0xFFFFFFFFFFFFFFFCLL) == 8)
  {
    return 7;
  }

  else
  {
    return 0;
  }
}

+ (id)textStyleForSizeCategory:(int64_t)category
{
  if (category == 1)
  {
    v4 = MEMORY[0x277D76918];
  }

  else
  {
    if (category)
    {
      goto LABEL_6;
    }

    v4 = MEMORY[0x277D769A8];
  }

  self = *v4;
LABEL_6:

  return self;
}

+ (int64_t)symbolScaleForSymbolType:(int64_t)type sizeCategory:(int64_t)category
{
  if (category != 1 || type > 0x24)
  {
    return -1;
  }

  if (((1 << type) & 0x1000001120) != 0)
  {
    return 2;
  }

  if (((1 << type) & 6) != 0)
  {
    return 3;
  }

  if (type == 9)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

+ (id)bottomBarImageWithName:(id)name color:(id)color inBundle:(id)bundle
{
  v7 = MEMORY[0x277D755B8];
  colorCopy = color;
  v9 = [v7 imageNamed:name inBundle:bundle];
  v10 = [v9 tpFlattenedWithColor:colorCopy];

  return v10;
}

- (_UIVisualEffectBackdropView)captureView
{
  WeakRetained = objc_loadWeakRetained(&self->_captureView);

  return WeakRetained;
}

@end