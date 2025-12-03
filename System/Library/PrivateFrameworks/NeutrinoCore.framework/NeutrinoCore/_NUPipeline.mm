@interface _NUPipeline
+ (id)buildPipelineWithBuilder:(id)builder error:(id *)error;
+ (id)defaultPipelineNameWithIdentifier:(id)identifier;
- (BOOL)_assignInputPort:(id)port toExpression:(id)expression error:(id *)error;
- (BOOL)_bind:(id)_bind to:(id)to error:(id *)error;
- (BOOL)_canAssignInputPort:(id)port toExpression:(id)expression error:(id *)error;
- (BOOL)_canConnect:(id)connect to:(id)to error:(id *)error;
- (BOOL)_canDisconnectInputPort:(id)port error:(id *)error;
- (BOOL)_clearExpressionFromInputPort:(id)port error:(id *)error;
- (BOOL)_connect:(id)_connect to:(id)to error:(id *)error;
- (BOOL)_disconnect:(id)_disconnect error:(id *)error;
- (BOOL)_removeInputPort:(id)port error:(id *)error;
- (BOOL)_removeOutputPort:(id)port error:(id *)error;
- (BOOL)_removeSubpipeline:(id)subpipeline error:(id *)error;
- (BOOL)_resetInputPort:(id)port error:(id *)error;
- (BOOL)_validateInputPort:(id)port error:(id *)error;
- (BOOL)_validateOutputPort:(id)port error:(id *)error;
- (BOOL)assign:(id)assign input:(id)input to:(id)to error:(id *)error;
- (BOOL)assign:(id)assign inputNamed:(id)named to:(id)to error:(id *)error;
- (BOOL)assignInputPort:(id)port toExpression:(id)expression error:(id *)error;
- (BOOL)bind:(id)bind to:(id)to error:(id *)error;
- (BOOL)bindInputChannel:(id)channel to:(id)to error:(id *)error;
- (BOOL)bindInputPort:(id)port to:(id)to error:(id *)error;
- (BOOL)canAssignInputPort:(id)port toExpression:(id)expression error:(id *)error;
- (BOOL)canConnect:(id)connect to:(id)to error:(id *)error;
- (BOOL)canConnectInputPort:(id)port toOutputPort:(id)outputPort error:(id *)error;
- (BOOL)canDisconnectInputPort:(id)port error:(id *)error;
- (BOOL)clear:(id)clear input:(id)input error:(id *)error;
- (BOOL)clearExpressionFromInputPort:(id)port error:(id *)error;
- (BOOL)connect:(id)connect input:(id)input to:(id)to error:(id *)error;
- (BOOL)connect:(id)connect input:(id)input to:(id)to key:(id)key error:(id *)error;
- (BOOL)connect:(id)connect input:(id)input to:(id)to output:(id)output error:(id *)error;
- (BOOL)connect:(id)connect input:(id)input to:(id)to subport:(id)subport error:(id *)error;
- (BOOL)connect:(id)connect subport:(id)subport to:(id)to output:(id)output error:(id *)error;
- (BOOL)connect:(id)connect subport:(id)subport to:(id)to subport:(id)a6 error:(id *)error;
- (BOOL)connect:(id)connect to:(id)to error:(id *)error;
- (BOOL)connect:(id)connect to:(id)to output:(id)output error:(id *)error;
- (BOOL)connectInputPort:(id)port toOutputPort:(id)outputPort error:(id *)error;
- (BOOL)disconnect:(id)disconnect error:(id *)error;
- (BOOL)disconnect:(id)disconnect input:(id)input error:(id *)error;
- (BOOL)disconnect:(id)disconnect subport:(id)subport error:(id *)error;
- (BOOL)disconnectInputPort:(id)port error:(id *)error;
- (BOOL)editSubpipelineAtPath:(id)path withBlock:(id)block error:(id *)error;
- (BOOL)isPrivate;
- (BOOL)isReachableInnerPipeline:(id)pipeline;
- (BOOL)isReachableOuterPipeline:(id)pipeline;
- (BOOL)removeInputChannel:(id)channel error:(id *)error;
- (BOOL)removeInputNamed:(id)named error:(id *)error;
- (BOOL)removeInputPort:(id)port error:(id *)error;
- (BOOL)removeOutputChannel:(id)channel error:(id *)error;
- (BOOL)removeOutputNamed:(id)named error:(id *)error;
- (BOOL)removeOutputPort:(id)port error:(id *)error;
- (BOOL)removeSubpipeline:(id)subpipeline error:(id *)error;
- (BOOL)removeSubpipelineAtPath:(id)path error:(id *)error;
- (BOOL)removeSubpipelineWithName:(id)name error:(id *)error;
- (BOOL)reset:(id)reset error:(id *)error;
- (BOOL)resetInputChannel:(id)channel error:(id *)error;
- (BOOL)resetInputPort:(id)port error:(id *)error;
- (NSArray)inputChannels;
- (NSArray)outputChannels;
- (NSString)alias;
- (NUPipelinePath)path;
- (_NUPipeline)initWithIdentifier:(id)identifier;
- (_NUPipeline)rootPipeline;
- (id)_addInputChannel:(id)channel;
- (id)_addOutputChannel:(id)channel;
- (id)_compactDescriptionForInputPort:(id)port showInside:(BOOL)inside showOutside:(BOOL)outside;
- (id)_compactDescriptionForOutputPort:(id)port showInside:(BOOL)inside showOutside:(BOOL)outside;
- (id)_compactDescriptionWithLevel:(int)level;
- (id)_descriptionWithLevel:(int)level;
- (id)_evaluateInputsWithContext:(id)context error:(id *)error;
- (id)_inputPortForChannel:(id)channel;
- (id)_inputPortMatching:(id)matching;
- (id)_outputPortForChannel:(id)channel;
- (id)_outputPortMatching:(id)matching;
- (id)_subpipelineAtPath:(id)path;
- (id)_subpipelineWithName:(id)name;
- (id)_subpipelines;
- (id)addCIFilterPipelineWithName:(id)name error:(id *)error;
- (id)addConstantData:(id)data error:(id *)error;
- (id)addConstantPipelineWithData:(id)data error:(id *)error;
- (id)addContainerPipeline:(id)pipeline error:(id *)error;
- (id)addCropPipeline;
- (id)addInputChannel:(id)channel error:(id *)error;
- (id)addMapPipeline:(id)pipeline error:(id *)error;
- (id)addOrientationPipeline;
- (id)addOutputChannel:(id)channel error:(id *)error;
- (id)addPipelineWithBuilder:(id)builder error:(id *)error;
- (id)addReducePipeline:(id)pipeline error:(id *)error;
- (id)addStraightenPipeline;
- (id)addSwitchPipeline:(id)pipeline error:(id *)error;
- (id)applyOrientation:(id)orientation to:(id)to error:(id *)error;
- (id)evaluateOutputChannel:(id)channel error:(id *)error;
- (id)evaluateOutputMatching:(id)matching error:(id *)error;
- (id)evaluateOutputPort:(id)port context:(id)context error:(id *)error;
- (id)evaluateOutputPort:(id)port error:(id *)error;
- (id)evaluatePort:(id)port context:(id)context error:(id *)error;
- (id)group:(id)group error:(id *)error;
- (id)inputChannelMatching:(id)matching;
- (id)inputPortForChannel:(id)channel;
- (id)inputPortMatching:(id)matching;
- (id)inputPortNamed:(id)named;
- (id)map:(id)map block:(id)block error:(id *)error;
- (id)outputChannelMatching:(id)matching;
- (id)outputPortForChannel:(id)channel;
- (id)outputPortMatching:(id)matching;
- (id)outputPortNamed:(id)named;
- (id)processContainer:(id)container forEachComponent:(id)component error:(id *)error;
- (id)reduce:(id)reduce with:(id)with block:(id)block error:(id *)error;
- (id)subpipelineAtPath:(id)path;
- (id)subpipelineWithName:(id)name;
- (id)switchOn:(id)on with:(id)with block:(id)block error:(id *)error;
- (void)_addSubpipeline:(id)subpipeline;
- (void)_appendDescription:(id)description forInputPort:(id)port showInside:(BOOL)inside showOutside:(BOOL)outside level:(int)level;
- (void)_appendDescription:(id)description forOutputPort:(id)port showInside:(BOOL)inside showOutside:(BOOL)outside level:(int)level;
- (void)propagateSpecializedInputFormat:(id)format fromPort:(id)port;
- (void)propagateSpecializedOutputFormat:(id)format fromPort:(id)port;
@end

@implementation _NUPipeline

- (id)_compactDescriptionForOutputPort:(id)port showInside:(BOOL)inside showOutside:(BOOL)outside
{
  outsideCopy = outside;
  insideCopy = inside;
  portCopy = port;
  channel = [portCopy channel];
  type = [channel type];
  if ((type - 1) > 4)
  {
    v10 = @"?";
  }

  else
  {
    v10 = off_1E8109A68[type - 1];
  }

  v11 = v10;

  if (insideCopy)
  {
    if ([portCopy isConnected])
    {
      inputPort = [portCopy inputPort];
      compactDescription = [inputPort compactDescription];
    }

    else
    {
      if ([portCopy hasConnectedSubport])
      {
        subports = [portCopy subports];
        v17 = PFMap();
        v18 = [v17 componentsJoinedByString:{@", "}];

        compactDescription = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@]", v18];

LABEL_23:
        v20 = [(__CFString *)v11 stringByAppendingString:compactDescription];

        goto LABEL_24;
      }

      inputPort = [portCopy expression];
      compactDescription2 = [inputPort compactDescription];
      v22 = compactDescription2;
      if (compactDescription2)
      {
        compactDescription = compactDescription2;
      }

      else
      {
        data = [portCopy data];
        compactDescription3 = [data compactDescription];
        v25 = compactDescription3;
        v26 = @"-";
        if (compactDescription3)
        {
          v26 = compactDescription3;
        }

        compactDescription = v26;
      }
    }

    goto LABEL_23;
  }

  if (outsideCopy)
  {
    hasSubConnections = [portCopy hasSubConnections];
    outputConnectionCount = [portCopy outputConnectionCount];
    if (hasSubConnections)
    {
      [(__CFString *)v11 stringByAppendingFormat:@"[%lu]", outputConnectionCount];
    }

    else
    {
      [(__CFString *)v11 stringByAppendingFormat:@"%lu", outputConnectionCount];
    }
    v19 = ;
  }

  else
  {
    v19 = v11;
  }

  v20 = v19;
LABEL_24:

  return v20;
}

- (id)_compactDescriptionForInputPort:(id)port showInside:(BOOL)inside showOutside:(BOOL)outside
{
  outsideCopy = outside;
  insideCopy = inside;
  portCopy = port;
  channel = [portCopy channel];
  type = [channel type];
  if ((type - 1) > 4)
  {
    v10 = @"?";
  }

  else
  {
    v10 = off_1E8109A68[type - 1];
  }

  v11 = v10;

  if (outsideCopy)
  {
    if ([portCopy isConnected])
    {
      inputPort = [portCopy inputPort];
      compactDescription = [inputPort compactDescription];
    }

    else
    {
      if (![portCopy hasConnectedSubport])
      {
        inputPort = [portCopy expression];
        compactDescription2 = [inputPort compactDescription];
        v22 = compactDescription2;
        if (compactDescription2)
        {
          v18 = compactDescription2;
        }

        else
        {
          data = [portCopy data];
          compactDescription3 = [data compactDescription];
          v25 = compactDescription3;
          v26 = @"-";
          if (compactDescription3)
          {
            v26 = compactDescription3;
          }

          v18 = v26;
        }

        goto LABEL_23;
      }

      subports = [portCopy subports];
      v17 = PFMap();
      inputPort = [v17 componentsJoinedByString:{@", "}];

      compactDescription = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@]", inputPort];
    }

    v18 = compactDescription;
LABEL_23:

    if (insideCopy)
    {
      v27 = [(__CFString *)v11 stringByAppendingString:v18];
    }

    else
    {
      v27 = v18;
    }

    v20 = v27;

    goto LABEL_27;
  }

  if (insideCopy)
  {
    hasSubConnections = [portCopy hasSubConnections];
    outputConnectionCount = [portCopy outputConnectionCount];
    if (hasSubConnections)
    {
      [(__CFString *)v11 stringByAppendingFormat:@"[%lu]", outputConnectionCount];
    }

    else
    {
      [(__CFString *)v11 stringByAppendingFormat:@"%lu", outputConnectionCount];
    }
    v19 = ;
  }

  else
  {
    v19 = v11;
  }

  v20 = v19;
LABEL_27:

  return v20;
}

- (id)_compactDescriptionWithLevel:(int)level
{
  if ([(_NUPipeline *)self isInline])
  {
    v5 = 1;
  }

  else if (level)
  {
    v5 = 0;
  }

  else
  {
    v5 = ![(_NUPipeline *)self isPrivate];
  }

  inputChannels = [(_NUPipeline *)self inputChannels];
  v7 = PFMap();

  if ([v7 count])
  {
    v8 = [v7 componentsJoinedByString:{@", "}];
  }

  else
  {
    v8 = @"_";
  }

  outputChannels = [(_NUPipeline *)self outputChannels];
  v10 = PFMap();

  if ([v10 count])
  {
    v11 = [v10 componentsJoinedByString:{@", "}];
    if (v5)
    {
LABEL_11:
      subpipelines = [(_NUPipeline *)self subpipelines];
      alias2 = PFMap();

      if ([alias2 count])
      {
        v14 = [alias2 componentsJoinedByString:@""];;
      }

      else
      {
        v14 = &stru_1F3F4BA98;
      }

      v17 = MEMORY[0x1E696AEC0];
      alias = [(_NUPipeline *)self alias];
      v19 = alias;
      if (level <= 0)
      {
        v20 = @"%@(%@|%@)={%@}";
      }

      else
      {
        v20 = @"%@(%@|%@){%@}";
      }

      v16 = [v17 stringWithFormat:v20, alias, v8, v11, v14];

      goto LABEL_20;
    }
  }

  else
  {
    v11 = @"_";
    if (v5)
    {
      goto LABEL_11;
    }
  }

  v15 = MEMORY[0x1E696AEC0];
  alias2 = [(_NUPipeline *)self alias];
  v16 = [v15 stringWithFormat:@"%@(%@|%@)", alias2, v8, v11];
LABEL_20:

  return v16;
}

- (NSString)alias
{
  name = [(_NUPipeline *)self name];
  uppercaseLetterCharacterSet = [MEMORY[0x1E696AD48] uppercaseLetterCharacterSet];
  decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  [uppercaseLetterCharacterSet formUnionWithCharacterSet:decimalDigitCharacterSet];

  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v6 = [name length];
  v7 = 0;
  do
  {
    v8 = [name rangeOfCharacterFromSet:uppercaseLetterCharacterSet options:10 range:{v7, v6}];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    v6 -= v10;
    v7 += v10;
  }

  while (v8 != 0x7FFFFFFFFFFFFFFFLL && v6 != 0);
  if (v7)
  {
    v12 = [name substringWithRange:{v7 - 1, 1}];
    [v5 appendString:v12];
  }

  else
  {
    v12 = [name substringWithRange:{0, 1}];
    uppercaseString = [v12 uppercaseString];
    [v5 appendString:uppercaseString];
  }

  if (v6)
  {
    do
    {
      v14 = [name rangeOfCharacterFromSet:uppercaseLetterCharacterSet options:2 range:{v7, v6}];
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v16 = v14;
      v17 = v15;
      v18 = [name substringWithRange:{v14, v15}];
      [v5 appendString:v18];

      v19 = v7 + v6;
      v7 = v16 + v17;
      v6 = v19 - (v16 + v17);
    }

    while (v19 != v16 + v17);
  }

  return v5;
}

- (void)_appendDescription:(id)description forOutputPort:(id)port showInside:(BOOL)inside showOutside:(BOOL)outside level:(int)level
{
  outsideCopy = outside;
  insideCopy = inside;
  v31 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  portCopy = port;
  v14 = (level + 1);
  fullName = [portCopy fullName];
  effectiveFormat = [portCopy effectiveFormat];
  v17 = [effectiveFormat description];
  [descriptionCopy appendFormat:@"\n%*s+ %@ (%@)", (2 * v14), "", fullName, v17];

  if (insideCopy)
  {
    if ([portCopy isConnected])
    {
      inputPort = [portCopy inputPort];
      v19 = [inputPort description];
      [descriptionCopy appendFormat:@" << %@", v19];

      if (outsideCopy)
      {
        goto LABEL_12;
      }
    }

    else if ([portCopy hasConnectedSubport])
    {
      [descriptionCopy appendFormat:@" << [%lu]", objc_msgSend(portCopy, "inputConnectionCount")];
      if (outsideCopy)
      {
        goto LABEL_12;
      }
    }

    else
    {
      [descriptionCopy appendString:@" <>"];
      if (outsideCopy)
      {
        goto LABEL_12;
      }
    }

LABEL_3:
    if (!insideCopy)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  if (!outsideCopy)
  {
    goto LABEL_3;
  }

LABEL_12:
  outputConnectionCount = [portCopy outputConnectionCount];
  if (outputConnectionCount)
  {
    [descriptionCopy appendFormat:@" >> [%lu]", outputConnectionCount];
    if (!insideCopy)
    {
      goto LABEL_25;
    }
  }

  else
  {
    [descriptionCopy appendString:@" ><"];
    if (!insideCopy)
    {
      goto LABEL_25;
    }
  }

LABEL_16:
  if ([portCopy hasConnectedSubport])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    subports = [portCopy subports];
    v22 = [subports countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v27;
      do
      {
        v25 = 0;
        do
        {
          if (*v27 != v24)
          {
            objc_enumerationMutation(subports);
          }

          [(_NUPipeline *)self _appendDescription:descriptionCopy forOutputPort:*(*(&v26 + 1) + 8 * v25++) showInside:1 showOutside:outsideCopy level:v14];
        }

        while (v23 != v25);
        v23 = [subports countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v23);
    }
  }

LABEL_25:
}

- (void)_appendDescription:(id)description forInputPort:(id)port showInside:(BOOL)inside showOutside:(BOOL)outside level:(int)level
{
  outsideCopy = outside;
  insideCopy = inside;
  v33 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  portCopy = port;
  v14 = (level + 1);
  fullName = [portCopy fullName];
  effectiveFormat = [portCopy effectiveFormat];
  v17 = [effectiveFormat description];
  [descriptionCopy appendFormat:@"\n%*s- %@ (%@)", (2 * v14), "", fullName, v17];

  if (outsideCopy)
  {
    if ([portCopy isConnected])
    {
      inputPort = [portCopy inputPort];
      v19 = [inputPort description];
      [descriptionCopy appendFormat:@" << %@", v19];
      goto LABEL_14;
    }

    if ([portCopy hasConnectedSubport])
    {
      [descriptionCopy appendFormat:@" << [%lu]", objc_msgSend(portCopy, "inputConnectionCount")];
      if (insideCopy)
      {
        goto LABEL_15;
      }

      goto LABEL_3;
    }

    expression = [portCopy expression];

    if (expression)
    {
      inputPort = [portCopy expression];
      v19 = [inputPort description];
      [descriptionCopy appendFormat:@" := %@", v19];
    }

    else
    {
      data = [portCopy data];

      if (!data)
      {
        [descriptionCopy appendString:@" <>"];
        if (insideCopy)
        {
          goto LABEL_15;
        }

LABEL_3:
        if (!outsideCopy)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      inputPort = [portCopy data];
      v19 = [inputPort description];
      [descriptionCopy appendFormat:@" <= %@", v19];
    }

LABEL_14:

    if (insideCopy)
    {
      goto LABEL_15;
    }

    goto LABEL_3;
  }

  if (!insideCopy)
  {
    goto LABEL_3;
  }

LABEL_15:
  outputConnectionCount = [portCopy outputConnectionCount];
  if (outputConnectionCount)
  {
    [descriptionCopy appendFormat:@" >> [%lu]", outputConnectionCount];
    if (!outsideCopy)
    {
      goto LABEL_20;
    }
  }

  else
  {
    [descriptionCopy appendString:@" ><"];
    if (!outsideCopy)
    {
LABEL_20:
      if (!insideCopy || ![portCopy hasSubConnections])
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }
  }

LABEL_19:
  if (([portCopy hasConnectedSubport] & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_22:
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  subports = [portCopy subports];
  v24 = [subports countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v29;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v29 != v26)
        {
          objc_enumerationMutation(subports);
        }

        [(_NUPipeline *)self _appendDescription:descriptionCopy forInputPort:*(*(&v28 + 1) + 8 * i) showInside:insideCopy showOutside:outsideCopy level:v14];
      }

      v25 = [subports countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v25);
  }

LABEL_30:
}

- (id)_descriptionWithLevel:(int)level
{
  v3 = *&level;
  v47 = *MEMORY[0x1E69E9840];
  if ([(_NUPipeline *)self isInline])
  {
    v5 = 1;
  }

  else if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(_NUPipeline *)self isPrivate]^ 1;
  }

  v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if (v3)
  {
    name = [(_NUPipeline *)self name];
    inputChannels = [(_NUPipeline *)self inputChannels];
    v9 = [inputChannels count];
    outputChannels = [(_NUPipeline *)self outputChannels];
    [v6 appendFormat:@"%@(%lu|%lu)", name, v9, objc_msgSend(outputChannels, "count")];
  }

  else
  {
    name = [(_NUPipeline *)self identifier];
    inputChannels = [name name];
    outputChannels = [(_NUPipeline *)self inputChannels];
    v11 = [outputChannels count];
    outputChannels2 = [(_NUPipeline *)self outputChannels];
    [v6 appendFormat:@"%@(%lu|%lu) = {", inputChannels, v11, objc_msgSend(outputChannels2, "count")];
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  inputChannels2 = [(_NUPipeline *)self inputChannels];
  v14 = [inputChannels2 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v41;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v41 != v16)
        {
          objc_enumerationMutation(inputChannels2);
        }

        v18 = [(_NUPipeline *)self inputPortForChannel:*(*(&v40 + 1) + 8 * i)];
        [(_NUPipeline *)self _appendDescription:v6 forInputPort:v18 showInside:v5 showOutside:v3 > 0 level:v3];
      }

      v15 = [inputChannels2 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v15);
  }

  if (v5)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [(_NUPipeline *)self subpipelines];
    v19 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v37;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v37 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = [*(*(&v36 + 1) + 8 * j) _descriptionWithLevel:(v3 + 1)];
          [v6 appendFormat:@"\n%*s* %@", (2 * (v3 + 1)), "", v23];
        }

        v20 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
      }

      while (v20);
    }
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  outputChannels3 = [(_NUPipeline *)self outputChannels];
  v25 = [outputChannels3 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v33;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(outputChannels3);
        }

        v29 = [(_NUPipeline *)self outputPortForChannel:*(*(&v32 + 1) + 8 * k)];
        [(_NUPipeline *)self _appendDescription:v6 forOutputPort:v29 showInside:v5 showOutside:v3 > 0 level:v3];
      }

      v26 = [outputChannels3 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v26);
  }

  if (!v3)
  {
    [v6 appendFormat:@"\n%*s}", 0, ""];
  }

  return v6;
}

- (BOOL)isPrivate
{
  identifier = [(_NUPipeline *)self identifier];
  namespace = [identifier namespace];
  v5 = [namespace hasPrefix:@"com.apple.photo"];

  if (v5)
  {
    return 1;
  }

  identifier2 = [(_NUPipeline *)self identifier];
  namespace2 = [identifier2 namespace];
  v9 = [namespace2 isEqualToString:@"com.apple.coreimage"];

  return v9;
}

- (BOOL)editSubpipelineAtPath:(id)path withBlock:(id)block error:(id *)error
{
  v70 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  blockCopy = block;
  if (!pathCopy)
  {
    v17 = NUAssertLogger_5769();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "path != nil"];
      *buf = 138543362;
      v67 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_5769();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v39 = MEMORY[0x1E696AF00];
        v40 = v38;
        callStackSymbols = [v39 callStackSymbols];
        v42 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v67 = v38;
        v68 = 2114;
        v69 = v42;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v67 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline editSubpipelineAtPath:withBlock:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2436, @"Invalid parameter not satisfying: %s", v43, v44, v45, v46, "path != nil");
  }

  v10 = blockCopy;
  if (!blockCopy)
  {
    v24 = NUAssertLogger_5769();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "block != nil"];
      *buf = 138543362;
      v67 = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_5769();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (v26)
    {
      if (v28)
      {
        v47 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v48 = MEMORY[0x1E696AF00];
        v49 = v47;
        callStackSymbols3 = [v48 callStackSymbols];
        v51 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v67 = v47;
        v68 = 2114;
        v69 = v51;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v67 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline editSubpipelineAtPath:withBlock:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2437, @"Invalid parameter not satisfying: %s", v52, v53, v54, v55, "block != nil");
  }

  if (!error)
  {
    v31 = NUAssertLogger_5769();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v67 = v32;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v34 = NUAssertLogger_5769();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (v33)
    {
      if (v35)
      {
        v56 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v57 = MEMORY[0x1E696AF00];
        v58 = v56;
        callStackSymbols5 = [v57 callStackSymbols];
        v60 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v67 = v56;
        v68 = 2114;
        v69 = v60;
        _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v35)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v37 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v67 = v37;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline editSubpipelineAtPath:withBlock:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2438, @"Invalid parameter not satisfying: %s", v61, v62, v63, v64, "error != NULL");
  }

  v11 = [(_NUPipeline *)self _subpipelineAtPath:pathCopy];
  v12 = v11;
  if (!v11)
  {
    v15 = @"No subpipeline at path";
LABEL_13:
    [NUError notFoundError:v15 object:pathCopy];
    *error = v13 = 0;
    goto LABEL_14;
  }

  if (([v11 isInline] & 1) == 0)
  {
    v15 = @"Pipeline not editable";
    goto LABEL_13;
  }

  if (![(_NUPipeline *)self isReachableInnerPipeline:v12])
  {
    v15 = @"Pipeline is not reachable";
    goto LABEL_13;
  }

  v65 = 0;
  v13 = (v10)[2](v10, v12, &v65);
  v14 = v65;
  if ((v13 & 1) == 0)
  {
    *error = [NUError errorWithCode:1 reason:@"Failed to edit pipeline" object:pathCopy underlyingError:v14];
  }

LABEL_14:
  return v13;
}

- (BOOL)_removeSubpipeline:(id)subpipeline error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  subpipelineCopy = subpipeline;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  inputChannels = [subpipelineCopy inputChannels];
  v7 = [inputChannels countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(inputChannels);
        }

        v11 = [subpipelineCopy _inputPortForChannel:*(*(&v23 + 1) + 8 * v10)];
        [v11 disconnectAll];

        ++v10;
      }

      while (v8 != v10);
      v8 = [inputChannels countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  outputChannels = [subpipelineCopy outputChannels];
  v13 = [outputChannels countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(outputChannels);
        }

        v17 = [subpipelineCopy _outputPortForChannel:*(*(&v19 + 1) + 8 * v16)];
        [v17 deleteAllConnections];

        ++v16;
      }

      while (v14 != v16);
      v14 = [outputChannels countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  [(NSMutableArray *)self->_subpipelines removeObjectIdenticalTo:subpipelineCopy];
  return 1;
}

- (BOOL)removeSubpipelineAtPath:(id)path error:(id *)error
{
  v49 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!pathCopy)
  {
    v13 = NUAssertLogger_5769();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "path != nil"];
      *buf = 138543362;
      v46 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_5769();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        callStackSymbols = [v28 callStackSymbols];
        v31 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v46 = v27;
        v47 = 2114;
        v48 = v31;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v46 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeSubpipelineAtPath:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2399, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "path != nil");
  }

  if (!error)
  {
    v20 = NUAssertLogger_5769();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v46 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_5769();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      if (v24)
      {
        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        callStackSymbols3 = [v37 callStackSymbols];
        v40 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v46 = v36;
        v47 = 2114;
        v48 = v40;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v46 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeSubpipelineAtPath:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2400, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "error != NULL");
  }

  v7 = pathCopy;
  v8 = [(_NUPipeline *)self _subpipelineAtPath:pathCopy];
  if (!v8)
  {
    v11 = @"No subpipeline at path";
LABEL_8:
    [NUError notFoundError:v11 object:v7];
    *error = v10 = 0;
    goto LABEL_9;
  }

  if (![(_NUPipeline *)self isReachableInnerPipeline:v8])
  {
    v11 = @"Subpipeline is not reachable";
    goto LABEL_8;
  }

  superpipeline = [v8 superpipeline];
  v10 = [superpipeline _removeSubpipeline:v8 error:error];

LABEL_9:
  return v10;
}

- (BOOL)removeSubpipelineWithName:(id)name error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (!nameCopy)
  {
    v11 = NUAssertLogger_5769();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "name != nil"];
      *buf = 138543362;
      v44 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_5769();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v26 = MEMORY[0x1E696AF00];
        v27 = v25;
        callStackSymbols = [v26 callStackSymbols];
        v29 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v25;
        v45 = 2114;
        v46 = v29;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeSubpipelineWithName:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2386, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "name != nil");
  }

  if (!error)
  {
    v18 = NUAssertLogger_5769();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v44 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_5769();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (v20)
    {
      if (v22)
      {
        v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        callStackSymbols3 = [v35 callStackSymbols];
        v38 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v34;
        v45 = 2114;
        v46 = v38;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeSubpipelineWithName:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2387, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "error != NULL");
  }

  v7 = nameCopy;
  v8 = [(_NUPipeline *)self _subpipelineWithName:nameCopy];
  if (v8)
  {
    v9 = [(_NUPipeline *)self _removeSubpipeline:v8 error:error];
  }

  else
  {
    [NUError notFoundError:@"No subpipeline with name" object:v7];
    *error = v9 = 0;
  }

  return v9;
}

- (BOOL)removeSubpipeline:(id)subpipeline error:(id *)error
{
  v67 = *MEMORY[0x1E69E9840];
  subpipelineCopy = subpipeline;
  if (!subpipelineCopy)
  {
    v10 = NUAssertLogger_5769();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "pipeline != nil"];
      *buf = 138543362;
      v64 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_5769();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        callStackSymbols = [v35 callStackSymbols];
        v38 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v34;
        v65 = 2114;
        v66 = v38;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeSubpipeline:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2373, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "pipeline != nil");
  }

  if (!error)
  {
    v17 = NUAssertLogger_5769();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v64 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_5769();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      if (v21)
      {
        v43 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v44 = MEMORY[0x1E696AF00];
        v45 = v43;
        callStackSymbols3 = [v44 callStackSymbols];
        v47 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v43;
        v65 = 2114;
        v66 = v47;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeSubpipeline:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2374, @"Invalid parameter not satisfying: %s", v48, v49, v50, v51, "error != NULL");
  }

  v7 = subpipelineCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v24 = NUAssertLogger_5769();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = MEMORY[0x1E696AEC0];
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = [v25 stringWithFormat:@"Invalid parameter not kind of %@", v27];
      *buf = 138543362;
      v64 = v28;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_5769();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v31)
      {
        v52 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v53 = MEMORY[0x1E696AF00];
        v54 = v52;
        callStackSymbols5 = [v53 callStackSymbols];
        v56 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v52;
        v65 = 2114;
        v66 = v56;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v57 = objc_opt_class();
    v58 = NSStringFromClass(v57);
    _NUAssertFailHandler("[_NUPipeline removeSubpipeline:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2375, @"Invalid parameter not kind of %@", v59, v60, v61, v62, v58);
  }

  if ([(NSMutableArray *)self->_subpipelines indexOfObjectIdenticalTo:v7]== 0x7FFFFFFFFFFFFFFFLL)
  {
    [NUError notFoundError:@"No such subpipeline" object:v7];
    *error = v8 = 0;
  }

  else
  {
    v8 = [(_NUPipeline *)self _removeSubpipeline:v7 error:error];
  }

  return v8;
}

- (_NUPipeline)rootPipeline
{
  selfCopy = self;
  superpipeline = [(_NUPipeline *)selfCopy superpipeline];

  if (superpipeline)
  {
    do
    {
      superpipeline2 = [(_NUPipeline *)selfCopy superpipeline];

      v4Superpipeline = [(_NUPipeline *)superpipeline2 superpipeline];

      selfCopy = superpipeline2;
    }

    while (v4Superpipeline);
  }

  else
  {
    superpipeline2 = selfCopy;
  }

  return superpipeline2;
}

- (id)_subpipelineAtPath:(id)path
{
  v22 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  selfCopy = self;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  components = [pathCopy components];
  v7 = [components countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(components);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        type = [v11 type];
        if (type)
        {
          if (type == 2)
          {
            superpipeline = [(_NUPipeline *)selfCopy superpipeline];
          }

          else
          {
            if (type != 3)
            {
              continue;
            }

            superpipeline = [(_NUPipeline *)selfCopy rootPipeline];
          }

          v14 = superpipeline;
        }

        else
        {
          name = [v11 name];
          v14 = [(_NUPipeline *)selfCopy _subpipelineWithName:name];

          selfCopy = name;
        }

        selfCopy = v14;
      }

      v8 = [components countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return selfCopy;
}

- (id)subpipelineAtPath:(id)path
{
  v28 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!pathCopy)
  {
    v8 = NUAssertLogger_5769();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "path != nil"];
      *buf = 138543362;
      v25 = v9;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v11 = NUAssertLogger_5769();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v16 = MEMORY[0x1E696AF00];
        v17 = v15;
        callStackSymbols = [v16 callStackSymbols];
        v19 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v15;
        v26 = 2114;
        v27 = v19;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline subpipelineAtPath:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2332, @"Invalid parameter not satisfying: %s", v20, v21, v22, v23, "path != nil");
  }

  v5 = pathCopy;
  v6 = [(_NUPipeline *)self _subpipelineAtPath:pathCopy];
  if (v6 && ![(_NUPipeline *)self isReachableInnerPipeline:v6]&& ![(_NUPipeline *)self isReachableOuterPipeline:v6])
  {

    v6 = 0;
  }

  return v6;
}

- (id)_subpipelineWithName:(id)name
{
  nameCopy = name;
  v3 = nameCopy;
  v4 = PFFind();

  return v4;
}

- (id)subpipelineWithName:(id)name
{
  v28 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (!nameCopy)
  {
    v8 = NUAssertLogger_5769();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "name != nil"];
      *buf = 138543362;
      v25 = v9;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v11 = NUAssertLogger_5769();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v16 = MEMORY[0x1E696AF00];
        v17 = v15;
        callStackSymbols = [v16 callStackSymbols];
        v19 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v15;
        v26 = 2114;
        v27 = v19;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline subpipelineWithName:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2320, @"Invalid parameter not satisfying: %s", v20, v21, v22, v23, "name != nil");
  }

  v5 = nameCopy;
  v6 = [(_NUPipeline *)self _subpipelineWithName:nameCopy];

  return v6;
}

- (id)_subpipelines
{
  v2 = [(NSMutableArray *)self->_subpipelines copy];

  return v2;
}

- (void)_addSubpipeline:(id)subpipeline
{
  v46 = *MEMORY[0x1E69E9840];
  subpipelineCopy = subpipeline;
  if (!subpipelineCopy)
  {
    v6 = NUAssertLogger_5769();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "pipeline != nil"];
      *buf = 138543362;
      v43 = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_5769();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v23 = MEMORY[0x1E696AF00];
        v24 = v22;
        callStackSymbols = [v23 callStackSymbols];
        v26 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v22;
        v44 = 2114;
        v45 = v26;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline _addSubpipeline:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2304, @"Invalid parameter not satisfying: %s", v27, v28, v29, v30, "pipeline != nil");
  }

  v41 = subpipelineCopy;
  superpipeline = [subpipelineCopy superpipeline];

  if (superpipeline)
  {
    v13 = NUAssertLogger_5769();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x1E696AEC0];
      superpipeline2 = [v41 superpipeline];
      v16 = [v14 stringWithFormat:@"Pipeline already has superpipeline: %@", superpipeline2];
      *buf = 138543362;
      v43 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_5769();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (v17)
    {
      if (v19)
      {
        v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v32 = MEMORY[0x1E696AF00];
        v33 = v31;
        callStackSymbols3 = [v32 callStackSymbols];
        v35 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v31;
        v44 = 2114;
        v45 = v35;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    superpipeline3 = [v41 superpipeline];
    _NUAssertFailHandler("[_NUPipeline _addSubpipeline:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2305, @"Pipeline already has superpipeline: %@", v37, v38, v39, v40, superpipeline3);
  }

  [(NSMutableArray *)self->_subpipelines addObject:v41];
  [v41 setSuperpipeline:self];
}

- (id)group:(id)group error:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  if (!groupCopy)
  {
    v13 = NUAssertLogger_5769();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "block != nil"];
      *buf = 138543362;
      v47 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_5769();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        callStackSymbols = [v28 callStackSymbols];
        v31 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v27;
        v48 = 2114;
        v49 = v31;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline group:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2286, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "block != nil");
  }

  if (!error)
  {
    v20 = NUAssertLogger_5769();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v47 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_5769();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      if (v24)
      {
        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        callStackSymbols3 = [v37 callStackSymbols];
        v40 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v36;
        v48 = 2114;
        v49 = v40;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline group:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2287, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "error != NULL");
  }

  v7 = groupCopy;
  v8 = objc_alloc_init(_NUGroupPipeline);
  [(_NUPipeline *)self _addSubpipeline:v8];
  v45 = 0;
  v9 = (v7)[2](v7, v8, &v45);
  v10 = v45;
  if (v9)
  {
    v11 = v8;
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to build group pipeline" object:v8 underlyingError:v10];
    *error = v11 = 0;
  }

  return v11;
}

+ (id)buildPipelineWithBuilder:(id)builder error:(id *)error
{
  v52 = *MEMORY[0x1E69E9840];
  builderCopy = builder;
  if (!builderCopy)
  {
    v15 = NUAssertLogger_5769();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "builder != nil"];
      *buf = 138543362;
      v49 = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_5769();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v30 = MEMORY[0x1E696AF00];
        v31 = v29;
        callStackSymbols = [v30 callStackSymbols];
        v33 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v49 = v29;
        v50 = 2114;
        v51 = v33;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v49 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUPipeline buildPipelineWithBuilder:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2029, @"Invalid parameter not satisfying: %s", v34, v35, v36, v37, "builder != nil");
  }

  if (!error)
  {
    v22 = NUAssertLogger_5769();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v49 = v23;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger_5769();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (v24)
    {
      if (v26)
      {
        v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v39 = MEMORY[0x1E696AF00];
        v40 = v38;
        callStackSymbols3 = [v39 callStackSymbols];
        v42 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v49 = v38;
        v50 = 2114;
        v51 = v42;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v49 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUPipeline buildPipelineWithBuilder:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2030, @"Invalid parameter not satisfying: %s", v43, v44, v45, v46, "error != NULL");
  }

  v6 = builderCopy;
  v7 = [_NUPipeline alloc];
  identifier = [v6 identifier];
  v9 = [(_NUPipeline *)v7 initWithIdentifier:identifier];

  v47 = 0;
  if ([v6 buildPipeline:v9 error:&v47])
  {
    v10 = v9;
  }

  else
  {
    v11 = v47;
    v12 = [NUError errorWithCode:1 reason:@"Pipeline builder failure" object:v9 underlyingError:v11];
    v13 = v12;

    v10 = 0;
    *error = v12;
  }

  return v10;
}

+ (id)defaultPipelineNameWithIdentifier:(id)identifier
{
  name = [identifier name];
  uppercaseLetterCharacterSet = [MEMORY[0x1E696AB08] uppercaseLetterCharacterSet];
  v5 = [name length];
  v6 = 0;
  do
  {
    v7 = [name rangeOfCharacterFromSet:uppercaseLetterCharacterSet options:10 range:{v6, v5}];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    v5 -= v9;
    v6 += v9;
  }

  while (v7 != 0x7FFFFFFFFFFFFFFFLL && v5 != 0);
  if (v6)
  {
    v11 = [name substringWithRange:{v6 - 1, 1}];
    lowercaseString = [v11 lowercaseString];
    v13 = [name substringFromIndex:v6];
    v14 = [lowercaseString stringByAppendingString:v13];
  }

  else
  {
    v14 = name;
  }

  return v14;
}

- (id)processContainer:(id)container forEachComponent:(id)component error:(id *)error
{
  v79 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  componentCopy = component;
  if (!containerCopy)
  {
    v24 = NUAssertLogger_5769();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "containerInput != nil"];
      *buf = 138543362;
      v76 = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_5769();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v28)
      {
        v45 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v46 = MEMORY[0x1E696AF00];
        v47 = v45;
        callStackSymbols = [v46 callStackSymbols];
        v49 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v76 = v45;
        v77 = 2114;
        v78 = v49;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v76 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline processContainer:forEachComponent:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2250, @"Invalid parameter not satisfying: %s", v50, v51, v52, v53, "containerInput != nil");
  }

  v10 = componentCopy;
  if (!componentCopy)
  {
    v31 = NUAssertLogger_5769();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "block != nil"];
      *buf = 138543362;
      v76 = v32;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v34 = NUAssertLogger_5769();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (v33)
    {
      if (v35)
      {
        v54 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v55 = MEMORY[0x1E696AF00];
        v56 = v54;
        callStackSymbols3 = [v55 callStackSymbols];
        v58 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v76 = v54;
        v77 = 2114;
        v78 = v58;
        _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v35)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v37 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v76 = v37;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline processContainer:forEachComponent:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2251, @"Invalid parameter not satisfying: %s", v59, v60, v61, v62, "block != nil");
  }

  if (!error)
  {
    v38 = NUAssertLogger_5769();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v76 = v39;
      _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v41 = NUAssertLogger_5769();
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
    if (v40)
    {
      if (v42)
      {
        v63 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v64 = MEMORY[0x1E696AF00];
        v65 = v63;
        callStackSymbols5 = [v64 callStackSymbols];
        v67 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v76 = v63;
        v77 = 2114;
        v78 = v67;
        _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v42)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v44 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v76 = v44;
      _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline processContainer:forEachComponent:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2252, @"Invalid parameter not satisfying: %s", v68, v69, v70, v71, "error != NULL");
  }

  channel = [containerCopy channel];
  if ([channel type] != 1)
  {

    goto LABEL_10;
  }

  channel2 = [containerCopy channel];
  format = [channel2 format];
  mediaType = [format mediaType];

  if (mediaType != 4)
  {
LABEL_10:
    [NUError invalidError:@"Input is not a media container" object:containerCopy];
    *error = v22 = 0;
    goto LABEL_13;
  }

  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __55___NUPipeline_processContainer_forEachComponent_error___block_invoke;
  v72[3] = &unk_1E8109D58;
  v15 = containerCopy;
  v73 = v15;
  v74 = v10;
  v16 = [(_NUPipeline *)self addContainerPipeline:v72 error:error];
  if (v16 && ([v15 channel], v17 = objc_claimAutoreleasedReturnValue(), +[NUChannelMatching channel:](NUChannelMatching, "channel:", v17), v18 = objc_claimAutoreleasedReturnValue(), v19 = -[_NUPipeline connect:input:to:error:](self, "connect:input:to:error:", v16, v18, v15, error), v18, v17, v19))
  {
    channel3 = [v15 channel];
    v21 = [NUChannelMatching channel:channel3];
    v22 = [v16 outputPortMatching:v21];
  }

  else
  {
    v22 = 0;
  }

LABEL_13:

  return v22;
}

- (id)addContainerPipeline:(id)pipeline error:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  pipelineCopy = pipeline;
  if (!pipelineCopy)
  {
    v13 = NUAssertLogger_5769();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "block != nil"];
      *buf = 138543362;
      v47 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_5769();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        callStackSymbols = [v28 callStackSymbols];
        v31 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v27;
        v48 = 2114;
        v49 = v31;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline addContainerPipeline:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2234, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "block != nil");
  }

  if (!error)
  {
    v20 = NUAssertLogger_5769();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v47 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_5769();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      if (v24)
      {
        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        callStackSymbols3 = [v37 callStackSymbols];
        v40 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v36;
        v48 = 2114;
        v49 = v40;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline addContainerPipeline:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2235, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "error != NULL");
  }

  v7 = pipelineCopy;
  v8 = objc_alloc_init(_NUContainerPipeline);
  [(_NUPipeline *)self _addSubpipeline:v8];
  v45 = 0;
  v9 = (v7)[2](v7, v8, &v45);
  v10 = v45;
  if (v9)
  {
    v11 = v8;
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to build container pipeline" object:v8 underlyingError:v10];
    *error = v11 = 0;
  }

  return v11;
}

- (id)addConstantData:(id)data error:(id *)error
{
  v4 = [(_NUPipeline *)self addConstantPipelineWithData:data error:error];
  v5 = v4;
  if (v4)
  {
    outputChannels = [v4 outputChannels];
    v7 = [outputChannels objectAtIndexedSubscript:0];
    v8 = [v5 outputPortForChannel:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)addConstantPipelineWithData:(id)data error:(id *)error
{
  v54 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (!dataCopy)
  {
    v17 = NUAssertLogger_5769();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "data != nil"];
      *buf = 138543362;
      v51 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_5769();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v32 = MEMORY[0x1E696AF00];
        v33 = v31;
        callStackSymbols = [v32 callStackSymbols];
        v35 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v51 = v31;
        v52 = 2114;
        v53 = v35;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v51 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline addConstantPipelineWithData:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2205, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "data != nil");
  }

  if (!error)
  {
    v24 = NUAssertLogger_5769();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v51 = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_5769();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (v26)
    {
      if (v28)
      {
        v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v41 = MEMORY[0x1E696AF00];
        v42 = v40;
        callStackSymbols3 = [v41 callStackSymbols];
        v44 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v51 = v40;
        v52 = 2114;
        v53 = v44;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v51 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline addConstantPipelineWithData:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2206, @"Invalid parameter not satisfying: %s", v45, v46, v47, v48, "error != nil");
  }

  v7 = dataCopy;
  v8 = objc_alloc_init(_NUConstantPipeline);
  v9 = [NUChannel alloc];
  format = [v7 format];
  v11 = [(NUChannel *)v9 initWithName:@"value" format:format];

  v12 = [(_NUPipeline *)v8 _addOutputChannel:v11];
  v49 = 0;
  v13 = [v12 bindData:v7 error:&v49];
  v14 = v49;
  if (v13)
  {
    [(_NUPipeline *)self _addSubpipeline:v8];
    v15 = v8;
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to bind constant data" object:v7 underlyingError:v14];
    *error = v15 = 0;
  }

  return v15;
}

- (id)switchOn:(id)on with:(id)with block:(id)block error:(id *)error
{
  onCopy = on;
  withCopy = with;
  blockCopy = block;
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __41___NUPipeline_switchOn_with_block_error___block_invoke;
  v27 = &unk_1E8109D58;
  v13 = withCopy;
  v28 = v13;
  v14 = blockCopy;
  v29 = v14;
  v15 = [(_NUPipeline *)self addSwitchPipeline:&v24 error:error];
  if (v15 && (+[NUChannelMatching name:](NUChannelMatching, "name:", @"condition", v24, v25, v26, v27, v28), v16 = objc_claimAutoreleasedReturnValue(), v17 = -[_NUPipeline assign:input:to:error:](self, "assign:input:to:error:", v15, v16, onCopy, error), v16, v17) && ([v13 channel], v18 = objc_claimAutoreleasedReturnValue(), +[NUChannelMatching channel:](NUChannelMatching, "channel:", v18), v19 = objc_claimAutoreleasedReturnValue(), v20 = -[_NUPipeline connect:input:to:error:](self, "connect:input:to:error:", v15, v19, v13, error), v19, v18, v20))
  {
    channel = [v13 channel];
    v22 = [v15 outputPortForChannel:channel];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)addSwitchPipeline:(id)pipeline error:(id *)error
{
  pipelineCopy = pipeline;
  v7 = objc_alloc_init(_NUSwitchPipeline);
  [(_NUPipeline *)self _addSubpipeline:v7];
  v12 = 0;
  v8 = pipelineCopy[2](pipelineCopy, v7, &v12);

  v9 = v12;
  if (v8)
  {
    v10 = v7;
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to build switch pipeline" object:v7 underlyingError:v9];
    *error = v10 = 0;
  }

  return v10;
}

- (id)reduce:(id)reduce with:(id)with block:(id)block error:(id *)error
{
  v93 = *MEMORY[0x1E69E9840];
  reduceCopy = reduce;
  withCopy = with;
  blockCopy = block;
  if (!reduceCopy)
  {
    v34 = NUAssertLogger_5769();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "arrayInput != nil"];
      *buf = 138543362;
      v90 = v35;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v37 = NUAssertLogger_5769();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v38)
      {
        v55 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v56 = MEMORY[0x1E696AF00];
        v57 = v55;
        callStackSymbols = [v56 callStackSymbols];
        v59 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v90 = v55;
        v91 = 2114;
        v92 = v59;
        _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v38)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v40 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v90 = v40;
      _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline reduce:with:block:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2110, @"Invalid parameter not satisfying: %s", v60, v61, v62, v63, "arrayInput != nil");
  }

  v13 = blockCopy;
  if (!blockCopy)
  {
    v41 = NUAssertLogger_5769();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "block != nil"];
      *buf = 138543362;
      v90 = v42;
      _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v43 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v44 = NUAssertLogger_5769();
    v45 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
    if (v43)
    {
      if (v45)
      {
        v64 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v65 = MEMORY[0x1E696AF00];
        v66 = v64;
        callStackSymbols3 = [v65 callStackSymbols];
        v68 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v90 = v64;
        v91 = 2114;
        v92 = v68;
        _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v45)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v47 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v90 = v47;
      _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline reduce:with:block:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2111, @"Invalid parameter not satisfying: %s", v69, v70, v71, v72, "block != nil");
  }

  if (!error)
  {
    v48 = NUAssertLogger_5769();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v90 = v49;
      _os_log_error_impl(&dword_1C0184000, v48, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v50 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v51 = NUAssertLogger_5769();
    v52 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
    if (v50)
    {
      if (v52)
      {
        v73 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v74 = MEMORY[0x1E696AF00];
        v75 = v73;
        callStackSymbols5 = [v74 callStackSymbols];
        v77 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v90 = v73;
        v91 = 2114;
        v92 = v77;
        _os_log_error_impl(&dword_1C0184000, v51, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v52)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v54 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v90 = v54;
      _os_log_error_impl(&dword_1C0184000, v51, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline reduce:with:block:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2112, @"Invalid parameter not satisfying: %s", v78, v79, v80, v81, "error != NULL");
  }

  channel = [reduceCopy channel];
  format = [channel format];
  isArray = [format isArray];

  if ((isArray & 1) == 0)
  {
    [NUError invalidError:@"Input is not an array" object:reduceCopy];
    *error = v21 = 0;
    goto LABEL_19;
  }

  channel2 = [withCopy channel];
  name = [channel2 name];

  channel3 = [reduceCopy channel];
  name2 = [channel3 name];

  if (![name isEqualToString:name2])
  {
    effectiveFormat = [reduceCopy effectiveFormat];
    arrayItemFormat = [effectiveFormat arrayItemFormat];

    v84 = arrayItemFormat;
    v24 = [[NUChannel alloc] initWithName:name2 format:arrayItemFormat];
    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __39___NUPipeline_reduce_with_block_error___block_invoke;
    v85[3] = &unk_1E8109D30;
    v25 = withCopy;
    v86 = v25;
    v83 = v24;
    v87 = v83;
    v88 = v13;
    v26 = [(_NUPipeline *)self addReducePipeline:v85 error:error];
    if (v26)
    {
      v82 = name;
      v27 = [NUChannelMatching name:name2];
      v28 = [(_NUPipeline *)self connect:v26 input:v27 to:reduceCopy error:error];

      if (v28)
      {
        v29 = [NUChannelMatching name:v82];
        v30 = [(_NUPipeline *)self connect:v26 input:v29 to:v25 error:error];

        v31 = v84;
        if (v30)
        {
          channel4 = [v25 channel];
          v21 = [v26 outputPortForChannel:channel4];
        }

        else
        {
          v21 = 0;
        }

        name = v82;
        goto LABEL_17;
      }

      v21 = 0;
      name = v82;
    }

    else
    {
      v21 = 0;
    }

    v31 = v84;
LABEL_17:

    goto LABEL_18;
  }

  [NUError duplicateError:@"Duplicate input name" object:name2];
  *error = v21 = 0;
LABEL_18:

LABEL_19:

  return v21;
}

- (id)addReducePipeline:(id)pipeline error:(id *)error
{
  pipelineCopy = pipeline;
  v7 = objc_alloc_init(_NUReducePipeline);
  [(_NUPipeline *)self _addSubpipeline:v7];
  v12 = 0;
  v8 = pipelineCopy[2](pipelineCopy, v7, &v12);

  v9 = v12;
  if (v8)
  {
    v10 = v7;
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to build reduce pipeline" object:v7 underlyingError:v9];
    *error = v10 = 0;
  }

  return v10;
}

- (id)map:(id)map block:(id)block error:(id *)error
{
  v82 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  blockCopy = block;
  if (!mapCopy)
  {
    v26 = NUAssertLogger_5769();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "arrayInput != nil"];
      *buf = 138543362;
      *&buf[4] = v27;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v29 = NUAssertLogger_5769();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v30)
      {
        v47 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v48 = MEMORY[0x1E696AF00];
        v49 = v47;
        callStackSymbols = [v48 callStackSymbols];
        v51 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v47;
        *&buf[12] = 2114;
        *&buf[14] = v51;
        _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v32;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline map:block:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2056, @"Invalid parameter not satisfying: %s", v52, v53, v54, v55, "arrayInput != nil");
  }

  v10 = blockCopy;
  if (!blockCopy)
  {
    v33 = NUAssertLogger_5769();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "block != nil"];
      *buf = 138543362;
      *&buf[4] = v34;
      _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v36 = NUAssertLogger_5769();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
    if (v35)
    {
      if (v37)
      {
        v56 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v57 = MEMORY[0x1E696AF00];
        v58 = v56;
        callStackSymbols3 = [v57 callStackSymbols];
        v60 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v56;
        *&buf[12] = 2114;
        *&buf[14] = v60;
        _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v37)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v39 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v39;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline map:block:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2057, @"Invalid parameter not satisfying: %s", v61, v62, v63, v64, "block != nil");
  }

  if (!error)
  {
    v40 = NUAssertLogger_5769();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v41;
      _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v42 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v43 = NUAssertLogger_5769();
    v44 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
    if (v42)
    {
      if (v44)
      {
        v65 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v66 = MEMORY[0x1E696AF00];
        v67 = v65;
        callStackSymbols5 = [v66 callStackSymbols];
        v69 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v65;
        *&buf[12] = 2114;
        *&buf[14] = v69;
        _os_log_error_impl(&dword_1C0184000, v43, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v44)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v46 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v46;
      _os_log_error_impl(&dword_1C0184000, v43, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline map:block:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2058, @"Invalid parameter not satisfying: %s", v70, v71, v72, v73, "error != NULL");
  }

  channel = [mapCopy channel];
  format = [channel format];
  isArray = [format isArray];

  if (isArray)
  {
    effectiveFormat = [mapCopy effectiveFormat];
    arrayItemFormat = [effectiveFormat arrayItemFormat];

    channel2 = [mapCopy channel];
    name = [channel2 name];

    v18 = [[NUChannel alloc] initWithName:name format:arrayItemFormat];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v79 = __Block_byref_object_copy__6249;
    v80 = __Block_byref_object_dispose__6250;
    v81 = 0;
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __31___NUPipeline_map_block_error___block_invoke;
    v74[3] = &unk_1E8109D08;
    v19 = v18;
    v75 = v19;
    v76 = v10;
    v77 = buf;
    v20 = [(_NUPipeline *)self addMapPipeline:v74 error:error];
    if (v20 && ([NUChannelMatching name:name], v21 = objc_claimAutoreleasedReturnValue(), v22 = [(_NUPipeline *)self connect:v20 input:v21 to:mapCopy error:error], v21, v22))
    {
      v23 = [NUChannelMatching channel:*(*&buf[8] + 40)];
      v24 = [v20 outputPortMatching:v23];
    }

    else
    {
      v24 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    [NUError invalidError:@"Input is not an array" object:mapCopy];
    *error = v24 = 0;
  }

  return v24;
}

- (id)addMapPipeline:(id)pipeline error:(id *)error
{
  pipelineCopy = pipeline;
  v7 = objc_alloc_init(_NUMapPipeline);
  [(_NUPipeline *)self _addSubpipeline:v7];
  v12 = 0;
  v8 = pipelineCopy[2](pipelineCopy, v7, &v12);

  v9 = v12;
  if (v8)
  {
    v10 = v7;
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to build map pipeline" object:v7 underlyingError:v9];
    *error = v10 = 0;
  }

  return v10;
}

- (id)addPipelineWithBuilder:(id)builder error:(id *)error
{
  v5 = [_NUPipeline buildPipelineWithBuilder:builder error:error];
  if (v5)
  {
    [(_NUPipeline *)self _addSubpipeline:v5];
  }

  return v5;
}

- (id)addCIFilterPipelineWithName:(id)name error:(id *)error
{
  nameCopy = name;
  v7 = [objc_opt_class() buildFilterPipelineWithName:nameCopy error:error];

  if (v7)
  {
    [(_NUPipeline *)self _addSubpipeline:v7];
  }

  return v7;
}

- (id)applyOrientation:(id)orientation to:(id)to error:(id *)error
{
  v75 = *MEMORY[0x1E69E9840];
  orientationCopy = orientation;
  toCopy = to;
  if (!orientationCopy)
  {
    v21 = NUAssertLogger_5769();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "orientationInput != nil"];
      *buf = 138543362;
      v72 = v22;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v24 = NUAssertLogger_5769();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v25)
      {
        v42 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v43 = MEMORY[0x1E696AF00];
        v44 = v42;
        callStackSymbols = [v43 callStackSymbols];
        v46 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v72 = v42;
        v73 = 2114;
        v74 = v46;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v72 = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline applyOrientation:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1984, @"Invalid parameter not satisfying: %s", v47, v48, v49, v50, "orientationInput != nil");
  }

  v10 = toCopy;
  if (!toCopy)
  {
    v28 = NUAssertLogger_5769();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "mediaInput != nil"];
      *buf = 138543362;
      v72 = v29;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v31 = NUAssertLogger_5769();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (v30)
    {
      if (v32)
      {
        v51 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v52 = MEMORY[0x1E696AF00];
        v53 = v51;
        callStackSymbols3 = [v52 callStackSymbols];
        v55 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v72 = v51;
        v73 = 2114;
        v74 = v55;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v72 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline applyOrientation:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1985, @"Invalid parameter not satisfying: %s", v56, v57, v58, v59, "mediaInput != nil");
  }

  if (!error)
  {
    v35 = NUAssertLogger_5769();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v72 = v36;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v37 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v38 = NUAssertLogger_5769();
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
    if (v37)
    {
      if (v39)
      {
        v60 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v61 = MEMORY[0x1E696AF00];
        v62 = v60;
        callStackSymbols5 = [v61 callStackSymbols];
        v64 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v72 = v60;
        v73 = 2114;
        v74 = v64;
        _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v39)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v41 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v72 = v41;
      _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline applyOrientation:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1986, @"Invalid parameter not satisfying: %s", v65, v66, v67, v68, "error != NULL");
  }

  addOrientationPipeline = [(_NUPipeline *)self addOrientationPipeline];
  v12 = [NUChannelMatching type:1];
  v70 = 0;
  v13 = [(_NUPipeline *)self connect:addOrientationPipeline input:v12 to:v10 error:&v70];
  v14 = v70;

  if (v13)
  {
    v15 = [NUChannelMatching type:2];
    v69 = 0;
    v16 = [(_NUPipeline *)self connect:addOrientationPipeline input:v15 to:orientationCopy error:&v69];
    v17 = v69;

    if (v16)
    {
      v18 = [NUChannelMatching type:1];
      v19 = [addOrientationPipeline outputPortMatching:v18];
    }

    else
    {
      [NUError errorWithCode:1 reason:@"Failed to connect input orientation" object:orientationCopy underlyingError:v17];
      *error = v19 = 0;
    }

    v14 = v17;
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to connect input media" object:v10 underlyingError:v14];
    *error = v19 = 0;
  }

  return v19;
}

- (id)addOrientationPipeline
{
  v3 = objc_alloc_init(_NUOrientationPipeline);
  [(_NUPipeline *)self _addSubpipeline:v3];

  return v3;
}

- (id)addCropPipeline
{
  v3 = objc_alloc_init(_NUCropPipeline);
  [(_NUPipeline *)self _addSubpipeline:v3];

  return v3;
}

- (id)addStraightenPipeline
{
  v3 = objc_alloc_init(_NUStraightenPipeline);
  [(_NUPipeline *)self _addSubpipeline:v3];

  return v3;
}

- (id)evaluateOutputMatching:(id)matching error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  matchingCopy = matching;
  if (!matchingCopy)
  {
    v11 = NUAssertLogger_5769();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "outputMatching != nil"];
      *buf = 138543362;
      v44 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_5769();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v26 = MEMORY[0x1E696AF00];
        v27 = v25;
        callStackSymbols = [v26 callStackSymbols];
        v29 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v25;
        v45 = 2114;
        v46 = v29;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline evaluateOutputMatching:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1951, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "outputMatching != nil");
  }

  if (!error)
  {
    v18 = NUAssertLogger_5769();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v44 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_5769();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (v20)
    {
      if (v22)
      {
        v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        callStackSymbols3 = [v35 callStackSymbols];
        v38 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v34;
        v45 = 2114;
        v46 = v38;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline evaluateOutputMatching:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1952, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "error != NULL");
  }

  v7 = matchingCopy;
  v8 = [(_NUPipeline *)self outputPortMatching:matchingCopy];
  if (v8)
  {
    v9 = [(_NUPipeline *)self evaluateOutputPort:v8 error:error];
  }

  else
  {
    [NUError notFoundError:@"No matching output port" object:v7];
    *error = v9 = 0;
  }

  return v9;
}

- (id)evaluateOutputChannel:(id)channel error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  channelCopy = channel;
  if (!channelCopy)
  {
    v11 = NUAssertLogger_5769();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "channel != nil"];
      *buf = 138543362;
      v44 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_5769();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v26 = MEMORY[0x1E696AF00];
        v27 = v25;
        callStackSymbols = [v26 callStackSymbols];
        v29 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v25;
        v45 = 2114;
        v46 = v29;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline evaluateOutputChannel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1938, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "channel != nil");
  }

  if (!error)
  {
    v18 = NUAssertLogger_5769();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v44 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_5769();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (v20)
    {
      if (v22)
      {
        v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        callStackSymbols3 = [v35 callStackSymbols];
        v38 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v34;
        v45 = 2114;
        v46 = v38;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline evaluateOutputChannel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1939, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "error != NULL");
  }

  v7 = channelCopy;
  v8 = [(_NUPipeline *)self outputPortForChannel:channelCopy];
  if (v8)
  {
    v9 = [(_NUPipeline *)self evaluateOutputPort:v8 error:error];
  }

  else
  {
    [NUError notFoundError:@"No matching output port" object:v7];
    *error = v9 = 0;
  }

  return v9;
}

- (id)_evaluateInputsWithContext:(id)context error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = objc_alloc(MEMORY[0x1E695DF90]);
  inputChannels = [(_NUPipeline *)self inputChannels];
  v8 = [v6 initWithCapacity:{objc_msgSend(inputChannels, "count")}];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_inputPorts;
  v9 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [(_NUPipeline *)self _inputPortNamed:v13];
        v21 = 0;
        v15 = [(_NUPipeline *)self _evaluateInputPort:v14 context:contextCopy error:&v21];
        v16 = v21;
        if (!v15)
        {
          *error = [NUError errorWithCode:1 reason:@"Failed to evaluate input port" object:v14 underlyingError:v16];

          v17 = 0;
          goto LABEL_11;
        }

        [v8 setObject:v15 forKeyedSubscript:v13];
      }

      v10 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v17 = v8;
LABEL_11:

  return v17;
}

- (id)evaluatePort:(id)port context:(id)context error:(id *)error
{
  portCopy = port;
  contextCopy = context;
  inputPorts = self->_inputPorts;
  fullName = [portCopy fullName];
  v12 = [(NSMutableDictionary *)inputPorts objectForKey:fullName];

  if (v12 == portCopy)
  {
    fullName2 = [portCopy fullName];
    v16 = [contextCopy dataForChannel:fullName2];

    if (v16)
    {
      v18 = v16;
    }

    else
    {
      channel = [portCopy channel];
      *error = [NUError missingError:@"Missing input data" object:channel];
    }
  }

  else
  {
    outputPorts = self->_outputPorts;
    fullName3 = [portCopy fullName];
    v15 = [(NSMutableDictionary *)outputPorts objectForKey:fullName3];

    if (v15 == portCopy)
    {
      v16 = [(_NUPipeline *)self evaluateOutputPort:portCopy context:contextCopy error:error];
    }

    else
    {
      [NUError unknownError:@"Unknown port" object:portCopy];
      *error = v16 = 0;
    }
  }

  return v16;
}

- (id)evaluateOutputPort:(id)port context:(id)context error:(id *)error
{
  v70 = *MEMORY[0x1E69E9840];
  portCopy = port;
  contextCopy = context;
  if (!portCopy)
  {
    v18 = NUAssertLogger_5769();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "port != nil"];
      *buf = 138543362;
      v67 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_5769();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v40 = MEMORY[0x1E696AF00];
        v41 = v39;
        callStackSymbols = [v40 callStackSymbols];
        v43 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v67 = v39;
        v68 = 2114;
        v69 = v43;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v67 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline evaluateOutputPort:context:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1865, @"Invalid parameter not satisfying: %s", v44, v45, v46, v47, "port != nil");
  }

  v10 = contextCopy;
  if (!contextCopy)
  {
    v25 = NUAssertLogger_5769();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "context != nil"];
      *buf = 138543362;
      v67 = v26;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v28 = NUAssertLogger_5769();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (v27)
    {
      if (v29)
      {
        v48 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v49 = MEMORY[0x1E696AF00];
        v50 = v48;
        callStackSymbols3 = [v49 callStackSymbols];
        v52 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v67 = v48;
        v68 = 2114;
        v69 = v52;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v67 = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline evaluateOutputPort:context:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1866, @"Invalid parameter not satisfying: %s", v53, v54, v55, v56, "context != nil");
  }

  if (!error)
  {
    v32 = NUAssertLogger_5769();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v67 = v33;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v35 = NUAssertLogger_5769();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
    if (v34)
    {
      if (v36)
      {
        v57 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v58 = MEMORY[0x1E696AF00];
        v59 = v57;
        callStackSymbols5 = [v58 callStackSymbols];
        v61 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v67 = v57;
        v68 = 2114;
        v69 = v61;
        _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v36)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v38 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v67 = v38;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline evaluateOutputPort:context:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1867, @"Invalid parameter not satisfying: %s", v62, v63, v64, v65, "error != NULL");
  }

  channel = [portCopy channel];
  v12 = [(_NUPipeline *)self outputPortForChannel:channel];

  if (v12 == portCopy)
  {
    v14 = [(_NUPipeline *)self _evaluateInputsWithContext:v10 error:error];
    if (v14)
    {
      name = [(_NUPipeline *)self name];
      [v10 beginScope:name];

      [v10 setChannelData:v14];
      v13 = [(_NUPipeline *)self _evaluateOutputPort:portCopy context:v10 error:error];
      name2 = [(_NUPipeline *)self name];
      [v10 endScope:name2];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    [NUError invalidError:@"Unknown output port" object:portCopy];
    *error = v13 = 0;
  }

  return v13;
}

- (id)evaluateOutputPort:(id)port error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  portCopy = port;
  if (!portCopy)
  {
    v11 = NUAssertLogger_5769();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "port != nil"];
      *buf = 138543362;
      v44 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_5769();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v26 = MEMORY[0x1E696AF00];
        v27 = v25;
        callStackSymbols = [v26 callStackSymbols];
        v29 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v25;
        v45 = 2114;
        v46 = v29;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline evaluateOutputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1856, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "port != nil");
  }

  if (!error)
  {
    v18 = NUAssertLogger_5769();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v44 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_5769();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (v20)
    {
      if (v22)
      {
        v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        callStackSymbols3 = [v35 callStackSymbols];
        v38 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v34;
        v45 = 2114;
        v46 = v38;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline evaluateOutputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1857, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "error != NULL");
  }

  v7 = portCopy;
  v8 = objc_alloc_init(_NUPipelineEvaluationContext);
  v9 = [(_NUPipeline *)self evaluateOutputPort:v7 context:v8 error:error];

  return v9;
}

- (void)propagateSpecializedOutputFormat:(id)format fromPort:(id)port
{
  v21 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  portCopy = port;
  outputPorts = self->_outputPorts;
  fullName = [portCopy fullName];
  v10 = [(NSMutableDictionary *)outputPorts objectForKey:fullName];

  if (v10 == portCopy)
  {
    v11 = [(_NUPipeline *)self _genericInputPortsMatchingOutputPort:portCopy];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v16 + 1) + 8 * v15++) specializeWithOutputFormat:formatCopy];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v13);
    }
  }
}

- (void)propagateSpecializedInputFormat:(id)format fromPort:(id)port
{
  v21 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  portCopy = port;
  inputPorts = self->_inputPorts;
  fullName = [portCopy fullName];
  v10 = [(NSMutableDictionary *)inputPorts objectForKey:fullName];

  if (v10 == portCopy)
  {
    v11 = [(_NUPipeline *)self _genericOutputPortsMatchingInputPort:portCopy];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v16 + 1) + 8 * v15++) specializeWithInputFormat:formatCopy];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v13);
    }
  }
}

- (BOOL)clear:(id)clear input:(id)input error:(id *)error
{
  v87 = *MEMORY[0x1E69E9840];
  clearCopy = clear;
  inputCopy = input;
  if (!clearCopy)
  {
    v14 = NUAssertLogger_5769();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "pipeline != nil"];
      *buf = 138543362;
      v84 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_5769();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v45 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v46 = MEMORY[0x1E696AF00];
        v47 = v45;
        callStackSymbols = [v46 callStackSymbols];
        v49 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v84 = v45;
        v85 = 2114;
        v86 = v49;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v84 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline clear:input:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1804, @"Invalid parameter not satisfying: %s", v50, v51, v52, v53, "pipeline != nil");
  }

  v10 = inputCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = NUAssertLogger_5769();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = MEMORY[0x1E696AEC0];
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = [v22 stringWithFormat:@"Invalid parameter not kind of %@", v24];
      *buf = 138543362;
      v84 = v25;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_5769();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (v26)
    {
      if (v28)
      {
        v54 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v55 = MEMORY[0x1E696AF00];
        v56 = v54;
        callStackSymbols3 = [v55 callStackSymbols];
        v58 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v84 = v54;
        v85 = 2114;
        v86 = v58;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v84 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v59 = objc_opt_class();
    v60 = NSStringFromClass(v59);
    _NUAssertFailHandler("[_NUPipeline clear:input:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1805, @"Invalid parameter not kind of %@", v61, v62, v63, v64, v60);
  }

  if (!v10)
  {
    v31 = NUAssertLogger_5769();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputMatching != nil"];
      *buf = 138543362;
      v84 = v32;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v34 = NUAssertLogger_5769();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (v33)
    {
      if (v35)
      {
        v65 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v66 = MEMORY[0x1E696AF00];
        v67 = v65;
        callStackSymbols5 = [v66 callStackSymbols];
        v69 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v84 = v65;
        v85 = 2114;
        v86 = v69;
        _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v35)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v37 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v84 = v37;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline clear:input:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1806, @"Invalid parameter not satisfying: %s", v70, v71, v72, v73, "inputMatching != nil");
  }

  if (!error)
  {
    v38 = NUAssertLogger_5769();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v84 = v39;
      _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v41 = NUAssertLogger_5769();
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
    if (v40)
    {
      if (v42)
      {
        v74 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v75 = MEMORY[0x1E696AF00];
        v76 = v74;
        callStackSymbols7 = [v75 callStackSymbols];
        v78 = [callStackSymbols7 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v84 = v74;
        v85 = 2114;
        v86 = v78;
        _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v42)
    {
      callStackSymbols8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v44 = [callStackSymbols8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v84 = v44;
      _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline clear:input:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1807, @"Invalid parameter not satisfying: %s", v79, v80, v81, v82, "error != NULL");
  }

  v11 = [clearCopy _inputPortMatching:v10];
  if (v11)
  {
    v12 = [(_NUPipeline *)self _clearExpressionFromInputPort:v11 error:error];
  }

  else
  {
    [NUError notFoundError:@"No matching input port" object:v10];
    *error = v12 = 0;
  }

  return v12;
}

- (BOOL)_clearExpressionFromInputPort:(id)port error:(id *)error
{
  portCopy = port;
  if ([(_NUPipeline *)self _validateInputPort:portCopy error:error])
  {
    v7 = [portCopy clearExpression:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)clearExpressionFromInputPort:(id)port error:(id *)error
{
  v67 = *MEMORY[0x1E69E9840];
  portCopy = port;
  if (!portCopy)
  {
    v10 = NUAssertLogger_5769();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputPort != nil"];
      *buf = 138543362;
      v64 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_5769();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        callStackSymbols = [v35 callStackSymbols];
        v38 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v34;
        v65 = 2114;
        v66 = v38;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline clearExpressionFromInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1787, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "inputPort != nil");
  }

  v7 = portCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = NUAssertLogger_5769();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = MEMORY[0x1E696AEC0];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = [v18 stringWithFormat:@"Invalid parameter not kind of %@", v20];
      *buf = 138543362;
      v64 = v21;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_5769();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      if (v24)
      {
        v43 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v44 = MEMORY[0x1E696AF00];
        v45 = v43;
        callStackSymbols3 = [v44 callStackSymbols];
        v47 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v43;
        v65 = 2114;
        v66 = v47;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v48 = objc_opt_class();
    v49 = NSStringFromClass(v48);
    _NUAssertFailHandler("[_NUPipeline clearExpressionFromInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1788, @"Invalid parameter not kind of %@", v50, v51, v52, v53, v49);
  }

  if (!error)
  {
    v27 = NUAssertLogger_5769();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v64 = v28;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_5769();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v31)
      {
        v54 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v55 = MEMORY[0x1E696AF00];
        v56 = v54;
        callStackSymbols5 = [v55 callStackSymbols];
        v58 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v54;
        v65 = 2114;
        v66 = v58;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline clearExpressionFromInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1789, @"Invalid parameter not satisfying: %s", v59, v60, v61, v62, "error != NULL");
  }

  v8 = [(_NUPipeline *)self _clearExpressionFromInputPort:v7 error:error];

  return v8;
}

- (BOOL)assign:(id)assign inputNamed:(id)named to:(id)to error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  assignCopy = assign;
  namedCopy = named;
  toCopy = to;
  if (!namedCopy)
  {
    v17 = NUAssertLogger_5769();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputName != nil"];
      *buf = 138543362;
      v34 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_5769();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v25 = MEMORY[0x1E696AF00];
        v26 = v24;
        callStackSymbols = [v25 callStackSymbols];
        v28 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v34 = v24;
        v35 = 2114;
        v36 = v28;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v34 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline assign:inputNamed:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1779, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "inputName != nil");
  }

  v13 = toCopy;
  v14 = [NUChannelMatching name:namedCopy];
  v15 = [(_NUPipeline *)self assign:assignCopy input:v14 to:v13 error:error];

  return v15;
}

- (BOOL)assign:(id)assign input:(id)input to:(id)to error:(id *)error
{
  v106 = *MEMORY[0x1E69E9840];
  assignCopy = assign;
  inputCopy = input;
  toCopy = to;
  if (!assignCopy)
  {
    v17 = NUAssertLogger_5769();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "pipeline != nil"];
      *buf = 138543362;
      v103 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_5769();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v55 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v56 = MEMORY[0x1E696AF00];
        v57 = v55;
        callStackSymbols = [v56 callStackSymbols];
        v59 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v103 = v55;
        v104 = 2114;
        v105 = v59;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v103 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline assign:input:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1763, @"Invalid parameter not satisfying: %s", v60, v61, v62, v63, "pipeline != nil");
  }

  v13 = toCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v24 = NUAssertLogger_5769();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = MEMORY[0x1E696AEC0];
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = [v25 stringWithFormat:@"Invalid parameter not kind of %@", v27];
      *buf = 138543362;
      v103 = v28;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_5769();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v31)
      {
        v64 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v65 = MEMORY[0x1E696AF00];
        v66 = v64;
        callStackSymbols3 = [v65 callStackSymbols];
        v68 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v103 = v64;
        v104 = 2114;
        v105 = v68;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v103 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v69 = objc_opt_class();
    v70 = NSStringFromClass(v69);
    _NUAssertFailHandler("[_NUPipeline assign:input:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1764, @"Invalid parameter not kind of %@", v71, v72, v73, v74, v70);
  }

  if (!inputCopy)
  {
    v34 = NUAssertLogger_5769();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputMatching != nil"];
      *buf = 138543362;
      v103 = v35;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v37 = NUAssertLogger_5769();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if (v36)
    {
      if (v38)
      {
        v75 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v76 = MEMORY[0x1E696AF00];
        v77 = v75;
        callStackSymbols5 = [v76 callStackSymbols];
        v79 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v103 = v75;
        v104 = 2114;
        v105 = v79;
        _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v38)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v40 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v103 = v40;
      _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline assign:input:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1765, @"Invalid parameter not satisfying: %s", v80, v81, v82, v83, "inputMatching != nil");
  }

  if (!v13)
  {
    v41 = NUAssertLogger_5769();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "expression != nil"];
      *buf = 138543362;
      v103 = v42;
      _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v43 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v44 = NUAssertLogger_5769();
    v45 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
    if (v43)
    {
      if (v45)
      {
        v84 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v85 = MEMORY[0x1E696AF00];
        v86 = v84;
        callStackSymbols7 = [v85 callStackSymbols];
        v88 = [callStackSymbols7 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v103 = v84;
        v104 = 2114;
        v105 = v88;
        _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v45)
    {
      callStackSymbols8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v47 = [callStackSymbols8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v103 = v47;
      _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline assign:input:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1766, @"Invalid parameter not satisfying: %s", v89, v90, v91, v92, "expression != nil");
  }

  if (!error)
  {
    v48 = NUAssertLogger_5769();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v103 = v49;
      _os_log_error_impl(&dword_1C0184000, v48, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v50 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v51 = NUAssertLogger_5769();
    v52 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
    if (v50)
    {
      if (v52)
      {
        v93 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v94 = MEMORY[0x1E696AF00];
        v95 = v93;
        callStackSymbols9 = [v94 callStackSymbols];
        v97 = [callStackSymbols9 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v103 = v93;
        v104 = 2114;
        v105 = v97;
        _os_log_error_impl(&dword_1C0184000, v51, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v52)
    {
      callStackSymbols10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v54 = [callStackSymbols10 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v103 = v54;
      _os_log_error_impl(&dword_1C0184000, v51, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline assign:input:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1767, @"Invalid parameter not satisfying: %s", v98, v99, v100, v101, "error != NULL");
  }

  v14 = [assignCopy _inputPortMatching:inputCopy];
  if (v14)
  {
    v15 = [(_NUPipeline *)self _assignInputPort:v14 toExpression:v13 error:error];
  }

  else
  {
    [NUError notFoundError:@"No matching input port" object:inputCopy];
    *error = v15 = 0;
  }

  return v15;
}

- (BOOL)_assignInputPort:(id)port toExpression:(id)expression error:(id *)error
{
  v19[2] = *MEMORY[0x1E69E9840];
  portCopy = port;
  expressionCopy = expression;
  v17 = 0;
  if ([(_NUPipeline *)self _canAssignInputPort:portCopy toExpression:expressionCopy error:&v17])
  {
    v10 = v17;
    v11 = [portCopy assign:expressionCopy error:error];
  }

  else
  {
    v18[0] = @"input";
    v18[1] = @"expression";
    v19[0] = portCopy;
    v19[1] = expressionCopy;
    v12 = MEMORY[0x1E695DF20];
    v13 = v17;
    v10 = [v12 dictionaryWithObjects:v19 forKeys:v18 count:2];
    v14 = [NUError errorWithCode:1 reason:@"Cannot assign input port to expression" object:v10 underlyingError:v13];
    v15 = v14;

    v11 = 0;
    *error = v14;
  }

  return v11;
}

- (BOOL)assignInputPort:(id)port toExpression:(id)expression error:(id *)error
{
  v86 = *MEMORY[0x1E69E9840];
  portCopy = port;
  expressionCopy = expression;
  if (!portCopy)
  {
    v13 = NUAssertLogger_5769();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputPort != nil"];
      *buf = 138543362;
      v83 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_5769();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v44 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v45 = MEMORY[0x1E696AF00];
        v46 = v44;
        callStackSymbols = [v45 callStackSymbols];
        v48 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v83 = v44;
        v84 = 2114;
        v85 = v48;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v83 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline assignInputPort:toExpression:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1743, @"Invalid parameter not satisfying: %s", v49, v50, v51, v52, "inputPort != nil");
  }

  v10 = expressionCopy;
  if (!expressionCopy)
  {
    v20 = NUAssertLogger_5769();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "expression != nil"];
      *buf = 138543362;
      v83 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_5769();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      if (v24)
      {
        v53 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v54 = MEMORY[0x1E696AF00];
        v55 = v53;
        callStackSymbols3 = [v54 callStackSymbols];
        v57 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v83 = v53;
        v84 = 2114;
        v85 = v57;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v83 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline assignInputPort:toExpression:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1744, @"Invalid parameter not satisfying: %s", v58, v59, v60, v61, "expression != nil");
  }

  if (!error)
  {
    v27 = NUAssertLogger_5769();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v83 = v28;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_5769();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v31)
      {
        v62 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v63 = MEMORY[0x1E696AF00];
        v64 = v62;
        callStackSymbols5 = [v63 callStackSymbols];
        v66 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v83 = v62;
        v84 = 2114;
        v85 = v66;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v83 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline assignInputPort:toExpression:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1745, @"Invalid parameter not satisfying: %s", v67, v68, v69, v70, "error != NULL");
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v34 = NUAssertLogger_5769();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = MEMORY[0x1E696AEC0];
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v38 = [v35 stringWithFormat:@"Invalid parameter not kind of %@", v37];
      *buf = 138543362;
      v83 = v38;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v40 = NUAssertLogger_5769();
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
    if (v39)
    {
      if (v41)
      {
        v71 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v72 = MEMORY[0x1E696AF00];
        v73 = v71;
        callStackSymbols7 = [v72 callStackSymbols];
        v75 = [callStackSymbols7 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v83 = v71;
        v84 = 2114;
        v85 = v75;
        _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v41)
    {
      callStackSymbols8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v43 = [callStackSymbols8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v83 = v43;
      _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v76 = objc_opt_class();
    v77 = NSStringFromClass(v76);
    _NUAssertFailHandler("[_NUPipeline assignInputPort:toExpression:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1746, @"Invalid parameter not kind of %@", v78, v79, v80, v81, v77);
  }

  v11 = [(_NUPipeline *)self _assignInputPort:portCopy toExpression:v10 error:error];

  return v11;
}

- (BOOL)_canAssignInputPort:(id)port toExpression:(id)expression error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  portCopy = port;
  expressionCopy = expression;
  if (![(_NUPipeline *)self _validateInputPort:portCopy error:error])
  {
LABEL_18:
    v18 = 0;
    goto LABEL_19;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  inputPorts = [expressionCopy inputPorts];
  v11 = [(__CFString *)inputPorts countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(inputPorts);
        }

        if (![(_NUPipeline *)self _validateOutputPort:*(*(&v23 + 1) + 8 * i) error:error])
        {
          v19 = [NUError errorWithCode:2 reason:@"Expression contains inaccessible port" object:expressionCopy underlyingError:0];
          goto LABEL_17;
        }
      }

      v12 = [(__CFString *)inputPorts countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  channel = [portCopy channel];
  format = [channel format];
  v17 = [expressionCopy isCompatibleWithExpressionType:{objc_msgSend(format, "expressionType")}];

  if ((v17 & 1) == 0)
  {
    type = [expressionCopy type];
    if (type > 4)
    {
      v21 = @"???";
    }

    else
    {
      v21 = off_1E8109B40[type];
    }

    inputPorts = v21;
    v19 = [NUError invalidError:@"Incompatible expression type" object:inputPorts];
LABEL_17:
    *error = v19;

    goto LABEL_18;
  }

  v18 = 1;
LABEL_19:

  return v18;
}

- (BOOL)canAssignInputPort:(id)port toExpression:(id)expression error:(id *)error
{
  v86 = *MEMORY[0x1E69E9840];
  portCopy = port;
  expressionCopy = expression;
  if (!portCopy)
  {
    v13 = NUAssertLogger_5769();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputPort != nil"];
      *buf = 138543362;
      v83 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_5769();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v44 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v45 = MEMORY[0x1E696AF00];
        v46 = v44;
        callStackSymbols = [v45 callStackSymbols];
        v48 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v83 = v44;
        v84 = 2114;
        v85 = v48;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v83 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline canAssignInputPort:toExpression:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1707, @"Invalid parameter not satisfying: %s", v49, v50, v51, v52, "inputPort != nil");
  }

  v10 = expressionCopy;
  if (!expressionCopy)
  {
    v20 = NUAssertLogger_5769();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "expression != nil"];
      *buf = 138543362;
      v83 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_5769();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      if (v24)
      {
        v53 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v54 = MEMORY[0x1E696AF00];
        v55 = v53;
        callStackSymbols3 = [v54 callStackSymbols];
        v57 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v83 = v53;
        v84 = 2114;
        v85 = v57;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v83 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline canAssignInputPort:toExpression:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1708, @"Invalid parameter not satisfying: %s", v58, v59, v60, v61, "expression != nil");
  }

  if (!error)
  {
    v27 = NUAssertLogger_5769();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v83 = v28;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_5769();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v31)
      {
        v62 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v63 = MEMORY[0x1E696AF00];
        v64 = v62;
        callStackSymbols5 = [v63 callStackSymbols];
        v66 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v83 = v62;
        v84 = 2114;
        v85 = v66;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v83 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline canAssignInputPort:toExpression:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1709, @"Invalid parameter not satisfying: %s", v67, v68, v69, v70, "error != NULL");
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v34 = NUAssertLogger_5769();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = MEMORY[0x1E696AEC0];
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v38 = [v35 stringWithFormat:@"Invalid parameter not kind of %@", v37];
      *buf = 138543362;
      v83 = v38;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v40 = NUAssertLogger_5769();
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
    if (v39)
    {
      if (v41)
      {
        v71 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v72 = MEMORY[0x1E696AF00];
        v73 = v71;
        callStackSymbols7 = [v72 callStackSymbols];
        v75 = [callStackSymbols7 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v83 = v71;
        v84 = 2114;
        v85 = v75;
        _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v41)
    {
      callStackSymbols8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v43 = [callStackSymbols8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v83 = v43;
      _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v76 = objc_opt_class();
    v77 = NSStringFromClass(v76);
    _NUAssertFailHandler("[_NUPipeline canAssignInputPort:toExpression:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1710, @"Invalid parameter not kind of %@", v78, v79, v80, v81, v77);
  }

  v11 = [(_NUPipeline *)self _canAssignInputPort:portCopy toExpression:v10 error:error];

  return v11;
}

- (BOOL)reset:(id)reset error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  resetCopy = reset;
  if (!resetCopy)
  {
    v11 = NUAssertLogger_5769();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputMatching != nil"];
      *buf = 138543362;
      v44 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_5769();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v26 = MEMORY[0x1E696AF00];
        v27 = v25;
        callStackSymbols = [v26 callStackSymbols];
        v29 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v25;
        v45 = 2114;
        v46 = v29;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline reset:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1692, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "inputMatching != nil");
  }

  if (!error)
  {
    v18 = NUAssertLogger_5769();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v44 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_5769();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (v20)
    {
      if (v22)
      {
        v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        callStackSymbols3 = [v35 callStackSymbols];
        v38 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v34;
        v45 = 2114;
        v46 = v38;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline reset:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1693, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "error != NULL");
  }

  v7 = resetCopy;
  v8 = [(_NUPipeline *)self _inputPortMatching:resetCopy];
  if (v8)
  {
    v9 = [(_NUPipeline *)self _resetInputPort:v8 error:error];
  }

  else
  {
    [NUError notFoundError:@"No matching input port" object:v7];
    *error = v9 = 0;
  }

  return v9;
}

- (BOOL)resetInputChannel:(id)channel error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  channelCopy = channel;
  if (!channelCopy)
  {
    v11 = NUAssertLogger_5769();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "channel != nil"];
      *buf = 138543362;
      v44 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_5769();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v26 = MEMORY[0x1E696AF00];
        v27 = v25;
        callStackSymbols = [v26 callStackSymbols];
        v29 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v25;
        v45 = 2114;
        v46 = v29;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline resetInputChannel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1679, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "channel != nil");
  }

  if (!error)
  {
    v18 = NUAssertLogger_5769();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v44 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_5769();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (v20)
    {
      if (v22)
      {
        v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        callStackSymbols3 = [v35 callStackSymbols];
        v38 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v34;
        v45 = 2114;
        v46 = v38;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline resetInputChannel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1680, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "error != NULL");
  }

  v7 = channelCopy;
  v8 = [(_NUPipeline *)self _inputPortForChannel:channelCopy];
  if (v8)
  {
    v9 = [(_NUPipeline *)self _resetInputPort:v8 error:error];
  }

  else
  {
    [NUError notFoundError:@"No matching input port" object:v7];
    *error = v9 = 0;
  }

  return v9;
}

- (BOOL)_resetInputPort:(id)port error:(id *)error
{
  portCopy = port;
  channel = [portCopy channel];
  v8 = [(_NUPipeline *)self inputPortForChannel:channel];

  if (v8 == portCopy)
  {
    v12 = [portCopy resetData:error];

    return v12;
  }

  else
  {
    v9 = [NUError invalidError:@"Unknown input port" object:portCopy];

    v10 = v9;
    *error = v9;
    return 0;
  }
}

- (BOOL)resetInputPort:(id)port error:(id *)error
{
  v67 = *MEMORY[0x1E69E9840];
  portCopy = port;
  if (!portCopy)
  {
    v10 = NUAssertLogger_5769();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputPort != nil"];
      *buf = 138543362;
      v64 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_5769();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        callStackSymbols = [v35 callStackSymbols];
        v38 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v34;
        v65 = 2114;
        v66 = v38;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline resetInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1662, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "inputPort != nil");
  }

  v7 = portCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = NUAssertLogger_5769();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = MEMORY[0x1E696AEC0];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = [v18 stringWithFormat:@"Invalid parameter not kind of %@", v20];
      *buf = 138543362;
      v64 = v21;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_5769();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      if (v24)
      {
        v43 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v44 = MEMORY[0x1E696AF00];
        v45 = v43;
        callStackSymbols3 = [v44 callStackSymbols];
        v47 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v43;
        v65 = 2114;
        v66 = v47;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v48 = objc_opt_class();
    v49 = NSStringFromClass(v48);
    _NUAssertFailHandler("[_NUPipeline resetInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1663, @"Invalid parameter not kind of %@", v50, v51, v52, v53, v49);
  }

  if (!error)
  {
    v27 = NUAssertLogger_5769();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v64 = v28;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_5769();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v31)
      {
        v54 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v55 = MEMORY[0x1E696AF00];
        v56 = v54;
        callStackSymbols5 = [v55 callStackSymbols];
        v58 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v54;
        v65 = 2114;
        v66 = v58;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline resetInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1664, @"Invalid parameter not satisfying: %s", v59, v60, v61, v62, "error != NULL");
  }

  v8 = [(_NUPipeline *)self _resetInputPort:v7 error:error];

  return v8;
}

- (BOOL)bind:(id)bind to:(id)to error:(id *)error
{
  v66 = *MEMORY[0x1E69E9840];
  bindCopy = bind;
  toCopy = to;
  if (!bindCopy)
  {
    v14 = NUAssertLogger_5769();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputMatching != nil"];
      *buf = 138543362;
      v63 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_5769();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        callStackSymbols = [v36 callStackSymbols];
        v39 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v63 = v35;
        v64 = 2114;
        v65 = v39;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v63 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline bind:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1648, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "inputMatching != nil");
  }

  v10 = toCopy;
  if (!toCopy)
  {
    v21 = NUAssertLogger_5769();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "data != nil"];
      *buf = 138543362;
      v63 = v22;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v24 = NUAssertLogger_5769();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (v23)
    {
      if (v25)
      {
        v44 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v45 = MEMORY[0x1E696AF00];
        v46 = v44;
        callStackSymbols3 = [v45 callStackSymbols];
        v48 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v63 = v44;
        v64 = 2114;
        v65 = v48;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v63 = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline bind:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1649, @"Invalid parameter not satisfying: %s", v49, v50, v51, v52, "data != nil");
  }

  if (!error)
  {
    v28 = NUAssertLogger_5769();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v63 = v29;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v31 = NUAssertLogger_5769();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (v30)
    {
      if (v32)
      {
        v53 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v54 = MEMORY[0x1E696AF00];
        v55 = v53;
        callStackSymbols5 = [v54 callStackSymbols];
        v57 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v63 = v53;
        v64 = 2114;
        v65 = v57;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v63 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline bind:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1650, @"Invalid parameter not satisfying: %s", v58, v59, v60, v61, "error != NULL");
  }

  v11 = [(_NUPipeline *)self _inputPortMatching:bindCopy];
  if (v11)
  {
    v12 = [(_NUPipeline *)self _bind:v11 to:v10 error:error];
  }

  else
  {
    [NUError notFoundError:@"No matching input port" object:bindCopy];
    *error = v12 = 0;
  }

  return v12;
}

- (BOOL)bindInputChannel:(id)channel to:(id)to error:(id *)error
{
  toCopy = to;
  v9 = [NUChannelMatching channel:channel];
  LOBYTE(error) = [(_NUPipeline *)self bind:v9 to:toCopy error:error];

  return error;
}

- (BOOL)_bind:(id)_bind to:(id)to error:(id *)error
{
  toCopy = to;
  _bindCopy = _bind;
  channel = [_bindCopy channel];
  v11 = [(_NUPipeline *)self inputPortForChannel:channel];

  if (v11 == _bindCopy)
  {
    v14 = [_bindCopy bindData:toCopy error:error];
  }

  else
  {
    v12 = [NUError invalidError:@"Unknown input port" object:_bindCopy];

    v13 = v12;
    v14 = 0;
    *error = v12;
  }

  return v14;
}

- (BOOL)bindInputPort:(id)port to:(id)to error:(id *)error
{
  v86 = *MEMORY[0x1E69E9840];
  portCopy = port;
  toCopy = to;
  if (!portCopy)
  {
    v13 = NUAssertLogger_5769();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "port != nil"];
      *buf = 138543362;
      v83 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_5769();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v44 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v45 = MEMORY[0x1E696AF00];
        v46 = v44;
        callStackSymbols = [v45 callStackSymbols];
        v48 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v83 = v44;
        v84 = 2114;
        v85 = v48;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v83 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline bindInputPort:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1625, @"Invalid parameter not satisfying: %s", v49, v50, v51, v52, "port != nil");
  }

  v10 = toCopy;
  if (!toCopy)
  {
    v20 = NUAssertLogger_5769();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "data != nil"];
      *buf = 138543362;
      v83 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_5769();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      if (v24)
      {
        v53 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v54 = MEMORY[0x1E696AF00];
        v55 = v53;
        callStackSymbols3 = [v54 callStackSymbols];
        v57 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v83 = v53;
        v84 = 2114;
        v85 = v57;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v83 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline bindInputPort:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1626, @"Invalid parameter not satisfying: %s", v58, v59, v60, v61, "data != nil");
  }

  if (!error)
  {
    v27 = NUAssertLogger_5769();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v83 = v28;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_5769();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v31)
      {
        v62 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v63 = MEMORY[0x1E696AF00];
        v64 = v62;
        callStackSymbols5 = [v63 callStackSymbols];
        v66 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v83 = v62;
        v84 = 2114;
        v85 = v66;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v83 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline bindInputPort:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1627, @"Invalid parameter not satisfying: %s", v67, v68, v69, v70, "error != NULL");
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v34 = NUAssertLogger_5769();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = MEMORY[0x1E696AEC0];
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v38 = [v35 stringWithFormat:@"Invalid parameter not kind of %@", v37];
      *buf = 138543362;
      v83 = v38;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v40 = NUAssertLogger_5769();
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
    if (v39)
    {
      if (v41)
      {
        v71 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v72 = MEMORY[0x1E696AF00];
        v73 = v71;
        callStackSymbols7 = [v72 callStackSymbols];
        v75 = [callStackSymbols7 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v83 = v71;
        v84 = 2114;
        v85 = v75;
        _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v41)
    {
      callStackSymbols8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v43 = [callStackSymbols8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v83 = v43;
      _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v76 = objc_opt_class();
    v77 = NSStringFromClass(v76);
    _NUAssertFailHandler("[_NUPipeline bindInputPort:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1628, @"Invalid parameter not kind of %@", v78, v79, v80, v81, v77);
  }

  v11 = [(_NUPipeline *)self _bind:portCopy to:v10 error:error];

  return v11;
}

- (BOOL)disconnect:(id)disconnect subport:(id)subport error:(id *)error
{
  v7 = [NUChannelPortRef input:disconnect subport:subport];
  LOBYTE(error) = [(_NUPipeline *)self disconnect:v7 error:error];

  return error;
}

- (BOOL)disconnect:(id)disconnect input:(id)input error:(id *)error
{
  v7 = [NUChannelPortRef pipeline:disconnect input:input];
  LOBYTE(error) = [(_NUPipeline *)self disconnect:v7 error:error];

  return error;
}

- (BOOL)connect:(id)connect subport:(id)subport to:(id)to subport:(id)a6 error:(id *)error
{
  v12 = a6;
  toCopy = to;
  v14 = [NUChannelPortRef input:connect subport:subport];
  v15 = [NUChannelPortRef output:toCopy subport:v12];

  LOBYTE(error) = [(_NUPipeline *)self connect:v14 to:v15 error:error];
  return error;
}

- (BOOL)connect:(id)connect subport:(id)subport to:(id)to output:(id)output error:(id *)error
{
  outputCopy = output;
  toCopy = to;
  v14 = [NUChannelPortRef input:connect subport:subport];
  v15 = [NUChannelPortRef pipeline:toCopy output:outputCopy];

  LOBYTE(error) = [(_NUPipeline *)self connect:v14 to:v15 error:error];
  return error;
}

- (BOOL)connect:(id)connect to:(id)to output:(id)output error:(id *)error
{
  outputCopy = output;
  toCopy = to;
  v12 = [NUChannelPortRef input:connect];
  v13 = [NUChannelPortRef pipeline:toCopy output:outputCopy];

  LOBYTE(error) = [(_NUPipeline *)self connect:v12 to:v13 error:error];
  return error;
}

- (BOOL)connect:(id)connect input:(id)input to:(id)to subport:(id)subport error:(id *)error
{
  subportCopy = subport;
  toCopy = to;
  v14 = [NUChannelPortRef pipeline:connect input:input];
  v15 = [NUChannelPortRef output:toCopy subport:subportCopy];

  LOBYTE(error) = [(_NUPipeline *)self connect:v14 to:v15 error:error];
  return error;
}

- (BOOL)connect:(id)connect input:(id)input to:(id)to key:(id)key error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  connectCopy = connect;
  inputCopy = input;
  toCopy = to;
  keyCopy = key;
  if (!keyCopy)
  {
    v20 = NUAssertLogger_5769();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "key != nil"];
      *buf = 138543362;
      v37 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_5769();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        callStackSymbols = [v28 callStackSymbols];
        v31 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v37 = v27;
        v38 = 2114;
        v39 = v31;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v37 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline connect:input:to:key:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1584, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "key != nil");
  }

  v16 = keyCopy;
  v17 = [NUChannelMatching name:keyCopy];
  v18 = [(_NUPipeline *)self connect:connectCopy input:inputCopy to:toCopy subport:v17 error:error];

  return v18;
}

- (BOOL)connect:(id)connect input:(id)input to:(id)to error:(id *)error
{
  toCopy = to;
  v11 = [NUChannelPortRef pipeline:connect input:input];
  v12 = [NUChannelPortRef output:toCopy];

  LOBYTE(error) = [(_NUPipeline *)self connect:v11 to:v12 error:error];
  return error;
}

- (BOOL)connect:(id)connect input:(id)input to:(id)to output:(id)output error:(id *)error
{
  outputCopy = output;
  toCopy = to;
  v14 = [NUChannelPortRef pipeline:connect input:input];
  v15 = [NUChannelPortRef pipeline:toCopy output:outputCopy];

  LOBYTE(error) = [(_NUPipeline *)self connect:v14 to:v15 error:error];
  return error;
}

- (BOOL)_disconnect:(id)_disconnect error:(id *)error
{
  v12 = 0;
  _disconnectCopy = _disconnect;
  v7 = [(_NUPipeline *)self _canDisconnectInputPort:_disconnectCopy error:&v12];
  v8 = v12;
  if (v7)
  {
    [_disconnectCopy disconnect];
  }

  else
  {
    v9 = [NUError errorWithCode:1 reason:@"Cannot disconnect input port" object:_disconnectCopy underlyingError:v8];

    v10 = v9;
    *error = v9;
  }

  return v7;
}

- (BOOL)disconnect:(id)disconnect error:(id *)error
{
  v55 = *MEMORY[0x1E69E9840];
  disconnectCopy = disconnect;
  if (!disconnectCopy)
  {
    v15 = NUAssertLogger_5769();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "portRef != nil"];
      *buf = 138543362;
      v52 = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_5769();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v30 = MEMORY[0x1E696AF00];
        v31 = v29;
        callStackSymbols = [v30 callStackSymbols];
        v33 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v52 = v29;
        v53 = 2114;
        v54 = v33;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v52 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline disconnect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1536, @"Invalid parameter not satisfying: %s", v34, v35, v36, v37, "portRef != nil");
  }

  if (!error)
  {
    v22 = NUAssertLogger_5769();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v52 = v23;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger_5769();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (v24)
    {
      if (v26)
      {
        v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v39 = MEMORY[0x1E696AF00];
        v40 = v38;
        callStackSymbols3 = [v39 callStackSymbols];
        v42 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v52 = v38;
        v53 = 2114;
        v54 = v42;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v52 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline disconnect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1537, @"Invalid parameter not satisfying: %s", v43, v44, v45, v46, "error != NULL");
  }

  v7 = disconnectCopy;
  v48 = 0;
  v8 = [disconnectCopy resolvePortWithPipeline:self error:&v48];
  v9 = v48;
  if (v8)
  {
    v47 = 0;
    v10 = [(_NUPipeline *)self _disconnect:v8 error:&v47];
    v11 = v47;

    if (v10)
    {
      v12 = 1;
    }

    else
    {
      v49[0] = @"ref";
      v49[1] = @"port";
      v50[0] = v7;
      v50[1] = v8;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:2];
      *error = [NUError errorWithCode:1 reason:@"Failed to disconnect port ref" object:v13 underlyingError:v11];

      v12 = 0;
    }

    v9 = v11;
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to resolve port ref" object:v7 underlyingError:v9];
    *error = v12 = 0;
  }

  return v12;
}

- (BOOL)disconnectInputPort:(id)port error:(id *)error
{
  v67 = *MEMORY[0x1E69E9840];
  portCopy = port;
  if (!portCopy)
  {
    v10 = NUAssertLogger_5769();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputPort != nil"];
      *buf = 138543362;
      v64 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_5769();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        callStackSymbols = [v35 callStackSymbols];
        v38 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v34;
        v65 = 2114;
        v66 = v38;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline disconnectInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1528, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "inputPort != nil");
  }

  if (!error)
  {
    v17 = NUAssertLogger_5769();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v64 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_5769();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      if (v21)
      {
        v43 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v44 = MEMORY[0x1E696AF00];
        v45 = v43;
        callStackSymbols3 = [v44 callStackSymbols];
        v47 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v43;
        v65 = 2114;
        v66 = v47;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline disconnectInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1529, @"Invalid parameter not satisfying: %s", v48, v49, v50, v51, "error != NULL");
  }

  v7 = portCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v24 = NUAssertLogger_5769();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = MEMORY[0x1E696AEC0];
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = [v25 stringWithFormat:@"Invalid parameter not kind of %@", v27];
      *buf = 138543362;
      v64 = v28;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_5769();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v31)
      {
        v52 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v53 = MEMORY[0x1E696AF00];
        v54 = v52;
        callStackSymbols5 = [v53 callStackSymbols];
        v56 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v52;
        v65 = 2114;
        v66 = v56;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v57 = objc_opt_class();
    v58 = NSStringFromClass(v57);
    _NUAssertFailHandler("[_NUPipeline disconnectInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1530, @"Invalid parameter not kind of %@", v59, v60, v61, v62, v58);
  }

  v8 = [(_NUPipeline *)self _disconnect:v7 error:error];

  return v8;
}

- (BOOL)_canDisconnectInputPort:(id)port error:(id *)error
{
  portCopy = port;
  if ([(_NUPipeline *)self _validateInputPort:portCopy error:error])
  {
    if ([portCopy isConnected])
    {
      v7 = 1;
    }

    else
    {
      [NUError invalidError:@"Port is not connected" object:portCopy];
      *error = v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)canDisconnectInputPort:(id)port error:(id *)error
{
  v67 = *MEMORY[0x1E69E9840];
  portCopy = port;
  if (!portCopy)
  {
    v10 = NUAssertLogger_5769();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputPort != nil"];
      *buf = 138543362;
      v64 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_5769();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        callStackSymbols = [v35 callStackSymbols];
        v38 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v34;
        v65 = 2114;
        v66 = v38;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline canDisconnectInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1503, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "inputPort != nil");
  }

  if (!error)
  {
    v17 = NUAssertLogger_5769();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v64 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_5769();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      if (v21)
      {
        v43 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v44 = MEMORY[0x1E696AF00];
        v45 = v43;
        callStackSymbols3 = [v44 callStackSymbols];
        v47 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v43;
        v65 = 2114;
        v66 = v47;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline canDisconnectInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1504, @"Invalid parameter not satisfying: %s", v48, v49, v50, v51, "error != NULL");
  }

  v7 = portCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v24 = NUAssertLogger_5769();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = MEMORY[0x1E696AEC0];
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = [v25 stringWithFormat:@"Invalid parameter not kind of %@", v27];
      *buf = 138543362;
      v64 = v28;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_5769();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v31)
      {
        v52 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v53 = MEMORY[0x1E696AF00];
        v54 = v52;
        callStackSymbols5 = [v53 callStackSymbols];
        v56 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v52;
        v65 = 2114;
        v66 = v56;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v57 = objc_opt_class();
    v58 = NSStringFromClass(v57);
    _NUAssertFailHandler("[_NUPipeline canDisconnectInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1505, @"Invalid parameter not kind of %@", v59, v60, v61, v62, v58);
  }

  v8 = [(_NUPipeline *)self _canDisconnectInputPort:v7 error:error];

  return v8;
}

- (BOOL)_connect:(id)_connect to:(id)to error:(id *)error
{
  v19[2] = *MEMORY[0x1E69E9840];
  _connectCopy = _connect;
  toCopy = to;
  v17 = 0;
  v10 = [(_NUPipeline *)self _canConnect:_connectCopy to:toCopy error:&v17];
  if (v10)
  {
    v11 = v17;
    [_connectCopy connectToPort:toCopy];
  }

  else
  {
    v18[0] = @"input";
    v18[1] = @"output";
    v19[0] = _connectCopy;
    v19[1] = toCopy;
    v12 = MEMORY[0x1E695DF20];
    v13 = v17;
    v11 = [v12 dictionaryWithObjects:v19 forKeys:v18 count:2];
    v14 = [NUError errorWithCode:1 reason:@"Cannot connect input port to output port" object:v11 underlyingError:v13];
    v15 = v14;

    *error = v14;
  }

  return v10;
}

- (BOOL)connect:(id)connect to:(id)to error:(id *)error
{
  v77 = *MEMORY[0x1E69E9840];
  connectCopy = connect;
  toCopy = to;
  if (!connectCopy)
  {
    v20 = NUAssertLogger_5769();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "srcPortRef != nil"];
      *buf = 138543362;
      v74 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_5769();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v41 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v42 = MEMORY[0x1E696AF00];
        v43 = v41;
        callStackSymbols = [v42 callStackSymbols];
        v45 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v74 = v41;
        v75 = 2114;
        v76 = v45;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v74 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline connect:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1459, @"Invalid parameter not satisfying: %s", v46, v47, v48, v49, "srcPortRef != nil");
  }

  v10 = toCopy;
  if (!toCopy)
  {
    v27 = NUAssertLogger_5769();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dstPortRef != nil"];
      *buf = 138543362;
      v74 = v28;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_5769();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v31)
      {
        v50 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v51 = MEMORY[0x1E696AF00];
        v52 = v50;
        callStackSymbols3 = [v51 callStackSymbols];
        v54 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v74 = v50;
        v75 = 2114;
        v76 = v54;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v74 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline connect:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1460, @"Invalid parameter not satisfying: %s", v55, v56, v57, v58, "dstPortRef != nil");
  }

  if (!error)
  {
    v34 = NUAssertLogger_5769();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v74 = v35;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v37 = NUAssertLogger_5769();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if (v36)
    {
      if (v38)
      {
        v59 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v60 = MEMORY[0x1E696AF00];
        v61 = v59;
        callStackSymbols5 = [v60 callStackSymbols];
        v63 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v74 = v59;
        v75 = 2114;
        v76 = v63;
        _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v38)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v40 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v74 = v40;
      _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline connect:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1461, @"Invalid parameter not satisfying: %s", v64, v65, v66, v67, "error != NULL");
  }

  v70 = 0;
  v11 = [connectCopy resolvePortWithPipeline:self error:&v70];
  v12 = v70;
  if (v11)
  {
    v69 = 0;
    v13 = [v10 resolvePortWithPipeline:self error:&v69];
    v14 = v69;

    if (v13)
    {
      v68 = 0;
      v15 = [(_NUPipeline *)self _connect:v11 to:v13 error:&v68];
      v16 = v68;

      if (v15)
      {
        v17 = 1;
      }

      else
      {
        v71[0] = @"src";
        v71[1] = @"dst";
        v72[0] = connectCopy;
        v72[1] = v10;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:2];
        *error = [NUError errorWithCode:1 reason:@"Failed to connect src port ref to dst port ref" object:v18 underlyingError:v16];

        v17 = 0;
      }

      v14 = v16;
    }

    else
    {
      [NUError errorWithCode:1 reason:@"Failed to resolve dst port ref" object:v10 underlyingError:v14];
      *error = v17 = 0;
    }

    v12 = v14;
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to resolve src port ref" object:connectCopy underlyingError:v12];
    *error = v17 = 0;
  }

  return v17;
}

- (BOOL)connectInputPort:(id)port toOutputPort:(id)outputPort error:(id *)error
{
  v107 = *MEMORY[0x1E69E9840];
  portCopy = port;
  outputPortCopy = outputPort;
  if (!portCopy)
  {
    v13 = NUAssertLogger_5769();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputPort != nil"];
      *buf = 138543362;
      v104 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_5769();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v54 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v55 = MEMORY[0x1E696AF00];
        v56 = v54;
        callStackSymbols = [v55 callStackSymbols];
        v58 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v104 = v54;
        v105 = 2114;
        v106 = v58;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v104 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline connectInputPort:toOutputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1449, @"Invalid parameter not satisfying: %s", v59, v60, v61, v62, "inputPort != nil");
  }

  v10 = outputPortCopy;
  if (!outputPortCopy)
  {
    v20 = NUAssertLogger_5769();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "outputPort != nil"];
      *buf = 138543362;
      v104 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_5769();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      if (v24)
      {
        v63 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v64 = MEMORY[0x1E696AF00];
        v65 = v63;
        callStackSymbols3 = [v64 callStackSymbols];
        v67 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v104 = v63;
        v105 = 2114;
        v106 = v67;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v104 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline connectInputPort:toOutputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1450, @"Invalid parameter not satisfying: %s", v68, v69, v70, v71, "outputPort != nil");
  }

  if (!error)
  {
    v27 = NUAssertLogger_5769();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v104 = v28;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_5769();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v31)
      {
        v72 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v73 = MEMORY[0x1E696AF00];
        v74 = v72;
        callStackSymbols5 = [v73 callStackSymbols];
        v76 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v104 = v72;
        v105 = 2114;
        v106 = v76;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v104 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline connectInputPort:toOutputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1451, @"Invalid parameter not satisfying: %s", v77, v78, v79, v80, "error != NULL");
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v34 = NUAssertLogger_5769();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = MEMORY[0x1E696AEC0];
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v38 = [v35 stringWithFormat:@"Invalid parameter not kind of %@", v37];
      *buf = 138543362;
      v104 = v38;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v40 = NUAssertLogger_5769();
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
    if (v39)
    {
      if (v41)
      {
        v81 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v82 = MEMORY[0x1E696AF00];
        v83 = v81;
        callStackSymbols7 = [v82 callStackSymbols];
        v85 = [callStackSymbols7 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v104 = v81;
        v105 = 2114;
        v106 = v85;
        _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v41)
    {
      callStackSymbols8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v43 = [callStackSymbols8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v104 = v43;
      _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v86 = objc_opt_class();
    v87 = NSStringFromClass(v86);
    _NUAssertFailHandler("[_NUPipeline connectInputPort:toOutputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1452, @"Invalid parameter not kind of %@", v88, v89, v90, v91, v87);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v44 = NUAssertLogger_5769();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = MEMORY[0x1E696AEC0];
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      v48 = [v45 stringWithFormat:@"Invalid parameter not kind of %@", v47];
      *buf = 138543362;
      v104 = v48;
      _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v49 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v50 = NUAssertLogger_5769();
    v51 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
    if (v49)
    {
      if (v51)
      {
        v92 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v93 = MEMORY[0x1E696AF00];
        v94 = v92;
        callStackSymbols9 = [v93 callStackSymbols];
        v96 = [callStackSymbols9 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v104 = v92;
        v105 = 2114;
        v106 = v96;
        _os_log_error_impl(&dword_1C0184000, v50, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v51)
    {
      callStackSymbols10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v53 = [callStackSymbols10 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v104 = v53;
      _os_log_error_impl(&dword_1C0184000, v50, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v97 = objc_opt_class();
    v98 = NSStringFromClass(v97);
    _NUAssertFailHandler("[_NUPipeline connectInputPort:toOutputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1453, @"Invalid parameter not kind of %@", v99, v100, v101, v102, v98);
  }

  v11 = [(_NUPipeline *)self _connect:portCopy to:v10 error:error];

  return v11;
}

- (BOOL)_canConnect:(id)connect to:(id)to error:(id *)error
{
  v21[2] = *MEMORY[0x1E69E9840];
  connectCopy = connect;
  toCopy = to;
  if (![(_NUPipeline *)self _validateInputPort:connectCopy error:error]|| ![(_NUPipeline *)self _validateOutputPort:toCopy error:error])
  {
    goto LABEL_19;
  }

  if (![connectCopy isConnected])
  {
    if ([connectCopy hasConnectedSuperport])
    {
      v10 = @"Already connected at a higher level";
      goto LABEL_9;
    }

    if ([connectCopy hasConnectedSubport])
    {
      v10 = @"Already connected at a lower level";
      goto LABEL_9;
    }

    if ([toCopy hasSuperConnections])
    {
      v10 = @"Already have outgoing connections at a higher level";
LABEL_15:
      v11 = toCopy;
      goto LABEL_10;
    }

    if ([toCopy hasSubConnections])
    {
      v10 = @"Already have outgoing connections at a lower level";
      goto LABEL_15;
    }

    effectiveFormat = [connectCopy effectiveFormat];
    effectiveFormat2 = [toCopy effectiveFormat];
    v15 = [effectiveFormat isCompatibleWithChannelFormat:effectiveFormat2];

    if (v15)
    {
      v12 = 1;
      goto LABEL_20;
    }

    v20[0] = @"from";
    effectiveFormat3 = [connectCopy effectiveFormat];
    v20[1] = @"to";
    v21[0] = effectiveFormat3;
    effectiveFormat4 = [toCopy effectiveFormat];
    v21[1] = effectiveFormat4;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
    *error = [NUError invalidError:@"Incompatible channel format" object:v18];

LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  v10 = @"Already connected";
LABEL_9:
  v11 = connectCopy;
LABEL_10:
  [NUError invalidError:v10 object:v11];
  *error = v12 = 0;
LABEL_20:

  return v12;
}

- (BOOL)canConnect:(id)connect to:(id)to error:(id *)error
{
  v77 = *MEMORY[0x1E69E9840];
  connectCopy = connect;
  toCopy = to;
  if (!connectCopy)
  {
    v20 = NUAssertLogger_5769();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "srcPortRef != nil"];
      *buf = 138543362;
      v74 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_5769();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v41 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v42 = MEMORY[0x1E696AF00];
        v43 = v41;
        callStackSymbols = [v42 callStackSymbols];
        v45 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v74 = v41;
        v75 = 2114;
        v76 = v45;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v74 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline canConnect:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1370, @"Invalid parameter not satisfying: %s", v46, v47, v48, v49, "srcPortRef != nil");
  }

  v10 = toCopy;
  if (!toCopy)
  {
    v27 = NUAssertLogger_5769();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dstPortRef != nil"];
      *buf = 138543362;
      v74 = v28;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_5769();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v31)
      {
        v50 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v51 = MEMORY[0x1E696AF00];
        v52 = v50;
        callStackSymbols3 = [v51 callStackSymbols];
        v54 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v74 = v50;
        v75 = 2114;
        v76 = v54;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v74 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline canConnect:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1371, @"Invalid parameter not satisfying: %s", v55, v56, v57, v58, "dstPortRef != nil");
  }

  if (!error)
  {
    v34 = NUAssertLogger_5769();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v74 = v35;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v37 = NUAssertLogger_5769();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if (v36)
    {
      if (v38)
      {
        v59 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v60 = MEMORY[0x1E696AF00];
        v61 = v59;
        callStackSymbols5 = [v60 callStackSymbols];
        v63 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v74 = v59;
        v75 = 2114;
        v76 = v63;
        _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v38)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v40 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v74 = v40;
      _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline canConnect:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1372, @"Invalid parameter not satisfying: %s", v64, v65, v66, v67, "error != NULL");
  }

  v70 = 0;
  v11 = [connectCopy resolvePortWithPipeline:self error:&v70];
  v12 = v70;
  if (v11)
  {
    v69 = 0;
    v13 = [v10 resolvePortWithPipeline:self error:&v69];
    v14 = v69;

    if (v13)
    {
      v68 = 0;
      v15 = [(_NUPipeline *)self _canConnect:v11 to:v13 error:&v68];
      v16 = v68;

      if (v15)
      {
        v17 = 1;
      }

      else
      {
        v71[0] = @"src";
        v71[1] = @"dst";
        v72[0] = connectCopy;
        v72[1] = v10;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:2];
        *error = [NUError errorWithCode:1 reason:@"Cannot connect src port ref to dst port ref" object:v18 underlyingError:v16];

        v17 = 0;
      }

      v14 = v16;
    }

    else
    {
      [NUError errorWithCode:1 reason:@"Failed to resolve dst port ref" object:v10 underlyingError:v14];
      *error = v17 = 0;
    }

    v12 = v14;
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to resolve src port ref" object:connectCopy underlyingError:v12];
    *error = v17 = 0;
  }

  return v17;
}

- (BOOL)canConnectInputPort:(id)port toOutputPort:(id)outputPort error:(id *)error
{
  v107 = *MEMORY[0x1E69E9840];
  portCopy = port;
  outputPortCopy = outputPort;
  if (!portCopy)
  {
    v13 = NUAssertLogger_5769();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputPort != nil"];
      *buf = 138543362;
      v104 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_5769();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v54 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v55 = MEMORY[0x1E696AF00];
        v56 = v54;
        callStackSymbols = [v55 callStackSymbols];
        v58 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v104 = v54;
        v105 = 2114;
        v106 = v58;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v104 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline canConnectInputPort:toOutputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1360, @"Invalid parameter not satisfying: %s", v59, v60, v61, v62, "inputPort != nil");
  }

  v10 = outputPortCopy;
  if (!outputPortCopy)
  {
    v20 = NUAssertLogger_5769();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "outputPort != nil"];
      *buf = 138543362;
      v104 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v22 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_5769();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      if (v24)
      {
        v63 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v64 = MEMORY[0x1E696AF00];
        v65 = v63;
        callStackSymbols3 = [v64 callStackSymbols];
        v67 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v104 = v63;
        v105 = 2114;
        v106 = v67;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v104 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline canConnectInputPort:toOutputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1361, @"Invalid parameter not satisfying: %s", v68, v69, v70, v71, "outputPort != nil");
  }

  if (!error)
  {
    v27 = NUAssertLogger_5769();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v104 = v28;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_5769();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v31)
      {
        v72 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v73 = MEMORY[0x1E696AF00];
        v74 = v72;
        callStackSymbols5 = [v73 callStackSymbols];
        v76 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v104 = v72;
        v105 = 2114;
        v106 = v76;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v104 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline canConnectInputPort:toOutputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1362, @"Invalid parameter not satisfying: %s", v77, v78, v79, v80, "error != NULL");
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v34 = NUAssertLogger_5769();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = MEMORY[0x1E696AEC0];
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v38 = [v35 stringWithFormat:@"Invalid parameter not kind of %@", v37];
      *buf = 138543362;
      v104 = v38;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v40 = NUAssertLogger_5769();
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
    if (v39)
    {
      if (v41)
      {
        v81 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v82 = MEMORY[0x1E696AF00];
        v83 = v81;
        callStackSymbols7 = [v82 callStackSymbols];
        v85 = [callStackSymbols7 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v104 = v81;
        v105 = 2114;
        v106 = v85;
        _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v41)
    {
      callStackSymbols8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v43 = [callStackSymbols8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v104 = v43;
      _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v86 = objc_opt_class();
    v87 = NSStringFromClass(v86);
    _NUAssertFailHandler("[_NUPipeline canConnectInputPort:toOutputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1363, @"Invalid parameter not kind of %@", v88, v89, v90, v91, v87);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v44 = NUAssertLogger_5769();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = MEMORY[0x1E696AEC0];
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      v48 = [v45 stringWithFormat:@"Invalid parameter not kind of %@", v47];
      *buf = 138543362;
      v104 = v48;
      _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v49 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v50 = NUAssertLogger_5769();
    v51 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
    if (v49)
    {
      if (v51)
      {
        v92 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v93 = MEMORY[0x1E696AF00];
        v94 = v92;
        callStackSymbols9 = [v93 callStackSymbols];
        v96 = [callStackSymbols9 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v104 = v92;
        v105 = 2114;
        v106 = v96;
        _os_log_error_impl(&dword_1C0184000, v50, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v51)
    {
      callStackSymbols10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v53 = [callStackSymbols10 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v104 = v53;
      _os_log_error_impl(&dword_1C0184000, v50, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v97 = objc_opt_class();
    v98 = NSStringFromClass(v97);
    _NUAssertFailHandler("[_NUPipeline canConnectInputPort:toOutputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1364, @"Invalid parameter not kind of %@", v99, v100, v101, v102, v98);
  }

  v11 = [(_NUPipeline *)self _canConnect:portCopy to:v10 error:error];

  return v11;
}

- (BOOL)_validateOutputPort:(id)port error:(id *)error
{
  portCopy = port;
  pipeline = [portCopy pipeline];
  if (![(_NUPipeline *)self isReachableOuterPipeline:pipeline])
  {
    if (![(_NUPipeline *)self isReachableInnerPipeline:pipeline])
    {
      [NUError invalidError:@"Output port is out of scope" object:portCopy];
      *error = v14 = 0;
      goto LABEL_10;
    }

    rootPort = [portCopy rootPort];
    channel = [rootPort channel];
    v13 = [pipeline outputPortForChannel:channel];

    if (v13 != rootPort)
    {
      v11 = @"Unknown subpipeline output port";
      goto LABEL_7;
    }

LABEL_8:

    v14 = 1;
    goto LABEL_10;
  }

  rootPort = [portCopy rootPort];
  channel2 = [rootPort channel];
  v10 = [pipeline inputPortForChannel:channel2];

  if (v10 == rootPort)
  {
    goto LABEL_8;
  }

  v11 = @"Unknown pipeline output port";
LABEL_7:
  *error = [NUError invalidError:v11 object:portCopy];

  v14 = 0;
LABEL_10:

  return v14;
}

- (BOOL)_validateInputPort:(id)port error:(id *)error
{
  portCopy = port;
  pipeline = [portCopy pipeline];
  if (![(_NUPipeline *)self isReachableOuterPipeline:pipeline])
  {
    if (![(_NUPipeline *)self isReachableInnerPipeline:pipeline])
    {
      [NUError invalidError:@"Input port is out of scope" object:portCopy];
      *error = v14 = 0;
      goto LABEL_10;
    }

    rootPort = [portCopy rootPort];
    channel = [rootPort channel];
    v13 = [pipeline inputPortForChannel:channel];

    if (v13 != rootPort)
    {
      v11 = @"Unknown subpipeline input port";
      goto LABEL_7;
    }

LABEL_8:

    v14 = 1;
    goto LABEL_10;
  }

  rootPort = [portCopy rootPort];
  channel2 = [rootPort channel];
  v10 = [pipeline outputPortForChannel:channel2];

  if (v10 == rootPort)
  {
    goto LABEL_8;
  }

  v11 = @"Unknown pipeline input port";
LABEL_7:
  *error = [NUError invalidError:v11 object:portCopy];

  v14 = 0;
LABEL_10:

  return v14;
}

- (BOOL)isReachableInnerPipeline:(id)pipeline
{
  pipelineCopy = pipeline;
  superpipeline = [pipelineCopy superpipeline];
  v6 = [superpipeline isReachableOuterPipeline:self];

  if (v6)
  {
    v7 = 1;
  }

  else if ([(_NUPipeline *)self isInline])
  {
    superpipeline2 = [(_NUPipeline *)self superpipeline];
    v7 = [superpipeline2 isReachableInnerPipeline:pipelineCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isReachableOuterPipeline:(id)pipeline
{
  pipelineCopy = pipeline;
  if (pipelineCopy == self)
  {
    v6 = 1;
  }

  else if ([(_NUPipeline *)self isInline])
  {
    superpipeline = [(_NUPipeline *)self superpipeline];
    v6 = [superpipeline isReachableOuterPipeline:pipelineCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_outputPortMatching:(id)matching
{
  matchingCopy = matching;
  v5 = [(_NUPipeline *)self outputChannelMatching:matchingCopy];
  if (v5)
  {
    v6 = [(_NUPipeline *)self _outputPortForChannel:v5];
  }

  else
  {
    v6 = 0;
  }

  subsequentMatching = [matchingCopy subsequentMatching];
  v8 = [v6 _subportMatching:subsequentMatching];

  return v8;
}

- (id)outputPortMatching:(id)matching
{
  v28 = *MEMORY[0x1E69E9840];
  matchingCopy = matching;
  if (!matchingCopy)
  {
    v8 = NUAssertLogger_5769();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "matching != nil"];
      *buf = 138543362;
      v25 = v9;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v11 = NUAssertLogger_5769();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v16 = MEMORY[0x1E696AF00];
        v17 = v15;
        callStackSymbols = [v16 callStackSymbols];
        v19 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v15;
        v26 = 2114;
        v27 = v19;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline outputPortMatching:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1249, @"Invalid parameter not satisfying: %s", v20, v21, v22, v23, "matching != nil");
  }

  v5 = matchingCopy;
  v6 = [(_NUPipeline *)self _outputPortMatching:matchingCopy];

  return v6;
}

- (id)_inputPortMatching:(id)matching
{
  matchingCopy = matching;
  v5 = [(_NUPipeline *)self inputChannelMatching:matchingCopy];
  if (v5)
  {
    v6 = [(_NUPipeline *)self _inputPortForChannel:v5];
  }

  else
  {
    v6 = 0;
  }

  subsequentMatching = [matchingCopy subsequentMatching];
  v8 = [v6 _subportMatching:subsequentMatching];

  return v8;
}

- (id)inputPortMatching:(id)matching
{
  v28 = *MEMORY[0x1E69E9840];
  matchingCopy = matching;
  if (!matchingCopy)
  {
    v8 = NUAssertLogger_5769();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "matching != nil"];
      *buf = 138543362;
      v25 = v9;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v11 = NUAssertLogger_5769();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v16 = MEMORY[0x1E696AF00];
        v17 = v15;
        callStackSymbols = [v16 callStackSymbols];
        v19 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v15;
        v26 = 2114;
        v27 = v19;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline inputPortMatching:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1236, @"Invalid parameter not satisfying: %s", v20, v21, v22, v23, "matching != nil");
  }

  v5 = matchingCopy;
  v6 = [(_NUPipeline *)self _inputPortMatching:matchingCopy];

  return v6;
}

- (id)outputChannelMatching:(id)matching
{
  matchingCopy = matching;
  v3 = matchingCopy;
  v4 = PFFind();

  return v4;
}

- (id)inputChannelMatching:(id)matching
{
  matchingCopy = matching;
  v3 = matchingCopy;
  v4 = PFFind();

  return v4;
}

- (BOOL)_removeOutputPort:(id)port error:(id *)error
{
  v52 = *MEMORY[0x1E69E9840];
  portCopy = port;
  pipeline = [portCopy pipeline];

  if (pipeline != self)
  {
    v17 = NUAssertLogger_5769();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Port is not attached"];
      *v49 = 138543362;
      *&v49[4] = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v49, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_5769();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v25 = MEMORY[0x1E696AF00];
        v26 = v24;
        callStackSymbols = [v25 callStackSymbols];
        v28 = [callStackSymbols componentsJoinedByString:@"\n"];
        *v49 = 138543618;
        *&v49[4] = v24;
        v50 = 2114;
        v51 = v28;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v49, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *v49 = 138543362;
      *&v49[4] = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v49, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline _removeOutputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1199, @"Port is not attached", v29, v30, v31, v32, *v49);
  }

  superport = [portCopy superport];

  if (superport)
  {
    address = [portCopy address];
    v10 = @"Cannot remove output subport";
LABEL_7:
    [NUError invalidError:v10 object:address];
    *error = v11 = 0;
    goto LABEL_8;
  }

  if (([portCopy hasConnections] & 1) != 0 || objc_msgSend(portCopy, "hasSubConnections"))
  {
    address = [portCopy fullName];
    v10 = @"Cannot remove connected output port";
    goto LABEL_7;
  }

  [portCopy disconnectAll];
  [portCopy setPipeline:0];
  outputChannels = self->_outputChannels;
  channel = [portCopy channel];
  v15 = [(NSMutableArray *)outputChannels indexOfObject:channel];

  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = NUAssertLogger_5769();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Output channel not found"];
      *v49 = 138543362;
      *&v49[4] = v34;
      _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v49, 0xCu);
    }

    v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v36 = NUAssertLogger_5769();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
    if (v35)
    {
      if (v37)
      {
        v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v41 = MEMORY[0x1E696AF00];
        v42 = v40;
        callStackSymbols3 = [v41 callStackSymbols];
        v44 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *v49 = 138543618;
        *&v49[4] = v40;
        v50 = 2114;
        v51 = v44;
        _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v49, 0x16u);
      }
    }

    else if (v37)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v39 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *v49 = 138543362;
      *&v49[4] = v39;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v49, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline _removeOutputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1217, @"Output channel not found", v45, v46, v47, v48, *v49);
  }

  [(NSMutableArray *)self->_outputChannels removeObjectAtIndex:v15];
  outputPorts = self->_outputPorts;
  address = [portCopy fullName];
  [(NSMutableDictionary *)outputPorts removeObjectForKey:address];
  v11 = 1;
LABEL_8:

  return v11;
}

- (BOOL)removeOutputPort:(id)port error:(id *)error
{
  v69 = *MEMORY[0x1E69E9840];
  portCopy = port;
  if (!portCopy)
  {
    v12 = NUAssertLogger_5769();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "port != nil"];
      *buf = 138543362;
      v66 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_5769();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        callStackSymbols = [v37 callStackSymbols];
        v40 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v36;
        v67 = 2114;
        v68 = v40;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeOutputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1186, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "port != nil");
  }

  if (!error)
  {
    v19 = NUAssertLogger_5769();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v66 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_5769();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v21)
    {
      if (v23)
      {
        v45 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v46 = MEMORY[0x1E696AF00];
        v47 = v45;
        callStackSymbols3 = [v46 callStackSymbols];
        v49 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v45;
        v67 = 2114;
        v68 = v49;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeOutputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1187, @"Invalid parameter not satisfying: %s", v50, v51, v52, v53, "error != NULL");
  }

  v7 = portCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = NUAssertLogger_5769();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = MEMORY[0x1E696AEC0];
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = [v27 stringWithFormat:@"Invalid parameter not kind of %@", v29];
      *buf = 138543362;
      v66 = v30;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v32 = NUAssertLogger_5769();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (v31)
    {
      if (v33)
      {
        v54 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v55 = MEMORY[0x1E696AF00];
        v56 = v54;
        callStackSymbols5 = [v55 callStackSymbols];
        v58 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v54;
        v67 = 2114;
        v68 = v58;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v59 = objc_opt_class();
    v60 = NSStringFromClass(v59);
    _NUAssertFailHandler("[_NUPipeline removeOutputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1188, @"Invalid parameter not kind of %@", v61, v62, v63, v64, v60);
  }

  channel = [v7 channel];
  v9 = [(_NUPipeline *)self _outputPortForChannel:channel];

  if (v9 == v7)
  {
    v10 = [(_NUPipeline *)self _removeOutputPort:v7 error:error];
  }

  else
  {
    [NUError unknownError:@"Unknown output port" object:v7];
    *error = v10 = 0;
  }

  return v10;
}

- (BOOL)removeOutputNamed:(id)named error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  if (!namedCopy)
  {
    v12 = NUAssertLogger_5769();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "name != nil"];
      *buf = 138543362;
      v45 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_5769();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        callStackSymbols = [v27 callStackSymbols];
        v30 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v26;
        v46 = 2114;
        v47 = v30;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeOutputNamed:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1173, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "name != nil");
  }

  if (!error)
  {
    v19 = NUAssertLogger_5769();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v45 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_5769();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v21)
    {
      if (v23)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        callStackSymbols3 = [v36 callStackSymbols];
        v39 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v35;
        v46 = 2114;
        v47 = v39;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeOutputNamed:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1174, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "error != NULL");
  }

  v7 = namedCopy;
  v8 = [NUChannelMatching name:namedCopy];
  v9 = [(_NUPipeline *)self _outputPortMatching:v8];

  if (v9)
  {
    v10 = [(_NUPipeline *)self _removeOutputPort:v9 error:error];
  }

  else
  {
    [NUError notFoundError:@"No such output port" object:v7];
    *error = v10 = 0;
  }

  return v10;
}

- (BOOL)removeOutputChannel:(id)channel error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  channelCopy = channel;
  if (!channelCopy)
  {
    v12 = NUAssertLogger_5769();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "channel != nil"];
      *buf = 138543362;
      v45 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_5769();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        callStackSymbols = [v27 callStackSymbols];
        v30 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v26;
        v46 = 2114;
        v47 = v30;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeOutputChannel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1160, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "channel != nil");
  }

  if (!error)
  {
    v19 = NUAssertLogger_5769();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v45 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_5769();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v21)
    {
      if (v23)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        callStackSymbols3 = [v36 callStackSymbols];
        v39 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v35;
        v46 = 2114;
        v47 = v39;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeOutputChannel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1161, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "error != NULL");
  }

  v7 = channelCopy;
  v8 = [(_NUPipeline *)self _outputPortForChannel:channelCopy];
  if (v8)
  {
    v9 = [(_NUPipeline *)self _removeOutputPort:v8 error:error];
  }

  else
  {
    name = [v7 name];
    *error = [NUError notFoundError:@"No such output channel" object:name];

    v9 = 0;
  }

  return v9;
}

- (BOOL)_removeInputPort:(id)port error:(id *)error
{
  v52 = *MEMORY[0x1E69E9840];
  portCopy = port;
  pipeline = [portCopy pipeline];

  if (pipeline != self)
  {
    v17 = NUAssertLogger_5769();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Port is not attached"];
      *v49 = 138543362;
      *&v49[4] = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v49, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_5769();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v25 = MEMORY[0x1E696AF00];
        v26 = v24;
        callStackSymbols = [v25 callStackSymbols];
        v28 = [callStackSymbols componentsJoinedByString:@"\n"];
        *v49 = 138543618;
        *&v49[4] = v24;
        v50 = 2114;
        v51 = v28;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v49, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *v49 = 138543362;
      *&v49[4] = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v49, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline _removeInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1135, @"Port is not attached", v29, v30, v31, v32, *v49);
  }

  superport = [portCopy superport];

  if (superport)
  {
    address = [portCopy address];
    v10 = @"Cannot remove input subport";
LABEL_7:
    [NUError invalidError:v10 object:address];
    *error = v11 = 0;
    goto LABEL_8;
  }

  if (([portCopy isConnected] & 1) != 0 || objc_msgSend(portCopy, "hasConnectedSubport"))
  {
    address = [portCopy fullName];
    v10 = @"Cannot remove connected input port";
    goto LABEL_7;
  }

  [portCopy deleteAllConnections];
  [portCopy setPipeline:0];
  inputChannels = self->_inputChannels;
  channel = [portCopy channel];
  v15 = [(NSMutableArray *)inputChannels indexOfObject:channel];

  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = NUAssertLogger_5769();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Input channel not found"];
      *v49 = 138543362;
      *&v49[4] = v34;
      _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v49, 0xCu);
    }

    v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v36 = NUAssertLogger_5769();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
    if (v35)
    {
      if (v37)
      {
        v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v41 = MEMORY[0x1E696AF00];
        v42 = v40;
        callStackSymbols3 = [v41 callStackSymbols];
        v44 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *v49 = 138543618;
        *&v49[4] = v40;
        v50 = 2114;
        v51 = v44;
        _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v49, 0x16u);
      }
    }

    else if (v37)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v39 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *v49 = 138543362;
      *&v49[4] = v39;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v49, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline _removeInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1153, @"Input channel not found", v45, v46, v47, v48, *v49);
  }

  [(NSMutableArray *)self->_inputChannels removeObjectAtIndex:v15];
  inputPorts = self->_inputPorts;
  address = [portCopy fullName];
  [(NSMutableDictionary *)inputPorts removeObjectForKey:address];
  v11 = 1;
LABEL_8:

  return v11;
}

- (BOOL)removeInputPort:(id)port error:(id *)error
{
  v69 = *MEMORY[0x1E69E9840];
  portCopy = port;
  if (!portCopy)
  {
    v12 = NUAssertLogger_5769();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "port != nil"];
      *buf = 138543362;
      v66 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_5769();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        callStackSymbols = [v37 callStackSymbols];
        v40 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v36;
        v67 = 2114;
        v68 = v40;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1121, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "port != nil");
  }

  if (!error)
  {
    v19 = NUAssertLogger_5769();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v66 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_5769();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v21)
    {
      if (v23)
      {
        v45 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v46 = MEMORY[0x1E696AF00];
        v47 = v45;
        callStackSymbols3 = [v46 callStackSymbols];
        v49 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v45;
        v67 = 2114;
        v68 = v49;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1122, @"Invalid parameter not satisfying: %s", v50, v51, v52, v53, "error != NULL");
  }

  v7 = portCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = NUAssertLogger_5769();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = MEMORY[0x1E696AEC0];
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = [v27 stringWithFormat:@"Invalid parameter not kind of %@", v29];
      *buf = 138543362;
      v66 = v30;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v32 = NUAssertLogger_5769();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (v31)
    {
      if (v33)
      {
        v54 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v55 = MEMORY[0x1E696AF00];
        v56 = v54;
        callStackSymbols5 = [v55 callStackSymbols];
        v58 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v54;
        v67 = 2114;
        v68 = v58;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v59 = objc_opt_class();
    v60 = NSStringFromClass(v59);
    _NUAssertFailHandler("[_NUPipeline removeInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1123, @"Invalid parameter not kind of %@", v61, v62, v63, v64, v60);
  }

  channel = [v7 channel];
  v9 = [(_NUPipeline *)self _inputPortForChannel:channel];

  if (v9 == v7)
  {
    v10 = [(_NUPipeline *)self _removeInputPort:v7 error:error];
  }

  else
  {
    [NUError unknownError:@"Unknown input port" object:v7];
    *error = v10 = 0;
  }

  return v10;
}

- (BOOL)removeInputNamed:(id)named error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  if (!namedCopy)
  {
    v12 = NUAssertLogger_5769();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "name != nil"];
      *buf = 138543362;
      v45 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_5769();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        callStackSymbols = [v27 callStackSymbols];
        v30 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v26;
        v46 = 2114;
        v47 = v30;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeInputNamed:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1108, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "name != nil");
  }

  if (!error)
  {
    v19 = NUAssertLogger_5769();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v45 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_5769();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v21)
    {
      if (v23)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        callStackSymbols3 = [v36 callStackSymbols];
        v39 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v35;
        v46 = 2114;
        v47 = v39;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeInputNamed:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1109, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "error != NULL");
  }

  v7 = namedCopy;
  v8 = [NUChannelMatching name:namedCopy];
  v9 = [(_NUPipeline *)self _inputPortMatching:v8];

  if (v9)
  {
    v10 = [(_NUPipeline *)self _removeInputPort:v9 error:error];
  }

  else
  {
    [NUError notFoundError:@"No such input port" object:v7];
    *error = v10 = 0;
  }

  return v10;
}

- (BOOL)removeInputChannel:(id)channel error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  channelCopy = channel;
  if (!channelCopy)
  {
    v12 = NUAssertLogger_5769();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "channel != nil"];
      *buf = 138543362;
      v45 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_5769();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        callStackSymbols = [v27 callStackSymbols];
        v30 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v26;
        v46 = 2114;
        v47 = v30;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeInputChannel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1095, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "channel != nil");
  }

  if (!error)
  {
    v19 = NUAssertLogger_5769();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v45 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_5769();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v21)
    {
      if (v23)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        callStackSymbols3 = [v36 callStackSymbols];
        v39 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v35;
        v46 = 2114;
        v47 = v39;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeInputChannel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1096, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "error != NULL");
  }

  v7 = channelCopy;
  v8 = [(_NUPipeline *)self _inputPortForChannel:channelCopy];
  if (v8)
  {
    v9 = [(_NUPipeline *)self _removeInputPort:v8 error:error];
  }

  else
  {
    name = [v7 name];
    *error = [NUError notFoundError:@"No such input channel" object:name];

    v9 = 0;
  }

  return v9;
}

- (id)_addOutputChannel:(id)channel
{
  v31 = *MEMORY[0x1E69E9840];
  channelCopy = channel;
  outputPorts = self->_outputPorts;
  name = [channelCopy name];
  v7 = [(NSMutableDictionary *)outputPorts objectForKeyedSubscript:name];

  if (v7)
  {
    v12 = NUAssertLogger_5769();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Output port already exists"];
      *v28 = 138543362;
      *&v28[4] = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v28, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_5769();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v20 = MEMORY[0x1E696AF00];
        v21 = v19;
        callStackSymbols = [v20 callStackSymbols];
        v23 = [callStackSymbols componentsJoinedByString:@"\n"];
        *v28 = 138543618;
        *&v28[4] = v19;
        v29 = 2114;
        v30 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v28, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *v28 = 138543362;
      *&v28[4] = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v28, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline _addOutputChannel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1086, @"Output port already exists", v24, v25, v26, v27, *v28);
  }

  v8 = [[_NUChannelPort alloc] initWithChannel:channelCopy];
  [(NSMutableArray *)self->_outputChannels addObject:channelCopy];
  v9 = self->_outputPorts;
  name2 = [channelCopy name];
  [(NSMutableDictionary *)v9 setObject:v8 forKey:name2];

  [(_NUChannelPort *)v8 setPipeline:self];

  return v8;
}

- (id)addOutputChannel:(id)channel error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  channelCopy = channel;
  if (!channelCopy)
  {
    v12 = NUAssertLogger_5769();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "channel != nil"];
      *buf = 138543362;
      v45 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_5769();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        callStackSymbols = [v27 callStackSymbols];
        v30 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v26;
        v46 = 2114;
        v47 = v30;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline addOutputChannel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1073, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "channel != nil");
  }

  if (!error)
  {
    v19 = NUAssertLogger_5769();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v45 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_5769();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v21)
    {
      if (v23)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        callStackSymbols3 = [v36 callStackSymbols];
        v39 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v35;
        v46 = 2114;
        v47 = v39;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline addOutputChannel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1074, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "error != NULL");
  }

  v7 = channelCopy;
  v8 = [(_NUPipeline *)self _outputPortForChannel:channelCopy];
  if (v8)
  {
    name = [v7 name];
    *error = [NUError duplicateError:@"Output channel already exists" object:name];

    v10 = 0;
  }

  else
  {
    v10 = [(_NUPipeline *)self _addOutputChannel:v7];
  }

  return v10;
}

- (id)_addInputChannel:(id)channel
{
  v31 = *MEMORY[0x1E69E9840];
  channelCopy = channel;
  inputPorts = self->_inputPorts;
  name = [channelCopy name];
  v7 = [(NSMutableDictionary *)inputPorts objectForKeyedSubscript:name];

  if (v7)
  {
    v12 = NUAssertLogger_5769();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Input port already exists"];
      *v28 = 138543362;
      *&v28[4] = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v28, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_5769();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v20 = MEMORY[0x1E696AF00];
        v21 = v19;
        callStackSymbols = [v20 callStackSymbols];
        v23 = [callStackSymbols componentsJoinedByString:@"\n"];
        *v28 = 138543618;
        *&v28[4] = v19;
        v29 = 2114;
        v30 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v28, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *v28 = 138543362;
      *&v28[4] = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v28, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline _addInputChannel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1064, @"Input port already exists", v24, v25, v26, v27, *v28);
  }

  v8 = [[_NUChannelPort alloc] initWithChannel:channelCopy];
  [(_NUChannelPort *)v8 setPipeline:self];
  [(NSMutableArray *)self->_inputChannels addObject:channelCopy];
  v9 = self->_inputPorts;
  name2 = [channelCopy name];
  [(NSMutableDictionary *)v9 setObject:v8 forKey:name2];

  return v8;
}

- (id)addInputChannel:(id)channel error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  channelCopy = channel;
  if (!channelCopy)
  {
    v12 = NUAssertLogger_5769();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "channel != nil"];
      *buf = 138543362;
      v45 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_5769();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        callStackSymbols = [v27 callStackSymbols];
        v30 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v26;
        v46 = 2114;
        v47 = v30;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline addInputChannel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1051, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "channel != nil");
  }

  if (!error)
  {
    v19 = NUAssertLogger_5769();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v45 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_5769();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v21)
    {
      if (v23)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        callStackSymbols3 = [v36 callStackSymbols];
        v39 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v35;
        v46 = 2114;
        v47 = v39;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline addInputChannel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1052, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "error != NULL");
  }

  v7 = channelCopy;
  v8 = [(_NUPipeline *)self _inputPortForChannel:channelCopy];
  if (v8)
  {
    name = [v7 name];
    *error = [NUError duplicateError:@"Input channel already exists" object:name];

    v10 = 0;
  }

  else
  {
    v10 = [(_NUPipeline *)self _addInputChannel:v7];
  }

  return v10;
}

- (id)outputPortNamed:(id)named
{
  v28 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  if (!namedCopy)
  {
    v8 = NUAssertLogger_5769();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "name != nil"];
      *buf = 138543362;
      v25 = v9;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v11 = NUAssertLogger_5769();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v16 = MEMORY[0x1E696AF00];
        v17 = v15;
        callStackSymbols = [v16 callStackSymbols];
        v19 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v15;
        v26 = 2114;
        v27 = v19;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline outputPortNamed:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1042, @"Invalid parameter not satisfying: %s", v20, v21, v22, v23, "name != nil");
  }

  v5 = namedCopy;
  v6 = [(_NUPipeline *)self _outputPortNamed:namedCopy];

  return v6;
}

- (id)_outputPortForChannel:(id)channel
{
  outputPorts = self->_outputPorts;
  name = [channel name];
  v5 = [(NSMutableDictionary *)outputPorts objectForKey:name];

  return v5;
}

- (id)outputPortForChannel:(id)channel
{
  v28 = *MEMORY[0x1E69E9840];
  channelCopy = channel;
  if (!channelCopy)
  {
    v8 = NUAssertLogger_5769();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "channel != nil"];
      *buf = 138543362;
      v25 = v9;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v11 = NUAssertLogger_5769();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v16 = MEMORY[0x1E696AF00];
        v17 = v15;
        callStackSymbols = [v16 callStackSymbols];
        v19 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v15;
        v26 = 2114;
        v27 = v19;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline outputPortForChannel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1033, @"Invalid parameter not satisfying: %s", v20, v21, v22, v23, "channel != nil");
  }

  v5 = channelCopy;
  v6 = [(_NUPipeline *)self _outputPortForChannel:channelCopy];

  return v6;
}

- (id)inputPortNamed:(id)named
{
  v28 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  if (!namedCopy)
  {
    v8 = NUAssertLogger_5769();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "name != nil"];
      *buf = 138543362;
      v25 = v9;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v11 = NUAssertLogger_5769();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v16 = MEMORY[0x1E696AF00];
        v17 = v15;
        callStackSymbols = [v16 callStackSymbols];
        v19 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v15;
        v26 = 2114;
        v27 = v19;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline inputPortNamed:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1024, @"Invalid parameter not satisfying: %s", v20, v21, v22, v23, "name != nil");
  }

  v5 = namedCopy;
  v6 = [(_NUPipeline *)self _inputPortNamed:namedCopy];

  return v6;
}

- (id)_inputPortForChannel:(id)channel
{
  name = [channel name];
  v5 = [(_NUPipeline *)self _inputPortNamed:name];

  return v5;
}

- (id)inputPortForChannel:(id)channel
{
  v28 = *MEMORY[0x1E69E9840];
  channelCopy = channel;
  if (!channelCopy)
  {
    v8 = NUAssertLogger_5769();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "channel != nil"];
      *buf = 138543362;
      v25 = v9;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v11 = NUAssertLogger_5769();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v16 = MEMORY[0x1E696AF00];
        v17 = v15;
        callStackSymbols = [v16 callStackSymbols];
        v19 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v15;
        v26 = 2114;
        v27 = v19;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline inputPortForChannel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1015, @"Invalid parameter not satisfying: %s", v20, v21, v22, v23, "channel != nil");
  }

  v5 = channelCopy;
  v6 = [(_NUPipeline *)self _inputPortForChannel:channelCopy];

  return v6;
}

- (NSArray)outputChannels
{
  v2 = [(NSMutableArray *)self->_outputChannels copy];

  return v2;
}

- (NSArray)inputChannels
{
  v2 = [(NSMutableArray *)self->_inputChannels copy];

  return v2;
}

- (NUPipelinePath)path
{
  selfCopy = self;
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  superpipeline = [(_NUPipeline *)selfCopy superpipeline];

  if (superpipeline)
  {
    do
    {
      name = [(_NUPipeline *)selfCopy name];
      v6 = [NUPipelinePathComponent componentWithName:name];

      [v3 insertObject:v6 atIndex:0];
      superpipeline2 = [(_NUPipeline *)selfCopy superpipeline];

      v7Superpipeline = [(_NUPipeline *)superpipeline2 superpipeline];

      selfCopy = superpipeline2;
    }

    while (v7Superpipeline);
  }

  else
  {
    superpipeline2 = selfCopy;
  }

  v9 = +[NUPipelinePathComponent rootComponent];
  [v3 insertObject:v9 atIndex:0];

  v10 = [[NUPipelinePath alloc] initWithPathComponents:v3];

  return v10;
}

- (_NUPipeline)initWithIdentifier:(id)identifier
{
  v43 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v22 = NUAssertLogger_5769();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
      *buf = 138543362;
      v40 = v23;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger_5769();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v26)
      {
        v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v30 = MEMORY[0x1E696AF00];
        v31 = v29;
        callStackSymbols = [v30 callStackSymbols];
        v33 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v40 = v29;
        v41 = 2114;
        v42 = v33;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v40 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline initWithIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 954, @"Invalid parameter not satisfying: %s", v34, v35, v36, v37, "identifier != nil");
  }

  v5 = identifierCopy;
  v38.receiver = self;
  v38.super_class = _NUPipeline;
  v6 = [(_NUPipeline *)&v38 init];
  identifier = v6->_identifier;
  v6->_identifier = v5;
  v8 = v5;

  v9 = [objc_opt_class() defaultPipelineNameWithIdentifier:v8];
  name = v6->_name;
  v6->_name = v9;

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  inputChannels = v6->_inputChannels;
  v6->_inputChannels = v11;

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  inputPorts = v6->_inputPorts;
  v6->_inputPorts = v13;

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  outputChannels = v6->_outputChannels;
  v6->_outputChannels = v15;

  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  outputPorts = v6->_outputPorts;
  v6->_outputPorts = v17;

  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  subpipelines = v6->_subpipelines;
  v6->_subpipelines = v19;

  return v6;
}

@end