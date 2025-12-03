@interface PXTransition
+ (BOOL)isPowerPoint2010TransitionType:(int)type;
+ (BOOL)isPowerPoint2013TransitionType:(int)type;
+ (BOOL)mapDirection:(id)direction outDir:(int *)dir;
+ (TCEnumerationMap)directionAttributeMap;
+ (TCEnumerationMap)reverseDirectionAttributeMap;
+ (TCEnumerationMap)transitionNodeMap;
+ (int)readDirection:(_xmlNode *)direction defaultValue:(int)value;
+ (int)readInOut:(_xmlNode *)out defaultValue:(int)value;
+ (int)readOrientation:(_xmlNode *)orientation attribute:(const char *)attribute defaultValue:(int)value;
+ (int)readReverseDirection:(_xmlNode *)direction defaultValue:(int)value;
+ (void)directionAttributeMap;
+ (void)readTransitionFromNode:(_xmlNode *)node tgtTransition:(id)transition drawingState:(id)state;
+ (void)reverseDirectionAttributeMap;
+ (void)transitionNodeMap;
+ (void)writeDirection:(int)direction file:(id)file;
+ (void)writeInOut:(int)out file:(id)file;
+ (void)writeOrientation:(int)orientation withAttributeName:(id)name file:(id)file;
+ (void)writeReverseDirection:(int)direction file:(id)file;
+ (void)writeReverseInOut:(int)out file:(id)file;
+ (void)writeReverseOrientation:(int)orientation withAttributeName:(id)name file:(id)file;
+ (void)writeTransitionAttributes:(id)attributes attributePrefix:(id)prefix file:(id)file;
+ (void)writeTransitionFromSlideBase:(id)base file:(id)file state:(id)state;
+ (void)writeTransitionOptions:(id)options transitionType:(int)type file:(id)file;
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

+ (void)readTransitionFromNode:(_xmlNode *)node tgtTransition:(id)transition drawingState:(id)state
{
  transitionCopy = transition;
  stateCopy = state;
  v44 = transitionCopy;
  [transitionCopy setType:0];
  nodeCopy = node;
  v43 = stateCopy;
  v10 = OCXFirstChild(node);
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
      transitionNodeMap = [self transitionNodeMap];
      v14 = [transitionNodeMap valueForString:v12];

      if (v14 != -130883970)
      {
        [transitionCopy setType:v14];
        v11 = v10;
      }
    }

    v10 = OCXNextSibling(v10);
  }

  type = [transitionCopy type];
  v16 = nodeCopy;
  v17 = 0;
  switch(type)
  {
    case 0:
      break;
    case 2:
    case 3:
    case 5:
    case 14:
    case 38:
    case 51:
      v18 = [self readOrientation:v11 attribute:"dir" defaultValue:0];
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
      v35 = [self readDirection:v11 defaultValue:1];
      v17 = objc_alloc_init(PDSideDirectionOptions);
      [(PDOrientationOptions *)v17 setDirection:v35];
      break;
    case 7:
    case 35:
    case 40:
    case 45:
      if (type == 40)
      {
        v19 = 8;
      }

      else
      {
        v19 = 1;
      }

      v20 = [self readDirection:v11 defaultValue:{v19, nodeCopy, v43}];
      v17 = objc_alloc_init(PDEightDirectionOptions);
      [(PDOrientationOptions *)v17 setDirection:v20];
      break;
    case 9:
    case 34:
      v26 = [self readDirection:v11 defaultValue:1];
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
      v34 = [self readDirection:v11 defaultValue:1];
      v17 = objc_alloc_init(PDEightDirectionOptions);
      [(PDOrientationOptions *)v17 setDirection:v34];
      break;
    case 21:
    case 41:
    case 46:
    case 53:
      v24 = type != 21 && type != 41;
      v25 = [self readInOut:v11 defaultValue:{v24, nodeCopy, v43}];
      v17 = objc_alloc_init(PDInOutDirectionOptions);
      [(PDOrientationOptions *)v17 setInOut:v25];
      break;
    case 24:
      v33 = [self readReverseDirection:v11 defaultValue:3];
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
      v37 = [self readDirection:v11 defaultValue:1];
      v17 = objc_alloc_init(PDRevealOptions);
      [(PDOrientationOptions *)v17 setDirection:v37];
      [(PDOrientationOptions *)v17 setIsThroughBlack:CXDefaultBoolAttribute(v11, CXNoNamespace, "thruBlk", 0)];
      break;
    case 42:
      v30 = [self readOrientation:v11 attribute:"orient" defaultValue:0];
      v31 = [self readInOut:v11 defaultValue:1];
      v17 = objc_alloc_init(PDSplitDirectionOptions);
      [(PDOrientationOptions *)v17 setInOut:v31];
      [(PDOrientationOptions *)v17 setOrientation:v30];
      break;
    case 43:
      v32 = [self readDirection:v11 defaultValue:4];
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

    [v44 setSpeed:{v40, nodeCopy}];
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

  [v44 setOptions:{v17, nodeCopy}];
}

+ (BOOL)isPowerPoint2010TransitionType:(int)type
{
  v3 = *&type;
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

+ (BOOL)isPowerPoint2013TransitionType:(int)type
{
  v3 = *&type;
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

+ (void)writeTransitionOptions:(id)options transitionType:(int)type file:(id)file
{
  optionsCopy = options;
  fileCopy = file;
  v32 = 0;
  v10 = [self mapDirection:optionsCopy outDir:&v32];
  switch(type)
  {
    case 2:
      v24 = objc_opt_class();
      v25 = TSUDynamicCast(v24, optionsCopy);
      v14 = v25;
      if (v25)
      {
        [self writeReverseOrientation:objc_msgSend(v25 withAttributeName:"orientation") file:{@"dir", fileCopy}];
      }

      goto LABEL_37;
    case 3:
    case 5:
    case 14:
    case 38:
    case 51:
      v12 = objc_opt_class();
      v13 = TSUDynamicCast(v12, optionsCopy);
      v14 = v13;
      if (v13)
      {
        [self writeOrientation:objc_msgSend(v13 withAttributeName:"orientation") file:{@"dir", fileCopy}];
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
      v18 = TSUDynamicCast(v17, optionsCopy);
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
      v16 = TSUDynamicCast(v15, optionsCopy);
      v14 = v16;
      if (v16)
      {
        [self writeInOut:objc_msgSend(v16 file:{"inOut"), fileCopy}];
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
      [self writeDirection:v11 file:fileCopy];
      break;
    case 21:
    case 46:
      v19 = objc_opt_class();
      v20 = TSUDynamicCast(v19, optionsCopy);
      v14 = v20;
      if (v20)
      {
        [self writeReverseInOut:objc_msgSend(v20 file:{"inOut"), fileCopy}];
      }

      goto LABEL_37;
    case 24:
      if (v10)
      {
        [self writeReverseDirection:v32 file:fileCopy];
      }

      break;
    case 31:
      v26 = objc_opt_class();
      v27 = TSUDynamicCast(v26, optionsCopy);
      v14 = v27;
      if (v27)
      {
        if ([v27 isInvX])
        {
          [fileCopy writeAttribute:@"invX" BOOLContent:1];
        }

        if ([v14 isInvY])
        {
          [fileCopy writeAttribute:@"invY" BOOLContent:1];
        }
      }

      goto LABEL_37;
    case 34:
      if (v10)
      {
        [self writeDirection:v32 file:fileCopy];
      }

      v30 = objc_opt_class();
      v31 = TSUDynamicCast(v30, optionsCopy);
      v14 = v31;
      if (v31)
      {
        [fileCopy writeAttribute:@"isContent" BOOLContent:{objc_msgSend(v31, "isContent")}];
        [fileCopy writeAttribute:@"isInverted" BOOLContent:{objc_msgSend(v14, "isInverted")}];
      }

      goto LABEL_37;
    case 39:
      if (v10)
      {
        [self writeDirection:v32 file:fileCopy];
      }

      v21 = objc_opt_class();
      v18 = TSUDynamicCast(v21, optionsCopy);
      v14 = v18;
      if (v18)
      {
LABEL_10:
        [fileCopy writeAttribute:@"thruBlk" BOOLContent:{objc_msgSend(v18, "isThroughBlack")}];
      }

      goto LABEL_37;
    case 42:
      v28 = objc_opt_class();
      v29 = TSUDynamicCast(v28, optionsCopy);
      v14 = v29;
      if (v29)
      {
        [self writeOrientation:objc_msgSend(v29 withAttributeName:"orientation") file:{@"orient", fileCopy}];
        [self writeInOut:objc_msgSend(v14 file:{"inOut"), fileCopy}];
      }

      goto LABEL_37;
    case 48:
      v22 = objc_opt_class();
      v23 = TSUDynamicCast(v22, optionsCopy);
      v14 = v23;
      if (v23)
      {
        [fileCopy writeAttribute:@"spokes" intContent:{objc_msgSend(v23, "spokes")}];
      }

LABEL_37:

      break;
    default:
      break;
  }
}

+ (void)writeTransitionFromSlideBase:(id)base file:(id)file state:(id)state
{
  baseCopy = base;
  fileCopy = file;
  transition = [baseCopy transition];
  v9 = transition;
  if (transition && ([transition hasType] & 1) != 0)
  {
    type = [v9 type];
    if (!type)
    {
      [fileCopy startElement:@"transition"];
      [fileCopy writeNamespace:@"p14" uri:{objc_msgSend(PXPowerPoint2010Namespace, "uri")}];
      [self writeTransitionAttributes:v9 attributePrefix:@"p14" file:fileCopy];
      [fileCopy endElement];
      goto LABEL_27;
    }

    [fileCopy startElement:@"AlternateContent" prefix:@"mc" ns:{objc_msgSend(OCXMarkupCompatibilityNamespace, "uri")}];
    hasTransitionOptions = [v9 hasTransitionOptions];
    if ([self isPowerPoint2013TransitionType:type])
    {
      [fileCopy startElement:@"Choice" prefix:@"mc" ns:0];
      [fileCopy writeNamespace:@"p15" uri:{objc_msgSend(PXPowerPoint2012Namespace, "uri")}];
      [fileCopy writeAttribute:@"Requires" content:@"p15" prefix:0 ns:0];
      [fileCopy startElement:@"transition"];
      [fileCopy writeNamespace:@"p14" uri:{objc_msgSend(PXPowerPoint2010Namespace, "uri")}];
      [self writeTransitionAttributes:v9 attributePrefix:@"p14" file:fileCopy];
      [fileCopy startElement:@"prstTrans" prefix:@"p15" ns:0];
      transitionNodeMap = [self transitionNodeMap];
      v13 = [transitionNodeMap stringForValue:type];
      [fileCopy writeAttribute:@"prst" content:v13];

      if (hasTransitionOptions)
      {
        options = [v9 options];
        [self writeTransitionOptions:options transitionType:type file:fileCopy];
      }

      else
      {
        options = 0;
      }

      [fileCopy endElement];
      [fileCopy endElement];
      [fileCopy endElement];
      ppt2011Transition = [baseCopy ppt2011Transition];

      if (!ppt2011Transition || ([baseCopy ppt2011Transition], (v17 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v15 = 0;
LABEL_26:
        [fileCopy startElement:@"Fallback" prefix:@"mc" ns:0];
        [fileCopy startElement:@"transition"];
        transition2 = [baseCopy transition];
        [self writeTransitionAttributes:transition2 attributePrefix:0 file:fileCopy];

        transitionNodeMap2 = [self transitionNodeMap];
        v25 = [transitionNodeMap2 stringForValue:16];
        [fileCopy startElement:v25];

        [fileCopy endElement];
        [fileCopy endElement];
        [fileCopy endElement];
        [fileCopy endElement];

        goto LABEL_27;
      }

      v15 = v17;
    }

    else
    {
      v15 = v9;
      options = 0;
    }

    type2 = [v15 type];
    [fileCopy startElement:@"Choice" prefix:@"mc" ns:0];
    [fileCopy writeNamespace:@"p14" uri:{objc_msgSend(PXPowerPoint2010Namespace, "uri")}];
    [fileCopy writeAttribute:@"Requires" content:@"p14" prefix:0 ns:0];
    [fileCopy startElement:@"transition"];
    [self writeTransitionAttributes:v15 attributePrefix:@"p14" file:fileCopy];
    if ([self isPowerPoint2010TransitionType:type2])
    {
      if (type2 == 53)
      {
        v19 = 46;
      }

      else
      {
        v19 = type2;
      }

      if (v19 == 9)
      {
        type2 = 34;
      }

      else
      {
        type2 = v19;
      }

      transitionNodeMap3 = [self transitionNodeMap];
      v21 = [transitionNodeMap3 stringForValue:type2];
      [fileCopy startElement:v21 prefix:@"p14" ns:0];
    }

    else
    {
      transitionNodeMap3 = [self transitionNodeMap];
      v21 = [transitionNodeMap3 stringForValue:type2];
      [fileCopy startElement:v21];
    }

    if ([v15 hasTransitionOptions])
    {
      options2 = [v15 options];

      options = options2;
      [self writeTransitionOptions:options2 transitionType:type2 file:fileCopy];
    }

    [fileCopy endElement];
    [fileCopy endElement];
    [fileCopy endElement];
    goto LABEL_26;
  }

LABEL_27:
}

+ (int)readDirection:(_xmlNode *)direction defaultValue:(int)value
{
  v10 = 0;
  v6 = CXOptionalStringAttribute(direction, CXNoNamespace, "dir", &v10);
  v7 = v10;
  if (v6)
  {
    directionAttributeMap = [self directionAttributeMap];
    value = [directionAttributeMap valueForString:v7];
  }

  return value;
}

+ (int)readReverseDirection:(_xmlNode *)direction defaultValue:(int)value
{
  v10 = 0;
  v6 = CXOptionalStringAttribute(direction, CXNoNamespace, "dir", &v10);
  v7 = v10;
  if (v6)
  {
    reverseDirectionAttributeMap = [self reverseDirectionAttributeMap];
    value = [reverseDirectionAttributeMap valueForString:v7];
  }

  return value;
}

+ (int)readOrientation:(_xmlNode *)orientation attribute:(const char *)attribute defaultValue:(int)value
{
  v10 = 0;
  v6 = CXOptionalStringAttribute(orientation, CXNoNamespace, attribute, &v10);
  v7 = v10;
  v8 = v7;
  if (v6)
  {
    if ([v7 isEqualToString:@"horz"])
    {
      value = 0;
    }

    else if ([v8 isEqualToString:@"vert"])
    {
      value = 1;
    }
  }

  return value;
}

+ (int)readInOut:(_xmlNode *)out defaultValue:(int)value
{
  v9 = 0;
  v5 = CXOptionalStringAttribute(out, CXNoNamespace, "dir", &v9);
  v6 = v9;
  v7 = v6;
  if (v5)
  {
    if ([v6 isEqualToString:@"out"])
    {
      value = 1;
    }

    else if ([v7 isEqualToString:@"in"])
    {
      value = 0;
    }
  }

  return value;
}

+ (void)writeDirection:(int)direction file:(id)file
{
  v4 = *&direction;
  fileCopy = file;
  directionAttributeMap = [self directionAttributeMap];
  v7 = [directionAttributeMap stringForValue:v4];
  [fileCopy writeAttribute:@"dir" content:v7];
}

+ (void)writeReverseDirection:(int)direction file:(id)file
{
  v4 = *&direction;
  fileCopy = file;
  reverseDirectionAttributeMap = [self reverseDirectionAttributeMap];
  v7 = [reverseDirectionAttributeMap stringForValue:v4];
  [fileCopy writeAttribute:@"dir" content:v7];
}

+ (void)writeOrientation:(int)orientation withAttributeName:(id)name file:(id)file
{
  if (orientation == 1)
  {
    v6 = @"vert";
  }

  else
  {
    v6 = @"horz";
  }

  [file writeAttribute:name content:v6];
}

+ (void)writeReverseOrientation:(int)orientation withAttributeName:(id)name file:(id)file
{
  if (orientation == 1)
  {
    v6 = @"horz";
  }

  else
  {
    v6 = @"vert";
  }

  [file writeAttribute:name content:v6];
}

+ (void)writeInOut:(int)out file:(id)file
{
  if (out)
  {
    v5 = @"out";
  }

  else
  {
    v5 = @"in";
  }

  [file writeAttribute:@"dir" content:v5];
}

+ (void)writeReverseInOut:(int)out file:(id)file
{
  if (out)
  {
    v5 = @"in";
  }

  else
  {
    v5 = @"out";
  }

  [file writeAttribute:@"dir" content:v5];
}

+ (BOOL)mapDirection:(id)direction outDir:(int *)dir
{
  directionCopy = direction;
  v6 = 0;
  if (directionCopy && dir)
  {
    v7 = objc_opt_class();
    v8 = TSUDynamicCast(v7, directionCopy);
    v9 = v8;
    if (v8)
    {
      *dir = [v8 direction];
      v6 = 1;
    }

    else
    {
      v10 = objc_opt_class();
      v11 = TSUDynamicCast(v10, directionCopy);
      v12 = v11;
      if (v11)
      {
        *dir = [v11 direction];
        v6 = 1;
      }

      else
      {
        v13 = objc_opt_class();
        v14 = TSUDynamicCast(v13, directionCopy);
        v15 = v14;
        v6 = v14 != 0;
        if (v14)
        {
          *dir = [v14 direction];
        }
      }
    }
  }

  return v6;
}

+ (void)writeTransitionAttributes:(id)attributes attributePrefix:(id)prefix file:(id)file
{
  attributesCopy = attributes;
  prefixCopy = prefix;
  fileCopy = file;
  if (attributesCopy)
  {
    if ([attributesCopy hasSpeed])
    {
      speed = [attributesCopy speed];
      v10 = @"fast";
      if (speed == 1)
      {
        v10 = @"med";
      }

      if (speed == 2)
      {
        v11 = @"slow";
      }

      else
      {
        v11 = v10;
      }

      [fileCopy writeAttribute:@"spd" content:v11];
    }

    if (prefixCopy)
    {
      if ([attributesCopy hasIsAdvanceOnClick])
      {
        isAdvanceOnClick = [attributesCopy isAdvanceOnClick];
        [fileCopy writeAttribute:@"advClick" BOOLContent:isAdvanceOnClick];
        if ((isAdvanceOnClick & 1) == 0)
        {
          if ([attributesCopy hasAdvanceAfterTime])
          {
            [fileCopy writeAttribute:@"advTm" intContent:{objc_msgSend(attributesCopy, "advanceAfterTime")}];
          }
        }
      }

      duration = [attributesCopy duration];
      if (duration)
      {
        type = [attributesCopy type];

        if (type)
        {
          currentElementPrefix = [fileCopy currentElementPrefix];
          v16 = [fileCopy pushStateWithElementPrefix:currentElementPrefix attributePrefix:prefixCopy];

          duration2 = [attributesCopy duration];
          [duration2 doubleValue];
          [fileCopy writeAttribute:@"dur" intContent:(v18 * 1000.0)];

          [fileCopy popState];
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