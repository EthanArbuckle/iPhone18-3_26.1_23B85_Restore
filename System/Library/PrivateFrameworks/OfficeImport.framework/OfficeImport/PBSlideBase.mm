@interface PBSlideBase
+ (BOOL)readColorScheme:(id)scheme colorScheme:(id)colorScheme colorMap:(id)map state:(id)state;
+ (BOOL)slideFollowsMasterBackground:(id)background;
+ (id)newOptions:(int64_t)options transType:(int)type;
+ (id)nonPlaceholderDrawablesAmongDrawables:(id)drawables;
+ (int)parseTransType:(int)type direction:(int64_t)direction;
+ (unint64_t)authorIdForName:(id)name state:(id)state;
+ (unsigned)mapDirection:(id)direction;
+ (void)mapSlideNumberPlaceholder:(id)placeholder tgtSlideBase:(id)base state:(id)state;
+ (void)parseSlideShowInfo:(PptSSSlideInfoAtom *)info slideBase:(id)base state:(id)state;
+ (void)readComments:(id)comments slide:(id)slide state:(id)state;
+ (void)readDrawingGroup:(id)group slide:(id)slide state:(id)state;
@end

@implementation PBSlideBase

+ (unint64_t)authorIdForName:(id)name state:(id)state
{
  nameCopy = name;
  tgtPresentation = [state tgtPresentation];
  commentAuthorCount = [tgtPresentation commentAuthorCount];
  if (commentAuthorCount)
  {
    v8 = 0;
    while (1)
    {
      v9 = [tgtPresentation commentAuthorAtIndex:v8];
      name = [v9 name];

      LOBYTE(v9) = [name isEqualToString:nameCopy];
      if (v9)
      {
        break;
      }

      if (commentAuthorCount == ++v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v8 = -1;
  }

  return v8;
}

+ (void)readComments:(id)comments slide:(id)slide state:(id)state
{
  commentsCopy = comments;
  slideCopy = slide;
  stateCopy = state;
  v8 = [PBProgTag binaryTagDataWithName:L"___PPT10" inProgTagsParent:commentsCopy];
  for (i = 0; ; i = v10 + 1)
  {
    v10 = i;
    if ([v8 childCount] <= i)
    {
      break;
    }

    v11 = [v8 childAt:i];
    eshObject = [v11 eshObject];
    if ((*(*eshObject + 16))(eshObject) == 12000)
    {
      v13 = v11;
      v14 = objc_alloc_init(PDComment);
      v15 = [PBUtils readStringWithInstance:0 fromContainer:v13];
      if (v15)
      {
        [(PDComment *)v14 setAuthor:v15];
        -[PDComment setAuthorId:](v14, "setAuthorId:", [self authorIdForName:v15 state:stateCopy]);
      }

      v16 = [PBUtils readStringWithInstance:1 fromContainer:v13];
      if (v16)
      {
        [(PDComment *)v14 setText:v16];
      }

      v17 = [v13 firstChildOfType:12001];
      eshObject2 = [v17 eshObject];

      if (eshObject2)
      {
        v5 = v5 & 0xFFFFFFFFFFFF0000 | *(eshObject2 + 60);
        v19 = NSDateWithCsDateTime(*(eshObject2 + 52));
        [(PDComment *)v14 setDate:v19];
        [(PDComment *)v14 setPosition:(*(eshObject2 + 64) / 8), (*(eshObject2 + 68) / 8)];
        [(PDComment *)v14 setIndex:(*(eshObject2 + 48) - 1)];
      }

      [slideCopy addComment:v14];
    }
  }
}

+ (void)readDrawingGroup:(id)group slide:(id)slide state:(id)state
{
  groupCopy = group;
  slideCopy = slide;
  stateCopy = state;
  v10 = [groupCopy firstChildOfType:1036];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if ([v11 childCount])
  {
    objc_opt_class();
    v12 = [v11 childAt:0];
    [stateCopy setTgtSlide:slideCopy];
    officeArtState = [stateCopy officeArtState];
    v14 = [OABDrawing readDrawablesFromDrawing:v12 state:officeArtState];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [PBHeadersFooters readHeadersFootersFromSlideContainer:groupCopy toMasterSlide:slideCopy drawables:v14 state:stateCopy];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [slideCopy showMasterShapes])
      {
        [PBHeadersFooters readHeadersFootersFromSlideContainer:groupCopy toSlide:slideCopy drawables:v14 state:stateCopy];
      }
    }

    [slideCopy setDrawables:v14];
    tgtPresentation = [stateCopy tgtPresentation];
    [tgtPresentation cacheGraphicStylesForSlideBase:slideCopy];

    v16 = [OABDrawing readBackgroundPropertiesFromDrawing:v12 state:officeArtState];
    if (v16)
    {
      if ([self slideFollowsMasterBackground:groupCopy])
      {
        v17 = objc_alloc_init(OADMasterBackground);
        [slideCopy setBackground:v17];
      }

      else
      {
        [slideCopy setBackground:v16];
      }
    }
  }

  v18 = [groupCopy firstChildOfType:1017];
  v19 = v18;
  if (v18)
  {
    eshObject = [v18 eshObject];
    if (eshObject)
    {
      if (v21)
      {
        [self parseSlideShowInfo:v21 slideBase:slideCopy state:stateCopy];
      }
    }
  }
}

+ (BOOL)readColorScheme:(id)scheme colorScheme:(id)colorScheme colorMap:(id)map state:(id)state
{
  schemeCopy = scheme;
  colorSchemeCopy = colorScheme;
  mapCopy = map;
  stateCopy = state;
  v13 = [schemeCopy childOfType:2032 instance:1];
  v14 = v13;
  {
    [PBColorScheme readFromColorScheme:v16 toColorScheme:colorSchemeCopy colorMap:mapCopy state:stateCopy];
    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (void)mapSlideNumberPlaceholder:(id)placeholder tgtSlideBase:(id)base state:(id)state
{
  placeholderCopy = placeholder;
  baseCopy = base;
  v7 = [baseCopy placeholderWithType:5 placeholderTypeIndex:0 overrideIndex:1];
  if (!v7)
  {
    v8 = [placeholderCopy placeholderWithType:5 placeholderTypeIndex:0 overrideIndex:1];
    if (v8)
    {
      [baseCopy addSlideNumberPlaceholder:v8];
    }
  }
}

+ (id)nonPlaceholderDrawablesAmongDrawables:(id)drawables
{
  v18 = *MEMORY[0x277D85DE8];
  drawablesCopy = drawables;
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = drawablesCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        clientData = [v9 clientData];
        placeholder = [clientData placeholder];

        if (!placeholder || [placeholder type] == -1)
        {
          [array addObject:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return array;
}

+ (BOOL)slideFollowsMasterBackground:(id)background
{
  backgroundCopy = background;
  eshObject = [backgroundCopy eshObject];
  if ((*(*eshObject + 16))(eshObject) == 1016 || (v5 = [backgroundCopy eshObject], (*(*v5 + 16))(v5) == 1008))
  {
    v6 = 0;
  }

  else
  {
    eshObject2 = [backgroundCopy eshObject];
    v8 = (*(*eshObject2 + 16))(eshObject2) == 1006;
    TCVerifyInputMeetsCondition(v8);
    v9 = [backgroundCopy firstChildOfType:1007];
    TCVerifyInputMeetsCondition(v9 != 0);
    eshObject3 = [v9 eshObject];
    if (eshObject3)
    {
    }

    else
    {
      v11 = 0;
    }

    TCVerifyInputMeetsCondition(v11 != 0);
    v6 = v11[94];
  }

  return v6 & 1;
}

+ (void)parseSlideShowInfo:(PptSSSlideInfoAtom *)info slideBase:(id)base state:(id)state
{
  baseCopy = base;
  v7 = objc_alloc_init(PDTransition);
  v8 = v7;
  var11 = info->var11;
  if (var11)
  {
    v10 = var11 != 2;
  }

  else
  {
    v10 = 2;
  }

  [(PDTransition *)v7 setSpeed:v10];
  [(PDTransition *)v8 setIsAdvanceOnClick:(info->var10 & 0x400) == 0];
  [(PDTransition *)v8 setAdvanceAfterTime:info->var6];
  -[PDTransition setType:](v8, "setType:", [self parseTransType:info->var9 direction:info->var8]);
  v11 = [self newOptions:info->var8 transType:info->var9];
  [(PDTransition *)v8 setOptions:v11];
  [baseCopy setTransition:v8];
  if ((info->var10 & 4) != 0)
  {
    [baseCopy setIsHidden:1];
  }
}

+ (int)parseTransType:(int)type direction:(int64_t)direction
{
  result = 37;
  switch(type)
  {
    case 0:
      if (direction)
      {
        result = 16 * (direction == 1);
      }

      else
      {
        result = 13;
      }

      break;
    case 1:
      return result;
    case 2:
    case 3:
      result = type;
      break;
    case 4:
      result = 7;
      break;
    case 5:
      result = 13;
      break;
    case 7:
      result = 35;
      break;
    case 8:
      result = 38;
      break;
    case 9:
      result = 43;
      break;
    case 10:
      result = 52;
      break;
    case 11:
      result = 53;
      break;
    case 13:
      result = 42;
      break;
    case 17:
      result = 12;
      break;
    case 18:
      result = 32;
      break;
    case 19:
      result = 47;
      break;
    case 20:
      result = 36;
      break;
    case 21:
      result = 5;
      break;
    case 22:
      result = 26;
      break;
    case 26:
      result = 48;
      break;
    case 27:
      result = 4;
      break;
    case 29:
      result = 20;
      break;
    case 30:
      result = 9;
      break;
    default:
      result = 16;
      break;
  }

  return result;
}

+ (id)newOptions:(int64_t)options transType:(int)type
{
  v4 = 0;
  optionsCopy = options;
  switch(type)
  {
    case 2:
      optionsCopy = options == 0;
      goto LABEL_7;
    case 3:
    case 8:
    case 21:
LABEL_7:
      v4 = objc_alloc_init(PDOrientationOptions);
      [(PDOrientationOptions *)v4 setOrientation:optionsCopy != 0];
      break;
    case 4:
    case 7:
      v4 = objc_alloc_init(PDEightDirectionOptions);
      [(PDOrientationOptions *)v4 setDirection:eightDirMap(optionsCopy)];
      break;
    case 6:
    case 23:
      v4 = objc_alloc_init(PDBlackOptions);
      [(PDOrientationOptions *)v4 setIsThroughBlack:type == 6];
      break;
    case 9:
      v4 = objc_alloc_init(PDCornerDirectionOptions);
      [(PDOrientationOptions *)v4 setDirection:eightDirMap(optionsCopy)];
      break;
    case 10:
    case 20:
    case 29:
    case 30:
      v4 = objc_alloc_init(PDSideDirectionOptions);
      [(PDOrientationOptions *)v4 setDirection:eightDirMap(optionsCopy)];
      break;
    case 11:
      v4 = objc_alloc_init(PDInOutDirectionOptions);
      [(PDOrientationOptions *)v4 setInOut:optionsCopy == 0];
      break;
    case 13:
      v8 = objc_alloc_init(PDSplitDirectionOptions);
      v4 = v8;
      if (optionsCopy > 3)
      {
        v9 = 0;
        v10 = 0;
      }

      else
      {
        v9 = *(&xmmword_25D6FCD80 + optionsCopy);
        v10 = dword_25D70F870[optionsCopy];
      }

      [(PDSplitDirectionOptions *)v8 setInOut:v10];
      [(PDOrientationOptions *)v4 setOrientation:v9];
      break;
    case 26:
      v4 = objc_alloc_init(PDWheelDirectionOptions);
      [(PDOrientationOptions *)v4 setSpokes:optionsCopy];
      break;
    default:
      return v4;
  }

  return v4;
}

+ (unsigned)mapDirection:(id)direction
{
  directionCopy = direction;
  if ([directionCopy type])
  {
    if ([directionCopy hasTransitionOptions])
    {
      options = [directionCopy options];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        spokes = [options spokes];
LABEL_5:
        isThroughBlack = domToEightDirMap(spokes);
LABEL_10:
        v7 = isThroughBlack;
LABEL_11:

        goto LABEL_12;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        isThroughBlack = [options isThroughBlack];
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [options orientation] == 1;
        goto LABEL_15;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([directionCopy type] != 4)
        {
          v9 = [options inOut] == 0;
LABEL_15:
          v7 = v9;
          goto LABEL_11;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          orientation = [options orientation];
          inOut = [options inOut];
          if (inOut == 1)
          {
            v12 = 2;
          }

          else
          {
            v12 = 3;
          }

          if (orientation)
          {
            v7 = v12;
          }

          else
          {
            v7 = inOut != 1;
          }

          goto LABEL_11;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          spokes = [options direction];
          goto LABEL_5;
        }
      }

      v7 = 0;
      goto LABEL_11;
    }

    v7 = 0;
  }

  else
  {
    v7 = 2;
  }

LABEL_12:

  return v7;
}

@end