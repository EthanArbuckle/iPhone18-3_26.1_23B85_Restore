@interface _CUIThemeGradientRendition
+ (NSArray)_nodesFromNodeList:(uint64_t)list count:(_DWORD *)count header:(uint64_t)header;
+ (void)_parseGradientInfoFromCSIHeader:(uint64_t)header;
- (id)_initWithCSIHeader:(const _csiheader *)header version:(unsigned int)version;
- (void)dealloc;
@end

@implementation _CUIThemeGradientRendition

+ (NSArray)_nodesFromNodeList:(uint64_t)list count:(_DWORD *)count header:(uint64_t)header
{
  v5 = objc_opt_self();
  if (header)
  {
    v6 = v5;
    v7 = [[NSMutableArray alloc] initWithCapacity:header];
    for (i = (count + 8); ; i += 9)
    {
      v9 = *count;
      v10 = *(i - 8);
      if (*count != v10)
      {
        if (v9 == 1129270354 && v10 == 1129270340)
        {
LABEL_25:
          v12 = [[CUIPSDGradientDoubleColorStop alloc] initWithLocation:*(i - 7) leadInColor:*(i - 3) leadOutColor:*(i - 2), *(i - 1), *i, *(i + 1), *(i + 2), *(i + 3), *(i + 4)];
          goto LABEL_28;
        }

        if (v9 == 1330660180)
        {
          if (v10 == 1330660164)
          {
            goto LABEL_26;
          }
        }

        else if (v9 == 1330660164)
        {
          if (v10 == 1330660180)
          {
            goto LABEL_21;
          }
        }

        else if (v9 == 1129270340 && v10 == 1129270354)
        {
          goto LABEL_24;
        }

        [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:sel__nodesFromNodeList_count_header_ file:v6 lineNumber:@"_CUIThemeGradientRendition.m" description:34, @"CoreUI: Mixed node types in node list"];
        v9 = *(i - 8);
      }

      if (v9 <= 1296647247)
      {
        if (v9 == 1129270340)
        {
          goto LABEL_25;
        }

        if (v9 != 1129270354)
        {
LABEL_31:
          [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:sel__nodesFromNodeList_count_header_ file:v6 lineNumber:@"_CUIThemeGradientRendition.m" description:73, @"CoreUI: Invalid gradient node type in gradient rendition initialization"];
          v15 = 0;
          goto LABEL_29;
        }

LABEL_24:
        v12 = [[CUIPSDGradientColorStop alloc] initWithLocation:*(i - 7) gradientColor:*(i - 3), *(i - 2), *(i - 1), *i];
        goto LABEL_28;
      }

      if (v9 == 1296647248)
      {
        v13 = [NSNumber alloc];
        LODWORD(v14) = *(i - 7);
        v12 = [v13 initWithFloat:v14];
        goto LABEL_28;
      }

      if (v9 == 1330660164)
      {
LABEL_26:
        v12 = [[CUIPSDGradientDoubleOpacityStop alloc] initWithLocation:*(i - 7) leadInOpacity:*i leadOutOpacity:i[4]];
        goto LABEL_28;
      }

      if (v9 != 1330660180)
      {
        goto LABEL_31;
      }

LABEL_21:
      v12 = [[CUIPSDGradientOpacityStop alloc] initWithLocation:*(i - 7) opacity:*i];
LABEL_28:
      v15 = v12;
LABEL_29:
      [v7 addObject:v15];

      if (!--header)
      {

        return v7;
      }
    }
  }

  return +[NSArray array];
}

+ (void)_parseGradientInfoFromCSIHeader:(uint64_t)header
{
  objc_opt_self();
  a2[1] = 0.0;
  a2[2] = 0.0;
  *a2 = 0.0;
  selfCopy = self;
  v11 = *(self + 172);
  if (v11)
  {
    v12 = 0;
    v33 = self + 176 + 4 * v11 + *(self + 168) + 4;
    v34 = self + 176;
    v13 = 1;
    while ((v13 & 1) != 0)
    {
      v14 = v33 + *(v34 + 4 * v12);
      v15 = *v14;
      v16 = *(v14 + 12);
      if (*v14 == 1145131591)
      {
        v16 = bswap32(v16);
        v17 = bswap32(*(v14 + 64));
      }

      else
      {
        v17 = *(v14 + 64);
      }

      *a2 = v16;
      if (v17 >= 2)
      {
        a2[1] = *(v14 + 56);
        v18 = *(v14 + 68);
        v19 = *(v14 + 72);
        v20 = *(v14 + 76);
        v21 = bswap32(v18);
        v22 = bswap32(v19);
        v23 = bswap32(v20);
        v24 = v15 == 1145131591 ? v23 : v20;
        v25 = v15 == 1145131591 ? v22 : v19;
        v26 = v15 == 1145131591 ? v21 : v18;
        v27 = [_CUIThemeGradientRendition _nodesFromNodeList:(v14 + 80) count:v17 header:?];
        v28 = (v14 + 80 + 72 * v17);
        v29 = [_CUIThemeGradientRendition _nodesFromNodeList:v28 count:v26 header:?];
        v30 = &v28[18 * v26];
        v31 = [_CUIThemeGradientRendition _nodesFromNodeList:v30 count:v25 header:?];
        v32 = [[CUIPSDGradientEvaluator alloc] initWithColorStops:v27 colorMidpoints:v29 opacityStops:v31 opacityMidpoints:[_CUIThemeGradientRendition _nodesFromNodeList:? count:? header:?]dither:*(v14 + 4) & 1, *(v14 + 60), *(v14 + 24), *(v14 + 32), *(v14 + 40), *(v14 + 48)];
        *(a2 + 2) = v32;
        [(CUIPSDGradientEvaluator *)v32 setBlendMode:*(v14 + 20)];
        v13 = 0;
        v12 = 1;
        if (*(selfCopy + 172) > 1u)
        {
          continue;
        }
      }

      return;
    }

    _CUILog(4, "Warning: Ignoring extra gradient data found in CSI", v5, v6, v7, v8, v9, v10, header);
  }
}

- (id)_initWithCSIHeader:(const _csiheader *)header version:(unsigned int)version
{
  v15.receiver = self;
  v15.super_class = _CUIThemeGradientRendition;
  v5 = [(CUIThemeRendition *)&v15 _initWithCSIHeader:header version:*&version];
  v12 = 0;
  v13 = 0;
  v14 = 0;
  [(_CUIThemeGradientRendition *)header _parseGradientInfoFromCSIHeader:v11];
  v6 = v14;
  if (v14)
  {
    if ((*(header + 7) & 0xF) == 1)
    {
      SRGB = _CUIColorSpaceGetSRGB();
    }

    else
    {
      SRGB = _CUIColorSpaceGetGenericRGB();
    }

    v9 = SRGB;
    [v5 setBlendMode:{objc_msgSend(v6, "blendMode")}];
    v5[28] = v13;
    [v5 setSubtype:v12];
    v5[27] = [[CUIThemeGradient alloc] _initWithGradientEvaluator:v6 colorSpace:v9];
  }

  else
  {
    v8 = v5;
    return 0;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CUIThemeGradientRendition;
  [(CUIThemeRendition *)&v3 dealloc];
}

@end