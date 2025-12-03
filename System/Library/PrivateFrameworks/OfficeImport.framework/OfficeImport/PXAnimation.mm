@interface PXAnimation
+ (BOOL)readOptionalStringAttribute:(id)attribute fromNode:(_xmlNode *)node attributeMap:(id)map toPDDomValue:(unint64_t *)value;
+ (id)chartBuildStepMap;
+ (id)chartTypeMap;
+ (id)newShapeTarget:(_xmlNode *)target drawingState:(id)state;
+ (id)newTarget:(_xmlNode *)target drawingState:(id)state;
+ (id)presetClassMap;
+ (id)readAnimVariant:(_xmlNode *)variant drawingState:(id)state;
+ (id)readGraphicBuild:(_xmlNode *)build drawingState:(id)state;
+ (id)readOleChartBuild:(_xmlNode *)build;
+ (id)readParagraphBuild:(_xmlNode *)build;
+ (id)restartTypeMap;
+ (id)sequentialNextActionMap;
+ (id)sequentialPreviousActionMap;
+ (id)timeNodeFillTypeMap;
+ (id)timeNodeTypeMap;
+ (id)triggerEventMap;
+ (int)readChartBuildType:(id)type;
+ (void)readAnimAudioElement:(_xmlNode *)element timeNode:(id)node drawingState:(id)state;
+ (void)readAnimCmdElement:(_xmlNode *)element timeNode:(id)node drawingState:(id)state;
+ (void)readAnimEffectElement:(_xmlNode *)element timeNode:(id)node drawingState:(id)state;
+ (void)readAnimElement:(_xmlNode *)element timeNode:(id)node drawingState:(id)state;
+ (void)readAnimMotionElement:(_xmlNode *)element timeNode:(id)node drawingState:(id)state;
+ (void)readAnimParallelElement:(_xmlNode *)element timeNode:(id)node drawingState:(id)state;
+ (void)readAnimRotationElement:(_xmlNode *)element timeNode:(id)node drawingState:(id)state;
+ (void)readAnimScaleElement:(_xmlNode *)element timeNode:(id)node drawingState:(id)state;
+ (void)readAnimSequentialElement:(_xmlNode *)element timeNode:(id)node drawingState:(id)state;
+ (void)readAnimSetElement:(_xmlNode *)element timeNode:(id)node drawingState:(id)state;
+ (void)readAnimVideoElement:(_xmlNode *)element timeNode:(id)node drawingState:(id)state;
+ (void)readAnimationFromTimingXmlNode:(_xmlNode *)node tgtAnimation:(id)animation drawingState:(id)state;
+ (void)readChartBuildStep:(id)step chartTarget:(id)target;
+ (void)readChartType:(id)type oleChartTarget:(id)target;
+ (void)readChildTimeNodeList:(_xmlNode *)list commonTimeNodeData:(id)data drawingState:(id)state;
+ (void)readCommonBehaviorData:(_xmlNode *)data tgtCommonBehaviorData:(id)behaviorData drawingState:(id)state;
+ (void)readCommonMediaNodeData:(_xmlNode *)data commonMediaData:(id)mediaData drawingState:(id)state;
+ (void)readCommonTimeNodeData:(_xmlNode *)data commonTimeNodeData:(id)nodeData drawingState:(id)state;
+ (void)readCondition:(_xmlNode *)condition timeCondition:(id)timeCondition drawingState:(id)state;
+ (void)readConditionList:(_xmlNode *)list arrayOfConditions:(id)conditions drawingState:(id)state;
+ (void)readIterate:(_xmlNode *)iterate commonTimeNodeData:(id)data drawingState:(id)state;
+ (void)readPresetClass:(id)class commonTimeNodeData:(id)data;
+ (void)readRestartType:(id)type commonTimeNodeData:(id)data;
+ (void)readStConditionList:(_xmlNode *)list commonTimeNodeData:(id)data drawingState:(id)state;
+ (void)readTimeNodeType:(id)type commonTimeNodeData:(id)data;
+ (void)readTriggerEvent:(id)event timeCondition:(id)condition;
+ (void)writeAnimationFromSlideBase:(id)base to:(id)to state:(id)state;
@end

@implementation PXAnimation

+ (void)readAnimationFromTimingXmlNode:(_xmlNode *)node tgtAnimation:(id)animation drawingState:(id)state
{
  animationCopy = animation;
  stateCopy = state;
  v8 = stateCopy;
  if (node)
  {
    client = [stateCopy client];
    presentationState = [client presentationState];

    pXPresentationMLNamespace = [presentationState PXPresentationMLNamespace];
    v12 = OCXFindChild(node, pXPresentationMLNamespace, "tnLst");

    if (v12)
    {
      pXPresentationMLNamespace2 = [presentationState PXPresentationMLNamespace];
      v14 = OCXFindChild(v12, pXPresentationMLNamespace2, "par");

      if (v14)
      {
        pXPresentationMLNamespace3 = [presentationState PXPresentationMLNamespace];
        v16 = OCXFindChild(v14, pXPresentationMLNamespace3, "cTn");

        if (v16)
        {
          v17 = CXDefaultStringAttribute(v16, CXNoNamespace, "nodeType", 0);
          v18 = v17;
          if (v17 && [v17 isEqualToString:@"tmRoot"])
          {
            addRootTimeNode = [animationCopy addRootTimeNode];
            [self readCommonTimeNodeData:v16 commonTimeNodeData:addRootTimeNode drawingState:v8];
          }
        }
      }
    }

    pXPresentationMLNamespace4 = [presentationState PXPresentationMLNamespace];
    v21 = OCXFindChild(node, pXPresentationMLNamespace4, "bldLst");

    if (v21)
    {
      v30 = presentationState;
      v32 = objc_alloc_init(OITSUNoCopyDictionary);
      for (i = OCXFirstChild(v21); ; i = OCXNextSibling(i))
      {
        if (!i)
        {
          [animationCopy setBuildMap:v32];

          presentationState = v30;
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
        v26 = [self readParagraphBuild:i];
      }

      else if (xmlStrEqual(i->name, "bldDgm"))
      {
        v26 = objc_alloc_init(PDDiagramBuild);
      }

      else if (xmlStrEqual(i->name, "bldOleChart"))
      {
        v26 = [self readOleChartBuild:i];
      }

      else
      {
        if (!xmlStrEqual(i->name, "bldGraphic"))
        {
          v27 = 0;
LABEL_26:

          goto LABEL_27;
        }

        v26 = [self readGraphicBuild:i drawingState:v8];
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

+ (void)writeAnimationFromSlideBase:(id)base to:(id)to state:(id)state
{
  baseCopy = base;
  toCopy = to;
  stateCopy = state;
  animation = [baseCopy animation];
  rootTimeNode = [animation rootTimeNode];

  if (rootTimeNode)
  {
    [toCopy startElement:@"timing"];
    v12 = [[PXAnimationWriteState alloc] initWithWriteState:stateCopy file:toCopy];
    [self writeTimeList:rootTimeNode state:v12];
    animation2 = [baseCopy animation];
    buildMap = [animation2 buildMap];

    if (buildMap)
    {
      animation3 = [baseCopy animation];
      buildMap2 = [animation3 buildMap];
      [self writeBuildList:buildMap2 state:v12];
    }

    [toCopy endElement];
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

+ (BOOL)readOptionalStringAttribute:(id)attribute fromNode:(_xmlNode *)node attributeMap:(id)map toPDDomValue:(unint64_t *)value
{
  attributeCopy = attribute;
  mapCopy = map;
  v17 = 0;
  v11 = CXOptionalStringAttribute(node, CXNoNamespace, [attributeCopy UTF8String], &v17);
  v12 = v17;
  if (v11)
  {
    v13 = [mapCopy valueForString:v12];
    LOBYTE(v11) = v13 != -130883970;
    if (v13 == -130883970)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PXAnimation(Private) readOptionalStringAttribute:fromNode:attributeMap:toPDDomValue:]"];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/PowerPoint/Xml/PXAnimation.mm"];
      [OITSUAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:365 isFatal:0 description:"Located attribute for element but failed to resolve mapping %@ to %@", attributeCopy, v12];

      +[OITSUAssertionHandler logBacktraceThrottled];
    }

    *value = v13;
  }

  return v11;
}

+ (void)readCommonTimeNodeData:(_xmlNode *)data commonTimeNodeData:(id)nodeData drawingState:(id)state
{
  nodeDataCopy = nodeData;
  stateCopy = state;
  v38 = 0;
  v37 = 0;
  v10 = CXOptionalStringAttribute(data, CXNoNamespace, "nodeType", &v37);
  v11 = v37;
  if (v10)
  {
    [self readTimeNodeType:v11 commonTimeNodeData:nodeDataCopy];
  }

  v36 = 0;
  v12 = CXOptionalStringAttribute(data, CXNoNamespace, "presetClass", &v36);
  v13 = v36;
  if (v12)
  {
    [self readPresetClass:v13 commonTimeNodeData:nodeDataCopy];
  }

  if (CXOptionalLongAttribute(data, CXNoNamespace, "presetSubtype", &v38))
  {
    [nodeDataCopy setPresetSubType:v38];
  }

  if (CXOptionalLongAttribute(data, CXNoNamespace, "presetID", &v38))
  {
    [nodeDataCopy setPresetId:v38];
  }

  v35 = 0;
  v31 = v13;
  v14 = CXOptionalStringAttribute(data, CXNoNamespace, "grpId", &v35);
  v15 = v35;
  if (v14)
  {
    [nodeDataCopy setGroupId:v15];
  }

  v34 = 0;
  v30 = v15;
  v16 = CXOptionalStringAttribute(data, CXNoNamespace, "repeatCount", &v34);
  v17 = v34;
  v18 = v17;
  if (v16)
  {
    v38 = 0;
    if ([v17 isEqualToString:@"indefinite"])
    {
      intValue = -1;
    }

    else
    {
      intValue = [v18 intValue];
    }

    v38 = intValue;
    [nodeDataCopy setRepeatCount:?];
  }

  if (CXOptionalLongAttribute(data, CXNoNamespace, "repeatDur", &v38))
  {
    [nodeDataCopy setRepeatDuration:v38];
  }

  v28 = v18;
  v33 = 0;
  v20 = CXOptionalStringAttribute(data, CXNoNamespace, "restart", &v33);
  v21 = v33;
  if (v20)
  {
    [self readRestartType:v21 commonTimeNodeData:{nodeDataCopy, v18, v30, v13}];
  }

  v22 = CXDefaultStringAttribute(data, CXNoNamespace, "dur", 0);
  v23 = v22;
  if (v22)
  {
    if ([v22 isEqualToString:@"indefinite"])
    {
      intValue2 = -1;
    }

    else
    {
      intValue2 = [v23 intValue];
      v38 = intValue2;
    }

    [nodeDataCopy setDuration:{intValue2, v28}];
  }

  if (CXOptionalLongAttribute(data, CXNoNamespace, "spd", &v38))
  {
    [nodeDataCopy setSpeed:v38];
  }

  if (CXOptionalLongAttribute(data, CXNoNamespace, "accel", &v38))
  {
    [nodeDataCopy setAcceleration:v38];
  }

  if (CXOptionalLongAttribute(data, CXNoNamespace, "decel", &v38))
  {
    [nodeDataCopy setDeceleration:v38];
  }

  v32 = 3;
  timeNodeFillTypeMap = [self timeNodeFillTypeMap];
  v26 = [self readOptionalStringAttribute:@"fill" fromNode:data attributeMap:timeNodeFillTypeMap toPDDomValue:&v32];

  if (v26)
  {
    [nodeDataCopy setFillType:v32];
  }

  for (i = OCXFirstChild(data); i; i = OCXNextSibling(i))
  {
    if (xmlStrEqual(i->name, "childTnLst"))
    {
      [self readChildTimeNodeList:i commonTimeNodeData:nodeDataCopy drawingState:stateCopy];
    }

    else if (xmlStrEqual(i->name, "iterate"))
    {
      [self readIterate:i commonTimeNodeData:nodeDataCopy drawingState:stateCopy];
    }

    else if (xmlStrEqual(i->name, "stCondLst"))
    {
      [self readStConditionList:i commonTimeNodeData:nodeDataCopy drawingState:stateCopy];
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

+ (void)readTimeNodeType:(id)type commonTimeNodeData:(id)data
{
  typeCopy = type;
  dataCopy = data;
  timeNodeTypeMap = [self timeNodeTypeMap];
  v8 = [timeNodeTypeMap valueForString:typeCopy];

  if (v8 != -130883970)
  {
    [dataCopy setType:v8];
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

+ (void)readPresetClass:(id)class commonTimeNodeData:(id)data
{
  classCopy = class;
  dataCopy = data;
  presetClassMap = [self presetClassMap];
  v8 = [presetClassMap valueForString:classCopy];

  if (v8 != -130883970)
  {
    [dataCopy setAnimationPresetClass:v8];
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

+ (void)readRestartType:(id)type commonTimeNodeData:(id)data
{
  typeCopy = type;
  dataCopy = data;
  restartTypeMap = [self restartTypeMap];
  v8 = [restartTypeMap valueForString:typeCopy];

  if (v8 != -130883970)
  {
    [dataCopy setRestartType:v8];
  }
}

+ (void)readChildTimeNodeList:(_xmlNode *)list commonTimeNodeData:(id)data drawingState:(id)state
{
  dataCopy = data;
  stateCopy = state;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = OCXFirstChild(list);
  v11 = 0;
  while (v10)
  {
    if (xmlStrEqual(v10->name, "anim"))
    {
      v12 = objc_alloc_init(PDTimeNodeUnion);

      [self readAnimElement:v10 timeNode:v12 drawingState:stateCopy];
      [v9 addObject:v12];
LABEL_11:

      v13 = 0;
      goto LABEL_12;
    }

    if (xmlStrEqual(v10->name, "animEffect"))
    {
      v12 = objc_alloc_init(PDTimeNodeUnion);

      [self readAnimEffectElement:v10 timeNode:v12 drawingState:stateCopy];
      [v9 addObject:v12];
      goto LABEL_11;
    }

    if (xmlStrEqual(v10->name, "animMotion"))
    {
      v12 = objc_alloc_init(PDTimeNodeUnion);

      [self readAnimMotionElement:v10 timeNode:v12 drawingState:stateCopy];
      [v9 addObject:v12];
      goto LABEL_11;
    }

    if (xmlStrEqual(v10->name, "animRot"))
    {
      v12 = objc_alloc_init(PDTimeNodeUnion);

      [self readAnimRotationElement:v10 timeNode:v12 drawingState:stateCopy];
      [v9 addObject:v12];
      goto LABEL_11;
    }

    if (xmlStrEqual(v10->name, "animScale"))
    {
      v13 = objc_alloc_init(PDTimeNodeUnion);

      [self readAnimScaleElement:v10 timeNode:v13 drawingState:stateCopy];
      [v9 addObject:v13];
    }

    else
    {
      if (xmlStrEqual(v10->name, "audio"))
      {
        v12 = objc_alloc_init(PDTimeNodeUnion);

        [self readAnimAudioElement:v10 timeNode:v12 drawingState:stateCopy];
        [v9 addObject:v12];
        goto LABEL_11;
      }

      if (xmlStrEqual(v10->name, "video"))
      {
        v12 = objc_alloc_init(PDTimeNodeUnion);

        [self readAnimVideoElement:v10 timeNode:v12 drawingState:stateCopy];
        [v9 addObject:v12];
        goto LABEL_11;
      }

      if (xmlStrEqual(v10->name, "cmd"))
      {
        v12 = objc_alloc_init(PDTimeNodeUnion);

        [self readAnimCmdElement:v10 timeNode:v12 drawingState:stateCopy];
        [v9 addObject:v12];
        goto LABEL_11;
      }

      if (xmlStrEqual(v10->name, "par"))
      {
        v13 = objc_alloc_init(PDTimeNodeUnion);

        [self readAnimParallelElement:v10 timeNode:v13 drawingState:stateCopy];
        [v9 addObject:v13];
      }

      else
      {
        if (xmlStrEqual(v10->name, "seq"))
        {
          v12 = objc_alloc_init(PDTimeNodeUnion);

          [self readAnimSequentialElement:v10 timeNode:v12 drawingState:stateCopy];
          [v9 addObject:v12];
          goto LABEL_11;
        }

        if (xmlStrEqual(v10->name, "set"))
        {
          v12 = objc_alloc_init(PDTimeNodeUnion);

          [self readAnimSetElement:v10 timeNode:v12 drawingState:stateCopy];
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

  [dataCopy setChildTimeNodeList:v9];
}

+ (void)readIterate:(_xmlNode *)iterate commonTimeNodeData:(id)data drawingState:(id)state
{
  dataCopy = data;
  stateCopy = state;
  v9 = objc_alloc_init(PDIterate);
  v22 = 0;
  v10 = CXOptionalStringAttribute(iterate, CXNoNamespace, "type", &v22);
  v11 = v22;
  if (!v10)
  {
    v17 = 0;
    goto LABEL_16;
  }

  client = [stateCopy client];
  presentationState = [client presentationState];

  pXPresentationMLNamespace = [presentationState PXPresentationMLNamespace];
  v15 = OCXFindChild(iterate, pXPresentationMLNamespace, "tmPct");

  if (v15)
  {
    v21 = 0;
    v16 = &v21;
    CXOptionalStringAttribute(v15, CXNoNamespace, "val", &v21);
LABEL_7:
    v19 = *v16;
    goto LABEL_8;
  }

  pXPresentationMLNamespace2 = [presentationState PXPresentationMLNamespace];
  v19 = OCXFindChild(iterate, pXPresentationMLNamespace2, "tmAbs");

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
  [dataCopy setIterate:v9];
}

+ (void)readConditionList:(_xmlNode *)list arrayOfConditions:(id)conditions drawingState:(id)state
{
  conditionsCopy = conditions;
  stateCopy = state;
  for (i = OCXFirstChild(list); i; i = OCXNextSibling(i))
  {
    if (xmlStrEqual(i->name, "cond"))
    {
      v10 = objc_alloc_init(PDTimeCondition);
      [self readCondition:i timeCondition:v10 drawingState:stateCopy];
      [conditionsCopy addObject:v10];
    }
  }
}

+ (void)readStConditionList:(_xmlNode *)list commonTimeNodeData:(id)data drawingState:(id)state
{
  dataCopy = data;
  stateCopy = state;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [self readConditionList:list arrayOfConditions:v9 drawingState:stateCopy];
  [dataCopy setStartTimeConditions:v9];
}

+ (void)readCondition:(_xmlNode *)condition timeCondition:(id)timeCondition drawingState:(id)state
{
  timeConditionCopy = timeCondition;
  stateCopy = state;
  v10 = CXDefaultStringAttribute(condition, CXNoNamespace, "delay", 0);
  v11 = v10;
  if (v10)
  {
    if ([v10 isEqualToString:@"indefinite"])
    {
      intValue = 0xFFFFFFFFLL;
    }

    else
    {
      intValue = [v11 intValue];
    }

    [timeConditionCopy setDelay:intValue];
  }

  v20 = 0;
  v13 = CXOptionalStringAttribute(condition, CXNoNamespace, "evt", &v20);
  v14 = v20;
  if (v13)
  {
    [self readTriggerEvent:v14 timeCondition:timeConditionCopy];
  }

  client = [stateCopy client];
  presentationState = [client presentationState];

  pXPresentationMLNamespace = [presentationState PXPresentationMLNamespace];
  v18 = OCXFindChild(condition, pXPresentationMLNamespace, "tgtEl");

  if (v18)
  {
    v19 = [self newTarget:v18 drawingState:stateCopy];
    [timeConditionCopy setTarget:v19];
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

+ (void)readTriggerEvent:(id)event timeCondition:(id)condition
{
  eventCopy = event;
  conditionCopy = condition;
  triggerEventMap = [self triggerEventMap];
  v8 = [triggerEventMap valueForString:eventCopy];

  if (v8 != -130883970)
  {
    [conditionCopy setTriggerEvent:v8];
  }
}

+ (id)newTarget:(_xmlNode *)target drawingState:(id)state
{
  stateCopy = state;
  client = [stateCopy client];
  presentationState = [client presentationState];

  pXPresentationMLNamespace = [presentationState PXPresentationMLNamespace];
  v10 = OCXFindChild(target, pXPresentationMLNamespace, "sldTgt");

  if (v10)
  {
    v11 = off_2799C5828;
LABEL_5:
    v14 = objc_alloc_init(*v11);
LABEL_6:
    v15 = v14;
    goto LABEL_7;
  }

  pXPresentationMLNamespace2 = [presentationState PXPresentationMLNamespace];
  v13 = OCXFindChild(target, pXPresentationMLNamespace2, "sndTgt");

  if (v13)
  {
    v11 = off_2799C5808;
    goto LABEL_5;
  }

  pXPresentationMLNamespace3 = [presentationState PXPresentationMLNamespace];
  v18 = OCXFindChild(target, pXPresentationMLNamespace3, "spTgt");

  if (v18)
  {
    v14 = [self newShapeTarget:v18 drawingState:stateCopy];
    goto LABEL_6;
  }

  pXPresentationMLNamespace4 = [presentationState PXPresentationMLNamespace];
  v20 = OCXFindChild(target, pXPresentationMLNamespace4, "inkTgt");

  if (v20)
  {
    v25 = 0;
    v21 = CXOptionalStringAttribute(v20, CXNoNamespace, "spid", &v25);
    v22 = v25;
    if (v21)
    {
      oavState = [presentationState oavState];
      v24 = [oavState drawableForVmlShapeId:v22];
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

+ (id)newShapeTarget:(_xmlNode *)target drawingState:(id)state
{
  stateCopy = state;
  client = [stateCopy client];
  presentationState = [client presentationState];

  v37 = -1;
  pXPresentationMLNamespace = [presentationState PXPresentationMLNamespace];
  v10 = OCXFindChild(target, pXPresentationMLNamespace, "bg");

  if (v10)
  {
    v11 = off_2799C57F8;
LABEL_3:
    v12 = objc_alloc_init(*v11);
LABEL_4:
    v13 = v12;
    goto LABEL_5;
  }

  pXPresentationMLNamespace2 = [presentationState PXPresentationMLNamespace];
  v19 = OCXFindChild(target, pXPresentationMLNamespace2, "graphicEl");

  if (v19)
  {
    oAXMainNamespace = [stateCopy OAXMainNamespace];
    v21 = OCXFindChild(v19, oAXMainNamespace, "dgm");

    if (v21)
    {
      v12 = objc_alloc_init(PDAnimationDiagramTarget);
      goto LABEL_4;
    }

    oAXMainNamespace2 = [stateCopy OAXMainNamespace];
    v27 = OCXFindChild(v19, oAXMainNamespace2, "chart");

    if (v27)
    {
      v13 = objc_alloc_init(PDAnimationChartTarget);
      v36 = 0;
      v28 = CXOptionalStringAttribute(v27, CXNoNamespace, "bldStep", &v36);
      v25 = v36;
      if (v28)
      {
        [self readChartBuildStep:v25 chartTarget:v13];
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
    pXPresentationMLNamespace3 = [presentationState PXPresentationMLNamespace];
    v23 = OCXFindChild(target, pXPresentationMLNamespace3, "oleChartEl");

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
        [self readChartType:v25 oleChartTarget:v13];
      }

      goto LABEL_23;
    }

    pXPresentationMLNamespace4 = [presentationState PXPresentationMLNamespace];
    v30 = OCXFindChild(target, pXPresentationMLNamespace4, "txEl");

    if (!v30)
    {
      v11 = off_2799C5800;
      goto LABEL_3;
    }

    v13 = objc_alloc_init(PDAnimationTextTarget);
    pXPresentationMLNamespace5 = [presentationState PXPresentationMLNamespace];
    v32 = OCXFindChild(v30, pXPresentationMLNamespace5, "charRg");

    if (v32)
    {
      [(PDAnimationChartTarget *)v13 setType:0];
    }

    else
    {
      pXPresentationMLNamespace6 = [presentationState PXPresentationMLNamespace];
      v32 = OCXFindChild(v30, pXPresentationMLNamespace6, "pRg");

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
  v37 = CXRequiredLongAttribute(target, CXNoNamespace, "spid");
  v14 = [stateCopy drawableForShapeId:v37];
  if (!v14)
  {
    oavState = [stateCopy oavState];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v37];
    v14 = [oavState drawableForVmlShapeId:v16];
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

+ (void)readChartBuildStep:(id)step chartTarget:(id)target
{
  stepCopy = step;
  targetCopy = target;
  chartBuildStepMap = [self chartBuildStepMap];
  v8 = [chartBuildStepMap valueForString:stepCopy];

  if (v8 != -130883970)
  {
    [targetCopy setBuildStep:v8];
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

+ (void)readChartType:(id)type oleChartTarget:(id)target
{
  typeCopy = type;
  targetCopy = target;
  chartTypeMap = [self chartTypeMap];
  v8 = [chartTypeMap valueForString:typeCopy];

  if (v8 != -130883970)
  {
    [targetCopy setChartSubElementType:v8];
  }
}

+ (void)readAnimElement:(_xmlNode *)element timeNode:(id)node drawingState:(id)state
{
  nodeCopy = node;
  stateCopy = state;
  v9 = objc_alloc_init(PDAnimateTimeBehavior);
  client = [stateCopy client];
  presentationState = [client presentationState];

  pXPresentationMLNamespace = [presentationState PXPresentationMLNamespace];
  v13 = OCXFindChild(element, pXPresentationMLNamespace, "cBhvr");

  if (v13)
  {
    [self readCommonBehaviorData:v13 tgtCommonBehaviorData:v9 drawingState:stateCopy];
  }

  pXPresentationMLNamespace2 = [presentationState PXPresentationMLNamespace];
  OCXFindChild(element, pXPresentationMLNamespace2, "tavLst");

  [nodeCopy setTimeBehavior:v9];
}

+ (void)readAnimEffectElement:(_xmlNode *)element timeNode:(id)node drawingState:(id)state
{
  nodeCopy = node;
  stateCopy = state;
  v10 = objc_alloc_init(PDAnimateEffectBehavior);
  client = [stateCopy client];
  presentationState = [client presentationState];

  pXPresentationMLNamespace = [presentationState PXPresentationMLNamespace];
  v14 = OCXFindChild(element, pXPresentationMLNamespace, "cBhvr");

  if (v14)
  {
    [self readCommonBehaviorData:v14 tgtCommonBehaviorData:v10 drawingState:stateCopy];
  }

  v19 = 0;
  v15 = CXOptionalStringAttribute(element, CXNoNamespace, "transition", &v19);
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

  [nodeCopy setEffectBehavior:v10];
}

+ (void)readAnimMotionElement:(_xmlNode *)element timeNode:(id)node drawingState:(id)state
{
  nodeCopy = node;
  stateCopy = state;
  v10 = objc_alloc_init(PDAnimateMotionBehavior);
  client = [stateCopy client];
  presentationState = [client presentationState];

  pXPresentationMLNamespace = [presentationState PXPresentationMLNamespace];
  v14 = OCXFindChild(element, pXPresentationMLNamespace, "cBhvr");

  if (v14)
  {
    [self readCommonBehaviorData:v14 tgtCommonBehaviorData:v10 drawingState:stateCopy];
  }

  v28 = 0;
  v15 = CXOptionalStringAttribute(element, CXNoNamespace, "path", &v28);
  v16 = v28;
  if (v15)
  {
    v17 = [PDAnimateMotionBehavior bezierPathFromNSString:v16];
    [(PDAnimateMotionBehavior *)v10 setPath:v17];
  }

  v26 = 0.0;
  v27 = 0.0;
  pXPresentationMLNamespace2 = [presentationState PXPresentationMLNamespace];
  v19 = OCXFindChild(element, pXPresentationMLNamespace2, "by");

  if (v19)
  {
    [self readPointFromNode:v19 tgtPoint:&v26];
    [(PDAnimateScaleBehavior *)v10 setBy:v26, v27];
  }

  pXPresentationMLNamespace3 = [presentationState PXPresentationMLNamespace];
  v21 = OCXFindChild(element, pXPresentationMLNamespace3, "from");

  if (v21)
  {
    [self readPointFromNode:v21 tgtPoint:&v26];
    [(PDAnimateScaleBehavior *)v10 setFrom:v26, v27];
  }

  pXPresentationMLNamespace4 = [presentationState PXPresentationMLNamespace];
  v23 = OCXFindChild(element, pXPresentationMLNamespace4, "to");

  if (v23)
  {
    [self readPointFromNode:v23 tgtPoint:&v26];
    [(PDAnimateScaleBehavior *)v10 setTo:v26, v27];
  }

  pXPresentationMLNamespace5 = [presentationState PXPresentationMLNamespace];
  v25 = OCXFindChild(element, pXPresentationMLNamespace5, "rCtr");

  if (v25)
  {
    [self readPointFromNode:v23 tgtPoint:&v26];
    [(PDAnimateMotionBehavior *)v10 setRotationCenter:v26, v27];
  }

  [nodeCopy setMotionBehavior:v10];
}

+ (void)readAnimScaleElement:(_xmlNode *)element timeNode:(id)node drawingState:(id)state
{
  nodeCopy = node;
  stateCopy = state;
  v10 = objc_alloc_init(PDAnimateScaleBehavior);
  client = [stateCopy client];
  presentationState = [client presentationState];

  pXPresentationMLNamespace = [presentationState PXPresentationMLNamespace];
  v14 = OCXFindChild(element, pXPresentationMLNamespace, "cBhvr");

  if (v14)
  {
    [self readCommonBehaviorData:v14 tgtCommonBehaviorData:v10 drawingState:stateCopy];
  }

  pXPresentationMLNamespace2 = [presentationState PXPresentationMLNamespace];
  v16 = OCXFindChild(element, pXPresentationMLNamespace2, "by");

  if (v16)
  {
    [self readPointFromNode:v16 tgtPoint:&v21];
    [(PDAnimateScaleBehavior *)v10 setBy:v21, v22];
  }

  pXPresentationMLNamespace3 = [presentationState PXPresentationMLNamespace];
  v18 = OCXFindChild(element, pXPresentationMLNamespace3, "from");

  if (v18)
  {
    [self readPointFromNode:v18 tgtPoint:&v21];
    [(PDAnimateScaleBehavior *)v10 setFrom:v21, v22];
  }

  pXPresentationMLNamespace4 = [presentationState PXPresentationMLNamespace];
  v20 = OCXFindChild(element, pXPresentationMLNamespace4, "to");

  if (v20)
  {
    [self readPointFromNode:v20 tgtPoint:&v21];
    [(PDAnimateScaleBehavior *)v10 setTo:v21, v22];
  }

  [nodeCopy setScaleBehavior:v10];
}

+ (void)readCommonMediaNodeData:(_xmlNode *)data commonMediaData:(id)mediaData drawingState:(id)state
{
  mediaDataCopy = mediaData;
  stateCopy = state;
  client = [stateCopy client];
  presentationState = [client presentationState];

  pXPresentationMLNamespace = [presentationState PXPresentationMLNamespace];
  v12 = OCXFindChild(data, pXPresentationMLNamespace, "cTn");

  if (!v12)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  [self readCommonTimeNodeData:v12 commonTimeNodeData:mediaDataCopy drawingState:stateCopy];
  pXPresentationMLNamespace2 = [presentationState PXPresentationMLNamespace];
  v14 = OCXFindChild(data, pXPresentationMLNamespace2, "tgtEl");

  v15 = [self newTarget:v14 drawingState:stateCopy];
  v16 = CXDefaultBoolAttribute(data, CXNoNamespace, "mute", 0);
  v17 = CXDefaultBoolAttribute(data, CXNoNamespace, "showWhenStopped", 1);
  v18 = CXDefaultLongAttribute(data, CXNoNamespace, "numSld", 1);
  v19 = CXDefaultFractionAttribute(data, CXNoNamespace, "vol", 0.5);
  [mediaDataCopy setTarget:v15];
  [mediaDataCopy setIsMuted:v16];
  [mediaDataCopy setIsShowWhenStopped:v17];
  [mediaDataCopy setNumberOfSlides:v18];
  [mediaDataCopy setVolume:(v19 * 100000.0)];
}

+ (void)readAnimAudioElement:(_xmlNode *)element timeNode:(id)node drawingState:(id)state
{
  nodeCopy = node;
  stateCopy = state;
  v9 = objc_alloc_init(PDAudioNode);
  client = [stateCopy client];
  presentationState = [client presentationState];

  [(PDAudioNode *)v9 setIsNarration:CXDefaultBoolAttribute(element, CXNoNamespace, "isNarration", 0)];
  pXPresentationMLNamespace = [presentationState PXPresentationMLNamespace];
  v13 = OCXFindChild(element, pXPresentationMLNamespace, "cMediaNode");

  if (v13)
  {
    [self readCommonMediaNodeData:v13 commonMediaData:v9 drawingState:stateCopy];
    [nodeCopy setAudio:v9];
  }
}

+ (void)readAnimVideoElement:(_xmlNode *)element timeNode:(id)node drawingState:(id)state
{
  nodeCopy = node;
  stateCopy = state;
  v9 = objc_alloc_init(PDVideoNode);
  client = [stateCopy client];
  presentationState = [client presentationState];

  [(PDVideoNode *)v9 setIsFullScreen:CXDefaultBoolAttribute(element, CXNoNamespace, "fullScrn", 0)];
  pXPresentationMLNamespace = [presentationState PXPresentationMLNamespace];
  v13 = OCXFindChild(element, pXPresentationMLNamespace, "cMediaNode");

  if (v13)
  {
    [self readCommonMediaNodeData:v13 commonMediaData:v9 drawingState:stateCopy];
    [nodeCopy setVideo:v9];
  }
}

+ (void)readAnimCmdElement:(_xmlNode *)element timeNode:(id)node drawingState:(id)state
{
  nodeCopy = node;
  stateCopy = state;
  v9 = objc_alloc_init(PDCmdBehavior);
  client = [stateCopy client];
  presentationState = [client presentationState];

  pXPresentationMLNamespace = [presentationState PXPresentationMLNamespace];
  v13 = OCXFindChild(element, pXPresentationMLNamespace, "cBhvr");

  if (v13)
  {
    [self readCommonBehaviorData:v13 tgtCommonBehaviorData:v9 drawingState:stateCopy];
  }

  [nodeCopy setCmdBehavior:v9];
}

+ (id)readAnimVariant:(_xmlNode *)variant drawingState:(id)state
{
  client = [state client];
  presentationState = [client presentationState];

  pXPresentationMLNamespace = [presentationState PXPresentationMLNamespace];
  v8 = OCXFindChild(variant, pXPresentationMLNamespace, "strVal");

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

  pXPresentationMLNamespace2 = [presentationState PXPresentationMLNamespace];
  v14 = OCXFindChild(variant, pXPresentationMLNamespace2, "BOOLVal");

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
    pXPresentationMLNamespace3 = [presentationState PXPresentationMLNamespace];
    v17 = OCXFindChild(variant, pXPresentationMLNamespace3, "intVal");

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
      pXPresentationMLNamespace4 = [presentationState PXPresentationMLNamespace];
      v12 = OCXFindChild(variant, pXPresentationMLNamespace4, "fltVal");

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

+ (void)readAnimSetElement:(_xmlNode *)element timeNode:(id)node drawingState:(id)state
{
  nodeCopy = node;
  stateCopy = state;
  v9 = objc_alloc_init(PDSetBehavior);
  client = [stateCopy client];
  presentationState = [client presentationState];

  pXPresentationMLNamespace = [presentationState PXPresentationMLNamespace];
  v13 = OCXFindChild(element, pXPresentationMLNamespace, "cBhvr");

  if (v13)
  {
    [self readCommonBehaviorData:v13 tgtCommonBehaviorData:v9 drawingState:stateCopy];
  }

  pXPresentationMLNamespace2 = [presentationState PXPresentationMLNamespace];
  v15 = OCXFindChild(element, pXPresentationMLNamespace2, "to");

  if (v15)
  {
    v16 = [self readAnimVariant:v15 drawingState:stateCopy];
    if (v16)
    {
      [(PDSetBehavior *)v9 setValue:v16];
    }
  }

  [nodeCopy setBehavior:v9];
}

+ (void)readAnimRotationElement:(_xmlNode *)element timeNode:(id)node drawingState:(id)state
{
  nodeCopy = node;
  stateCopy = state;
  v9 = objc_alloc_init(PDAnimateRotateBehavior);
  client = [stateCopy client];
  presentationState = [client presentationState];

  pXPresentationMLNamespace = [presentationState PXPresentationMLNamespace];
  v13 = OCXFindChild(element, pXPresentationMLNamespace, "cBhvr");

  if (v13)
  {
    [self readCommonBehaviorData:v13 tgtCommonBehaviorData:v9 drawingState:stateCopy];
  }

  [(PDAnimateRotateBehavior *)v9 setBy:CXDefaultLongAttribute(element, CXNoNamespace, "by", 1)];
  [nodeCopy setRotateBehavior:v9];
}

+ (void)readCommonBehaviorData:(_xmlNode *)data tgtCommonBehaviorData:(id)behaviorData drawingState:(id)state
{
  behaviorDataCopy = behaviorData;
  stateCopy = state;
  client = [stateCopy client];
  presentationState = [client presentationState];

  pXPresentationMLNamespace = [presentationState PXPresentationMLNamespace];
  v12 = OCXFindChild(data, pXPresentationMLNamespace, "cTn");

  if (v12)
  {
    [self readCommonTimeNodeData:v12 commonTimeNodeData:behaviorDataCopy drawingState:stateCopy];
  }

  pXPresentationMLNamespace2 = [presentationState PXPresentationMLNamespace];
  v14 = OCXFindChild(data, pXPresentationMLNamespace2, "tgtEl");

  if (v14)
  {
    v15 = [self newTarget:v14 drawingState:stateCopy];
    [behaviorDataCopy setTarget:v15];
  }

  pXPresentationMLNamespace3 = [presentationState PXPresentationMLNamespace];
  v17 = OCXFindChild(data, pXPresentationMLNamespace3, "attrNameLst");

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

    [behaviorDataCopy setAttributeNames:v18];
  }
}

+ (void)readAnimParallelElement:(_xmlNode *)element timeNode:(id)node drawingState:(id)state
{
  nodeCopy = node;
  stateCopy = state;
  v9 = objc_alloc_init(PDParallelTimeNode);
  client = [stateCopy client];
  presentationState = [client presentationState];

  pXPresentationMLNamespace = [presentationState PXPresentationMLNamespace];
  v13 = OCXFindChild(element, pXPresentationMLNamespace, "cTn");

  if (v13)
  {
    [self readCommonTimeNodeData:v13 commonTimeNodeData:v9 drawingState:stateCopy];
  }

  [nodeCopy setParallel:v9];
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

+ (void)readAnimSequentialElement:(_xmlNode *)element timeNode:(id)node drawingState:(id)state
{
  nodeCopy = node;
  stateCopy = state;
  v10 = objc_alloc_init(PDSequentialTimeNode);
  client = [stateCopy client];
  presentationState = [client presentationState];

  [(PDSequentialTimeNode *)v10 setConcurrent:CXDefaultBoolAttribute(element, CXNoNamespace, "concurrent", 0)];
  v26 = 0;
  sequentialPreviousActionMap = [self sequentialPreviousActionMap];
  v14 = [self readOptionalStringAttribute:@"prevAc" fromNode:element attributeMap:sequentialPreviousActionMap toPDDomValue:&v26];

  if (v14)
  {
    [(PDSequentialTimeNode *)v10 setPreviousAction:v26];
  }

  sequentialNextActionMap = [self sequentialNextActionMap];
  v16 = [self readOptionalStringAttribute:@"nextAc" fromNode:element attributeMap:sequentialNextActionMap toPDDomValue:&v25];

  if (v16)
  {
    [(PDSequentialTimeNode *)v10 setNextAction:v25];
  }

  pXPresentationMLNamespace = [presentationState PXPresentationMLNamespace];
  v18 = OCXFindChild(element, pXPresentationMLNamespace, "cTn");

  if (v18)
  {
    [self readCommonTimeNodeData:v18 commonTimeNodeData:v10 drawingState:stateCopy];
  }

  pXPresentationMLNamespace2 = [presentationState PXPresentationMLNamespace];
  v20 = OCXFindChild(element, pXPresentationMLNamespace2, "prevCondLst");

  if (v20)
  {
    v21 = objc_opt_new();
    [self readConditionList:v20 arrayOfConditions:v21 drawingState:stateCopy];
    [(PDSequentialTimeNode *)v10 setPreviousConditions:v21];
  }

  pXPresentationMLNamespace3 = [presentationState PXPresentationMLNamespace];
  v23 = OCXFindChild(element, pXPresentationMLNamespace3, "nextCondLst");

  if (v23)
  {
    v24 = objc_opt_new();
    [self readConditionList:v23 arrayOfConditions:v24 drawingState:stateCopy];
    [(PDSequentialTimeNode *)v10 setNextConditions:v24];
  }

  [nodeCopy setSequential:v10];
}

+ (id)readParagraphBuild:(_xmlNode *)build
{
  v4 = CXDefaultLongAttribute(build, CXNoNamespace, "advAuto", -1);
  v5 = CXDefaultBoolAttribute(build, CXNoNamespace, "animBg", 0);
  v6 = CXDefaultLongAttribute(build, CXNoNamespace, "bldLvl", 1);
  v7 = CXDefaultBoolAttribute(build, CXNoNamespace, "rev", 0);
  v8 = CXDefaultStringAttribute(build, CXNoNamespace, "build", @"whole");
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

+ (int)readChartBuildType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"series"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"category"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"seriesEl"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"categoryEl"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)readOleChartBuild:(_xmlNode *)build
{
  v5 = CXDefaultBoolAttribute(build, CXNoNamespace, "animBg", 0);
  v6 = CXDefaultStringAttribute(build, CXNoNamespace, "bld", @"allAtOnce");
  v7 = -[PDChartBuild initWithBuildType:]([PDChartBuild alloc], "initWithBuildType:", [self readChartBuildType:v6]);
  [(PDBuild *)v7 setIsAnimateBackground:v5];

  return v7;
}

+ (id)readGraphicBuild:(_xmlNode *)build drawingState:(id)state
{
  stateCopy = state;
  client = [stateCopy client];
  presentationState = [client presentationState];

  pXPresentationMLNamespace = [presentationState PXPresentationMLNamespace];
  v10 = OCXFindChild(build, pXPresentationMLNamespace, "bldAsOne");

  if (!v10 || (v11 = objc_alloc_init(PDBuild)) == 0)
  {
    pXPresentationMLNamespace2 = [presentationState PXPresentationMLNamespace];
    v13 = OCXFindChild(build, pXPresentationMLNamespace2, "bldSub");

    if (!v13)
    {
      goto LABEL_8;
    }

    pXPresentationMLNamespace3 = [presentationState PXPresentationMLNamespace];
    v15 = OCXFindChild(v13, pXPresentationMLNamespace3, "bldDmg");

    if (!v15 || (v11 = objc_alloc_init(PDDiagramBuild)) == 0)
    {
      oAXMainNamespace = [stateCopy OAXMainNamespace];
      v17 = OCXFindChild(v13, oAXMainNamespace, "bldChart");

      if (v17)
      {
        v18 = CXDefaultLongAttribute(v17, CXNoNamespace, "animBg", 1);
        v19 = CXDefaultStringAttribute(v17, CXNoNamespace, "bld", @"allAtOnce");
        v11 = -[PDChartBuild initWithBuildType:]([PDChartBuild alloc], "initWithBuildType:", [self readChartBuildType:v19]);
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