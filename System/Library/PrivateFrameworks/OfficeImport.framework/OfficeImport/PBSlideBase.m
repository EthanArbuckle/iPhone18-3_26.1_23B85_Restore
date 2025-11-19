@interface PBSlideBase
+ (BOOL)readColorScheme:(id)a3 colorScheme:(id)a4 colorMap:(id)a5 state:(id)a6;
+ (BOOL)slideFollowsMasterBackground:(id)a3;
+ (id)newOptions:(int64_t)a3 transType:(int)a4;
+ (id)nonPlaceholderDrawablesAmongDrawables:(id)a3;
+ (int)parseTransType:(int)a3 direction:(int64_t)a4;
+ (unint64_t)authorIdForName:(id)a3 state:(id)a4;
+ (unsigned)mapDirection:(id)a3;
+ (void)mapSlideNumberPlaceholder:(id)a3 tgtSlideBase:(id)a4 state:(id)a5;
+ (void)parseSlideShowInfo:(PptSSSlideInfoAtom *)a3 slideBase:(id)a4 state:(id)a5;
+ (void)readComments:(id)a3 slide:(id)a4 state:(id)a5;
+ (void)readDrawingGroup:(id)a3 slide:(id)a4 state:(id)a5;
@end

@implementation PBSlideBase

+ (unint64_t)authorIdForName:(id)a3 state:(id)a4
{
  v5 = a3;
  v6 = [a4 tgtPresentation];
  v7 = [v6 commentAuthorCount];
  if (v7)
  {
    v8 = 0;
    while (1)
    {
      v9 = [v6 commentAuthorAtIndex:v8];
      v10 = [v9 name];

      LOBYTE(v9) = [v10 isEqualToString:v5];
      if (v9)
      {
        break;
      }

      if (v7 == ++v8)
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

+ (void)readComments:(id)a3 slide:(id)a4 state:(id)a5
{
  v20 = a3;
  v23 = a4;
  v22 = a5;
  v8 = [PBProgTag binaryTagDataWithName:L"___PPT10" inProgTagsParent:v20];
  for (i = 0; ; i = v10 + 1)
  {
    v10 = i;
    if ([v8 childCount] <= i)
    {
      break;
    }

    v11 = [v8 childAt:i];
    v12 = [v11 eshObject];
    if ((*(*v12 + 16))(v12) == 12000)
    {
      v13 = v11;
      v14 = objc_alloc_init(PDComment);
      v15 = [PBUtils readStringWithInstance:0 fromContainer:v13];
      if (v15)
      {
        [(PDComment *)v14 setAuthor:v15];
        -[PDComment setAuthorId:](v14, "setAuthorId:", [a1 authorIdForName:v15 state:v22]);
      }

      v16 = [PBUtils readStringWithInstance:1 fromContainer:v13];
      if (v16)
      {
        [(PDComment *)v14 setText:v16];
      }

      v17 = [v13 firstChildOfType:12001];
      v18 = [v17 eshObject];

      if (v18)
      {
        v5 = v5 & 0xFFFFFFFFFFFF0000 | *(v18 + 60);
        v19 = NSDateWithCsDateTime(*(v18 + 52));
        [(PDComment *)v14 setDate:v19];
        [(PDComment *)v14 setPosition:(*(v18 + 64) / 8), (*(v18 + 68) / 8)];
        [(PDComment *)v14 setIndex:(*(v18 + 48) - 1)];
      }

      [v23 addComment:v14];
    }
  }
}

+ (void)readDrawingGroup:(id)a3 slide:(id)a4 state:(id)a5
{
  v22 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v22 firstChildOfType:1036];
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
    [v9 setTgtSlide:v8];
    v13 = [v9 officeArtState];
    v14 = [OABDrawing readDrawablesFromDrawing:v12 state:v13];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [PBHeadersFooters readHeadersFootersFromSlideContainer:v22 toMasterSlide:v8 drawables:v14 state:v9];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 showMasterShapes])
      {
        [PBHeadersFooters readHeadersFootersFromSlideContainer:v22 toSlide:v8 drawables:v14 state:v9];
      }
    }

    [v8 setDrawables:v14];
    v15 = [v9 tgtPresentation];
    [v15 cacheGraphicStylesForSlideBase:v8];

    v16 = [OABDrawing readBackgroundPropertiesFromDrawing:v12 state:v13];
    if (v16)
    {
      if ([a1 slideFollowsMasterBackground:v22])
      {
        v17 = objc_alloc_init(OADMasterBackground);
        [v8 setBackground:v17];
      }

      else
      {
        [v8 setBackground:v16];
      }
    }
  }

  v18 = [v22 firstChildOfType:1017];
  v19 = v18;
  if (v18)
  {
    v20 = [v18 eshObject];
    if (v20)
    {
      if (v21)
      {
        [a1 parseSlideShowInfo:v21 slideBase:v8 state:v9];
      }
    }
  }
}

+ (BOOL)readColorScheme:(id)a3 colorScheme:(id)a4 colorMap:(id)a5 state:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v9 childOfType:2032 instance:1];
  v14 = v13;
  {
    [PBColorScheme readFromColorScheme:v16 toColorScheme:v10 colorMap:v11 state:v12];
    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (void)mapSlideNumberPlaceholder:(id)a3 tgtSlideBase:(id)a4 state:(id)a5
{
  v9 = a3;
  v6 = a4;
  v7 = [v6 placeholderWithType:5 placeholderTypeIndex:0 overrideIndex:1];
  if (!v7)
  {
    v8 = [v9 placeholderWithType:5 placeholderTypeIndex:0 overrideIndex:1];
    if (v8)
    {
      [v6 addSlideNumberPlaceholder:v8];
    }
  }
}

+ (id)nonPlaceholderDrawablesAmongDrawables:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
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
        v10 = [v9 clientData];
        v11 = [v10 placeholder];

        if (!v11 || [v11 type] == -1)
        {
          [v4 addObject:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (BOOL)slideFollowsMasterBackground:(id)a3
{
  v3 = a3;
  v4 = [v3 eshObject];
  if ((*(*v4 + 16))(v4) == 1016 || (v5 = [v3 eshObject], (*(*v5 + 16))(v5) == 1008))
  {
    v6 = 0;
  }

  else
  {
    v7 = [v3 eshObject];
    v8 = (*(*v7 + 16))(v7) == 1006;
    TCVerifyInputMeetsCondition(v8);
    v9 = [v3 firstChildOfType:1007];
    TCVerifyInputMeetsCondition(v9 != 0);
    v10 = [v9 eshObject];
    if (v10)
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

+ (void)parseSlideShowInfo:(PptSSSlideInfoAtom *)a3 slideBase:(id)a4 state:(id)a5
{
  v12 = a4;
  v7 = objc_alloc_init(PDTransition);
  v8 = v7;
  var11 = a3->var11;
  if (var11)
  {
    v10 = var11 != 2;
  }

  else
  {
    v10 = 2;
  }

  [(PDTransition *)v7 setSpeed:v10];
  [(PDTransition *)v8 setIsAdvanceOnClick:(a3->var10 & 0x400) == 0];
  [(PDTransition *)v8 setAdvanceAfterTime:a3->var6];
  -[PDTransition setType:](v8, "setType:", [a1 parseTransType:a3->var9 direction:a3->var8]);
  v11 = [a1 newOptions:a3->var8 transType:a3->var9];
  [(PDTransition *)v8 setOptions:v11];
  [v12 setTransition:v8];
  if ((a3->var10 & 4) != 0)
  {
    [v12 setIsHidden:1];
  }
}

+ (int)parseTransType:(int)a3 direction:(int64_t)a4
{
  result = 37;
  switch(a3)
  {
    case 0:
      if (a4)
      {
        result = 16 * (a4 == 1);
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
      result = a3;
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

+ (id)newOptions:(int64_t)a3 transType:(int)a4
{
  v4 = 0;
  v5 = a3;
  switch(a4)
  {
    case 2:
      v5 = a3 == 0;
      goto LABEL_7;
    case 3:
    case 8:
    case 21:
LABEL_7:
      v4 = objc_alloc_init(PDOrientationOptions);
      [(PDOrientationOptions *)v4 setOrientation:v5 != 0];
      break;
    case 4:
    case 7:
      v4 = objc_alloc_init(PDEightDirectionOptions);
      [(PDOrientationOptions *)v4 setDirection:eightDirMap(v5)];
      break;
    case 6:
    case 23:
      v4 = objc_alloc_init(PDBlackOptions);
      [(PDOrientationOptions *)v4 setIsThroughBlack:a4 == 6];
      break;
    case 9:
      v4 = objc_alloc_init(PDCornerDirectionOptions);
      [(PDOrientationOptions *)v4 setDirection:eightDirMap(v5)];
      break;
    case 10:
    case 20:
    case 29:
    case 30:
      v4 = objc_alloc_init(PDSideDirectionOptions);
      [(PDOrientationOptions *)v4 setDirection:eightDirMap(v5)];
      break;
    case 11:
      v4 = objc_alloc_init(PDInOutDirectionOptions);
      [(PDOrientationOptions *)v4 setInOut:v5 == 0];
      break;
    case 13:
      v8 = objc_alloc_init(PDSplitDirectionOptions);
      v4 = v8;
      if (v5 > 3)
      {
        v9 = 0;
        v10 = 0;
      }

      else
      {
        v9 = *(&xmmword_25D6FCD80 + v5);
        v10 = dword_25D70F870[v5];
      }

      [(PDSplitDirectionOptions *)v8 setInOut:v10];
      [(PDOrientationOptions *)v4 setOrientation:v9];
      break;
    case 26:
      v4 = objc_alloc_init(PDWheelDirectionOptions);
      [(PDOrientationOptions *)v4 setSpokes:v5];
      break;
    default:
      return v4;
  }

  return v4;
}

+ (unsigned)mapDirection:(id)a3
{
  v3 = a3;
  if ([v3 type])
  {
    if ([v3 hasTransitionOptions])
    {
      v4 = [v3 options];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [v4 spokes];
LABEL_5:
        v6 = domToEightDirMap(v5);
LABEL_10:
        v7 = v6;
LABEL_11:

        goto LABEL_12;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v4 isThroughBlack];
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v4 orientation] == 1;
        goto LABEL_15;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v3 type] != 4)
        {
          v9 = [v4 inOut] == 0;
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
          v10 = [v4 orientation];
          v11 = [v4 inOut];
          if (v11 == 1)
          {
            v12 = 2;
          }

          else
          {
            v12 = 3;
          }

          if (v10)
          {
            v7 = v12;
          }

          else
          {
            v7 = v11 != 1;
          }

          goto LABEL_11;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v5 = [v4 direction];
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