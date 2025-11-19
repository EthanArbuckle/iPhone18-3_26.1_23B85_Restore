@interface OAXEffect
+ (BOOL)isEmpty:(id)a3;
+ (id)presetShadowTypeEnumMap;
+ (id)readEffectsFromXmlNode:(_xmlNode *)a3 packagePart:(id)a4 drawingState:(id)a5;
+ (id)updateIncomingEffects:(id)a3;
+ (id)updateOutgoingEffects:(id)a3;
+ (void)readGlow:(id)a3 fromXmlNode:(_xmlNode *)a4;
+ (void)readOuterShadow:(id)a3 fromXmlNode:(_xmlNode *)a4;
+ (void)readPresetShadow:(id)a3 fromXmlNode:(_xmlNode *)a4;
+ (void)readReflection:(id)a3 fromXmlNode:(_xmlNode *)a4;
+ (void)readShadow:(id)a3 fromXmlNode:(_xmlNode *)a4;
+ (void)writeGlow:(id)a3 to:(id)a4;
+ (void)writeOuterShadow:(id)a3 includeRotateWithShape:(BOOL)a4 to:(id)a5;
+ (void)writePresetShadow:(id)a3 to:(id)a4;
+ (void)writeReflection:(id)a3 to:(id)a4;
+ (void)writeShadowBase:(id)a3 to:(id)a4;
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

+ (id)readEffectsFromXmlNode:(_xmlNode *)a3 packagePart:(id)a4 drawingState:(id)a5
{
  v13 = a4;
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = OCXFirstChild(a3); i; i = OCXNextSibling(i))
  {
    if (i->type != XML_ELEMENT_NODE)
    {
      continue;
    }

    if (xmlStrEqual(i->name, "outerShdw"))
    {
      v11 = objc_alloc_init(OADOuterShadowEffect);
      [a1 readOuterShadow:v11 fromXmlNode:i];
      [v9 addObject:v11];
    }

    else if (xmlStrEqual(i->name, "prstShdw"))
    {
      v11 = objc_alloc_init(OADPresetShadowEffect);
      [a1 readPresetShadow:v11 fromXmlNode:i];
      [v9 addObject:v11];
    }

    else if (xmlStrEqual(i->name, "reflection"))
    {
      v11 = objc_alloc_init(OADReflectionEffect);
      [a1 readReflection:v11 fromXmlNode:i];
      [v9 addObject:v11];
    }

    else if (xmlStrEqual(i->name, "glow"))
    {
      v11 = objc_alloc_init(OADGlowEffect);
      [a1 readGlow:v11 fromXmlNode:i];
      [v9 addObject:v11];
    }

    else
    {
      if (!xmlStrEqual(i->name, "fillOverlay"))
      {
        continue;
      }

      v11 = [OAXFillOverlayEffect readFromXmlNode:i packagePart:v13 drawingState:v8];
      [v9 addObject:v11];
    }
  }

  return v9;
}

+ (BOOL)isEmpty:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v3;
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

+ (void)readShadow:(id)a3 fromXmlNode:(_xmlNode *)a4
{
  v5 = a3;
  v12 = 0;
  if (CXOptionalLongAttribute(a4, CXNoNamespace, "blurRad", &v12))
  {
    v6 = v12 / 12700.0;
    *&v6 = v6;
    [v5 setBlurRadius:v6];
  }

  v11 = 0;
  if (CXOptionalLongAttribute(a4, CXNoNamespace, "dist", &v11))
  {
    v7 = v11 / 12700.0;
    *&v7 = v7;
    [v5 setDistance:v7];
  }

  v10 = 0;
  if (CXOptionalLongAttribute(a4, CXNoNamespace, "dir", &v10))
  {
    v8 = v10 / 60000.0;
    *&v8 = v8;
    [v5 setAngle:v8];
  }

  v9 = [OAXColor readColorFromParentXmlNode:a4];
  [v5 setColor:v9];
}

+ (void)readOuterShadow:(id)a3 fromXmlNode:(_xmlNode *)a4
{
  v6 = a3;
  [a1 readShadow:v6 fromXmlNode:a4];
  v16 = 0.0;
  if (CXOptionalFractionAttribute(a4, CXNoNamespace, "sx", &v16))
  {
    HIDWORD(v7) = HIDWORD(v16);
    *&v7 = v16;
    [v6 setXScale:v7];
  }

  v15 = 0.0;
  if (CXOptionalFractionAttribute(a4, CXNoNamespace, "sy", &v15))
  {
    HIDWORD(v8) = HIDWORD(v15);
    *&v8 = v15;
    [v6 setYScale:v8];
  }

  v14 = 0;
  if (CXOptionalLongAttribute(a4, CXNoNamespace, "kx", &v14))
  {
    v9 = v14 / 60000.0;
    *&v9 = v9;
    [v6 setXSkew:v9];
  }

  v13 = 0;
  if (CXOptionalLongAttribute(a4, CXNoNamespace, "ky", &v13))
  {
    v10 = v13 / 60000.0;
    *&v10 = v10;
    [v6 setYSkew:v10];
  }

  v11 = [OAXBaseTypes readRectAlignmentFromXmlNode:a4 name:"algn"];
  if (v11)
  {
    [v6 setAlignment:v11];
  }

  v12 = 0;
  if (CXOptionalBoolAttribute(a4, CXNoNamespace, "rotWithShape", &v12))
  {
    [v6 setRotateWithShape:v12];
  }
}

+ (void)writeOuterShadow:(id)a3 includeRotateWithShape:(BOOL)a4 to:(id)a5
{
  v6 = a4;
  v34 = a3;
  v8 = a5;
  v9 = MEMORY[0x277CCABB0];
  [v34 xScale];
  *&v11 = v10 * 100000.0;
  v12 = [v9 numberWithFloat:v11];
  v13 = [v12 longValue];

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v13];
  [v8 writeOAAttribute:@"sx" content:v14];

  v15 = MEMORY[0x277CCABB0];
  [v34 yScale];
  *&v17 = v16 * 100000.0;
  v18 = [v15 numberWithFloat:v17];
  v19 = [v18 longValue];

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v19];
  [v8 writeOAAttribute:@"sy" content:v20];

  v21 = MEMORY[0x277CCABB0];
  [v34 xSkew];
  *&v23 = v22 * 60000.0;
  v24 = [v21 numberWithFloat:v23];
  v25 = [v24 longValue];

  v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v25];
  [v8 writeOAAttribute:@"kx" content:v26];

  v27 = MEMORY[0x277CCABB0];
  [v34 ySkew];
  *&v29 = v28 * 60000.0;
  v30 = [v27 numberWithFloat:v29];
  v31 = [v30 longValue];

  v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v31];
  [v8 writeOAAttribute:@"ky" content:v32];

  +[OAXBaseTypes writeRectAlignment:to:](OAXBaseTypes, "writeRectAlignment:to:", [v34 alignment], v8);
  if (v6)
  {
    if ([v34 rotateWithShape])
    {
      v33 = @"1";
    }

    else
    {
      v33 = @"0";
    }

    [v8 writeOAAttribute:@"rotWithShape" content:v33];
  }

  [a1 writeShadowBase:v34 to:v8];
}

+ (void)readPresetShadow:(id)a3 fromXmlNode:(_xmlNode *)a4
{
  v9 = a3;
  [a1 readShadow:? fromXmlNode:?];
  v6 = CXDefaultStringAttribute(a4, CXNoNamespace, "prst", 0);
  if (v6)
  {
    v7 = [a1 presetShadowTypeEnumMap];
    v8 = [v7 valueForString:v6];

    if (v8 != -130883970)
    {
      [v9 setPresetShadowType:v8];
    }
  }
}

+ (void)writePresetShadow:(id)a3 to:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [a1 presetShadowTypeEnumMap];
  v8 = [v7 stringForValue:{objc_msgSend(v9, "presetShadowType")}];

  [v6 writeOAAttribute:@"prst" content:v8];
  [a1 writeShadowBase:v9 to:v6];
}

+ (void)readReflection:(id)a3 fromXmlNode:(_xmlNode *)a4
{
  v5 = a3;
  v31 = 0;
  if (CXOptionalLongAttribute(a4, CXNoNamespace, "blurRad", &v31))
  {
    v6 = v31 / 12700.0;
    *&v6 = v6;
    [v5 setBlurRadius:v6];
  }

  v30 = 0.0;
  if (CXOptionalFractionAttribute(a4, CXNoNamespace, "stA", &v30))
  {
    HIDWORD(v7) = HIDWORD(v30);
    *&v7 = v30;
    [v5 setStartOpacity:v7];
  }

  v29 = 0.0;
  if (CXOptionalFractionAttribute(a4, CXNoNamespace, "stPos", &v29))
  {
    HIDWORD(v8) = HIDWORD(v29);
    *&v8 = v29;
    [v5 setStartPosition:v8];
  }

  v28 = 0.0;
  if (CXOptionalFractionAttribute(a4, CXNoNamespace, "endA", &v28))
  {
    HIDWORD(v9) = HIDWORD(v28);
    *&v9 = v28;
    [v5 setEndOpacity:v9];
  }

  v27 = 0.0;
  if (CXOptionalFractionAttribute(a4, CXNoNamespace, "endPos", &v27))
  {
    HIDWORD(v10) = HIDWORD(v27);
    *&v10 = v27;
    [v5 setEndPosition:v10];
  }

  v26 = 0;
  if (CXOptionalLongAttribute(a4, CXNoNamespace, "dist", &v26))
  {
    v11 = v26 / 12700.0;
    *&v11 = v11;
    [v5 setDistance:v11];
  }

  v25 = 0;
  if (CXOptionalLongAttribute(a4, CXNoNamespace, "dir", &v25))
  {
    v12 = v25 / 60000.0;
    *&v12 = v12;
    [v5 setDirection:v12];
  }

  v24 = 0;
  if (CXOptionalLongAttribute(a4, CXNoNamespace, "fadeDir", &v24))
  {
    v13 = v24 / 60000.0;
    *&v13 = v13;
    [v5 setFadeDirection:v13];
  }

  v23 = 0.0;
  if (CXOptionalFractionAttribute(a4, CXNoNamespace, "sx", &v23))
  {
    HIDWORD(v14) = HIDWORD(v23);
    *&v14 = v23;
    [v5 setXScale:v14];
  }

  v22 = 0.0;
  if (CXOptionalFractionAttribute(a4, CXNoNamespace, "sy", &v22))
  {
    HIDWORD(v15) = HIDWORD(v22);
    *&v15 = v22;
    [v5 setYScale:v15];
  }

  v21 = 0;
  if (CXOptionalLongAttribute(a4, CXNoNamespace, "kx", &v21))
  {
    v16 = v21 / 60000.0;
    *&v16 = v16;
    [v5 setXSkew:v16];
  }

  v20 = 0;
  if (CXOptionalLongAttribute(a4, CXNoNamespace, "ky", &v20))
  {
    v17 = v20 / 60000.0;
    *&v17 = v17;
    [v5 setYSkew:v17];
  }

  v18 = [OAXBaseTypes readRectAlignmentFromXmlNode:a4 name:"algn"];
  if (v18)
  {
    [v5 setAlignment:v18];
  }

  v19 = 0;
  if (CXOptionalBoolAttribute(a4, CXNoNamespace, "rotWithShape", &v19))
  {
    [v5 setRotateWithShape:v19];
  }
}

+ (void)writeReflection:(id)a3 to:(id)a4
{
  v79 = a3;
  v5 = a4;
  v6 = MEMORY[0x277CCABB0];
  [v79 blurRadius];
  *&v8 = v7 * 12700.0;
  v9 = [v6 numberWithFloat:v8];
  v10 = [v9 longValue];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v10];
  [v5 writeOAAttribute:@"blurRad" content:v11];

  v12 = MEMORY[0x277CCABB0];
  [v79 startOpacity];
  *&v14 = v13 * 100000.0;
  v15 = [v12 numberWithFloat:v14];
  v16 = [v15 longValue];

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v16];
  [v5 writeOAAttribute:@"stA" content:v17];

  v18 = MEMORY[0x277CCABB0];
  [v79 startPosition];
  *&v20 = v19 * 100000.0;
  v21 = [v18 numberWithFloat:v20];
  v22 = [v21 longValue];

  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v22];
  [v5 writeOAAttribute:@"stPos" content:v23];

  v24 = MEMORY[0x277CCABB0];
  [v79 endOpacity];
  *&v26 = v25 * 100000.0;
  v27 = [v24 numberWithFloat:v26];
  v28 = [v27 longValue];

  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v28];
  [v5 writeOAAttribute:@"endA" content:v29];

  v30 = MEMORY[0x277CCABB0];
  [v79 endPosition];
  *&v32 = v31 * 100000.0;
  v33 = [v30 numberWithFloat:v32];
  v34 = [v33 longValue];

  v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v34];
  [v5 writeOAAttribute:@"endPos" content:v35];

  v36 = MEMORY[0x277CCABB0];
  [v79 distance];
  *&v38 = v37 * 12700.0;
  v39 = [v36 numberWithFloat:v38];
  v40 = [v39 longValue];

  v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v40];
  [v5 writeOAAttribute:@"dist" content:v41];

  v42 = MEMORY[0x277CCABB0];
  [v79 direction];
  *&v44 = v43 * 60000.0;
  v45 = [v42 numberWithFloat:v44];
  v46 = [v45 longValue];

  v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v46];
  [v5 writeOAAttribute:@"dir" content:v47];

  v48 = MEMORY[0x277CCABB0];
  [v79 fadeDirection];
  *&v50 = v49 * 60000.0;
  v51 = [v48 numberWithFloat:v50];
  v52 = [v51 longValue];

  v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v52];
  [v5 writeOAAttribute:@"fadeDir" content:v53];

  v54 = MEMORY[0x277CCABB0];
  [v79 xScale];
  *&v56 = v55 * 100000.0;
  v57 = [v54 numberWithFloat:v56];
  v58 = [v57 longValue];

  v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v58];
  [v5 writeOAAttribute:@"sx" content:v59];

  v60 = MEMORY[0x277CCABB0];
  [v79 yScale];
  *&v62 = v61 * 100000.0;
  v63 = [v60 numberWithFloat:v62];
  v64 = [v63 longValue];

  v65 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v64];
  [v5 writeOAAttribute:@"sy" content:v65];

  v66 = MEMORY[0x277CCABB0];
  [v79 xSkew];
  *&v68 = v67 * 60000.0;
  v69 = [v66 numberWithFloat:v68];
  v70 = [v69 longValue];

  v71 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v70];
  [v5 writeOAAttribute:@"kx" content:v71];

  v72 = MEMORY[0x277CCABB0];
  [v79 ySkew];
  *&v74 = v73 * 60000.0;
  v75 = [v72 numberWithFloat:v74];
  v76 = [v75 longValue];

  v77 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v76];
  [v5 writeOAAttribute:@"ky" content:v77];

  +[OAXBaseTypes writeRectAlignment:to:](OAXBaseTypes, "writeRectAlignment:to:", [v79 alignment], v5);
  if ([v79 rotateWithShape])
  {
    v78 = @"1";
  }

  else
  {
    v78 = @"0";
  }

  [v5 writeOAAttribute:@"rotWithShape" content:v78];
}

+ (void)readGlow:(id)a3 fromXmlNode:(_xmlNode *)a4
{
  v7 = a3;
  v5 = CXDefaultLongAttribute(a4, CXNoNamespace, "rad", 0) / 12700.0;
  *&v5 = v5;
  [v7 setRadius:v5];
  v6 = [OAXColor readColorFromParentXmlNode:a4];
  if (!v6)
  {
    [TCMessageException raise:OABadFormat];
  }

  [v7 setColor:v6];
}

+ (void)writeGlow:(id)a3 to:(id)a4
{
  v13 = a3;
  v5 = a4;
  v6 = MEMORY[0x277CCABB0];
  [v13 radius];
  *&v8 = v7 * 12700.0;
  v9 = [v6 numberWithFloat:v8];
  v10 = [v9 longValue];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v10];
  [v5 writeOAAttribute:@"rad" content:v11];

  v12 = [v13 color];
  [OAXColor writeColor:v12 to:v5];
}

+ (id)updateIncomingEffects:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
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

+ (id)updateOutgoingEffects:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
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

+ (void)writeShadowBase:(id)a3 to:(id)a4
{
  v25 = a3;
  v5 = a4;
  v6 = MEMORY[0x277CCABB0];
  [v25 blurRadius];
  *&v8 = v7 * 12700.0;
  v9 = [v6 numberWithFloat:v8];
  v10 = [v9 longValue];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", OCXValidateST_PositiveCoordinate(v10)];
  [v5 writeOAAttribute:@"blurRad" content:v11];

  v12 = MEMORY[0x277CCABB0];
  [v25 distance];
  *&v14 = v13 * 12700.0;
  v15 = [v12 numberWithFloat:v14];
  v16 = [v15 longValue];

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", OCXValidateST_PositiveCoordinate(v16)];
  [v5 writeOAAttribute:@"dist" content:v17];

  v18 = MEMORY[0x277CCABB0];
  [v25 angle];
  *&v20 = v19 * 60000.0;
  v21 = [v18 numberWithFloat:v20];
  v22 = [v21 longValue];

  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v22];
  [v5 writeOAAttribute:@"dir" content:v23];

  v24 = [v25 color];
  [OAXColor writeColor:v24 to:v5];
}

@end