@interface PXTransition
+ (BOOL)isPowerPoint2010TransitionType:(int)a3;
+ (BOOL)isPowerPoint2013TransitionType:(int)a3;
+ (BOOL)mapDirection:(id)a3 outDir:(int *)a4;
+ (TCEnumerationMap)directionAttributeMap;
+ (TCEnumerationMap)reverseDirectionAttributeMap;
+ (TCEnumerationMap)transitionNodeMap;
+ (int)readDirection:(_xmlNode *)a3 defaultValue:(int)a4;
+ (int)readInOut:(_xmlNode *)a3 defaultValue:(int)a4;
+ (int)readOrientation:(_xmlNode *)a3 attribute:(const char *)a4 defaultValue:(int)a5;
+ (int)readReverseDirection:(_xmlNode *)a3 defaultValue:(int)a4;
+ (void)directionAttributeMap;
+ (void)readTransitionFromNode:(_xmlNode *)a3 tgtTransition:(id)a4 drawingState:(id)a5;
+ (void)reverseDirectionAttributeMap;
+ (void)transitionNodeMap;
+ (void)writeDirection:(int)a3 file:(id)a4;
+ (void)writeInOut:(int)a3 file:(id)a4;
+ (void)writeOrientation:(int)a3 withAttributeName:(id)a4 file:(id)a5;
+ (void)writeReverseDirection:(int)a3 file:(id)a4;
+ (void)writeReverseInOut:(int)a3 file:(id)a4;
+ (void)writeReverseOrientation:(int)a3 withAttributeName:(id)a4 file:(id)a5;
+ (void)writeTransitionAttributes:(id)a3 attributePrefix:(id)a4 file:(id)a5;
+ (void)writeTransitionFromSlideBase:(id)a3 file:(id)a4 state:(id)a5;
+ (void)writeTransitionOptions:(id)a3 transitionType:(int)a4 file:(id)a5;
@end

@implementation PXTransition

+ (TCEnumerationMap)transitionNodeMap
{
  {
    +[PXTransition transitionNodeMap];
  }

  if (+[PXTransition transitionNodeMap]::onceToken != -1)
  {
    +[PXTransition transitionNodeMap];
  }

  v2 = +[PXTransition transitionNodeMap]::sTransitionNodeMap;

  return v2;
}

void __33__PXTransition_transitionNodeMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[PXTransition transitionNodeMap]::sTransitionNodeStructs count:53 caseSensitive:1];
  v1 = +[PXTransition transitionNodeMap]::sTransitionNodeMap;
  +[PXTransition transitionNodeMap]::sTransitionNodeMap = v0;
}

+ (TCEnumerationMap)directionAttributeMap
{
  {
    +[PXTransition directionAttributeMap];
  }

  if (+[PXTransition directionAttributeMap]::onceToken != -1)
  {
    +[PXTransition directionAttributeMap];
  }

  v2 = +[PXTransition directionAttributeMap]::sDirectionAttributeMap;

  return v2;
}

void __37__PXTransition_directionAttributeMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[PXTransition directionAttributeMap]::sDirectionAttributeStructs count:8 caseSensitive:1];
  v1 = +[PXTransition directionAttributeMap]::sDirectionAttributeMap;
  +[PXTransition directionAttributeMap]::sDirectionAttributeMap = v0;
}

+ (TCEnumerationMap)reverseDirectionAttributeMap
{
  {
    +[PXTransition reverseDirectionAttributeMap];
  }

  if (+[PXTransition reverseDirectionAttributeMap]::onceToken != -1)
  {
    +[PXTransition reverseDirectionAttributeMap];
  }

  v2 = +[PXTransition reverseDirectionAttributeMap]::sReverseDirectionAttributeMap;

  return v2;
}

void __44__PXTransition_reverseDirectionAttributeMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[PXTransition reverseDirectionAttributeMap]::sReverseDirectionAttributeStructs count:8 caseSensitive:1];
  v1 = +[PXTransition reverseDirectionAttributeMap]::sReverseDirectionAttributeMap;
  +[PXTransition reverseDirectionAttributeMap]::sReverseDirectionAttributeMap = v0;
}

+ (void)readTransitionFromNode:(_xmlNode *)a3 tgtTransition:(id)a4 drawingState:(id)a5
{
  v8 = a4;
  v9 = a5;
  v44 = v8;
  [v8 setType:0];
  v42 = a3;
  v43 = v9;
  v10 = OCXFirstChild(a3);
  v11 = 0;
  while (v10)
  {
    if (xmlStrEqual(v10->name, "sndAc"))
    {
      v12 = 0;
    }

    else
    {
      if (xmlStrEqual(v10->name, "prstTrans"))
      {
        CXRequiredStringAttribute(v10, CXNoNamespace, "prst");
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithCString:v10->name encoding:4];
      }
      v12 = ;
    }

    if ([v12 length])
    {
      v13 = [a1 transitionNodeMap];
      v14 = [v13 valueForString:v12];

      if (v14 != -130883970)
      {
        [v8 setType:v14];
        v11 = v10;
      }
    }

    v10 = OCXNextSibling(v10);
  }

  v15 = [v8 type];
  v16 = v42;
  v17 = 0;
  switch(v15)
  {
    case 0:
      break;
    case 2:
    case 3:
    case 5:
    case 14:
    case 38:
    case 51:
      v18 = [a1 readOrientation:v11 attribute:"dir" defaultValue:0];
      v17 = objc_alloc_init(PDOrientationOptions);
      [(PDOrientationOptions *)v17 setOrientation:v18];
      break;
    case 6:
    case 18:
    case 23:
    case 30:
    case 36:
    case 44:
    case 52:
      v35 = [a1 readDirection:v11 defaultValue:1];
      v17 = objc_alloc_init(PDSideDirectionOptions);
      [(PDOrientationOptions *)v17 setDirection:v35];
      break;
    case 7:
    case 35:
    case 40:
    case 45:
      if (v15 == 40)
      {
        v19 = 8;
      }

      else
      {
        v19 = 1;
      }

      v20 = [a1 readDirection:v11 defaultValue:{v19, v42, v43}];
      v17 = objc_alloc_init(PDEightDirectionOptions);
      [(PDOrientationOptions *)v17 setDirection:v20];
      break;
    case 9:
    case 34:
      v26 = [a1 readDirection:v11 defaultValue:1];
      v17 = objc_alloc_init(PDPrismOptions);
      [(PDOrientationOptions *)v17 setDirection:v26];
      v27 = CXDefaultBoolAttribute(v11, CXNoNamespace, "isContent", 0);
      v28 = CXDefaultBoolAttribute(v11, CXNoNamespace, "isInverted", 0);
      [(PDOrientationOptions *)v17 setIsContent:v27];
      [(PDOrientationOptions *)v17 setIsInverted:v28];
      break;
    case 11:
    case 16:
      v29 = CXDefaultBoolAttribute(v11, CXNoNamespace, "thruBlk", 0);
      v17 = objc_alloc_init(PDBlackOptions);
      [(PDOrientationOptions *)v17 setIsThroughBlack:v29];
      break;
    case 19:
      v17 = objc_alloc_init(PDInOutDirectionOptions);
      [(PDOrientationOptions *)v17 setInOut:1];
      break;
    case 20:
      v34 = [a1 readDirection:v11 defaultValue:1];
      v17 = objc_alloc_init(PDEightDirectionOptions);
      [(PDOrientationOptions *)v17 setDirection:v34];
      break;
    case 21:
    case 41:
    case 46:
    case 53:
      v24 = v15 != 21 && v15 != 41;
      v25 = [a1 readInOut:v11 defaultValue:{v24, v42, v43}];
      v17 = objc_alloc_init(PDInOutDirectionOptions);
      [(PDOrientationOptions *)v17 setInOut:v25];
      break;
    case 24:
      v33 = [a1 readReverseDirection:v11 defaultValue:3];
      v17 = objc_alloc_init(PDEightDirectionOptions);
      [(PDOrientationOptions *)v17 setDirection:v33];
      break;
    case 25:
    case 49:
      v17 = objc_alloc_init(PDRotationOptions);
      [(PDOrientationOptions *)v17 setDirection:1];
      break;
    case 28:
    case 29:
    case 31:
    case 50:
      v21 = CXDefaultBoolAttribute(v11, CXNoNamespace, "invX", 0);
      v22 = CXDefaultBoolAttribute(v11, CXNoNamespace, "invY", 0);
      v17 = objc_alloc_init(PDInvertCoordinateOptions);
      [(PDOrientationOptions *)v17 setIsInvX:v21];
      [(PDOrientationOptions *)v17 setIsInvY:v22];
      break;
    case 39:
      v37 = [a1 readDirection:v11 defaultValue:1];
      v17 = objc_alloc_init(PDRevealOptions);
      [(PDOrientationOptions *)v17 setDirection:v37];
      [(PDOrientationOptions *)v17 setIsThroughBlack:CXDefaultBoolAttribute(v11, CXNoNamespace, "thruBlk", 0)];
      break;
    case 42:
      v30 = [a1 readOrientation:v11 attribute:"orient" defaultValue:0];
      v31 = [a1 readInOut:v11 defaultValue:1];
      v17 = objc_alloc_init(PDSplitDirectionOptions);
      [(PDOrientationOptions *)v17 setInOut:v31];
      [(PDOrientationOptions *)v17 setOrientation:v30];
      break;
    case 43:
      v32 = [a1 readDirection:v11 defaultValue:4];
      v17 = objc_alloc_init(PDCornerDirectionOptions);
      [(PDOrientationOptions *)v17 setDirection:v32];
      break;
    case 48:
      v36 = CXDefaultLongAttribute(v11, CXNoNamespace, "spokes", 4);
      v17 = objc_alloc_init(PDWheelDirectionOptions);
      [(PDOrientationOptions *)v17 setSpokes:v36];
      break;
    default:
      v17 = objc_alloc_init(PDTransitionOptions);
      break;
  }

  v47 = 1;
  if (CXOptionalBoolAttribute(v16, CXNoNamespace, "advClick", &v47))
  {
    [v44 setIsAdvanceOnClick:v47];
  }

  v38 = CXDefaultStringAttribute(v16, CXNoNamespace, "spd", 0);
  v39 = v38;
  if (v38)
  {
    if ([v38 isEqualToString:@"slow"])
    {
      v40 = 2;
    }

    else if ([v39 isEqualToString:@"med"])
    {
      v40 = 1;
    }

    else
    {
      [v39 isEqualToString:@"fast"];
      v40 = 0;
    }

    [v44 setSpeed:{v40, v42}];
  }

  v46 = 0;
  if (CXOptionalLongAttribute(v16, CXNoNamespace, "advTm", &v46))
  {
    [v44 setAdvanceAfterTime:v46];
  }

  v45 = 0;
  if (CXOptionalLongAttribute(v16, CXNoNamespace, "dur", &v45))
  {
    v41 = [MEMORY[0x277CCABB0] numberWithDouble:v45 / 1000.0];
    [v44 setDuration:v41];
  }

  [v44 setOptions:{v17, v42}];
}

+ (BOOL)isPowerPoint2010TransitionType:(int)a3
{
  v3 = *&a3;
  v4 = +[PXTransition isPowerPoint2010TransitionType:]::ppt2010TransitionTypes;
  if (!+[PXTransition isPowerPoint2010TransitionType:]::ppt2010TransitionTypes)
  {
    v5 = objc_alloc(MEMORY[0x277CBEB98]);
    v31 = [MEMORY[0x277CCABB0] numberWithInt:14];
    v24 = [MEMORY[0x277CCABB0] numberWithInt:51];
    v6 = [MEMORY[0x277CCABB0] numberWithInt:40];
    v23 = [MEMORY[0x277CCABB0] numberWithInt:45];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:20];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:24];
    v22 = [MEMORY[0x277CCABB0] numberWithInt:21];
    v21 = [MEMORY[0x277CCABB0] numberWithInt:41];
    v30 = [MEMORY[0x277CCABB0] numberWithInt:46];
    v29 = [MEMORY[0x277CCABB0] numberWithInt:53];
    v20 = [MEMORY[0x277CCABB0] numberWithInt:6];
    v28 = [MEMORY[0x277CCABB0] numberWithInt:9];
    v27 = [MEMORY[0x277CCABB0] numberWithInt:18];
    v26 = [MEMORY[0x277CCABB0] numberWithInt:23];
    v25 = [MEMORY[0x277CCABB0] numberWithInt:30];
    v19 = [MEMORY[0x277CCABB0] numberWithInt:44];
    v18 = [MEMORY[0x277CCABB0] numberWithInt:39];
    v17 = [MEMORY[0x277CCABB0] numberWithInt:34];
    v16 = [MEMORY[0x277CCABB0] numberWithInt:19];
    v15 = [MEMORY[0x277CCABB0] numberWithInt:49];
    v14 = [MEMORY[0x277CCABB0] numberWithInt:25];
    v9 = [v5 initWithObjects:{v31, v24, v6, v23, v7, v8, v22, v21, v30, v29, v20, v28, v27, v26, v25, v19, v18, v17, v16, v15, v14, 0}];
    v10 = +[PXTransition isPowerPoint2010TransitionType:]::ppt2010TransitionTypes;
    +[PXTransition isPowerPoint2010TransitionType:]::ppt2010TransitionTypes = v9;

    v4 = +[PXTransition isPowerPoint2010TransitionType:]::ppt2010TransitionTypes;
    v3 = v3;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v12 = [v4 containsObject:v11];

  return v12;
}

+ (BOOL)isPowerPoint2013TransitionType:(int)a3
{
  v3 = *&a3;
  v4 = +[PXTransition isPowerPoint2013TransitionType:]::ppt2013TransitionTypes;
  if (!+[PXTransition isPowerPoint2013TransitionType:]::ppt2013TransitionTypes)
  {
    v5 = objc_alloc(MEMORY[0x277CBEB98]);
    v25 = [MEMORY[0x277CCABB0] numberWithInt:1];
    v24 = [MEMORY[0x277CCABB0] numberWithInt:5];
    v6 = [MEMORY[0x277CCABB0] numberWithInt:8];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:10];
    v23 = [MEMORY[0x277CCABB0] numberWithInt:15];
    v22 = [MEMORY[0x277CCABB0] numberWithInt:17];
    v21 = [MEMORY[0x277CCABB0] numberWithInt:22];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:27];
    v9 = [MEMORY[0x277CCABB0] numberWithInt:29];
    v20 = [MEMORY[0x277CCABB0] numberWithInt:28];
    v19 = [MEMORY[0x277CCABB0] numberWithInt:31];
    v10 = v5;
    v18 = v3;
    v11 = [MEMORY[0x277CCABB0] numberWithInt:33];
    v12 = [MEMORY[0x277CCABB0] numberWithInt:50];
    v13 = [v10 initWithObjects:{v25, v24, v6, v7, v23, v22, v21, v8, v9, v20, v19, v11, v12, 0}];
    v14 = +[PXTransition isPowerPoint2013TransitionType:]::ppt2013TransitionTypes;
    +[PXTransition isPowerPoint2013TransitionType:]::ppt2013TransitionTypes = v13;

    v4 = +[PXTransition isPowerPoint2013TransitionType:]::ppt2013TransitionTypes;
    v3 = v18;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v16 = [v4 containsObject:v15];

  return v16;
}

+ (void)writeTransitionOptions:(id)a3 transitionType:(int)a4 file:(id)a5
{
  v8 = a3;
  v9 = a5;
  v32 = 0;
  v10 = [a1 mapDirection:v8 outDir:&v32];
  switch(a4)
  {
    case 2:
      v24 = objc_opt_class();
      v25 = TSUDynamicCast(v24, v8);
      v14 = v25;
      if (v25)
      {
        [a1 writeReverseOrientation:objc_msgSend(v25 withAttributeName:"orientation") file:{@"dir", v9}];
      }

      goto LABEL_37;
    case 3:
    case 5:
    case 14:
    case 38:
    case 51:
      v12 = objc_opt_class();
      v13 = TSUDynamicCast(v12, v8);
      v14 = v13;
      if (v13)
      {
        [a1 writeOrientation:objc_msgSend(v13 withAttributeName:"orientation") file:{@"dir", v9}];
      }

      goto LABEL_37;
    case 6:
    case 7:
    case 9:
    case 18:
    case 23:
    case 30:
    case 35:
    case 36:
    case 40:
    case 43:
    case 44:
    case 45:
    case 52:
      if (!v10)
      {
        break;
      }

      v11 = v32;
      goto LABEL_4;
    case 11:
    case 16:
      v17 = objc_opt_class();
      v18 = TSUDynamicCast(v17, v8);
      v14 = v18;
      if (v18)
      {
        goto LABEL_10;
      }

      goto LABEL_37;
    case 19:
    case 41:
    case 53:
      v15 = objc_opt_class();
      v16 = TSUDynamicCast(v15, v8);
      v14 = v16;
      if (v16)
      {
        [a1 writeInOut:objc_msgSend(v16 file:{"inOut"), v9}];
      }

      goto LABEL_37;
    case 20:
      if (!v10)
      {
        break;
      }

      v11 = v32;
      if ((v32 & 0xFFFFFFFD) != 1)
      {
        v11 = 1;
        v32 = 1;
      }

LABEL_4:
      [a1 writeDirection:v11 file:v9];
      break;
    case 21:
    case 46:
      v19 = objc_opt_class();
      v20 = TSUDynamicCast(v19, v8);
      v14 = v20;
      if (v20)
      {
        [a1 writeReverseInOut:objc_msgSend(v20 file:{"inOut"), v9}];
      }

      goto LABEL_37;
    case 24:
      if (v10)
      {
        [a1 writeReverseDirection:v32 file:v9];
      }

      break;
    case 31:
      v26 = objc_opt_class();
      v27 = TSUDynamicCast(v26, v8);
      v14 = v27;
      if (v27)
      {
        if ([v27 isInvX])
        {
          [v9 writeAttribute:@"invX" BOOLContent:1];
        }

        if ([v14 isInvY])
        {
          [v9 writeAttribute:@"invY" BOOLContent:1];
        }
      }

      goto LABEL_37;
    case 34:
      if (v10)
      {
        [a1 writeDirection:v32 file:v9];
      }

      v30 = objc_opt_class();
      v31 = TSUDynamicCast(v30, v8);
      v14 = v31;
      if (v31)
      {
        [v9 writeAttribute:@"isContent" BOOLContent:{objc_msgSend(v31, "isContent")}];
        [v9 writeAttribute:@"isInverted" BOOLContent:{objc_msgSend(v14, "isInverted")}];
      }

      goto LABEL_37;
    case 39:
      if (v10)
      {
        [a1 writeDirection:v32 file:v9];
      }

      v21 = objc_opt_class();
      v18 = TSUDynamicCast(v21, v8);
      v14 = v18;
      if (v18)
      {
LABEL_10:
        [v9 writeAttribute:@"thruBlk" BOOLContent:{objc_msgSend(v18, "isThroughBlack")}];
      }

      goto LABEL_37;
    case 42:
      v28 = objc_opt_class();
      v29 = TSUDynamicCast(v28, v8);
      v14 = v29;
      if (v29)
      {
        [a1 writeOrientation:objc_msgSend(v29 withAttributeName:"orientation") file:{@"orient", v9}];
        [a1 writeInOut:objc_msgSend(v14 file:{"inOut"), v9}];
      }

      goto LABEL_37;
    case 48:
      v22 = objc_opt_class();
      v23 = TSUDynamicCast(v22, v8);
      v14 = v23;
      if (v23)
      {
        [v9 writeAttribute:@"spokes" intContent:{objc_msgSend(v23, "spokes")}];
      }

LABEL_37:

      break;
    default:
      break;
  }
}

+ (void)writeTransitionFromSlideBase:(id)a3 file:(id)a4 state:(id)a5
{
  v26 = a3;
  v7 = a4;
  v8 = [v26 transition];
  v9 = v8;
  if (v8 && ([v8 hasType] & 1) != 0)
  {
    v10 = [v9 type];
    if (!v10)
    {
      [v7 startElement:@"transition"];
      [v7 writeNamespace:@"p14" uri:{objc_msgSend(PXPowerPoint2010Namespace, "uri")}];
      [a1 writeTransitionAttributes:v9 attributePrefix:@"p14" file:v7];
      [v7 endElement];
      goto LABEL_27;
    }

    [v7 startElement:@"AlternateContent" prefix:@"mc" ns:{objc_msgSend(OCXMarkupCompatibilityNamespace, "uri")}];
    v11 = [v9 hasTransitionOptions];
    if ([a1 isPowerPoint2013TransitionType:v10])
    {
      [v7 startElement:@"Choice" prefix:@"mc" ns:0];
      [v7 writeNamespace:@"p15" uri:{objc_msgSend(PXPowerPoint2012Namespace, "uri")}];
      [v7 writeAttribute:@"Requires" content:@"p15" prefix:0 ns:0];
      [v7 startElement:@"transition"];
      [v7 writeNamespace:@"p14" uri:{objc_msgSend(PXPowerPoint2010Namespace, "uri")}];
      [a1 writeTransitionAttributes:v9 attributePrefix:@"p14" file:v7];
      [v7 startElement:@"prstTrans" prefix:@"p15" ns:0];
      v12 = [a1 transitionNodeMap];
      v13 = [v12 stringForValue:v10];
      [v7 writeAttribute:@"prst" content:v13];

      if (v11)
      {
        v14 = [v9 options];
        [a1 writeTransitionOptions:v14 transitionType:v10 file:v7];
      }

      else
      {
        v14 = 0;
      }

      [v7 endElement];
      [v7 endElement];
      [v7 endElement];
      v16 = [v26 ppt2011Transition];

      if (!v16 || ([v26 ppt2011Transition], (v17 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v15 = 0;
LABEL_26:
        [v7 startElement:@"Fallback" prefix:@"mc" ns:0];
        [v7 startElement:@"transition"];
        v23 = [v26 transition];
        [a1 writeTransitionAttributes:v23 attributePrefix:0 file:v7];

        v24 = [a1 transitionNodeMap];
        v25 = [v24 stringForValue:16];
        [v7 startElement:v25];

        [v7 endElement];
        [v7 endElement];
        [v7 endElement];
        [v7 endElement];

        goto LABEL_27;
      }

      v15 = v17;
    }

    else
    {
      v15 = v9;
      v14 = 0;
    }

    v18 = [v15 type];
    [v7 startElement:@"Choice" prefix:@"mc" ns:0];
    [v7 writeNamespace:@"p14" uri:{objc_msgSend(PXPowerPoint2010Namespace, "uri")}];
    [v7 writeAttribute:@"Requires" content:@"p14" prefix:0 ns:0];
    [v7 startElement:@"transition"];
    [a1 writeTransitionAttributes:v15 attributePrefix:@"p14" file:v7];
    if ([a1 isPowerPoint2010TransitionType:v18])
    {
      if (v18 == 53)
      {
        v19 = 46;
      }

      else
      {
        v19 = v18;
      }

      if (v19 == 9)
      {
        v18 = 34;
      }

      else
      {
        v18 = v19;
      }

      v20 = [a1 transitionNodeMap];
      v21 = [v20 stringForValue:v18];
      [v7 startElement:v21 prefix:@"p14" ns:0];
    }

    else
    {
      v20 = [a1 transitionNodeMap];
      v21 = [v20 stringForValue:v18];
      [v7 startElement:v21];
    }

    if ([v15 hasTransitionOptions])
    {
      v22 = [v15 options];

      v14 = v22;
      [a1 writeTransitionOptions:v22 transitionType:v18 file:v7];
    }

    [v7 endElement];
    [v7 endElement];
    [v7 endElement];
    goto LABEL_26;
  }

LABEL_27:
}

+ (int)readDirection:(_xmlNode *)a3 defaultValue:(int)a4
{
  v10 = 0;
  v6 = CXOptionalStringAttribute(a3, CXNoNamespace, "dir", &v10);
  v7 = v10;
  if (v6)
  {
    v8 = [a1 directionAttributeMap];
    a4 = [v8 valueForString:v7];
  }

  return a4;
}

+ (int)readReverseDirection:(_xmlNode *)a3 defaultValue:(int)a4
{
  v10 = 0;
  v6 = CXOptionalStringAttribute(a3, CXNoNamespace, "dir", &v10);
  v7 = v10;
  if (v6)
  {
    v8 = [a1 reverseDirectionAttributeMap];
    a4 = [v8 valueForString:v7];
  }

  return a4;
}

+ (int)readOrientation:(_xmlNode *)a3 attribute:(const char *)a4 defaultValue:(int)a5
{
  v10 = 0;
  v6 = CXOptionalStringAttribute(a3, CXNoNamespace, a4, &v10);
  v7 = v10;
  v8 = v7;
  if (v6)
  {
    if ([v7 isEqualToString:@"horz"])
    {
      a5 = 0;
    }

    else if ([v8 isEqualToString:@"vert"])
    {
      a5 = 1;
    }
  }

  return a5;
}

+ (int)readInOut:(_xmlNode *)a3 defaultValue:(int)a4
{
  v9 = 0;
  v5 = CXOptionalStringAttribute(a3, CXNoNamespace, "dir", &v9);
  v6 = v9;
  v7 = v6;
  if (v5)
  {
    if ([v6 isEqualToString:@"out"])
    {
      a4 = 1;
    }

    else if ([v7 isEqualToString:@"in"])
    {
      a4 = 0;
    }
  }

  return a4;
}

+ (void)writeDirection:(int)a3 file:(id)a4
{
  v4 = *&a3;
  v8 = a4;
  v6 = [a1 directionAttributeMap];
  v7 = [v6 stringForValue:v4];
  [v8 writeAttribute:@"dir" content:v7];
}

+ (void)writeReverseDirection:(int)a3 file:(id)a4
{
  v4 = *&a3;
  v8 = a4;
  v6 = [a1 reverseDirectionAttributeMap];
  v7 = [v6 stringForValue:v4];
  [v8 writeAttribute:@"dir" content:v7];
}

+ (void)writeOrientation:(int)a3 withAttributeName:(id)a4 file:(id)a5
{
  if (a3 == 1)
  {
    v6 = @"vert";
  }

  else
  {
    v6 = @"horz";
  }

  [a5 writeAttribute:a4 content:v6];
}

+ (void)writeReverseOrientation:(int)a3 withAttributeName:(id)a4 file:(id)a5
{
  if (a3 == 1)
  {
    v6 = @"horz";
  }

  else
  {
    v6 = @"vert";
  }

  [a5 writeAttribute:a4 content:v6];
}

+ (void)writeInOut:(int)a3 file:(id)a4
{
  if (a3)
  {
    v5 = @"out";
  }

  else
  {
    v5 = @"in";
  }

  [a4 writeAttribute:@"dir" content:v5];
}

+ (void)writeReverseInOut:(int)a3 file:(id)a4
{
  if (a3)
  {
    v5 = @"in";
  }

  else
  {
    v5 = @"out";
  }

  [a4 writeAttribute:@"dir" content:v5];
}

+ (BOOL)mapDirection:(id)a3 outDir:(int *)a4
{
  v5 = a3;
  v6 = 0;
  if (v5 && a4)
  {
    v7 = objc_opt_class();
    v8 = TSUDynamicCast(v7, v5);
    v9 = v8;
    if (v8)
    {
      *a4 = [v8 direction];
      v6 = 1;
    }

    else
    {
      v10 = objc_opt_class();
      v11 = TSUDynamicCast(v10, v5);
      v12 = v11;
      if (v11)
      {
        *a4 = [v11 direction];
        v6 = 1;
      }

      else
      {
        v13 = objc_opt_class();
        v14 = TSUDynamicCast(v13, v5);
        v15 = v14;
        v6 = v14 != 0;
        if (v14)
        {
          *a4 = [v14 direction];
        }
      }
    }
  }

  return v6;
}

+ (void)writeTransitionAttributes:(id)a3 attributePrefix:(id)a4 file:(id)a5
{
  v19 = a3;
  v7 = a4;
  v8 = a5;
  if (v19)
  {
    if ([v19 hasSpeed])
    {
      v9 = [v19 speed];
      v10 = @"fast";
      if (v9 == 1)
      {
        v10 = @"med";
      }

      if (v9 == 2)
      {
        v11 = @"slow";
      }

      else
      {
        v11 = v10;
      }

      [v8 writeAttribute:@"spd" content:v11];
    }

    if (v7)
    {
      if ([v19 hasIsAdvanceOnClick])
      {
        v12 = [v19 isAdvanceOnClick];
        [v8 writeAttribute:@"advClick" BOOLContent:v12];
        if ((v12 & 1) == 0)
        {
          if ([v19 hasAdvanceAfterTime])
          {
            [v8 writeAttribute:@"advTm" intContent:{objc_msgSend(v19, "advanceAfterTime")}];
          }
        }
      }

      v13 = [v19 duration];
      if (v13)
      {
        v14 = [v19 type];

        if (v14)
        {
          v15 = [v8 currentElementPrefix];
          v16 = [v8 pushStateWithElementPrefix:v15 attributePrefix:v7];

          v17 = [v19 duration];
          [v17 doubleValue];
          [v8 writeAttribute:@"dur" intContent:(v18 * 1000.0)];

          [v8 popState];
        }
      }
    }
  }
}

+ (void)transitionNodeMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_53, 0, &dword_25D297000);
  }
}

+ (void)directionAttributeMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_182_0, 0, &dword_25D297000);
  }
}

+ (void)reverseDirectionAttributeMap
{
  {
    __cxa_atexit(__cxx_global_array_dtor_185_0, 0, &dword_25D297000);
  }
}

@end