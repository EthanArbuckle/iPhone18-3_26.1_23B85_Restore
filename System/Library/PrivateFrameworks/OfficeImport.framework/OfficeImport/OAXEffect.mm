@interface OAXEffect
+ (BOOL)isEmpty:(id)empty;
+ (id)presetShadowTypeEnumMap;
+ (id)readEffectsFromXmlNode:(_xmlNode *)node packagePart:(id)part drawingState:(id)state;
+ (id)updateIncomingEffects:(id)effects;
+ (id)updateOutgoingEffects:(id)effects;
+ (void)readGlow:(id)glow fromXmlNode:(_xmlNode *)node;
+ (void)readOuterShadow:(id)shadow fromXmlNode:(_xmlNode *)node;
+ (void)readPresetShadow:(id)shadow fromXmlNode:(_xmlNode *)node;
+ (void)readReflection:(id)reflection fromXmlNode:(_xmlNode *)node;
+ (void)readShadow:(id)shadow fromXmlNode:(_xmlNode *)node;
+ (void)writeGlow:(id)glow to:(id)to;
+ (void)writeOuterShadow:(id)shadow includeRotateWithShape:(BOOL)shape to:(id)to;
+ (void)writePresetShadow:(id)shadow to:(id)to;
+ (void)writeReflection:(id)reflection to:(id)to;
+ (void)writeShadowBase:(id)base to:(id)to;
@end

@implementation OAXEffect

+ (id)presetShadowTypeEnumMap
{
  v2 = +[OAXEffect(Private) presetShadowTypeEnumMap]::presetShadowTypeEnumMap;
  if (!+[OAXEffect(Private) presetShadowTypeEnumMap]::presetShadowTypeEnumMap)
  {
    {
      +[OAXEffect(Private) presetShadowTypeEnumMap];
    }

    v3 = [[TCEnumerationMap alloc] initWithStructs:&+[OAXEffect(Private) presetShadowTypeEnumMap]::presetShadowTypeEnumStructs count:20 caseSensitive:1];
    v4 = +[OAXEffect(Private) presetShadowTypeEnumMap]::presetShadowTypeEnumMap;
    +[OAXEffect(Private) presetShadowTypeEnumMap]::presetShadowTypeEnumMap = v3;

    v2 = +[OAXEffect(Private) presetShadowTypeEnumMap]::presetShadowTypeEnumMap;
  }

  return v2;
}

+ (id)readEffectsFromXmlNode:(_xmlNode *)node packagePart:(id)part drawingState:(id)state
{
  partCopy = part;
  stateCopy = state;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = OCXFirstChild(node); i; i = OCXNextSibling(i))
  {
    if (i->type != XML_ELEMENT_NODE)
    {
      continue;
    }

    if (xmlStrEqual(i->name, "outerShdw"))
    {
      v11 = objc_alloc_init(OADOuterShadowEffect);
      [self readOuterShadow:v11 fromXmlNode:i];
      [v9 addObject:v11];
    }

    else if (xmlStrEqual(i->name, "prstShdw"))
    {
      v11 = objc_alloc_init(OADPresetShadowEffect);
      [self readPresetShadow:v11 fromXmlNode:i];
      [v9 addObject:v11];
    }

    else if (xmlStrEqual(i->name, "reflection"))
    {
      v11 = objc_alloc_init(OADReflectionEffect);
      [self readReflection:v11 fromXmlNode:i];
      [v9 addObject:v11];
    }

    else if (xmlStrEqual(i->name, "glow"))
    {
      v11 = objc_alloc_init(OADGlowEffect);
      [self readGlow:v11 fromXmlNode:i];
      [v9 addObject:v11];
    }

    else
    {
      if (!xmlStrEqual(i->name, "fillOverlay"))
      {
        continue;
      }

      v11 = [OAXFillOverlayEffect readFromXmlNode:i packagePart:partCopy drawingState:stateCopy];
      [v9 addObject:v11];
    }
  }

  return v9;
}

+ (BOOL)isEmpty:(id)empty
{
  v17 = *MEMORY[0x277D85DE8];
  emptyCopy = empty;
  v4 = emptyCopy;
  if (emptyCopy)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = emptyCopy;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = 0;
      v8 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    continue;
                  }
                }
              }
            }
          }

          v7 = 1;
        }

        v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
      v10 = v7 ^ 1;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

+ (void)readShadow:(id)shadow fromXmlNode:(_xmlNode *)node
{
  shadowCopy = shadow;
  v12 = 0;
  if (CXOptionalLongAttribute(node, CXNoNamespace, "blurRad", &v12))
  {
    v6 = v12 / 12700.0;
    *&v6 = v6;
    [shadowCopy setBlurRadius:v6];
  }

  v11 = 0;
  if (CXOptionalLongAttribute(node, CXNoNamespace, "dist", &v11))
  {
    v7 = v11 / 12700.0;
    *&v7 = v7;
    [shadowCopy setDistance:v7];
  }

  v10 = 0;
  if (CXOptionalLongAttribute(node, CXNoNamespace, "dir", &v10))
  {
    v8 = v10 / 60000.0;
    *&v8 = v8;
    [shadowCopy setAngle:v8];
  }

  v9 = [OAXColor readColorFromParentXmlNode:node];
  [shadowCopy setColor:v9];
}

+ (void)readOuterShadow:(id)shadow fromXmlNode:(_xmlNode *)node
{
  shadowCopy = shadow;
  [self readShadow:shadowCopy fromXmlNode:node];
  v16 = 0.0;
  if (CXOptionalFractionAttribute(node, CXNoNamespace, "sx", &v16))
  {
    HIDWORD(v7) = HIDWORD(v16);
    *&v7 = v16;
    [shadowCopy setXScale:v7];
  }

  v15 = 0.0;
  if (CXOptionalFractionAttribute(node, CXNoNamespace, "sy", &v15))
  {
    HIDWORD(v8) = HIDWORD(v15);
    *&v8 = v15;
    [shadowCopy setYScale:v8];
  }

  v14 = 0;
  if (CXOptionalLongAttribute(node, CXNoNamespace, "kx", &v14))
  {
    v9 = v14 / 60000.0;
    *&v9 = v9;
    [shadowCopy setXSkew:v9];
  }

  v13 = 0;
  if (CXOptionalLongAttribute(node, CXNoNamespace, "ky", &v13))
  {
    v10 = v13 / 60000.0;
    *&v10 = v10;
    [shadowCopy setYSkew:v10];
  }

  v11 = [OAXBaseTypes readRectAlignmentFromXmlNode:node name:"algn"];
  if (v11)
  {
    [shadowCopy setAlignment:v11];
  }

  v12 = 0;
  if (CXOptionalBoolAttribute(node, CXNoNamespace, "rotWithShape", &v12))
  {
    [shadowCopy setRotateWithShape:v12];
  }
}

+ (void)writeOuterShadow:(id)shadow includeRotateWithShape:(BOOL)shape to:(id)to
{
  shapeCopy = shape;
  shadowCopy = shadow;
  toCopy = to;
  v9 = MEMORY[0x277CCABB0];
  [shadowCopy xScale];
  *&v11 = v10 * 100000.0;
  v12 = [v9 numberWithFloat:v11];
  longValue = [v12 longValue];

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue];
  [toCopy writeOAAttribute:@"sx" content:v14];

  v15 = MEMORY[0x277CCABB0];
  [shadowCopy yScale];
  *&v17 = v16 * 100000.0;
  v18 = [v15 numberWithFloat:v17];
  longValue2 = [v18 longValue];

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue2];
  [toCopy writeOAAttribute:@"sy" content:v20];

  v21 = MEMORY[0x277CCABB0];
  [shadowCopy xSkew];
  *&v23 = v22 * 60000.0;
  v24 = [v21 numberWithFloat:v23];
  longValue3 = [v24 longValue];

  v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue3];
  [toCopy writeOAAttribute:@"kx" content:v26];

  v27 = MEMORY[0x277CCABB0];
  [shadowCopy ySkew];
  *&v29 = v28 * 60000.0;
  v30 = [v27 numberWithFloat:v29];
  longValue4 = [v30 longValue];

  v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue4];
  [toCopy writeOAAttribute:@"ky" content:v32];

  +[OAXBaseTypes writeRectAlignment:to:](OAXBaseTypes, "writeRectAlignment:to:", [shadowCopy alignment], toCopy);
  if (shapeCopy)
  {
    if ([shadowCopy rotateWithShape])
    {
      v33 = @"1";
    }

    else
    {
      v33 = @"0";
    }

    [toCopy writeOAAttribute:@"rotWithShape" content:v33];
  }

  [self writeShadowBase:shadowCopy to:toCopy];
}

+ (void)readPresetShadow:(id)shadow fromXmlNode:(_xmlNode *)node
{
  shadowCopy = shadow;
  [self readShadow:? fromXmlNode:?];
  v6 = CXDefaultStringAttribute(node, CXNoNamespace, "prst", 0);
  if (v6)
  {
    presetShadowTypeEnumMap = [self presetShadowTypeEnumMap];
    v8 = [presetShadowTypeEnumMap valueForString:v6];

    if (v8 != -130883970)
    {
      [shadowCopy setPresetShadowType:v8];
    }
  }
}

+ (void)writePresetShadow:(id)shadow to:(id)to
{
  shadowCopy = shadow;
  toCopy = to;
  presetShadowTypeEnumMap = [self presetShadowTypeEnumMap];
  v8 = [presetShadowTypeEnumMap stringForValue:{objc_msgSend(shadowCopy, "presetShadowType")}];

  [toCopy writeOAAttribute:@"prst" content:v8];
  [self writeShadowBase:shadowCopy to:toCopy];
}

+ (void)readReflection:(id)reflection fromXmlNode:(_xmlNode *)node
{
  reflectionCopy = reflection;
  v31 = 0;
  if (CXOptionalLongAttribute(node, CXNoNamespace, "blurRad", &v31))
  {
    v6 = v31 / 12700.0;
    *&v6 = v6;
    [reflectionCopy setBlurRadius:v6];
  }

  v30 = 0.0;
  if (CXOptionalFractionAttribute(node, CXNoNamespace, "stA", &v30))
  {
    HIDWORD(v7) = HIDWORD(v30);
    *&v7 = v30;
    [reflectionCopy setStartOpacity:v7];
  }

  v29 = 0.0;
  if (CXOptionalFractionAttribute(node, CXNoNamespace, "stPos", &v29))
  {
    HIDWORD(v8) = HIDWORD(v29);
    *&v8 = v29;
    [reflectionCopy setStartPosition:v8];
  }

  v28 = 0.0;
  if (CXOptionalFractionAttribute(node, CXNoNamespace, "endA", &v28))
  {
    HIDWORD(v9) = HIDWORD(v28);
    *&v9 = v28;
    [reflectionCopy setEndOpacity:v9];
  }

  v27 = 0.0;
  if (CXOptionalFractionAttribute(node, CXNoNamespace, "endPos", &v27))
  {
    HIDWORD(v10) = HIDWORD(v27);
    *&v10 = v27;
    [reflectionCopy setEndPosition:v10];
  }

  v26 = 0;
  if (CXOptionalLongAttribute(node, CXNoNamespace, "dist", &v26))
  {
    v11 = v26 / 12700.0;
    *&v11 = v11;
    [reflectionCopy setDistance:v11];
  }

  v25 = 0;
  if (CXOptionalLongAttribute(node, CXNoNamespace, "dir", &v25))
  {
    v12 = v25 / 60000.0;
    *&v12 = v12;
    [reflectionCopy setDirection:v12];
  }

  v24 = 0;
  if (CXOptionalLongAttribute(node, CXNoNamespace, "fadeDir", &v24))
  {
    v13 = v24 / 60000.0;
    *&v13 = v13;
    [reflectionCopy setFadeDirection:v13];
  }

  v23 = 0.0;
  if (CXOptionalFractionAttribute(node, CXNoNamespace, "sx", &v23))
  {
    HIDWORD(v14) = HIDWORD(v23);
    *&v14 = v23;
    [reflectionCopy setXScale:v14];
  }

  v22 = 0.0;
  if (CXOptionalFractionAttribute(node, CXNoNamespace, "sy", &v22))
  {
    HIDWORD(v15) = HIDWORD(v22);
    *&v15 = v22;
    [reflectionCopy setYScale:v15];
  }

  v21 = 0;
  if (CXOptionalLongAttribute(node, CXNoNamespace, "kx", &v21))
  {
    v16 = v21 / 60000.0;
    *&v16 = v16;
    [reflectionCopy setXSkew:v16];
  }

  v20 = 0;
  if (CXOptionalLongAttribute(node, CXNoNamespace, "ky", &v20))
  {
    v17 = v20 / 60000.0;
    *&v17 = v17;
    [reflectionCopy setYSkew:v17];
  }

  v18 = [OAXBaseTypes readRectAlignmentFromXmlNode:node name:"algn"];
  if (v18)
  {
    [reflectionCopy setAlignment:v18];
  }

  v19 = 0;
  if (CXOptionalBoolAttribute(node, CXNoNamespace, "rotWithShape", &v19))
  {
    [reflectionCopy setRotateWithShape:v19];
  }
}

+ (void)writeReflection:(id)reflection to:(id)to
{
  reflectionCopy = reflection;
  toCopy = to;
  v6 = MEMORY[0x277CCABB0];
  [reflectionCopy blurRadius];
  *&v8 = v7 * 12700.0;
  v9 = [v6 numberWithFloat:v8];
  longValue = [v9 longValue];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue];
  [toCopy writeOAAttribute:@"blurRad" content:v11];

  v12 = MEMORY[0x277CCABB0];
  [reflectionCopy startOpacity];
  *&v14 = v13 * 100000.0;
  v15 = [v12 numberWithFloat:v14];
  longValue2 = [v15 longValue];

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue2];
  [toCopy writeOAAttribute:@"stA" content:v17];

  v18 = MEMORY[0x277CCABB0];
  [reflectionCopy startPosition];
  *&v20 = v19 * 100000.0;
  v21 = [v18 numberWithFloat:v20];
  longValue3 = [v21 longValue];

  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue3];
  [toCopy writeOAAttribute:@"stPos" content:v23];

  v24 = MEMORY[0x277CCABB0];
  [reflectionCopy endOpacity];
  *&v26 = v25 * 100000.0;
  v27 = [v24 numberWithFloat:v26];
  longValue4 = [v27 longValue];

  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue4];
  [toCopy writeOAAttribute:@"endA" content:v29];

  v30 = MEMORY[0x277CCABB0];
  [reflectionCopy endPosition];
  *&v32 = v31 * 100000.0;
  v33 = [v30 numberWithFloat:v32];
  longValue5 = [v33 longValue];

  v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue5];
  [toCopy writeOAAttribute:@"endPos" content:v35];

  v36 = MEMORY[0x277CCABB0];
  [reflectionCopy distance];
  *&v38 = v37 * 12700.0;
  v39 = [v36 numberWithFloat:v38];
  longValue6 = [v39 longValue];

  v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue6];
  [toCopy writeOAAttribute:@"dist" content:v41];

  v42 = MEMORY[0x277CCABB0];
  [reflectionCopy direction];
  *&v44 = v43 * 60000.0;
  v45 = [v42 numberWithFloat:v44];
  longValue7 = [v45 longValue];

  v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue7];
  [toCopy writeOAAttribute:@"dir" content:v47];

  v48 = MEMORY[0x277CCABB0];
  [reflectionCopy fadeDirection];
  *&v50 = v49 * 60000.0;
  v51 = [v48 numberWithFloat:v50];
  longValue8 = [v51 longValue];

  v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue8];
  [toCopy writeOAAttribute:@"fadeDir" content:v53];

  v54 = MEMORY[0x277CCABB0];
  [reflectionCopy xScale];
  *&v56 = v55 * 100000.0;
  v57 = [v54 numberWithFloat:v56];
  longValue9 = [v57 longValue];

  v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue9];
  [toCopy writeOAAttribute:@"sx" content:v59];

  v60 = MEMORY[0x277CCABB0];
  [reflectionCopy yScale];
  *&v62 = v61 * 100000.0;
  v63 = [v60 numberWithFloat:v62];
  longValue10 = [v63 longValue];

  v65 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue10];
  [toCopy writeOAAttribute:@"sy" content:v65];

  v66 = MEMORY[0x277CCABB0];
  [reflectionCopy xSkew];
  *&v68 = v67 * 60000.0;
  v69 = [v66 numberWithFloat:v68];
  longValue11 = [v69 longValue];

  v71 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue11];
  [toCopy writeOAAttribute:@"kx" content:v71];

  v72 = MEMORY[0x277CCABB0];
  [reflectionCopy ySkew];
  *&v74 = v73 * 60000.0;
  v75 = [v72 numberWithFloat:v74];
  longValue12 = [v75 longValue];

  v77 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue12];
  [toCopy writeOAAttribute:@"ky" content:v77];

  +[OAXBaseTypes writeRectAlignment:to:](OAXBaseTypes, "writeRectAlignment:to:", [reflectionCopy alignment], toCopy);
  if ([reflectionCopy rotateWithShape])
  {
    v78 = @"1";
  }

  else
  {
    v78 = @"0";
  }

  [toCopy writeOAAttribute:@"rotWithShape" content:v78];
}

+ (void)readGlow:(id)glow fromXmlNode:(_xmlNode *)node
{
  glowCopy = glow;
  v5 = CXDefaultLongAttribute(node, CXNoNamespace, "rad", 0) / 12700.0;
  *&v5 = v5;
  [glowCopy setRadius:v5];
  v6 = [OAXColor readColorFromParentXmlNode:node];
  if (!v6)
  {
    [TCMessageException raise:OABadFormat];
  }

  [glowCopy setColor:v6];
}

+ (void)writeGlow:(id)glow to:(id)to
{
  glowCopy = glow;
  toCopy = to;
  v6 = MEMORY[0x277CCABB0];
  [glowCopy radius];
  *&v8 = v7 * 12700.0;
  v9 = [v6 numberWithFloat:v8];
  longValue = [v9 longValue];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue];
  [toCopy writeOAAttribute:@"rad" content:v11];

  color = [glowCopy color];
  [OAXColor writeColor:color to:toCopy];
}

+ (id)updateIncomingEffects:(id)effects
{
  v24 = *MEMORY[0x277D85DE8];
  effectsCopy = effects;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(effectsCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = effectsCopy;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v6)
  {

LABEL_14:
    v16 = v5;
    goto LABEL_15;
  }

  v7 = 0;
  v8 = *v20;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v20 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v19 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 copy];
        [v11 blurRadius];
        *&v13 = v12 / 5.0;
        [v11 setBlurRadius:v13];
        [v11 distance];
        *&v15 = v14 * 0.5;
        [v11 setDistance:v15];
        [v4 addObject:v11];

        v7 = 1;
      }

      else
      {
        [v4 addObject:{v10, v19}];
      }
    }

    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v6);

  v16 = v4;
  if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  v17 = v16;

  return v16;
}

+ (id)updateOutgoingEffects:(id)effects
{
  v24 = *MEMORY[0x277D85DE8];
  effectsCopy = effects;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(effectsCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = effectsCopy;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v6)
  {

LABEL_14:
    v16 = v5;
    goto LABEL_15;
  }

  v7 = 0;
  v8 = *v20;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v20 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v19 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 copy];
        [v11 blurRadius];
        *&v13 = v12 * 5.0;
        [v11 setBlurRadius:v13];
        [v11 distance];
        *&v15 = v14 + v14;
        [v11 setDistance:v15];
        [v4 addObject:v11];

        v7 = 1;
      }

      else
      {
        [v4 addObject:{v10, v19}];
      }
    }

    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v6);

  v16 = v4;
  if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  v17 = v16;

  return v16;
}

+ (void)writeShadowBase:(id)base to:(id)to
{
  baseCopy = base;
  toCopy = to;
  v6 = MEMORY[0x277CCABB0];
  [baseCopy blurRadius];
  *&v8 = v7 * 12700.0;
  v9 = [v6 numberWithFloat:v8];
  longValue = [v9 longValue];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", OCXValidateST_PositiveCoordinate(longValue)];
  [toCopy writeOAAttribute:@"blurRad" content:v11];

  v12 = MEMORY[0x277CCABB0];
  [baseCopy distance];
  *&v14 = v13 * 12700.0;
  v15 = [v12 numberWithFloat:v14];
  longValue2 = [v15 longValue];

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", OCXValidateST_PositiveCoordinate(longValue2)];
  [toCopy writeOAAttribute:@"dist" content:v17];

  v18 = MEMORY[0x277CCABB0];
  [baseCopy angle];
  *&v20 = v19 * 60000.0;
  v21 = [v18 numberWithFloat:v20];
  longValue3 = [v21 longValue];

  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", longValue3];
  [toCopy writeOAAttribute:@"dir" content:v23];

  color = [baseCopy color];
  [OAXColor writeColor:color to:toCopy];
}

@end