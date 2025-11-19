@interface PXAnimation
+ (BOOL)readOptionalStringAttribute:(id)a3 fromNode:(_xmlNode *)a4 attributeMap:(id)a5 toPDDomValue:(unint64_t *)a6;
+ (id)chartBuildStepMap;
+ (id)chartTypeMap;
+ (id)newShapeTarget:(_xmlNode *)a3 drawingState:(id)a4;
+ (id)newTarget:(_xmlNode *)a3 drawingState:(id)a4;
+ (id)presetClassMap;
+ (id)readAnimVariant:(_xmlNode *)a3 drawingState:(id)a4;
+ (id)readGraphicBuild:(_xmlNode *)a3 drawingState:(id)a4;
+ (id)readOleChartBuild:(_xmlNode *)a3;
+ (id)readParagraphBuild:(_xmlNode *)a3;
+ (id)restartTypeMap;
+ (id)sequentialNextActionMap;
+ (id)sequentialPreviousActionMap;
+ (id)timeNodeFillTypeMap;
+ (id)timeNodeTypeMap;
+ (id)triggerEventMap;
+ (int)readChartBuildType:(id)a3;
+ (void)readAnimAudioElement:(_xmlNode *)a3 timeNode:(id)a4 drawingState:(id)a5;
+ (void)readAnimCmdElement:(_xmlNode *)a3 timeNode:(id)a4 drawingState:(id)a5;
+ (void)readAnimEffectElement:(_xmlNode *)a3 timeNode:(id)a4 drawingState:(id)a5;
+ (void)readAnimElement:(_xmlNode *)a3 timeNode:(id)a4 drawingState:(id)a5;
+ (void)readAnimMotionElement:(_xmlNode *)a3 timeNode:(id)a4 drawingState:(id)a5;
+ (void)readAnimParallelElement:(_xmlNode *)a3 timeNode:(id)a4 drawingState:(id)a5;
+ (void)readAnimRotationElement:(_xmlNode *)a3 timeNode:(id)a4 drawingState:(id)a5;
+ (void)readAnimScaleElement:(_xmlNode *)a3 timeNode:(id)a4 drawingState:(id)a5;
+ (void)readAnimSequentialElement:(_xmlNode *)a3 timeNode:(id)a4 drawingState:(id)a5;
+ (void)readAnimSetElement:(_xmlNode *)a3 timeNode:(id)a4 drawingState:(id)a5;
+ (void)readAnimVideoElement:(_xmlNode *)a3 timeNode:(id)a4 drawingState:(id)a5;
+ (void)readAnimationFromTimingXmlNode:(_xmlNode *)a3 tgtAnimation:(id)a4 drawingState:(id)a5;
+ (void)readChartBuildStep:(id)a3 chartTarget:(id)a4;
+ (void)readChartType:(id)a3 oleChartTarget:(id)a4;
+ (void)readChildTimeNodeList:(_xmlNode *)a3 commonTimeNodeData:(id)a4 drawingState:(id)a5;
+ (void)readCommonBehaviorData:(_xmlNode *)a3 tgtCommonBehaviorData:(id)a4 drawingState:(id)a5;
+ (void)readCommonMediaNodeData:(_xmlNode *)a3 commonMediaData:(id)a4 drawingState:(id)a5;
+ (void)readCommonTimeNodeData:(_xmlNode *)a3 commonTimeNodeData:(id)a4 drawingState:(id)a5;
+ (void)readCondition:(_xmlNode *)a3 timeCondition:(id)a4 drawingState:(id)a5;
+ (void)readConditionList:(_xmlNode *)a3 arrayOfConditions:(id)a4 drawingState:(id)a5;
+ (void)readIterate:(_xmlNode *)a3 commonTimeNodeData:(id)a4 drawingState:(id)a5;
+ (void)readPresetClass:(id)a3 commonTimeNodeData:(id)a4;
+ (void)readRestartType:(id)a3 commonTimeNodeData:(id)a4;
+ (void)readStConditionList:(_xmlNode *)a3 commonTimeNodeData:(id)a4 drawingState:(id)a5;
+ (void)readTimeNodeType:(id)a3 commonTimeNodeData:(id)a4;
+ (void)readTriggerEvent:(id)a3 timeCondition:(id)a4;
+ (void)writeAnimationFromSlideBase:(id)a3 to:(id)a4 state:(id)a5;
@end

@implementation PXAnimation

+ (void)readAnimationFromTimingXmlNode:(_xmlNode *)a3 tgtAnimation:(id)a4 drawingState:(id)a5
{
  v31 = a4;
  v7 = a5;
  v8 = v7;
  if (a3)
  {
    v9 = [v7 client];
    v10 = [v9 presentationState];

    v11 = [v10 PXPresentationMLNamespace];
    v12 = OCXFindChild(a3, v11, "tnLst");

    if (v12)
    {
      v13 = [v10 PXPresentationMLNamespace];
      v14 = OCXFindChild(v12, v13, "par");

      if (v14)
      {
        v15 = [v10 PXPresentationMLNamespace];
        v16 = OCXFindChild(v14, v15, "cTn");

        if (v16)
        {
          v17 = CXDefaultStringAttribute(v16, CXNoNamespace, "nodeType", 0);
          v18 = v17;
          if (v17 && [v17 isEqualToString:@"tmRoot"])
          {
            v19 = [v31 addRootTimeNode];
            [a1 readCommonTimeNodeData:v16 commonTimeNodeData:v19 drawingState:v8];
          }
        }
      }
    }

    v20 = [v10 PXPresentationMLNamespace];
    v21 = OCXFindChild(a3, v20, "bldLst");

    if (v21)
    {
      v30 = v10;
      v32 = objc_alloc_init(OITSUNoCopyDictionary);
      for (i = OCXFirstChild(v21); ; i = OCXNextSibling(i))
      {
        if (!i)
        {
          [v31 setBuildMap:v32];

          v10 = v30;
          goto LABEL_30;
        }

        if (i->type == XML_ELEMENT_NODE)
        {
          break;
        }

LABEL_27:
        ;
      }

      v23 = CXRequiredLongAttribute(i, CXNoNamespace, "spid");
      v24 = CXDefaultStringAttribute(i, CXNoNamespace, "grpId", 0);
      v25 = [v8 drawableForShapeId:v23];
      if (xmlStrEqual(i->name, "bldP"))
      {
        v26 = [a1 readParagraphBuild:i];
      }

      else if (xmlStrEqual(i->name, "bldDgm"))
      {
        v26 = objc_alloc_init(PDDiagramBuild);
      }

      else if (xmlStrEqual(i->name, "bldOleChart"))
      {
        v26 = [a1 readOleChartBuild:i];
      }

      else
      {
        if (!xmlStrEqual(i->name, "bldGraphic"))
        {
          v27 = 0;
LABEL_26:

          goto LABEL_27;
        }

        v26 = [a1 readGraphicBuild:i drawingState:v8];
      }

      v27 = v26;
      if (v25)
      {
        v28 = v26 == 0;
      }

      else
      {
        v28 = 1;
      }

      if (!v28)
      {
        v29 = [[PDBuildMapKey alloc] initWithDrawable:v25 groupId:v24];
        [(OITSUNoCopyDictionary *)v32 setObject:v27 forUncopiedKey:v29];
      }

      goto LABEL_26;
    }

LABEL_30:
  }
}

+ (void)writeAnimationFromSlideBase:(id)a3 to:(id)a4 state:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v17 animation];
  v11 = [v10 rootTimeNode];

  if (v11)
  {
    [v8 startElement:@"timing"];
    v12 = [[PXAnimationWriteState alloc] initWithWriteState:v9 file:v8];
    [a1 writeTimeList:v11 state:v12];
    v13 = [v17 animation];
    v14 = [v13 buildMap];

    if (v14)
    {
      v15 = [v17 animation];
      v16 = [v15 buildMap];
      [a1 writeBuildList:v16 state:v12];
    }

    [v8 endElement];
  }
}

+ (id)timeNodeFillTypeMap
{
  {
    +[PXAnimation(Private) timeNodeFillTypeMap];
  }

  if (+[PXAnimation(Private) timeNodeFillTypeMap]::onceToken != -1)
  {
    +[PXAnimation(Private) timeNodeFillTypeMap];
  }

  v2 = +[PXAnimation(Private) timeNodeFillTypeMap]::sEnumerationMap;

  return v2;
}

void __43__PXAnimation_Private__timeNodeFillTypeMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[PXAnimation(Private) timeNodeFillTypeMap]::sTimeNodeFillTypeStructs count:4 caseSensitive:1];
  v1 = +[PXAnimation(Private) timeNodeFillTypeMap]::sEnumerationMap;
  +[PXAnimation(Private) timeNodeFillTypeMap]::sEnumerationMap = v0;
}

+ (BOOL)readOptionalStringAttribute:(id)a3 fromNode:(_xmlNode *)a4 attributeMap:(id)a5 toPDDomValue:(unint64_t *)a6
{
  v9 = a3;
  v10 = a5;
  v17 = 0;
  v11 = CXOptionalStringAttribute(a4, CXNoNamespace, [v9 UTF8String], &v17);
  v12 = v17;
  if (v11)
  {
    v13 = [v10 valueForString:v12];
    LOBYTE(v11) = v13 != -130883970;
    if (v13 == -130883970)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PXAnimation(Private) readOptionalStringAttribute:fromNode:attributeMap:toPDDomValue:]"];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/PowerPoint/Xml/PXAnimation.mm"];
      [OITSUAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:365 isFatal:0 description:"Located attribute for element but failed to resolve mapping %@ to %@", v9, v12];

      +[OITSUAssertionHandler logBacktraceThrottled];
    }

    *a6 = v13;
  }

  return v11;
}

+ (void)readCommonTimeNodeData:(_xmlNode *)a3 commonTimeNodeData:(id)a4 drawingState:(id)a5
{
  v8 = a4;
  v9 = a5;
  v38 = 0;
  v37 = 0;
  v10 = CXOptionalStringAttribute(a3, CXNoNamespace, "nodeType", &v37);
  v11 = v37;
  if (v10)
  {
    [a1 readTimeNodeType:v11 commonTimeNodeData:v8];
  }

  v36 = 0;
  v12 = CXOptionalStringAttribute(a3, CXNoNamespace, "presetClass", &v36);
  v13 = v36;
  if (v12)
  {
    [a1 readPresetClass:v13 commonTimeNodeData:v8];
  }

  if (CXOptionalLongAttribute(a3, CXNoNamespace, "presetSubtype", &v38))
  {
    [v8 setPresetSubType:v38];
  }

  if (CXOptionalLongAttribute(a3, CXNoNamespace, "presetID", &v38))
  {
    [v8 setPresetId:v38];
  }

  v35 = 0;
  v31 = v13;
  v14 = CXOptionalStringAttribute(a3, CXNoNamespace, "grpId", &v35);
  v15 = v35;
  if (v14)
  {
    [v8 setGroupId:v15];
  }

  v34 = 0;
  v30 = v15;
  v16 = CXOptionalStringAttribute(a3, CXNoNamespace, "repeatCount", &v34);
  v17 = v34;
  v18 = v17;
  if (v16)
  {
    v38 = 0;
    if ([v17 isEqualToString:@"indefinite"])
    {
      v19 = -1;
    }

    else
    {
      v19 = [v18 intValue];
    }

    v38 = v19;
    [v8 setRepeatCount:?];
  }

  if (CXOptionalLongAttribute(a3, CXNoNamespace, "repeatDur", &v38))
  {
    [v8 setRepeatDuration:v38];
  }

  v28 = v18;
  v33 = 0;
  v20 = CXOptionalStringAttribute(a3, CXNoNamespace, "restart", &v33);
  v21 = v33;
  if (v20)
  {
    [a1 readRestartType:v21 commonTimeNodeData:{v8, v18, v30, v13}];
  }

  v22 = CXDefaultStringAttribute(a3, CXNoNamespace, "dur", 0);
  v23 = v22;
  if (v22)
  {
    if ([v22 isEqualToString:@"indefinite"])
    {
      v24 = -1;
    }

    else
    {
      v24 = [v23 intValue];
      v38 = v24;
    }

    [v8 setDuration:{v24, v28}];
  }

  if (CXOptionalLongAttribute(a3, CXNoNamespace, "spd", &v38))
  {
    [v8 setSpeed:v38];
  }

  if (CXOptionalLongAttribute(a3, CXNoNamespace, "accel", &v38))
  {
    [v8 setAcceleration:v38];
  }

  if (CXOptionalLongAttribute(a3, CXNoNamespace, "decel", &v38))
  {
    [v8 setDeceleration:v38];
  }

  v32 = 3;
  v25 = [a1 timeNodeFillTypeMap];
  v26 = [a1 readOptionalStringAttribute:@"fill" fromNode:a3 attributeMap:v25 toPDDomValue:&v32];

  if (v26)
  {
    [v8 setFillType:v32];
  }

  for (i = OCXFirstChild(a3); i; i = OCXNextSibling(i))
  {
    if (xmlStrEqual(i->name, "childTnLst"))
    {
      [a1 readChildTimeNodeList:i commonTimeNodeData:v8 drawingState:v9];
    }

    else if (xmlStrEqual(i->name, "iterate"))
    {
      [a1 readIterate:i commonTimeNodeData:v8 drawingState:v9];
    }

    else if (xmlStrEqual(i->name, "stCondLst"))
    {
      [a1 readStConditionList:i commonTimeNodeData:v8 drawingState:v9];
    }
  }
}

+ (id)timeNodeTypeMap
{
  {
    +[PXAnimation(Private) timeNodeTypeMap];
  }

  if (+[PXAnimation(Private) timeNodeTypeMap]::onceToken != -1)
  {
    +[PXAnimation(Private) timeNodeTypeMap];
  }

  v2 = +[PXAnimation(Private) timeNodeTypeMap]::sEnumerationMap;

  return v2;
}

void __39__PXAnimation_Private__timeNodeTypeMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[PXAnimation(Private) timeNodeTypeMap]::sTimeNodeTypeMapStructs count:9 caseSensitive:1];
  v1 = +[PXAnimation(Private) timeNodeTypeMap]::sEnumerationMap;
  +[PXAnimation(Private) timeNodeTypeMap]::sEnumerationMap = v0;
}

+ (void)readTimeNodeType:(id)a3 commonTimeNodeData:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [a1 timeNodeTypeMap];
  v8 = [v7 valueForString:v9];

  if (v8 != -130883970)
  {
    [v6 setType:v8];
  }
}

+ (id)presetClassMap
{
  {
    +[PXAnimation(Private) presetClassMap];
  }

  if (+[PXAnimation(Private) presetClassMap]::onceToken != -1)
  {
    +[PXAnimation(Private) presetClassMap];
  }

  v2 = +[PXAnimation(Private) presetClassMap]::sEnumerationMap;

  return v2;
}

void __38__PXAnimation_Private__presetClassMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[PXAnimation(Private) presetClassMap]::sPresetClassStructs count:6 caseSensitive:1];
  v1 = +[PXAnimation(Private) presetClassMap]::sEnumerationMap;
  +[PXAnimation(Private) presetClassMap]::sEnumerationMap = v0;
}

+ (void)readPresetClass:(id)a3 commonTimeNodeData:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [a1 presetClassMap];
  v8 = [v7 valueForString:v9];

  if (v8 != -130883970)
  {
    [v6 setAnimationPresetClass:v8];
  }
}

+ (id)restartTypeMap
{
  {
    +[PXAnimation(Private) restartTypeMap];
  }

  if (+[PXAnimation(Private) restartTypeMap]::onceToken != -1)
  {
    +[PXAnimation(Private) restartTypeMap];
  }

  v2 = +[PXAnimation(Private) restartTypeMap]::sEnumerationMap;

  return v2;
}

void __38__PXAnimation_Private__restartTypeMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[PXAnimation(Private) restartTypeMap]::sRestartTypeStructs count:3 caseSensitive:1];
  v1 = +[PXAnimation(Private) restartTypeMap]::sEnumerationMap;
  +[PXAnimation(Private) restartTypeMap]::sEnumerationMap = v0;
}

+ (void)readRestartType:(id)a3 commonTimeNodeData:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [a1 restartTypeMap];
  v8 = [v7 valueForString:v9];

  if (v8 != -130883970)
  {
    [v6 setRestartType:v8];
  }
}

+ (void)readChildTimeNodeList:(_xmlNode *)a3 commonTimeNodeData:(id)a4 drawingState:(id)a5
{
  v14 = a4;
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = OCXFirstChild(a3);
  v11 = 0;
  while (v10)
  {
    if (xmlStrEqual(v10->name, "anim"))
    {
      v12 = objc_alloc_init(PDTimeNodeUnion);

      [a1 readAnimElement:v10 timeNode:v12 drawingState:v8];
      [v9 addObject:v12];
LABEL_11:

      v13 = 0;
      goto LABEL_12;
    }

    if (xmlStrEqual(v10->name, "animEffect"))
    {
      v12 = objc_alloc_init(PDTimeNodeUnion);

      [a1 readAnimEffectElement:v10 timeNode:v12 drawingState:v8];
      [v9 addObject:v12];
      goto LABEL_11;
    }

    if (xmlStrEqual(v10->name, "animMotion"))
    {
      v12 = objc_alloc_init(PDTimeNodeUnion);

      [a1 readAnimMotionElement:v10 timeNode:v12 drawingState:v8];
      [v9 addObject:v12];
      goto LABEL_11;
    }

    if (xmlStrEqual(v10->name, "animRot"))
    {
      v12 = objc_alloc_init(PDTimeNodeUnion);

      [a1 readAnimRotationElement:v10 timeNode:v12 drawingState:v8];
      [v9 addObject:v12];
      goto LABEL_11;
    }

    if (xmlStrEqual(v10->name, "animScale"))
    {
      v13 = objc_alloc_init(PDTimeNodeUnion);

      [a1 readAnimScaleElement:v10 timeNode:v13 drawingState:v8];
      [v9 addObject:v13];
    }

    else
    {
      if (xmlStrEqual(v10->name, "audio"))
      {
        v12 = objc_alloc_init(PDTimeNodeUnion);

        [a1 readAnimAudioElement:v10 timeNode:v12 drawingState:v8];
        [v9 addObject:v12];
        goto LABEL_11;
      }

      if (xmlStrEqual(v10->name, "video"))
      {
        v12 = objc_alloc_init(PDTimeNodeUnion);

        [a1 readAnimVideoElement:v10 timeNode:v12 drawingState:v8];
        [v9 addObject:v12];
        goto LABEL_11;
      }

      if (xmlStrEqual(v10->name, "cmd"))
      {
        v12 = objc_alloc_init(PDTimeNodeUnion);

        [a1 readAnimCmdElement:v10 timeNode:v12 drawingState:v8];
        [v9 addObject:v12];
        goto LABEL_11;
      }

      if (xmlStrEqual(v10->name, "par"))
      {
        v13 = objc_alloc_init(PDTimeNodeUnion);

        [a1 readAnimParallelElement:v10 timeNode:v13 drawingState:v8];
        [v9 addObject:v13];
      }

      else
      {
        if (xmlStrEqual(v10->name, "seq"))
        {
          v12 = objc_alloc_init(PDTimeNodeUnion);

          [a1 readAnimSequentialElement:v10 timeNode:v12 drawingState:v8];
          [v9 addObject:v12];
          goto LABEL_11;
        }

        if (xmlStrEqual(v10->name, "set"))
        {
          v12 = objc_alloc_init(PDTimeNodeUnion);

          [a1 readAnimSetElement:v10 timeNode:v12 drawingState:v8];
          [v9 addObject:v12];
          goto LABEL_11;
        }

        v13 = v11;
      }
    }

LABEL_12:
    v11 = v13;
    v10 = OCXNextSibling(v10);
  }

  [v14 setChildTimeNodeList:v9];
}

+ (void)readIterate:(_xmlNode *)a3 commonTimeNodeData:(id)a4 drawingState:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = objc_alloc_init(PDIterate);
  v22 = 0;
  v10 = CXOptionalStringAttribute(a3, CXNoNamespace, "type", &v22);
  v11 = v22;
  if (!v10)
  {
    v17 = 0;
    goto LABEL_16;
  }

  v12 = [v8 client];
  v13 = [v12 presentationState];

  v14 = [v13 PXPresentationMLNamespace];
  v15 = OCXFindChild(a3, v14, "tmPct");

  if (v15)
  {
    v21 = 0;
    v16 = &v21;
    CXOptionalStringAttribute(v15, CXNoNamespace, "val", &v21);
LABEL_7:
    v19 = *v16;
    goto LABEL_8;
  }

  v18 = [v13 PXPresentationMLNamespace];
  v19 = OCXFindChild(a3, v18, "tmAbs");

  if (v19)
  {
    v20 = 0;
    v16 = &v20;
    CXOptionalStringAttribute(v19, CXNoNamespace, "val", &v20);
    goto LABEL_7;
  }

LABEL_8:
  if ([(_xmlNode *)v19 intValue]< 1)
  {
    v17 = 0;
  }

  else if ([v11 isEqualToString:@"wd"])
  {
    v17 = 1;
  }

  else if ([v11 isEqualToString:@"lt"])
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

LABEL_16:
  [(PDIterate *)v9 setType:v17];
  [v7 setIterate:v9];
}

+ (void)readConditionList:(_xmlNode *)a3 arrayOfConditions:(id)a4 drawingState:(id)a5
{
  v11 = a4;
  v8 = a5;
  for (i = OCXFirstChild(a3); i; i = OCXNextSibling(i))
  {
    if (xmlStrEqual(i->name, "cond"))
    {
      v10 = objc_alloc_init(PDTimeCondition);
      [a1 readCondition:i timeCondition:v10 drawingState:v8];
      [v11 addObject:v10];
    }
  }
}

+ (void)readStConditionList:(_xmlNode *)a3 commonTimeNodeData:(id)a4 drawingState:(id)a5
{
  v10 = a4;
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [a1 readConditionList:a3 arrayOfConditions:v9 drawingState:v8];
  [v10 setStartTimeConditions:v9];
}

+ (void)readCondition:(_xmlNode *)a3 timeCondition:(id)a4 drawingState:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = CXDefaultStringAttribute(a3, CXNoNamespace, "delay", 0);
  v11 = v10;
  if (v10)
  {
    if ([v10 isEqualToString:@"indefinite"])
    {
      v12 = 0xFFFFFFFFLL;
    }

    else
    {
      v12 = [v11 intValue];
    }

    [v8 setDelay:v12];
  }

  v20 = 0;
  v13 = CXOptionalStringAttribute(a3, CXNoNamespace, "evt", &v20);
  v14 = v20;
  if (v13)
  {
    [a1 readTriggerEvent:v14 timeCondition:v8];
  }

  v15 = [v9 client];
  v16 = [v15 presentationState];

  v17 = [v16 PXPresentationMLNamespace];
  v18 = OCXFindChild(a3, v17, "tgtEl");

  if (v18)
  {
    v19 = [a1 newTarget:v18 drawingState:v9];
    [v8 setTarget:v19];
  }
}

+ (id)triggerEventMap
{
  {
    +[PXAnimation(Private) triggerEventMap];
  }

  if (+[PXAnimation(Private) triggerEventMap]::onceToken != -1)
  {
    +[PXAnimation(Private) triggerEventMap];
  }

  v2 = +[PXAnimation(Private) triggerEventMap]::sEnumerationMap;

  return v2;
}

void __39__PXAnimation_Private__triggerEventMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[PXAnimation(Private) triggerEventMap]::sTriggerEventStructs count:10 caseSensitive:1];
  v1 = +[PXAnimation(Private) triggerEventMap]::sEnumerationMap;
  +[PXAnimation(Private) triggerEventMap]::sEnumerationMap = v0;
}

+ (void)readTriggerEvent:(id)a3 timeCondition:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [a1 triggerEventMap];
  v8 = [v7 valueForString:v9];

  if (v8 != -130883970)
  {
    [v6 setTriggerEvent:v8];
  }
}

+ (id)newTarget:(_xmlNode *)a3 drawingState:(id)a4
{
  v6 = a4;
  v7 = [v6 client];
  v8 = [v7 presentationState];

  v9 = [v8 PXPresentationMLNamespace];
  v10 = OCXFindChild(a3, v9, "sldTgt");

  if (v10)
  {
    v11 = off_2799C5828;
LABEL_5:
    v14 = objc_alloc_init(*v11);
LABEL_6:
    v15 = v14;
    goto LABEL_7;
  }

  v12 = [v8 PXPresentationMLNamespace];
  v13 = OCXFindChild(a3, v12, "sndTgt");

  if (v13)
  {
    v11 = off_2799C5808;
    goto LABEL_5;
  }

  v17 = [v8 PXPresentationMLNamespace];
  v18 = OCXFindChild(a3, v17, "spTgt");

  if (v18)
  {
    v14 = [a1 newShapeTarget:v18 drawingState:v6];
    goto LABEL_6;
  }

  v19 = [v8 PXPresentationMLNamespace];
  v20 = OCXFindChild(a3, v19, "inkTgt");

  if (v20)
  {
    v25 = 0;
    v21 = CXOptionalStringAttribute(v20, CXNoNamespace, "spid", &v25);
    v22 = v25;
    if (v21)
    {
      v23 = [v8 oavState];
      v24 = [v23 drawableForVmlShapeId:v22];
      if (v24)
      {
        v15 = objc_alloc_init(PDAnimationShapeTarget);
        [(PDAnimationShapeTarget *)v15 setDrawable:v24];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_7:

  return v15;
}

+ (id)newShapeTarget:(_xmlNode *)a3 drawingState:(id)a4
{
  v6 = a4;
  v7 = [v6 client];
  v8 = [v7 presentationState];

  v37 = -1;
  v9 = [v8 PXPresentationMLNamespace];
  v10 = OCXFindChild(a3, v9, "bg");

  if (v10)
  {
    v11 = off_2799C57F8;
LABEL_3:
    v12 = objc_alloc_init(*v11);
LABEL_4:
    v13 = v12;
    goto LABEL_5;
  }

  v18 = [v8 PXPresentationMLNamespace];
  v19 = OCXFindChild(a3, v18, "graphicEl");

  if (v19)
  {
    v20 = [v6 OAXMainNamespace];
    v21 = OCXFindChild(v19, v20, "dgm");

    if (v21)
    {
      v12 = objc_alloc_init(PDAnimationDiagramTarget);
      goto LABEL_4;
    }

    v26 = [v6 OAXMainNamespace];
    v27 = OCXFindChild(v19, v26, "chart");

    if (v27)
    {
      v13 = objc_alloc_init(PDAnimationChartTarget);
      v36 = 0;
      v28 = CXOptionalStringAttribute(v27, CXNoNamespace, "bldStep", &v36);
      v25 = v36;
      if (v28)
      {
        [a1 readChartBuildStep:v25 chartTarget:v13];
      }

      if (CXOptionalLongAttribute(v27, CXNoNamespace, "categoryIdx", &v37))
      {
        [(PDAnimationChartTarget *)v13 setCatagoryIndex:v37];
      }

      if (CXOptionalLongAttribute(v27, CXNoNamespace, "seriesIdx", &v37))
      {
        [(PDAnimationChartTarget *)v13 setSeriesIndex:v37];
      }

LABEL_23:

      goto LABEL_5;
    }

    v13 = 0;
  }

  else
  {
    v22 = [v8 PXPresentationMLNamespace];
    v23 = OCXFindChild(a3, v22, "oleChartEl");

    if (v23)
    {
      v13 = objc_alloc_init(PDAnimationOleChartTarget);
      if (CXOptionalLongAttribute(v23, CXNoNamespace, "lvl", &v37))
      {
        [(PDAnimationChartTarget *)v13 setLevel:v37];
      }

      v35 = 0;
      v24 = CXOptionalStringAttribute(v23, CXNoNamespace, "type", &v35);
      v25 = v35;
      if (v24)
      {
        [a1 readChartType:v25 oleChartTarget:v13];
      }

      goto LABEL_23;
    }

    v29 = [v8 PXPresentationMLNamespace];
    v30 = OCXFindChild(a3, v29, "txEl");

    if (!v30)
    {
      v11 = off_2799C5800;
      goto LABEL_3;
    }

    v13 = objc_alloc_init(PDAnimationTextTarget);
    v31 = [v8 PXPresentationMLNamespace];
    v32 = OCXFindChild(v30, v31, "charRg");

    if (v32)
    {
      [(PDAnimationChartTarget *)v13 setType:0];
    }

    else
    {
      v33 = [v8 PXPresentationMLNamespace];
      v32 = OCXFindChild(v30, v33, "pRg");

      [(PDAnimationChartTarget *)v13 setType:1];
      if (!v32)
      {
        goto LABEL_5;
      }
    }

    v34 = 0;
    CXOptionalLongAttribute(v32, CXNoNamespace, "st", &v37);
    CXOptionalLongAttribute(v32, CXNoNamespace, "end", &v34);
    [(PDAnimationChartTarget *)v13 setRange:?];
  }

LABEL_5:
  v37 = CXRequiredLongAttribute(a3, CXNoNamespace, "spid");
  v14 = [v6 drawableForShapeId:v37];
  if (!v14)
  {
    v15 = [v6 oavState];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v37];
    v14 = [v15 drawableForVmlShapeId:v16];
  }

  [(PDAnimationShapeTarget *)v13 setDrawable:v14];

  return v13;
}

+ (id)chartBuildStepMap
{
  {
    +[PXAnimation(Private) chartBuildStepMap];
  }

  if (+[PXAnimation(Private) chartBuildStepMap]::onceToken != -1)
  {
    +[PXAnimation(Private) chartBuildStepMap];
  }

  v2 = +[PXAnimation(Private) chartBuildStepMap]::sEnumerationMap;

  return v2;
}

void __41__PXAnimation_Private__chartBuildStepMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[PXAnimation(Private) chartBuildStepMap]::sChartBuildStepStructs count:8 caseSensitive:1];
  v1 = +[PXAnimation(Private) chartBuildStepMap]::sEnumerationMap;
  +[PXAnimation(Private) chartBuildStepMap]::sEnumerationMap = v0;
}

+ (void)readChartBuildStep:(id)a3 chartTarget:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [a1 chartBuildStepMap];
  v8 = [v7 valueForString:v9];

  if (v8 != -130883970)
  {
    [v6 setBuildStep:v8];
  }
}

+ (id)chartTypeMap
{
  {
    +[PXAnimation(Private) chartTypeMap];
  }

  if (+[PXAnimation(Private) chartTypeMap]::onceToken != -1)
  {
    +[PXAnimation(Private) chartTypeMap];
  }

  v2 = +[PXAnimation(Private) chartTypeMap]::sEnumerationMap;

  return v2;
}

void __36__PXAnimation_Private__chartTypeMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[PXAnimation(Private) chartTypeMap]::sChartTypeStructs count:5 caseSensitive:1];
  v1 = +[PXAnimation(Private) chartTypeMap]::sEnumerationMap;
  +[PXAnimation(Private) chartTypeMap]::sEnumerationMap = v0;
}

+ (void)readChartType:(id)a3 oleChartTarget:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [a1 chartTypeMap];
  v8 = [v7 valueForString:v9];

  if (v8 != -130883970)
  {
    [v6 setChartSubElementType:v8];
  }
}

+ (void)readAnimElement:(_xmlNode *)a3 timeNode:(id)a4 drawingState:(id)a5
{
  v15 = a4;
  v8 = a5;
  v9 = objc_alloc_init(PDAnimateTimeBehavior);
  v10 = [v8 client];
  v11 = [v10 presentationState];

  v12 = [v11 PXPresentationMLNamespace];
  v13 = OCXFindChild(a3, v12, "cBhvr");

  if (v13)
  {
    [a1 readCommonBehaviorData:v13 tgtCommonBehaviorData:v9 drawingState:v8];
  }

  v14 = [v11 PXPresentationMLNamespace];
  OCXFindChild(a3, v14, "tavLst");

  [v15 setTimeBehavior:v9];
}

+ (void)readAnimEffectElement:(_xmlNode *)a3 timeNode:(id)a4 drawingState:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(PDAnimateEffectBehavior);
  v11 = [v9 client];
  v12 = [v11 presentationState];

  v13 = [v12 PXPresentationMLNamespace];
  v14 = OCXFindChild(a3, v13, "cBhvr");

  if (v14)
  {
    [a1 readCommonBehaviorData:v14 tgtCommonBehaviorData:v10 drawingState:v9];
  }

  v19 = 0;
  v15 = CXOptionalStringAttribute(a3, CXNoNamespace, "transition", &v19);
  v16 = v19;
  v17 = v16;
  if (v15)
  {
    if ([v16 isEqualToString:@"none"])
    {
      v18 = 0;
    }

    else if ([v17 isEqualToString:@"in"])
    {
      v18 = 1;
    }

    else if ([v17 isEqualToString:@"out"])
    {
      v18 = 2;
    }

    else
    {
      v18 = 0;
    }

    [(PDAnimateEffectBehavior *)v10 setTransition:v18];
  }

  [v8 setEffectBehavior:v10];
}

+ (void)readAnimMotionElement:(_xmlNode *)a3 timeNode:(id)a4 drawingState:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(PDAnimateMotionBehavior);
  v11 = [v9 client];
  v12 = [v11 presentationState];

  v13 = [v12 PXPresentationMLNamespace];
  v14 = OCXFindChild(a3, v13, "cBhvr");

  if (v14)
  {
    [a1 readCommonBehaviorData:v14 tgtCommonBehaviorData:v10 drawingState:v9];
  }

  v28 = 0;
  v15 = CXOptionalStringAttribute(a3, CXNoNamespace, "path", &v28);
  v16 = v28;
  if (v15)
  {
    v17 = [PDAnimateMotionBehavior bezierPathFromNSString:v16];
    [(PDAnimateMotionBehavior *)v10 setPath:v17];
  }

  v26 = 0.0;
  v27 = 0.0;
  v18 = [v12 PXPresentationMLNamespace];
  v19 = OCXFindChild(a3, v18, "by");

  if (v19)
  {
    [a1 readPointFromNode:v19 tgtPoint:&v26];
    [(PDAnimateScaleBehavior *)v10 setBy:v26, v27];
  }

  v20 = [v12 PXPresentationMLNamespace];
  v21 = OCXFindChild(a3, v20, "from");

  if (v21)
  {
    [a1 readPointFromNode:v21 tgtPoint:&v26];
    [(PDAnimateScaleBehavior *)v10 setFrom:v26, v27];
  }

  v22 = [v12 PXPresentationMLNamespace];
  v23 = OCXFindChild(a3, v22, "to");

  if (v23)
  {
    [a1 readPointFromNode:v23 tgtPoint:&v26];
    [(PDAnimateScaleBehavior *)v10 setTo:v26, v27];
  }

  v24 = [v12 PXPresentationMLNamespace];
  v25 = OCXFindChild(a3, v24, "rCtr");

  if (v25)
  {
    [a1 readPointFromNode:v23 tgtPoint:&v26];
    [(PDAnimateMotionBehavior *)v10 setRotationCenter:v26, v27];
  }

  [v8 setMotionBehavior:v10];
}

+ (void)readAnimScaleElement:(_xmlNode *)a3 timeNode:(id)a4 drawingState:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(PDAnimateScaleBehavior);
  v11 = [v9 client];
  v12 = [v11 presentationState];

  v13 = [v12 PXPresentationMLNamespace];
  v14 = OCXFindChild(a3, v13, "cBhvr");

  if (v14)
  {
    [a1 readCommonBehaviorData:v14 tgtCommonBehaviorData:v10 drawingState:v9];
  }

  v15 = [v12 PXPresentationMLNamespace];
  v16 = OCXFindChild(a3, v15, "by");

  if (v16)
  {
    [a1 readPointFromNode:v16 tgtPoint:&v21];
    [(PDAnimateScaleBehavior *)v10 setBy:v21, v22];
  }

  v17 = [v12 PXPresentationMLNamespace];
  v18 = OCXFindChild(a3, v17, "from");

  if (v18)
  {
    [a1 readPointFromNode:v18 tgtPoint:&v21];
    [(PDAnimateScaleBehavior *)v10 setFrom:v21, v22];
  }

  v19 = [v12 PXPresentationMLNamespace];
  v20 = OCXFindChild(a3, v19, "to");

  if (v20)
  {
    [a1 readPointFromNode:v20 tgtPoint:&v21];
    [(PDAnimateScaleBehavior *)v10 setTo:v21, v22];
  }

  [v8 setScaleBehavior:v10];
}

+ (void)readCommonMediaNodeData:(_xmlNode *)a3 commonMediaData:(id)a4 drawingState:(id)a5
{
  v20 = a4;
  v8 = a5;
  v9 = [v8 client];
  v10 = [v9 presentationState];

  v11 = [v10 PXPresentationMLNamespace];
  v12 = OCXFindChild(a3, v11, "cTn");

  if (!v12)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  [a1 readCommonTimeNodeData:v12 commonTimeNodeData:v20 drawingState:v8];
  v13 = [v10 PXPresentationMLNamespace];
  v14 = OCXFindChild(a3, v13, "tgtEl");

  v15 = [a1 newTarget:v14 drawingState:v8];
  v16 = CXDefaultBoolAttribute(a3, CXNoNamespace, "mute", 0);
  v17 = CXDefaultBoolAttribute(a3, CXNoNamespace, "showWhenStopped", 1);
  v18 = CXDefaultLongAttribute(a3, CXNoNamespace, "numSld", 1);
  v19 = CXDefaultFractionAttribute(a3, CXNoNamespace, "vol", 0.5);
  [v20 setTarget:v15];
  [v20 setIsMuted:v16];
  [v20 setIsShowWhenStopped:v17];
  [v20 setNumberOfSlides:v18];
  [v20 setVolume:(v19 * 100000.0)];
}

+ (void)readAnimAudioElement:(_xmlNode *)a3 timeNode:(id)a4 drawingState:(id)a5
{
  v14 = a4;
  v8 = a5;
  v9 = objc_alloc_init(PDAudioNode);
  v10 = [v8 client];
  v11 = [v10 presentationState];

  [(PDAudioNode *)v9 setIsNarration:CXDefaultBoolAttribute(a3, CXNoNamespace, "isNarration", 0)];
  v12 = [v11 PXPresentationMLNamespace];
  v13 = OCXFindChild(a3, v12, "cMediaNode");

  if (v13)
  {
    [a1 readCommonMediaNodeData:v13 commonMediaData:v9 drawingState:v8];
    [v14 setAudio:v9];
  }
}

+ (void)readAnimVideoElement:(_xmlNode *)a3 timeNode:(id)a4 drawingState:(id)a5
{
  v14 = a4;
  v8 = a5;
  v9 = objc_alloc_init(PDVideoNode);
  v10 = [v8 client];
  v11 = [v10 presentationState];

  [(PDVideoNode *)v9 setIsFullScreen:CXDefaultBoolAttribute(a3, CXNoNamespace, "fullScrn", 0)];
  v12 = [v11 PXPresentationMLNamespace];
  v13 = OCXFindChild(a3, v12, "cMediaNode");

  if (v13)
  {
    [a1 readCommonMediaNodeData:v13 commonMediaData:v9 drawingState:v8];
    [v14 setVideo:v9];
  }
}

+ (void)readAnimCmdElement:(_xmlNode *)a3 timeNode:(id)a4 drawingState:(id)a5
{
  v14 = a4;
  v8 = a5;
  v9 = objc_alloc_init(PDCmdBehavior);
  v10 = [v8 client];
  v11 = [v10 presentationState];

  v12 = [v11 PXPresentationMLNamespace];
  v13 = OCXFindChild(a3, v12, "cBhvr");

  if (v13)
  {
    [a1 readCommonBehaviorData:v13 tgtCommonBehaviorData:v9 drawingState:v8];
  }

  [v14 setCmdBehavior:v9];
}

+ (id)readAnimVariant:(_xmlNode *)a3 drawingState:(id)a4
{
  v5 = [a4 client];
  v6 = [v5 presentationState];

  v7 = [v6 PXPresentationMLNamespace];
  v8 = OCXFindChild(a3, v7, "strVal");

  if (v8)
  {
    v21 = 0;
    v9 = CXOptionalStringAttribute(v8, CXNoNamespace, "val", &v21);
    v10 = v21;
    v11 = v10;
    if (v9)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_17;
  }

  v13 = [v6 PXPresentationMLNamespace];
  v14 = OCXFindChild(a3, v13, "BOOLVal");

  if (v14)
  {
    LOBYTE(v20) = 0;
    if (CXOptionalBoolAttribute(v14, CXNoNamespace, "val", &v20))
    {
      v15 = [MEMORY[0x277CCAE60] valueWithBytes:&v20 objCType:"B"];
LABEL_15:
      v12 = v15;
      goto LABEL_17;
    }
  }

  else
  {
    v16 = [v6 PXPresentationMLNamespace];
    v17 = OCXFindChild(a3, v16, "intVal");

    if (v17)
    {
      v20 = 0;
      if (CXOptionalLongAttribute(v17, CXNoNamespace, "val", &v20))
      {
        v15 = [MEMORY[0x277CCAE60] valueWithBytes:&v20 objCType:"q"];
        goto LABEL_15;
      }
    }

    else
    {
      v18 = [v6 PXPresentationMLNamespace];
      v12 = OCXFindChild(a3, v18, "fltVal");

      if (!v12)
      {
        goto LABEL_17;
      }

      v20 = 0;
      if (CXOptionalDoubleAttribute(v12, CXNoNamespace, "val", &v20))
      {
        v15 = [MEMORY[0x277CCAE60] valueWithBytes:&v20 objCType:"d"];
        goto LABEL_15;
      }
    }
  }

  v12 = 0;
LABEL_17:

  return v12;
}

+ (void)readAnimSetElement:(_xmlNode *)a3 timeNode:(id)a4 drawingState:(id)a5
{
  v17 = a4;
  v8 = a5;
  v9 = objc_alloc_init(PDSetBehavior);
  v10 = [v8 client];
  v11 = [v10 presentationState];

  v12 = [v11 PXPresentationMLNamespace];
  v13 = OCXFindChild(a3, v12, "cBhvr");

  if (v13)
  {
    [a1 readCommonBehaviorData:v13 tgtCommonBehaviorData:v9 drawingState:v8];
  }

  v14 = [v11 PXPresentationMLNamespace];
  v15 = OCXFindChild(a3, v14, "to");

  if (v15)
  {
    v16 = [a1 readAnimVariant:v15 drawingState:v8];
    if (v16)
    {
      [(PDSetBehavior *)v9 setValue:v16];
    }
  }

  [v17 setBehavior:v9];
}

+ (void)readAnimRotationElement:(_xmlNode *)a3 timeNode:(id)a4 drawingState:(id)a5
{
  v14 = a4;
  v8 = a5;
  v9 = objc_alloc_init(PDAnimateRotateBehavior);
  v10 = [v8 client];
  v11 = [v10 presentationState];

  v12 = [v11 PXPresentationMLNamespace];
  v13 = OCXFindChild(a3, v12, "cBhvr");

  if (v13)
  {
    [a1 readCommonBehaviorData:v13 tgtCommonBehaviorData:v9 drawingState:v8];
  }

  [(PDAnimateRotateBehavior *)v9 setBy:CXDefaultLongAttribute(a3, CXNoNamespace, "by", 1)];
  [v14 setRotateBehavior:v9];
}

+ (void)readCommonBehaviorData:(_xmlNode *)a3 tgtCommonBehaviorData:(id)a4 drawingState:(id)a5
{
  v21 = a4;
  v8 = a5;
  v9 = [v8 client];
  v10 = [v9 presentationState];

  v11 = [v10 PXPresentationMLNamespace];
  v12 = OCXFindChild(a3, v11, "cTn");

  if (v12)
  {
    [a1 readCommonTimeNodeData:v12 commonTimeNodeData:v21 drawingState:v8];
  }

  v13 = [v10 PXPresentationMLNamespace];
  v14 = OCXFindChild(a3, v13, "tgtEl");

  if (v14)
  {
    v15 = [a1 newTarget:v14 drawingState:v8];
    [v21 setTarget:v15];
  }

  v16 = [v10 PXPresentationMLNamespace];
  v17 = OCXFindChild(a3, v16, "attrNameLst");

  if (v17)
  {
    v18 = objc_opt_new();
    v19 = OCXFirstChildNamed(v17, "attrName");
    while (v19)
    {
      v20 = CXDefaultStringContent(v19, &stru_286EE1130);
      if ([v20 length])
      {
        [v18 addObject:v20];
      }

      v19 = OCXNextSiblingNamed(v19, "attrName");
    }

    [v21 setAttributeNames:v18];
  }
}

+ (void)readAnimParallelElement:(_xmlNode *)a3 timeNode:(id)a4 drawingState:(id)a5
{
  v14 = a4;
  v8 = a5;
  v9 = objc_alloc_init(PDParallelTimeNode);
  v10 = [v8 client];
  v11 = [v10 presentationState];

  v12 = [v11 PXPresentationMLNamespace];
  v13 = OCXFindChild(a3, v12, "cTn");

  if (v13)
  {
    [a1 readCommonTimeNodeData:v13 commonTimeNodeData:v9 drawingState:v8];
  }

  [v14 setParallel:v9];
}

+ (id)sequentialPreviousActionMap
{
  {
    +[PXAnimation(Private) sequentialPreviousActionMap];
  }

  if (+[PXAnimation(Private) sequentialPreviousActionMap]::onceToken != -1)
  {
    +[PXAnimation(Private) sequentialPreviousActionMap];
  }

  v2 = +[PXAnimation(Private) sequentialPreviousActionMap]::sEnumerationMap;

  return v2;
}

void __51__PXAnimation_Private__sequentialPreviousActionMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[PXAnimation(Private) sequentialPreviousActionMap]::sSequentialPreviousActionStructs count:2 caseSensitive:1];
  v1 = +[PXAnimation(Private) sequentialPreviousActionMap]::sEnumerationMap;
  +[PXAnimation(Private) sequentialPreviousActionMap]::sEnumerationMap = v0;
}

+ (id)sequentialNextActionMap
{
  {
    +[PXAnimation(Private) sequentialNextActionMap];
  }

  if (+[PXAnimation(Private) sequentialNextActionMap]::onceToken != -1)
  {
    +[PXAnimation(Private) sequentialNextActionMap];
  }

  v2 = +[PXAnimation(Private) sequentialNextActionMap]::sEnumerationMap;

  return v2;
}

void __47__PXAnimation_Private__sequentialNextActionMap__block_invoke()
{
  v0 = [[TCEnumerationMap alloc] initWithStructs:&+[PXAnimation(Private) sequentialNextActionMap]::sSequentialNextActionStructs count:2 caseSensitive:1];
  v1 = +[PXAnimation(Private) sequentialNextActionMap]::sEnumerationMap;
  +[PXAnimation(Private) sequentialNextActionMap]::sEnumerationMap = v0;
}

+ (void)readAnimSequentialElement:(_xmlNode *)a3 timeNode:(id)a4 drawingState:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(PDSequentialTimeNode);
  v11 = [v9 client];
  v12 = [v11 presentationState];

  [(PDSequentialTimeNode *)v10 setConcurrent:CXDefaultBoolAttribute(a3, CXNoNamespace, "concurrent", 0)];
  v26 = 0;
  v13 = [a1 sequentialPreviousActionMap];
  v14 = [a1 readOptionalStringAttribute:@"prevAc" fromNode:a3 attributeMap:v13 toPDDomValue:&v26];

  if (v14)
  {
    [(PDSequentialTimeNode *)v10 setPreviousAction:v26];
  }

  v15 = [a1 sequentialNextActionMap];
  v16 = [a1 readOptionalStringAttribute:@"nextAc" fromNode:a3 attributeMap:v15 toPDDomValue:&v25];

  if (v16)
  {
    [(PDSequentialTimeNode *)v10 setNextAction:v25];
  }

  v17 = [v12 PXPresentationMLNamespace];
  v18 = OCXFindChild(a3, v17, "cTn");

  if (v18)
  {
    [a1 readCommonTimeNodeData:v18 commonTimeNodeData:v10 drawingState:v9];
  }

  v19 = [v12 PXPresentationMLNamespace];
  v20 = OCXFindChild(a3, v19, "prevCondLst");

  if (v20)
  {
    v21 = objc_opt_new();
    [a1 readConditionList:v20 arrayOfConditions:v21 drawingState:v9];
    [(PDSequentialTimeNode *)v10 setPreviousConditions:v21];
  }

  v22 = [v12 PXPresentationMLNamespace];
  v23 = OCXFindChild(a3, v22, "nextCondLst");

  if (v23)
  {
    v24 = objc_opt_new();
    [a1 readConditionList:v23 arrayOfConditions:v24 drawingState:v9];
    [(PDSequentialTimeNode *)v10 setNextConditions:v24];
  }

  [v8 setSequential:v10];
}

+ (id)readParagraphBuild:(_xmlNode *)a3
{
  v4 = CXDefaultLongAttribute(a3, CXNoNamespace, "advAuto", -1);
  v5 = CXDefaultBoolAttribute(a3, CXNoNamespace, "animBg", 0);
  v6 = CXDefaultLongAttribute(a3, CXNoNamespace, "bldLvl", 1);
  v7 = CXDefaultBoolAttribute(a3, CXNoNamespace, "rev", 0);
  v8 = CXDefaultStringAttribute(a3, CXNoNamespace, "build", @"whole");
  if ([v8 isEqualToString:@"allAtOnce"])
  {
    v9 = 0;
  }

  else if ([v8 isEqualToString:@"p"])
  {
    v9 = 2;
  }

  else if ([v8 isEqualToString:@"cust"])
  {
    v9 = 1;
  }

  else
  {
    v9 = 4;
  }

  v10 = objc_alloc_init(PDParagraphBuild);
  [(PDParagraphBuild *)v10 setAutoAdvanceTime:v4];
  [(PDBuild *)v10 setIsAnimateBackground:v5];
  [(PDParagraphBuild *)v10 setBuildLevel:v6];
  [(PDParagraphBuild *)v10 setIsReversedParagraphOrder:v7];
  [(PDParagraphBuild *)v10 setType:v9];

  return v10;
}

+ (int)readChartBuildType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"series"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"category"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"seriesEl"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"categoryEl"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)readOleChartBuild:(_xmlNode *)a3
{
  v5 = CXDefaultBoolAttribute(a3, CXNoNamespace, "animBg", 0);
  v6 = CXDefaultStringAttribute(a3, CXNoNamespace, "bld", @"allAtOnce");
  v7 = -[PDChartBuild initWithBuildType:]([PDChartBuild alloc], "initWithBuildType:", [a1 readChartBuildType:v6]);
  [(PDBuild *)v7 setIsAnimateBackground:v5];

  return v7;
}

+ (id)readGraphicBuild:(_xmlNode *)a3 drawingState:(id)a4
{
  v6 = a4;
  v7 = [v6 client];
  v8 = [v7 presentationState];

  v9 = [v8 PXPresentationMLNamespace];
  v10 = OCXFindChild(a3, v9, "bldAsOne");

  if (!v10 || (v11 = objc_alloc_init(PDBuild)) == 0)
  {
    v12 = [v8 PXPresentationMLNamespace];
    v13 = OCXFindChild(a3, v12, "bldSub");

    if (!v13)
    {
      goto LABEL_8;
    }

    v14 = [v8 PXPresentationMLNamespace];
    v15 = OCXFindChild(v13, v14, "bldDmg");

    if (!v15 || (v11 = objc_alloc_init(PDDiagramBuild)) == 0)
    {
      v16 = [v6 OAXMainNamespace];
      v17 = OCXFindChild(v13, v16, "bldChart");

      if (v17)
      {
        v18 = CXDefaultLongAttribute(v17, CXNoNamespace, "animBg", 1);
        v19 = CXDefaultStringAttribute(v17, CXNoNamespace, "bld", @"allAtOnce");
        v11 = -[PDChartBuild initWithBuildType:]([PDChartBuild alloc], "initWithBuildType:", [a1 readChartBuildType:v19]);
        [(PDBuild *)v11 setIsAnimateBackground:v18 > 0];

        goto LABEL_9;
      }

LABEL_8:
      v11 = 0;
    }
  }

LABEL_9:

  return v11;
}

@end