@interface _NUPipeline
+ (id)buildPipelineWithBuilder:(id)a3 error:(id *)a4;
+ (id)defaultPipelineNameWithIdentifier:(id)a3;
- (BOOL)_assignInputPort:(id)a3 toExpression:(id)a4 error:(id *)a5;
- (BOOL)_bind:(id)a3 to:(id)a4 error:(id *)a5;
- (BOOL)_canAssignInputPort:(id)a3 toExpression:(id)a4 error:(id *)a5;
- (BOOL)_canConnect:(id)a3 to:(id)a4 error:(id *)a5;
- (BOOL)_canDisconnectInputPort:(id)a3 error:(id *)a4;
- (BOOL)_clearExpressionFromInputPort:(id)a3 error:(id *)a4;
- (BOOL)_connect:(id)a3 to:(id)a4 error:(id *)a5;
- (BOOL)_disconnect:(id)a3 error:(id *)a4;
- (BOOL)_removeInputPort:(id)a3 error:(id *)a4;
- (BOOL)_removeOutputPort:(id)a3 error:(id *)a4;
- (BOOL)_removeSubpipeline:(id)a3 error:(id *)a4;
- (BOOL)_resetInputPort:(id)a3 error:(id *)a4;
- (BOOL)_validateInputPort:(id)a3 error:(id *)a4;
- (BOOL)_validateOutputPort:(id)a3 error:(id *)a4;
- (BOOL)assign:(id)a3 input:(id)a4 to:(id)a5 error:(id *)a6;
- (BOOL)assign:(id)a3 inputNamed:(id)a4 to:(id)a5 error:(id *)a6;
- (BOOL)assignInputPort:(id)a3 toExpression:(id)a4 error:(id *)a5;
- (BOOL)bind:(id)a3 to:(id)a4 error:(id *)a5;
- (BOOL)bindInputChannel:(id)a3 to:(id)a4 error:(id *)a5;
- (BOOL)bindInputPort:(id)a3 to:(id)a4 error:(id *)a5;
- (BOOL)canAssignInputPort:(id)a3 toExpression:(id)a4 error:(id *)a5;
- (BOOL)canConnect:(id)a3 to:(id)a4 error:(id *)a5;
- (BOOL)canConnectInputPort:(id)a3 toOutputPort:(id)a4 error:(id *)a5;
- (BOOL)canDisconnectInputPort:(id)a3 error:(id *)a4;
- (BOOL)clear:(id)a3 input:(id)a4 error:(id *)a5;
- (BOOL)clearExpressionFromInputPort:(id)a3 error:(id *)a4;
- (BOOL)connect:(id)a3 input:(id)a4 to:(id)a5 error:(id *)a6;
- (BOOL)connect:(id)a3 input:(id)a4 to:(id)a5 key:(id)a6 error:(id *)a7;
- (BOOL)connect:(id)a3 input:(id)a4 to:(id)a5 output:(id)a6 error:(id *)a7;
- (BOOL)connect:(id)a3 input:(id)a4 to:(id)a5 subport:(id)a6 error:(id *)a7;
- (BOOL)connect:(id)a3 subport:(id)a4 to:(id)a5 output:(id)a6 error:(id *)a7;
- (BOOL)connect:(id)a3 subport:(id)a4 to:(id)a5 subport:(id)a6 error:(id *)a7;
- (BOOL)connect:(id)a3 to:(id)a4 error:(id *)a5;
- (BOOL)connect:(id)a3 to:(id)a4 output:(id)a5 error:(id *)a6;
- (BOOL)connectInputPort:(id)a3 toOutputPort:(id)a4 error:(id *)a5;
- (BOOL)disconnect:(id)a3 error:(id *)a4;
- (BOOL)disconnect:(id)a3 input:(id)a4 error:(id *)a5;
- (BOOL)disconnect:(id)a3 subport:(id)a4 error:(id *)a5;
- (BOOL)disconnectInputPort:(id)a3 error:(id *)a4;
- (BOOL)editSubpipelineAtPath:(id)a3 withBlock:(id)a4 error:(id *)a5;
- (BOOL)isPrivate;
- (BOOL)isReachableInnerPipeline:(id)a3;
- (BOOL)isReachableOuterPipeline:(id)a3;
- (BOOL)removeInputChannel:(id)a3 error:(id *)a4;
- (BOOL)removeInputNamed:(id)a3 error:(id *)a4;
- (BOOL)removeInputPort:(id)a3 error:(id *)a4;
- (BOOL)removeOutputChannel:(id)a3 error:(id *)a4;
- (BOOL)removeOutputNamed:(id)a3 error:(id *)a4;
- (BOOL)removeOutputPort:(id)a3 error:(id *)a4;
- (BOOL)removeSubpipeline:(id)a3 error:(id *)a4;
- (BOOL)removeSubpipelineAtPath:(id)a3 error:(id *)a4;
- (BOOL)removeSubpipelineWithName:(id)a3 error:(id *)a4;
- (BOOL)reset:(id)a3 error:(id *)a4;
- (BOOL)resetInputChannel:(id)a3 error:(id *)a4;
- (BOOL)resetInputPort:(id)a3 error:(id *)a4;
- (NSArray)inputChannels;
- (NSArray)outputChannels;
- (NSString)alias;
- (NUPipelinePath)path;
- (_NUPipeline)initWithIdentifier:(id)a3;
- (_NUPipeline)rootPipeline;
- (id)_addInputChannel:(id)a3;
- (id)_addOutputChannel:(id)a3;
- (id)_compactDescriptionForInputPort:(id)a3 showInside:(BOOL)a4 showOutside:(BOOL)a5;
- (id)_compactDescriptionForOutputPort:(id)a3 showInside:(BOOL)a4 showOutside:(BOOL)a5;
- (id)_compactDescriptionWithLevel:(int)a3;
- (id)_descriptionWithLevel:(int)a3;
- (id)_evaluateInputsWithContext:(id)a3 error:(id *)a4;
- (id)_inputPortForChannel:(id)a3;
- (id)_inputPortMatching:(id)a3;
- (id)_outputPortForChannel:(id)a3;
- (id)_outputPortMatching:(id)a3;
- (id)_subpipelineAtPath:(id)a3;
- (id)_subpipelineWithName:(id)a3;
- (id)_subpipelines;
- (id)addCIFilterPipelineWithName:(id)a3 error:(id *)a4;
- (id)addConstantData:(id)a3 error:(id *)a4;
- (id)addConstantPipelineWithData:(id)a3 error:(id *)a4;
- (id)addContainerPipeline:(id)a3 error:(id *)a4;
- (id)addCropPipeline;
- (id)addInputChannel:(id)a3 error:(id *)a4;
- (id)addMapPipeline:(id)a3 error:(id *)a4;
- (id)addOrientationPipeline;
- (id)addOutputChannel:(id)a3 error:(id *)a4;
- (id)addPipelineWithBuilder:(id)a3 error:(id *)a4;
- (id)addReducePipeline:(id)a3 error:(id *)a4;
- (id)addStraightenPipeline;
- (id)addSwitchPipeline:(id)a3 error:(id *)a4;
- (id)applyOrientation:(id)a3 to:(id)a4 error:(id *)a5;
- (id)evaluateOutputChannel:(id)a3 error:(id *)a4;
- (id)evaluateOutputMatching:(id)a3 error:(id *)a4;
- (id)evaluateOutputPort:(id)a3 context:(id)a4 error:(id *)a5;
- (id)evaluateOutputPort:(id)a3 error:(id *)a4;
- (id)evaluatePort:(id)a3 context:(id)a4 error:(id *)a5;
- (id)group:(id)a3 error:(id *)a4;
- (id)inputChannelMatching:(id)a3;
- (id)inputPortForChannel:(id)a3;
- (id)inputPortMatching:(id)a3;
- (id)inputPortNamed:(id)a3;
- (id)map:(id)a3 block:(id)a4 error:(id *)a5;
- (id)outputChannelMatching:(id)a3;
- (id)outputPortForChannel:(id)a3;
- (id)outputPortMatching:(id)a3;
- (id)outputPortNamed:(id)a3;
- (id)processContainer:(id)a3 forEachComponent:(id)a4 error:(id *)a5;
- (id)reduce:(id)a3 with:(id)a4 block:(id)a5 error:(id *)a6;
- (id)subpipelineAtPath:(id)a3;
- (id)subpipelineWithName:(id)a3;
- (id)switchOn:(id)a3 with:(id)a4 block:(id)a5 error:(id *)a6;
- (void)_addSubpipeline:(id)a3;
- (void)_appendDescription:(id)a3 forInputPort:(id)a4 showInside:(BOOL)a5 showOutside:(BOOL)a6 level:(int)a7;
- (void)_appendDescription:(id)a3 forOutputPort:(id)a4 showInside:(BOOL)a5 showOutside:(BOOL)a6 level:(int)a7;
- (void)propagateSpecializedInputFormat:(id)a3 fromPort:(id)a4;
- (void)propagateSpecializedOutputFormat:(id)a3 fromPort:(id)a4;
@end

@implementation _NUPipeline

- (id)_compactDescriptionForOutputPort:(id)a3 showInside:(BOOL)a4 showOutside:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = [v7 channel];
  v9 = [v8 type];
  if ((v9 - 1) > 4)
  {
    v10 = @"?";
  }

  else
  {
    v10 = off_1E8109A68[v9 - 1];
  }

  v11 = v10;

  if (v6)
  {
    if ([v7 isConnected])
    {
      v12 = [v7 inputPort];
      v13 = [v12 compactDescription];
    }

    else
    {
      if ([v7 hasConnectedSubport])
      {
        v16 = [v7 subports];
        v17 = PFMap();
        v18 = [v17 componentsJoinedByString:{@", "}];

        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@]", v18];

LABEL_23:
        v20 = [(__CFString *)v11 stringByAppendingString:v13];

        goto LABEL_24;
      }

      v12 = [v7 expression];
      v21 = [v12 compactDescription];
      v22 = v21;
      if (v21)
      {
        v13 = v21;
      }

      else
      {
        v23 = [v7 data];
        v24 = [v23 compactDescription];
        v25 = v24;
        v26 = @"-";
        if (v24)
        {
          v26 = v24;
        }

        v13 = v26;
      }
    }

    goto LABEL_23;
  }

  if (v5)
  {
    v14 = [v7 hasSubConnections];
    v15 = [v7 outputConnectionCount];
    if (v14)
    {
      [(__CFString *)v11 stringByAppendingFormat:@"[%lu]", v15];
    }

    else
    {
      [(__CFString *)v11 stringByAppendingFormat:@"%lu", v15];
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

- (id)_compactDescriptionForInputPort:(id)a3 showInside:(BOOL)a4 showOutside:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = [v7 channel];
  v9 = [v8 type];
  if ((v9 - 1) > 4)
  {
    v10 = @"?";
  }

  else
  {
    v10 = off_1E8109A68[v9 - 1];
  }

  v11 = v10;

  if (v5)
  {
    if ([v7 isConnected])
    {
      v12 = [v7 inputPort];
      v13 = [v12 compactDescription];
    }

    else
    {
      if (![v7 hasConnectedSubport])
      {
        v12 = [v7 expression];
        v21 = [v12 compactDescription];
        v22 = v21;
        if (v21)
        {
          v18 = v21;
        }

        else
        {
          v23 = [v7 data];
          v24 = [v23 compactDescription];
          v25 = v24;
          v26 = @"-";
          if (v24)
          {
            v26 = v24;
          }

          v18 = v26;
        }

        goto LABEL_23;
      }

      v16 = [v7 subports];
      v17 = PFMap();
      v12 = [v17 componentsJoinedByString:{@", "}];

      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@]", v12];
    }

    v18 = v13;
LABEL_23:

    if (v6)
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

  if (v6)
  {
    v14 = [v7 hasSubConnections];
    v15 = [v7 outputConnectionCount];
    if (v14)
    {
      [(__CFString *)v11 stringByAppendingFormat:@"[%lu]", v15];
    }

    else
    {
      [(__CFString *)v11 stringByAppendingFormat:@"%lu", v15];
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

- (id)_compactDescriptionWithLevel:(int)a3
{
  if ([(_NUPipeline *)self isInline])
  {
    v5 = 1;
  }

  else if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = ![(_NUPipeline *)self isPrivate];
  }

  v6 = [(_NUPipeline *)self inputChannels];
  v7 = PFMap();

  if ([v7 count])
  {
    v8 = [v7 componentsJoinedByString:{@", "}];
  }

  else
  {
    v8 = @"_";
  }

  v9 = [(_NUPipeline *)self outputChannels];
  v10 = PFMap();

  if ([v10 count])
  {
    v11 = [v10 componentsJoinedByString:{@", "}];
    if (v5)
    {
LABEL_11:
      v12 = [(_NUPipeline *)self subpipelines];
      v13 = PFMap();

      if ([v13 count])
      {
        v14 = [v13 componentsJoinedByString:@""];;
      }

      else
      {
        v14 = &stru_1F3F4BA98;
      }

      v17 = MEMORY[0x1E696AEC0];
      v18 = [(_NUPipeline *)self alias];
      v19 = v18;
      if (a3 <= 0)
      {
        v20 = @"%@(%@|%@)={%@}";
      }

      else
      {
        v20 = @"%@(%@|%@){%@}";
      }

      v16 = [v17 stringWithFormat:v20, v18, v8, v11, v14];

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
  v13 = [(_NUPipeline *)self alias];
  v16 = [v15 stringWithFormat:@"%@(%@|%@)", v13, v8, v11];
LABEL_20:

  return v16;
}

- (NSString)alias
{
  v2 = [(_NUPipeline *)self name];
  v3 = [MEMORY[0x1E696AD48] uppercaseLetterCharacterSet];
  v4 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  [v3 formUnionWithCharacterSet:v4];

  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v6 = [v2 length];
  v7 = 0;
  do
  {
    v8 = [v2 rangeOfCharacterFromSet:v3 options:10 range:{v7, v6}];
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
    v12 = [v2 substringWithRange:{v7 - 1, 1}];
    [v5 appendString:v12];
  }

  else
  {
    v12 = [v2 substringWithRange:{0, 1}];
    v13 = [v12 uppercaseString];
    [v5 appendString:v13];
  }

  if (v6)
  {
    do
    {
      v14 = [v2 rangeOfCharacterFromSet:v3 options:2 range:{v7, v6}];
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v16 = v14;
      v17 = v15;
      v18 = [v2 substringWithRange:{v14, v15}];
      [v5 appendString:v18];

      v19 = v7 + v6;
      v7 = v16 + v17;
      v6 = v19 - (v16 + v17);
    }

    while (v19 != v16 + v17);
  }

  return v5;
}

- (void)_appendDescription:(id)a3 forOutputPort:(id)a4 showInside:(BOOL)a5 showOutside:(BOOL)a6 level:(int)a7
{
  v8 = a6;
  v9 = a5;
  v31 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = (a7 + 1);
  v15 = [v13 fullName];
  v16 = [v13 effectiveFormat];
  v17 = [v16 description];
  [v12 appendFormat:@"\n%*s+ %@ (%@)", (2 * v14), "", v15, v17];

  if (v9)
  {
    if ([v13 isConnected])
    {
      v18 = [v13 inputPort];
      v19 = [v18 description];
      [v12 appendFormat:@" << %@", v19];

      if (v8)
      {
        goto LABEL_12;
      }
    }

    else if ([v13 hasConnectedSubport])
    {
      [v12 appendFormat:@" << [%lu]", objc_msgSend(v13, "inputConnectionCount")];
      if (v8)
      {
        goto LABEL_12;
      }
    }

    else
    {
      [v12 appendString:@" <>"];
      if (v8)
      {
        goto LABEL_12;
      }
    }

LABEL_3:
    if (!v9)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  if (!v8)
  {
    goto LABEL_3;
  }

LABEL_12:
  v20 = [v13 outputConnectionCount];
  if (v20)
  {
    [v12 appendFormat:@" >> [%lu]", v20];
    if (!v9)
    {
      goto LABEL_25;
    }
  }

  else
  {
    [v12 appendString:@" ><"];
    if (!v9)
    {
      goto LABEL_25;
    }
  }

LABEL_16:
  if ([v13 hasConnectedSubport])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v21 = [v13 subports];
    v22 = [v21 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
            objc_enumerationMutation(v21);
          }

          [(_NUPipeline *)self _appendDescription:v12 forOutputPort:*(*(&v26 + 1) + 8 * v25++) showInside:1 showOutside:v8 level:v14];
        }

        while (v23 != v25);
        v23 = [v21 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v23);
    }
  }

LABEL_25:
}

- (void)_appendDescription:(id)a3 forInputPort:(id)a4 showInside:(BOOL)a5 showOutside:(BOOL)a6 level:(int)a7
{
  v8 = a6;
  v9 = a5;
  v33 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = (a7 + 1);
  v15 = [v13 fullName];
  v16 = [v13 effectiveFormat];
  v17 = [v16 description];
  [v12 appendFormat:@"\n%*s- %@ (%@)", (2 * v14), "", v15, v17];

  if (v8)
  {
    if ([v13 isConnected])
    {
      v18 = [v13 inputPort];
      v19 = [v18 description];
      [v12 appendFormat:@" << %@", v19];
      goto LABEL_14;
    }

    if ([v13 hasConnectedSubport])
    {
      [v12 appendFormat:@" << [%lu]", objc_msgSend(v13, "inputConnectionCount")];
      if (v9)
      {
        goto LABEL_15;
      }

      goto LABEL_3;
    }

    v20 = [v13 expression];

    if (v20)
    {
      v18 = [v13 expression];
      v19 = [v18 description];
      [v12 appendFormat:@" := %@", v19];
    }

    else
    {
      v21 = [v13 data];

      if (!v21)
      {
        [v12 appendString:@" <>"];
        if (v9)
        {
          goto LABEL_15;
        }

LABEL_3:
        if (!v8)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      v18 = [v13 data];
      v19 = [v18 description];
      [v12 appendFormat:@" <= %@", v19];
    }

LABEL_14:

    if (v9)
    {
      goto LABEL_15;
    }

    goto LABEL_3;
  }

  if (!v9)
  {
    goto LABEL_3;
  }

LABEL_15:
  v22 = [v13 outputConnectionCount];
  if (v22)
  {
    [v12 appendFormat:@" >> [%lu]", v22];
    if (!v8)
    {
      goto LABEL_20;
    }
  }

  else
  {
    [v12 appendString:@" ><"];
    if (!v8)
    {
LABEL_20:
      if (!v9 || ![v13 hasSubConnections])
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }
  }

LABEL_19:
  if (([v13 hasConnectedSubport] & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_22:
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v23 = [v13 subports];
  v24 = [v23 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(v23);
        }

        [(_NUPipeline *)self _appendDescription:v12 forInputPort:*(*(&v28 + 1) + 8 * i) showInside:v9 showOutside:v8 level:v14];
      }

      v25 = [v23 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v25);
  }

LABEL_30:
}

- (id)_descriptionWithLevel:(int)a3
{
  v3 = *&a3;
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
    v7 = [(_NUPipeline *)self name];
    v8 = [(_NUPipeline *)self inputChannels];
    v9 = [v8 count];
    v10 = [(_NUPipeline *)self outputChannels];
    [v6 appendFormat:@"%@(%lu|%lu)", v7, v9, objc_msgSend(v10, "count")];
  }

  else
  {
    v7 = [(_NUPipeline *)self identifier];
    v8 = [v7 name];
    v10 = [(_NUPipeline *)self inputChannels];
    v11 = [v10 count];
    v12 = [(_NUPipeline *)self outputChannels];
    [v6 appendFormat:@"%@(%lu|%lu) = {", v8, v11, objc_msgSend(v12, "count")];
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v13 = [(_NUPipeline *)self inputChannels];
  v14 = [v13 countByEnumeratingWithState:&v40 objects:v46 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = [(_NUPipeline *)self inputPortForChannel:*(*(&v40 + 1) + 8 * i)];
        [(_NUPipeline *)self _appendDescription:v6 forInputPort:v18 showInside:v5 showOutside:v3 > 0 level:v3];
      }

      v15 = [v13 countByEnumeratingWithState:&v40 objects:v46 count:16];
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
  v24 = [(_NUPipeline *)self outputChannels];
  v25 = [v24 countByEnumeratingWithState:&v32 objects:v44 count:16];
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
          objc_enumerationMutation(v24);
        }

        v29 = [(_NUPipeline *)self outputPortForChannel:*(*(&v32 + 1) + 8 * k)];
        [(_NUPipeline *)self _appendDescription:v6 forOutputPort:v29 showInside:v5 showOutside:v3 > 0 level:v3];
      }

      v26 = [v24 countByEnumeratingWithState:&v32 objects:v44 count:16];
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
  v3 = [(_NUPipeline *)self identifier];
  v4 = [v3 namespace];
  v5 = [v4 hasPrefix:@"com.apple.photo"];

  if (v5)
  {
    return 1;
  }

  v7 = [(_NUPipeline *)self identifier];
  v8 = [v7 namespace];
  v9 = [v8 isEqualToString:@"com.apple.coreimage"];

  return v9;
}

- (BOOL)editSubpipelineAtPath:(id)a3 withBlock:(id)a4 error:(id *)a5
{
  v70 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v8)
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
        v41 = [v39 callStackSymbols];
        v42 = [v41 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v67 = v38;
        v68 = 2114;
        v69 = v42;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v67 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline editSubpipelineAtPath:withBlock:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2436, @"Invalid parameter not satisfying: %s", v43, v44, v45, v46, "path != nil");
  }

  v10 = v9;
  if (!v9)
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
        v50 = [v48 callStackSymbols];
        v51 = [v50 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v67 = v47;
        v68 = 2114;
        v69 = v51;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      v29 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [v29 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v67 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline editSubpipelineAtPath:withBlock:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2437, @"Invalid parameter not satisfying: %s", v52, v53, v54, v55, "block != nil");
  }

  if (!a5)
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
        v59 = [v57 callStackSymbols];
        v60 = [v59 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v67 = v56;
        v68 = 2114;
        v69 = v60;
        _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v35)
    {
      v36 = [MEMORY[0x1E696AF00] callStackSymbols];
      v37 = [v36 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v67 = v37;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline editSubpipelineAtPath:withBlock:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2438, @"Invalid parameter not satisfying: %s", v61, v62, v63, v64, "error != NULL");
  }

  v11 = [(_NUPipeline *)self _subpipelineAtPath:v8];
  v12 = v11;
  if (!v11)
  {
    v15 = @"No subpipeline at path";
LABEL_13:
    [NUError notFoundError:v15 object:v8];
    *a5 = v13 = 0;
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
    *a5 = [NUError errorWithCode:1 reason:@"Failed to edit pipeline" object:v8 underlyingError:v14];
  }

LABEL_14:
  return v13;
}

- (BOOL)_removeSubpipeline:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [v5 inputChannels];
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [v5 _inputPortForChannel:*(*(&v23 + 1) + 8 * v10)];
        [v11 disconnectAll];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [v5 outputChannels];
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = [v5 _outputPortForChannel:*(*(&v19 + 1) + 8 * v16)];
        [v17 deleteAllConnections];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  [(NSMutableArray *)self->_subpipelines removeObjectIdenticalTo:v5];
  return 1;
}

- (BOOL)removeSubpipelineAtPath:(id)a3 error:(id *)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
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
        v30 = [v28 callStackSymbols];
        v31 = [v30 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v46 = v27;
        v47 = 2114;
        v48 = v31;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v46 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeSubpipelineAtPath:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2399, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "path != nil");
  }

  if (!a4)
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
        v39 = [v37 callStackSymbols];
        v40 = [v39 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v46 = v36;
        v47 = 2114;
        v48 = v40;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v46 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeSubpipelineAtPath:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2400, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "error != NULL");
  }

  v7 = v6;
  v8 = [(_NUPipeline *)self _subpipelineAtPath:v6];
  if (!v8)
  {
    v11 = @"No subpipeline at path";
LABEL_8:
    [NUError notFoundError:v11 object:v7];
    *a4 = v10 = 0;
    goto LABEL_9;
  }

  if (![(_NUPipeline *)self isReachableInnerPipeline:v8])
  {
    v11 = @"Subpipeline is not reachable";
    goto LABEL_8;
  }

  v9 = [v8 superpipeline];
  v10 = [v9 _removeSubpipeline:v8 error:a4];

LABEL_9:
  return v10;
}

- (BOOL)removeSubpipelineWithName:(id)a3 error:(id *)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
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
        v28 = [v26 callStackSymbols];
        v29 = [v28 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v25;
        v45 = 2114;
        v46 = v29;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeSubpipelineWithName:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2386, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "name != nil");
  }

  if (!a4)
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
        v37 = [v35 callStackSymbols];
        v38 = [v37 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v34;
        v45 = 2114;
        v46 = v38;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeSubpipelineWithName:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2387, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "error != NULL");
  }

  v7 = v6;
  v8 = [(_NUPipeline *)self _subpipelineWithName:v6];
  if (v8)
  {
    v9 = [(_NUPipeline *)self _removeSubpipeline:v8 error:a4];
  }

  else
  {
    [NUError notFoundError:@"No subpipeline with name" object:v7];
    *a4 = v9 = 0;
  }

  return v9;
}

- (BOOL)removeSubpipeline:(id)a3 error:(id *)a4
{
  v67 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
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
        v37 = [v35 callStackSymbols];
        v38 = [v37 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v34;
        v65 = 2114;
        v66 = v38;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeSubpipeline:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2373, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "pipeline != nil");
  }

  if (!a4)
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
        v46 = [v44 callStackSymbols];
        v47 = [v46 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v43;
        v65 = 2114;
        v66 = v47;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeSubpipeline:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2374, @"Invalid parameter not satisfying: %s", v48, v49, v50, v51, "error != NULL");
  }

  v7 = v6;
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
        v55 = [v53 callStackSymbols];
        v56 = [v55 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v52;
        v65 = 2114;
        v66 = v56;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      v32 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [v32 componentsJoinedByString:@"\n"];
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
    *a4 = v8 = 0;
  }

  else
  {
    v8 = [(_NUPipeline *)self _removeSubpipeline:v7 error:a4];
  }

  return v8;
}

- (_NUPipeline)rootPipeline
{
  v2 = self;
  v3 = [(_NUPipeline *)v2 superpipeline];

  if (v3)
  {
    do
    {
      v4 = [(_NUPipeline *)v2 superpipeline];

      v5 = [(_NUPipeline *)v4 superpipeline];

      v2 = v4;
    }

    while (v5);
  }

  else
  {
    v4 = v2;
  }

  return v4;
}

- (id)_subpipelineAtPath:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v4 components];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 type];
        if (v12)
        {
          if (v12 == 2)
          {
            v13 = [(_NUPipeline *)v5 superpipeline];
          }

          else
          {
            if (v12 != 3)
            {
              continue;
            }

            v13 = [(_NUPipeline *)v5 rootPipeline];
          }

          v14 = v13;
        }

        else
        {
          v15 = [v11 name];
          v14 = [(_NUPipeline *)v5 _subpipelineWithName:v15];

          v5 = v15;
        }

        v5 = v14;
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)subpipelineAtPath:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
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
        v18 = [v16 callStackSymbols];
        v19 = [v18 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v15;
        v26 = 2114;
        v27 = v19;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      v13 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [v13 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline subpipelineAtPath:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2332, @"Invalid parameter not satisfying: %s", v20, v21, v22, v23, "path != nil");
  }

  v5 = v4;
  v6 = [(_NUPipeline *)self _subpipelineAtPath:v4];
  if (v6 && ![(_NUPipeline *)self isReachableInnerPipeline:v6]&& ![(_NUPipeline *)self isReachableOuterPipeline:v6])
  {

    v6 = 0;
  }

  return v6;
}

- (id)_subpipelineWithName:(id)a3
{
  v6 = a3;
  v3 = v6;
  v4 = PFFind();

  return v4;
}

- (id)subpipelineWithName:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
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
        v18 = [v16 callStackSymbols];
        v19 = [v18 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v15;
        v26 = 2114;
        v27 = v19;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      v13 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [v13 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline subpipelineWithName:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2320, @"Invalid parameter not satisfying: %s", v20, v21, v22, v23, "name != nil");
  }

  v5 = v4;
  v6 = [(_NUPipeline *)self _subpipelineWithName:v4];

  return v6;
}

- (id)_subpipelines
{
  v2 = [(NSMutableArray *)self->_subpipelines copy];

  return v2;
}

- (void)_addSubpipeline:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
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
        v25 = [v23 callStackSymbols];
        v26 = [v25 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v22;
        v44 = 2114;
        v45 = v26;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline _addSubpipeline:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2304, @"Invalid parameter not satisfying: %s", v27, v28, v29, v30, "pipeline != nil");
  }

  v41 = v4;
  v5 = [v4 superpipeline];

  if (v5)
  {
    v13 = NUAssertLogger_5769();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x1E696AEC0];
      v15 = [v41 superpipeline];
      v16 = [v14 stringWithFormat:@"Pipeline already has superpipeline: %@", v15];
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
        v34 = [v32 callStackSymbols];
        v35 = [v34 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v31;
        v44 = 2114;
        v45 = v35;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      v20 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [v20 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v36 = [v41 superpipeline];
    _NUAssertFailHandler("[_NUPipeline _addSubpipeline:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2305, @"Pipeline already has superpipeline: %@", v37, v38, v39, v40, v36);
  }

  [(NSMutableArray *)self->_subpipelines addObject:v41];
  [v41 setSuperpipeline:self];
}

- (id)group:(id)a3 error:(id *)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
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
        v30 = [v28 callStackSymbols];
        v31 = [v30 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v27;
        v48 = 2114;
        v49 = v31;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline group:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2286, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "block != nil");
  }

  if (!a4)
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
        v39 = [v37 callStackSymbols];
        v40 = [v39 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v36;
        v48 = 2114;
        v49 = v40;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline group:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2287, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "error != NULL");
  }

  v7 = v6;
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
    *a4 = v11 = 0;
  }

  return v11;
}

+ (id)buildPipelineWithBuilder:(id)a3 error:(id *)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
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
        v32 = [v30 callStackSymbols];
        v33 = [v32 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v49 = v29;
        v50 = 2114;
        v51 = v33;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      v20 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [v20 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v49 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUPipeline buildPipelineWithBuilder:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2029, @"Invalid parameter not satisfying: %s", v34, v35, v36, v37, "builder != nil");
  }

  if (!a4)
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
        v41 = [v39 callStackSymbols];
        v42 = [v41 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v49 = v38;
        v50 = 2114;
        v51 = v42;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      v27 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [v27 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v49 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[_NUPipeline buildPipelineWithBuilder:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2030, @"Invalid parameter not satisfying: %s", v43, v44, v45, v46, "error != NULL");
  }

  v6 = v5;
  v7 = [_NUPipeline alloc];
  v8 = [v6 identifier];
  v9 = [(_NUPipeline *)v7 initWithIdentifier:v8];

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
    *a4 = v12;
  }

  return v10;
}

+ (id)defaultPipelineNameWithIdentifier:(id)a3
{
  v3 = [a3 name];
  v4 = [MEMORY[0x1E696AB08] uppercaseLetterCharacterSet];
  v5 = [v3 length];
  v6 = 0;
  do
  {
    v7 = [v3 rangeOfCharacterFromSet:v4 options:10 range:{v6, v5}];
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
    v11 = [v3 substringWithRange:{v6 - 1, 1}];
    v12 = [v11 lowercaseString];
    v13 = [v3 substringFromIndex:v6];
    v14 = [v12 stringByAppendingString:v13];
  }

  else
  {
    v14 = v3;
  }

  return v14;
}

- (id)processContainer:(id)a3 forEachComponent:(id)a4 error:(id *)a5
{
  v79 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v8)
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
        v48 = [v46 callStackSymbols];
        v49 = [v48 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v76 = v45;
        v77 = 2114;
        v78 = v49;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      v29 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [v29 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v76 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline processContainer:forEachComponent:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2250, @"Invalid parameter not satisfying: %s", v50, v51, v52, v53, "containerInput != nil");
  }

  v10 = v9;
  if (!v9)
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
        v57 = [v55 callStackSymbols];
        v58 = [v57 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v76 = v54;
        v77 = 2114;
        v78 = v58;
        _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v35)
    {
      v36 = [MEMORY[0x1E696AF00] callStackSymbols];
      v37 = [v36 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v76 = v37;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline processContainer:forEachComponent:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2251, @"Invalid parameter not satisfying: %s", v59, v60, v61, v62, "block != nil");
  }

  if (!a5)
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
        v66 = [v64 callStackSymbols];
        v67 = [v66 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v76 = v63;
        v77 = 2114;
        v78 = v67;
        _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v42)
    {
      v43 = [MEMORY[0x1E696AF00] callStackSymbols];
      v44 = [v43 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v76 = v44;
      _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline processContainer:forEachComponent:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2252, @"Invalid parameter not satisfying: %s", v68, v69, v70, v71, "error != NULL");
  }

  v11 = [v8 channel];
  if ([v11 type] != 1)
  {

    goto LABEL_10;
  }

  v12 = [v8 channel];
  v13 = [v12 format];
  v14 = [v13 mediaType];

  if (v14 != 4)
  {
LABEL_10:
    [NUError invalidError:@"Input is not a media container" object:v8];
    *a5 = v22 = 0;
    goto LABEL_13;
  }

  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __55___NUPipeline_processContainer_forEachComponent_error___block_invoke;
  v72[3] = &unk_1E8109D58;
  v15 = v8;
  v73 = v15;
  v74 = v10;
  v16 = [(_NUPipeline *)self addContainerPipeline:v72 error:a5];
  if (v16 && ([v15 channel], v17 = objc_claimAutoreleasedReturnValue(), +[NUChannelMatching channel:](NUChannelMatching, "channel:", v17), v18 = objc_claimAutoreleasedReturnValue(), v19 = -[_NUPipeline connect:input:to:error:](self, "connect:input:to:error:", v16, v18, v15, a5), v18, v17, v19))
  {
    v20 = [v15 channel];
    v21 = [NUChannelMatching channel:v20];
    v22 = [v16 outputPortMatching:v21];
  }

  else
  {
    v22 = 0;
  }

LABEL_13:

  return v22;
}

- (id)addContainerPipeline:(id)a3 error:(id *)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
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
        v30 = [v28 callStackSymbols];
        v31 = [v30 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v27;
        v48 = 2114;
        v49 = v31;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline addContainerPipeline:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2234, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "block != nil");
  }

  if (!a4)
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
        v39 = [v37 callStackSymbols];
        v40 = [v39 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v36;
        v48 = 2114;
        v49 = v40;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline addContainerPipeline:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2235, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "error != NULL");
  }

  v7 = v6;
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
    *a4 = v11 = 0;
  }

  return v11;
}

- (id)addConstantData:(id)a3 error:(id *)a4
{
  v4 = [(_NUPipeline *)self addConstantPipelineWithData:a3 error:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 outputChannels];
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [v5 outputPortForChannel:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)addConstantPipelineWithData:(id)a3 error:(id *)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
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
        v34 = [v32 callStackSymbols];
        v35 = [v34 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v51 = v31;
        v52 = 2114;
        v53 = v35;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v51 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline addConstantPipelineWithData:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2205, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "data != nil");
  }

  if (!a4)
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
        v43 = [v41 callStackSymbols];
        v44 = [v43 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v51 = v40;
        v52 = 2114;
        v53 = v44;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      v29 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [v29 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v51 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline addConstantPipelineWithData:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2206, @"Invalid parameter not satisfying: %s", v45, v46, v47, v48, "error != nil");
  }

  v7 = v6;
  v8 = objc_alloc_init(_NUConstantPipeline);
  v9 = [NUChannel alloc];
  v10 = [v7 format];
  v11 = [(NUChannel *)v9 initWithName:@"value" format:v10];

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
    *a4 = v15 = 0;
  }

  return v15;
}

- (id)switchOn:(id)a3 with:(id)a4 block:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __41___NUPipeline_switchOn_with_block_error___block_invoke;
  v27 = &unk_1E8109D58;
  v13 = v11;
  v28 = v13;
  v14 = v12;
  v29 = v14;
  v15 = [(_NUPipeline *)self addSwitchPipeline:&v24 error:a6];
  if (v15 && (+[NUChannelMatching name:](NUChannelMatching, "name:", @"condition", v24, v25, v26, v27, v28), v16 = objc_claimAutoreleasedReturnValue(), v17 = -[_NUPipeline assign:input:to:error:](self, "assign:input:to:error:", v15, v16, v10, a6), v16, v17) && ([v13 channel], v18 = objc_claimAutoreleasedReturnValue(), +[NUChannelMatching channel:](NUChannelMatching, "channel:", v18), v19 = objc_claimAutoreleasedReturnValue(), v20 = -[_NUPipeline connect:input:to:error:](self, "connect:input:to:error:", v15, v19, v13, a6), v19, v18, v20))
  {
    v21 = [v13 channel];
    v22 = [v15 outputPortForChannel:v21];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)addSwitchPipeline:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(_NUSwitchPipeline);
  [(_NUPipeline *)self _addSubpipeline:v7];
  v12 = 0;
  v8 = v6[2](v6, v7, &v12);

  v9 = v12;
  if (v8)
  {
    v10 = v7;
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to build switch pipeline" object:v7 underlyingError:v9];
    *a4 = v10 = 0;
  }

  return v10;
}

- (id)reduce:(id)a3 with:(id)a4 block:(id)a5 error:(id *)a6
{
  v93 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
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
        v58 = [v56 callStackSymbols];
        v59 = [v58 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v90 = v55;
        v91 = 2114;
        v92 = v59;
        _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v38)
    {
      v39 = [MEMORY[0x1E696AF00] callStackSymbols];
      v40 = [v39 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v90 = v40;
      _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline reduce:with:block:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2110, @"Invalid parameter not satisfying: %s", v60, v61, v62, v63, "arrayInput != nil");
  }

  v13 = v12;
  if (!v12)
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
        v67 = [v65 callStackSymbols];
        v68 = [v67 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v90 = v64;
        v91 = 2114;
        v92 = v68;
        _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v45)
    {
      v46 = [MEMORY[0x1E696AF00] callStackSymbols];
      v47 = [v46 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v90 = v47;
      _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline reduce:with:block:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2111, @"Invalid parameter not satisfying: %s", v69, v70, v71, v72, "block != nil");
  }

  if (!a6)
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
        v76 = [v74 callStackSymbols];
        v77 = [v76 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v90 = v73;
        v91 = 2114;
        v92 = v77;
        _os_log_error_impl(&dword_1C0184000, v51, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v52)
    {
      v53 = [MEMORY[0x1E696AF00] callStackSymbols];
      v54 = [v53 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v90 = v54;
      _os_log_error_impl(&dword_1C0184000, v51, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline reduce:with:block:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2112, @"Invalid parameter not satisfying: %s", v78, v79, v80, v81, "error != NULL");
  }

  v14 = [v10 channel];
  v15 = [v14 format];
  v16 = [v15 isArray];

  if ((v16 & 1) == 0)
  {
    [NUError invalidError:@"Input is not an array" object:v10];
    *a6 = v21 = 0;
    goto LABEL_19;
  }

  v17 = [v11 channel];
  v18 = [v17 name];

  v19 = [v10 channel];
  v20 = [v19 name];

  if (![v18 isEqualToString:v20])
  {
    v22 = [v10 effectiveFormat];
    v23 = [v22 arrayItemFormat];

    v84 = v23;
    v24 = [[NUChannel alloc] initWithName:v20 format:v23];
    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __39___NUPipeline_reduce_with_block_error___block_invoke;
    v85[3] = &unk_1E8109D30;
    v25 = v11;
    v86 = v25;
    v83 = v24;
    v87 = v83;
    v88 = v13;
    v26 = [(_NUPipeline *)self addReducePipeline:v85 error:a6];
    if (v26)
    {
      v82 = v18;
      v27 = [NUChannelMatching name:v20];
      v28 = [(_NUPipeline *)self connect:v26 input:v27 to:v10 error:a6];

      if (v28)
      {
        v29 = [NUChannelMatching name:v82];
        v30 = [(_NUPipeline *)self connect:v26 input:v29 to:v25 error:a6];

        v31 = v84;
        if (v30)
        {
          v32 = [v25 channel];
          v21 = [v26 outputPortForChannel:v32];
        }

        else
        {
          v21 = 0;
        }

        v18 = v82;
        goto LABEL_17;
      }

      v21 = 0;
      v18 = v82;
    }

    else
    {
      v21 = 0;
    }

    v31 = v84;
LABEL_17:

    goto LABEL_18;
  }

  [NUError duplicateError:@"Duplicate input name" object:v20];
  *a6 = v21 = 0;
LABEL_18:

LABEL_19:

  return v21;
}

- (id)addReducePipeline:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(_NUReducePipeline);
  [(_NUPipeline *)self _addSubpipeline:v7];
  v12 = 0;
  v8 = v6[2](v6, v7, &v12);

  v9 = v12;
  if (v8)
  {
    v10 = v7;
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to build reduce pipeline" object:v7 underlyingError:v9];
    *a4 = v10 = 0;
  }

  return v10;
}

- (id)map:(id)a3 block:(id)a4 error:(id *)a5
{
  v82 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v8)
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
        v50 = [v48 callStackSymbols];
        v51 = [v50 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v47;
        *&buf[12] = 2114;
        *&buf[14] = v51;
        _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      v31 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [v31 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v32;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline map:block:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2056, @"Invalid parameter not satisfying: %s", v52, v53, v54, v55, "arrayInput != nil");
  }

  v10 = v9;
  if (!v9)
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
        v59 = [v57 callStackSymbols];
        v60 = [v59 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v56;
        *&buf[12] = 2114;
        *&buf[14] = v60;
        _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v37)
    {
      v38 = [MEMORY[0x1E696AF00] callStackSymbols];
      v39 = [v38 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v39;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline map:block:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2057, @"Invalid parameter not satisfying: %s", v61, v62, v63, v64, "block != nil");
  }

  if (!a5)
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
        v68 = [v66 callStackSymbols];
        v69 = [v68 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v65;
        *&buf[12] = 2114;
        *&buf[14] = v69;
        _os_log_error_impl(&dword_1C0184000, v43, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v44)
    {
      v45 = [MEMORY[0x1E696AF00] callStackSymbols];
      v46 = [v45 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v46;
      _os_log_error_impl(&dword_1C0184000, v43, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline map:block:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 2058, @"Invalid parameter not satisfying: %s", v70, v71, v72, v73, "error != NULL");
  }

  v11 = [v8 channel];
  v12 = [v11 format];
  v13 = [v12 isArray];

  if (v13)
  {
    v14 = [v8 effectiveFormat];
    v15 = [v14 arrayItemFormat];

    v16 = [v8 channel];
    v17 = [v16 name];

    v18 = [[NUChannel alloc] initWithName:v17 format:v15];
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
    v20 = [(_NUPipeline *)self addMapPipeline:v74 error:a5];
    if (v20 && ([NUChannelMatching name:v17], v21 = objc_claimAutoreleasedReturnValue(), v22 = [(_NUPipeline *)self connect:v20 input:v21 to:v8 error:a5], v21, v22))
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
    [NUError invalidError:@"Input is not an array" object:v8];
    *a5 = v24 = 0;
  }

  return v24;
}

- (id)addMapPipeline:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(_NUMapPipeline);
  [(_NUPipeline *)self _addSubpipeline:v7];
  v12 = 0;
  v8 = v6[2](v6, v7, &v12);

  v9 = v12;
  if (v8)
  {
    v10 = v7;
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to build map pipeline" object:v7 underlyingError:v9];
    *a4 = v10 = 0;
  }

  return v10;
}

- (id)addPipelineWithBuilder:(id)a3 error:(id *)a4
{
  v5 = [_NUPipeline buildPipelineWithBuilder:a3 error:a4];
  if (v5)
  {
    [(_NUPipeline *)self _addSubpipeline:v5];
  }

  return v5;
}

- (id)addCIFilterPipelineWithName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() buildFilterPipelineWithName:v6 error:a4];

  if (v7)
  {
    [(_NUPipeline *)self _addSubpipeline:v7];
  }

  return v7;
}

- (id)applyOrientation:(id)a3 to:(id)a4 error:(id *)a5
{
  v75 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v8)
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
        v45 = [v43 callStackSymbols];
        v46 = [v45 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v72 = v42;
        v73 = 2114;
        v74 = v46;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      v26 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [v26 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v72 = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline applyOrientation:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1984, @"Invalid parameter not satisfying: %s", v47, v48, v49, v50, "orientationInput != nil");
  }

  v10 = v9;
  if (!v9)
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
        v54 = [v52 callStackSymbols];
        v55 = [v54 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v72 = v51;
        v73 = 2114;
        v74 = v55;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      v33 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [v33 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v72 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline applyOrientation:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1985, @"Invalid parameter not satisfying: %s", v56, v57, v58, v59, "mediaInput != nil");
  }

  if (!a5)
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
        v63 = [v61 callStackSymbols];
        v64 = [v63 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v72 = v60;
        v73 = 2114;
        v74 = v64;
        _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v39)
    {
      v40 = [MEMORY[0x1E696AF00] callStackSymbols];
      v41 = [v40 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v72 = v41;
      _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline applyOrientation:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1986, @"Invalid parameter not satisfying: %s", v65, v66, v67, v68, "error != NULL");
  }

  v11 = [(_NUPipeline *)self addOrientationPipeline];
  v12 = [NUChannelMatching type:1];
  v70 = 0;
  v13 = [(_NUPipeline *)self connect:v11 input:v12 to:v10 error:&v70];
  v14 = v70;

  if (v13)
  {
    v15 = [NUChannelMatching type:2];
    v69 = 0;
    v16 = [(_NUPipeline *)self connect:v11 input:v15 to:v8 error:&v69];
    v17 = v69;

    if (v16)
    {
      v18 = [NUChannelMatching type:1];
      v19 = [v11 outputPortMatching:v18];
    }

    else
    {
      [NUError errorWithCode:1 reason:@"Failed to connect input orientation" object:v8 underlyingError:v17];
      *a5 = v19 = 0;
    }

    v14 = v17;
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to connect input media" object:v10 underlyingError:v14];
    *a5 = v19 = 0;
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

- (id)evaluateOutputMatching:(id)a3 error:(id *)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
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
        v28 = [v26 callStackSymbols];
        v29 = [v28 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v25;
        v45 = 2114;
        v46 = v29;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline evaluateOutputMatching:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1951, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "outputMatching != nil");
  }

  if (!a4)
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
        v37 = [v35 callStackSymbols];
        v38 = [v37 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v34;
        v45 = 2114;
        v46 = v38;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline evaluateOutputMatching:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1952, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "error != NULL");
  }

  v7 = v6;
  v8 = [(_NUPipeline *)self outputPortMatching:v6];
  if (v8)
  {
    v9 = [(_NUPipeline *)self evaluateOutputPort:v8 error:a4];
  }

  else
  {
    [NUError notFoundError:@"No matching output port" object:v7];
    *a4 = v9 = 0;
  }

  return v9;
}

- (id)evaluateOutputChannel:(id)a3 error:(id *)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
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
        v28 = [v26 callStackSymbols];
        v29 = [v28 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v25;
        v45 = 2114;
        v46 = v29;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline evaluateOutputChannel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1938, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "channel != nil");
  }

  if (!a4)
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
        v37 = [v35 callStackSymbols];
        v38 = [v37 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v34;
        v45 = 2114;
        v46 = v38;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline evaluateOutputChannel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1939, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "error != NULL");
  }

  v7 = v6;
  v8 = [(_NUPipeline *)self outputPortForChannel:v6];
  if (v8)
  {
    v9 = [(_NUPipeline *)self evaluateOutputPort:v8 error:a4];
  }

  else
  {
    [NUError notFoundError:@"No matching output port" object:v7];
    *a4 = v9 = 0;
  }

  return v9;
}

- (id)_evaluateInputsWithContext:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc(MEMORY[0x1E695DF90]);
  v7 = [(_NUPipeline *)self inputChannels];
  v8 = [v6 initWithCapacity:{objc_msgSend(v7, "count")}];

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
        v15 = [(_NUPipeline *)self _evaluateInputPort:v14 context:v5 error:&v21];
        v16 = v21;
        if (!v15)
        {
          *a4 = [NUError errorWithCode:1 reason:@"Failed to evaluate input port" object:v14 underlyingError:v16];

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

- (id)evaluatePort:(id)a3 context:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  inputPorts = self->_inputPorts;
  v11 = [v8 fullName];
  v12 = [(NSMutableDictionary *)inputPorts objectForKey:v11];

  if (v12 == v8)
  {
    v17 = [v8 fullName];
    v16 = [v9 dataForChannel:v17];

    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v19 = [v8 channel];
      *a5 = [NUError missingError:@"Missing input data" object:v19];
    }
  }

  else
  {
    outputPorts = self->_outputPorts;
    v14 = [v8 fullName];
    v15 = [(NSMutableDictionary *)outputPorts objectForKey:v14];

    if (v15 == v8)
    {
      v16 = [(_NUPipeline *)self evaluateOutputPort:v8 context:v9 error:a5];
    }

    else
    {
      [NUError unknownError:@"Unknown port" object:v8];
      *a5 = v16 = 0;
    }
  }

  return v16;
}

- (id)evaluateOutputPort:(id)a3 context:(id)a4 error:(id *)a5
{
  v70 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v8)
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
        v42 = [v40 callStackSymbols];
        v43 = [v42 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v67 = v39;
        v68 = 2114;
        v69 = v43;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v67 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline evaluateOutputPort:context:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1865, @"Invalid parameter not satisfying: %s", v44, v45, v46, v47, "port != nil");
  }

  v10 = v9;
  if (!v9)
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
        v51 = [v49 callStackSymbols];
        v52 = [v51 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v67 = v48;
        v68 = 2114;
        v69 = v52;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      v30 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [v30 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v67 = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline evaluateOutputPort:context:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1866, @"Invalid parameter not satisfying: %s", v53, v54, v55, v56, "context != nil");
  }

  if (!a5)
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
        v60 = [v58 callStackSymbols];
        v61 = [v60 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v67 = v57;
        v68 = 2114;
        v69 = v61;
        _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v36)
    {
      v37 = [MEMORY[0x1E696AF00] callStackSymbols];
      v38 = [v37 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v67 = v38;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline evaluateOutputPort:context:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1867, @"Invalid parameter not satisfying: %s", v62, v63, v64, v65, "error != NULL");
  }

  v11 = [v8 channel];
  v12 = [(_NUPipeline *)self outputPortForChannel:v11];

  if (v12 == v8)
  {
    v14 = [(_NUPipeline *)self _evaluateInputsWithContext:v10 error:a5];
    if (v14)
    {
      v15 = [(_NUPipeline *)self name];
      [v10 beginScope:v15];

      [v10 setChannelData:v14];
      v13 = [(_NUPipeline *)self _evaluateOutputPort:v8 context:v10 error:a5];
      v16 = [(_NUPipeline *)self name];
      [v10 endScope:v16];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    [NUError invalidError:@"Unknown output port" object:v8];
    *a5 = v13 = 0;
  }

  return v13;
}

- (id)evaluateOutputPort:(id)a3 error:(id *)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
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
        v28 = [v26 callStackSymbols];
        v29 = [v28 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v25;
        v45 = 2114;
        v46 = v29;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline evaluateOutputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1856, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "port != nil");
  }

  if (!a4)
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
        v37 = [v35 callStackSymbols];
        v38 = [v37 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v34;
        v45 = 2114;
        v46 = v38;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline evaluateOutputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1857, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "error != NULL");
  }

  v7 = v6;
  v8 = objc_alloc_init(_NUPipelineEvaluationContext);
  v9 = [(_NUPipeline *)self evaluateOutputPort:v7 context:v8 error:a4];

  return v9;
}

- (void)propagateSpecializedOutputFormat:(id)a3 fromPort:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  outputPorts = self->_outputPorts;
  v9 = [v7 fullName];
  v10 = [(NSMutableDictionary *)outputPorts objectForKey:v9];

  if (v10 == v7)
  {
    v11 = [(_NUPipeline *)self _genericInputPortsMatchingOutputPort:v7];
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

          [*(*(&v16 + 1) + 8 * v15++) specializeWithOutputFormat:v6];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v13);
    }
  }
}

- (void)propagateSpecializedInputFormat:(id)a3 fromPort:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  inputPorts = self->_inputPorts;
  v9 = [v7 fullName];
  v10 = [(NSMutableDictionary *)inputPorts objectForKey:v9];

  if (v10 == v7)
  {
    v11 = [(_NUPipeline *)self _genericOutputPortsMatchingInputPort:v7];
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

          [*(*(&v16 + 1) + 8 * v15++) specializeWithInputFormat:v6];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v13);
    }
  }
}

- (BOOL)clear:(id)a3 input:(id)a4 error:(id *)a5
{
  v87 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v8)
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
        v48 = [v46 callStackSymbols];
        v49 = [v48 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v84 = v45;
        v85 = 2114;
        v86 = v49;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      v19 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v84 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline clear:input:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1804, @"Invalid parameter not satisfying: %s", v50, v51, v52, v53, "pipeline != nil");
  }

  v10 = v9;
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
        v57 = [v55 callStackSymbols];
        v58 = [v57 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v84 = v54;
        v85 = 2114;
        v86 = v58;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      v29 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [v29 componentsJoinedByString:@"\n"];
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
        v68 = [v66 callStackSymbols];
        v69 = [v68 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v84 = v65;
        v85 = 2114;
        v86 = v69;
        _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v35)
    {
      v36 = [MEMORY[0x1E696AF00] callStackSymbols];
      v37 = [v36 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v84 = v37;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline clear:input:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1806, @"Invalid parameter not satisfying: %s", v70, v71, v72, v73, "inputMatching != nil");
  }

  if (!a5)
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
        v77 = [v75 callStackSymbols];
        v78 = [v77 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v84 = v74;
        v85 = 2114;
        v86 = v78;
        _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v42)
    {
      v43 = [MEMORY[0x1E696AF00] callStackSymbols];
      v44 = [v43 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v84 = v44;
      _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline clear:input:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1807, @"Invalid parameter not satisfying: %s", v79, v80, v81, v82, "error != NULL");
  }

  v11 = [v8 _inputPortMatching:v10];
  if (v11)
  {
    v12 = [(_NUPipeline *)self _clearExpressionFromInputPort:v11 error:a5];
  }

  else
  {
    [NUError notFoundError:@"No matching input port" object:v10];
    *a5 = v12 = 0;
  }

  return v12;
}

- (BOOL)_clearExpressionFromInputPort:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(_NUPipeline *)self _validateInputPort:v6 error:a4])
  {
    v7 = [v6 clearExpression:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)clearExpressionFromInputPort:(id)a3 error:(id *)a4
{
  v67 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
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
        v37 = [v35 callStackSymbols];
        v38 = [v37 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v34;
        v65 = 2114;
        v66 = v38;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline clearExpressionFromInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1787, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "inputPort != nil");
  }

  v7 = v6;
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
        v46 = [v44 callStackSymbols];
        v47 = [v46 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v43;
        v65 = 2114;
        v66 = v47;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v48 = objc_opt_class();
    v49 = NSStringFromClass(v48);
    _NUAssertFailHandler("[_NUPipeline clearExpressionFromInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1788, @"Invalid parameter not kind of %@", v50, v51, v52, v53, v49);
  }

  if (!a4)
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
        v57 = [v55 callStackSymbols];
        v58 = [v57 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v54;
        v65 = 2114;
        v66 = v58;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      v32 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [v32 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline clearExpressionFromInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1789, @"Invalid parameter not satisfying: %s", v59, v60, v61, v62, "error != NULL");
  }

  v8 = [(_NUPipeline *)self _clearExpressionFromInputPort:v7 error:a4];

  return v8;
}

- (BOOL)assign:(id)a3 inputNamed:(id)a4 to:(id)a5 error:(id *)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v11)
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
        v27 = [v25 callStackSymbols];
        v28 = [v27 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v34 = v24;
        v35 = 2114;
        v36 = v28;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v34 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline assign:inputNamed:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1779, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "inputName != nil");
  }

  v13 = v12;
  v14 = [NUChannelMatching name:v11];
  v15 = [(_NUPipeline *)self assign:v10 input:v14 to:v13 error:a6];

  return v15;
}

- (BOOL)assign:(id)a3 input:(id)a4 to:(id)a5 error:(id *)a6
{
  v106 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
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
        v58 = [v56 callStackSymbols];
        v59 = [v58 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v103 = v55;
        v104 = 2114;
        v105 = v59;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v103 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline assign:input:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1763, @"Invalid parameter not satisfying: %s", v60, v61, v62, v63, "pipeline != nil");
  }

  v13 = v12;
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
        v67 = [v65 callStackSymbols];
        v68 = [v67 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v103 = v64;
        v104 = 2114;
        v105 = v68;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      v32 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [v32 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v103 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v69 = objc_opt_class();
    v70 = NSStringFromClass(v69);
    _NUAssertFailHandler("[_NUPipeline assign:input:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1764, @"Invalid parameter not kind of %@", v71, v72, v73, v74, v70);
  }

  if (!v11)
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
        v78 = [v76 callStackSymbols];
        v79 = [v78 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v103 = v75;
        v104 = 2114;
        v105 = v79;
        _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v38)
    {
      v39 = [MEMORY[0x1E696AF00] callStackSymbols];
      v40 = [v39 componentsJoinedByString:@"\n"];
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
        v87 = [v85 callStackSymbols];
        v88 = [v87 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v103 = v84;
        v104 = 2114;
        v105 = v88;
        _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v45)
    {
      v46 = [MEMORY[0x1E696AF00] callStackSymbols];
      v47 = [v46 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v103 = v47;
      _os_log_error_impl(&dword_1C0184000, v44, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline assign:input:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1766, @"Invalid parameter not satisfying: %s", v89, v90, v91, v92, "expression != nil");
  }

  if (!a6)
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
        v96 = [v94 callStackSymbols];
        v97 = [v96 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v103 = v93;
        v104 = 2114;
        v105 = v97;
        _os_log_error_impl(&dword_1C0184000, v51, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v52)
    {
      v53 = [MEMORY[0x1E696AF00] callStackSymbols];
      v54 = [v53 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v103 = v54;
      _os_log_error_impl(&dword_1C0184000, v51, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline assign:input:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1767, @"Invalid parameter not satisfying: %s", v98, v99, v100, v101, "error != NULL");
  }

  v14 = [v10 _inputPortMatching:v11];
  if (v14)
  {
    v15 = [(_NUPipeline *)self _assignInputPort:v14 toExpression:v13 error:a6];
  }

  else
  {
    [NUError notFoundError:@"No matching input port" object:v11];
    *a6 = v15 = 0;
  }

  return v15;
}

- (BOOL)_assignInputPort:(id)a3 toExpression:(id)a4 error:(id *)a5
{
  v19[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v17 = 0;
  if ([(_NUPipeline *)self _canAssignInputPort:v8 toExpression:v9 error:&v17])
  {
    v10 = v17;
    v11 = [v8 assign:v9 error:a5];
  }

  else
  {
    v18[0] = @"input";
    v18[1] = @"expression";
    v19[0] = v8;
    v19[1] = v9;
    v12 = MEMORY[0x1E695DF20];
    v13 = v17;
    v10 = [v12 dictionaryWithObjects:v19 forKeys:v18 count:2];
    v14 = [NUError errorWithCode:1 reason:@"Cannot assign input port to expression" object:v10 underlyingError:v13];
    v15 = v14;

    v11 = 0;
    *a5 = v14;
  }

  return v11;
}

- (BOOL)assignInputPort:(id)a3 toExpression:(id)a4 error:(id *)a5
{
  v86 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v8)
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
        v47 = [v45 callStackSymbols];
        v48 = [v47 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v83 = v44;
        v84 = 2114;
        v85 = v48;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v83 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline assignInputPort:toExpression:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1743, @"Invalid parameter not satisfying: %s", v49, v50, v51, v52, "inputPort != nil");
  }

  v10 = v9;
  if (!v9)
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
        v56 = [v54 callStackSymbols];
        v57 = [v56 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v83 = v53;
        v84 = 2114;
        v85 = v57;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v83 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline assignInputPort:toExpression:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1744, @"Invalid parameter not satisfying: %s", v58, v59, v60, v61, "expression != nil");
  }

  if (!a5)
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
        v65 = [v63 callStackSymbols];
        v66 = [v65 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v83 = v62;
        v84 = 2114;
        v85 = v66;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      v32 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [v32 componentsJoinedByString:@"\n"];
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
        v74 = [v72 callStackSymbols];
        v75 = [v74 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v83 = v71;
        v84 = 2114;
        v85 = v75;
        _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v41)
    {
      v42 = [MEMORY[0x1E696AF00] callStackSymbols];
      v43 = [v42 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v83 = v43;
      _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v76 = objc_opt_class();
    v77 = NSStringFromClass(v76);
    _NUAssertFailHandler("[_NUPipeline assignInputPort:toExpression:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1746, @"Invalid parameter not kind of %@", v78, v79, v80, v81, v77);
  }

  v11 = [(_NUPipeline *)self _assignInputPort:v8 toExpression:v10 error:a5];

  return v11;
}

- (BOOL)_canAssignInputPort:(id)a3 toExpression:(id)a4 error:(id *)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (![(_NUPipeline *)self _validateInputPort:v8 error:a5])
  {
LABEL_18:
    v18 = 0;
    goto LABEL_19;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = [v9 inputPorts];
  v11 = [(__CFString *)v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v10);
        }

        if (![(_NUPipeline *)self _validateOutputPort:*(*(&v23 + 1) + 8 * i) error:a5])
        {
          v19 = [NUError errorWithCode:2 reason:@"Expression contains inaccessible port" object:v9 underlyingError:0];
          goto LABEL_17;
        }
      }

      v12 = [(__CFString *)v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v15 = [v8 channel];
  v16 = [v15 format];
  v17 = [v9 isCompatibleWithExpressionType:{objc_msgSend(v16, "expressionType")}];

  if ((v17 & 1) == 0)
  {
    v20 = [v9 type];
    if (v20 > 4)
    {
      v21 = @"???";
    }

    else
    {
      v21 = off_1E8109B40[v20];
    }

    v10 = v21;
    v19 = [NUError invalidError:@"Incompatible expression type" object:v10];
LABEL_17:
    *a5 = v19;

    goto LABEL_18;
  }

  v18 = 1;
LABEL_19:

  return v18;
}

- (BOOL)canAssignInputPort:(id)a3 toExpression:(id)a4 error:(id *)a5
{
  v86 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v8)
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
        v47 = [v45 callStackSymbols];
        v48 = [v47 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v83 = v44;
        v84 = 2114;
        v85 = v48;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v83 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline canAssignInputPort:toExpression:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1707, @"Invalid parameter not satisfying: %s", v49, v50, v51, v52, "inputPort != nil");
  }

  v10 = v9;
  if (!v9)
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
        v56 = [v54 callStackSymbols];
        v57 = [v56 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v83 = v53;
        v84 = 2114;
        v85 = v57;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v83 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline canAssignInputPort:toExpression:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1708, @"Invalid parameter not satisfying: %s", v58, v59, v60, v61, "expression != nil");
  }

  if (!a5)
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
        v65 = [v63 callStackSymbols];
        v66 = [v65 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v83 = v62;
        v84 = 2114;
        v85 = v66;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      v32 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [v32 componentsJoinedByString:@"\n"];
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
        v74 = [v72 callStackSymbols];
        v75 = [v74 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v83 = v71;
        v84 = 2114;
        v85 = v75;
        _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v41)
    {
      v42 = [MEMORY[0x1E696AF00] callStackSymbols];
      v43 = [v42 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v83 = v43;
      _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v76 = objc_opt_class();
    v77 = NSStringFromClass(v76);
    _NUAssertFailHandler("[_NUPipeline canAssignInputPort:toExpression:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1710, @"Invalid parameter not kind of %@", v78, v79, v80, v81, v77);
  }

  v11 = [(_NUPipeline *)self _canAssignInputPort:v8 toExpression:v10 error:a5];

  return v11;
}

- (BOOL)reset:(id)a3 error:(id *)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
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
        v28 = [v26 callStackSymbols];
        v29 = [v28 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v25;
        v45 = 2114;
        v46 = v29;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline reset:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1692, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "inputMatching != nil");
  }

  if (!a4)
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
        v37 = [v35 callStackSymbols];
        v38 = [v37 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v34;
        v45 = 2114;
        v46 = v38;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline reset:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1693, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "error != NULL");
  }

  v7 = v6;
  v8 = [(_NUPipeline *)self _inputPortMatching:v6];
  if (v8)
  {
    v9 = [(_NUPipeline *)self _resetInputPort:v8 error:a4];
  }

  else
  {
    [NUError notFoundError:@"No matching input port" object:v7];
    *a4 = v9 = 0;
  }

  return v9;
}

- (BOOL)resetInputChannel:(id)a3 error:(id *)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
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
        v28 = [v26 callStackSymbols];
        v29 = [v28 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v25;
        v45 = 2114;
        v46 = v29;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline resetInputChannel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1679, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "channel != nil");
  }

  if (!a4)
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
        v37 = [v35 callStackSymbols];
        v38 = [v37 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v44 = v34;
        v45 = 2114;
        v46 = v38;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v44 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline resetInputChannel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1680, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "error != NULL");
  }

  v7 = v6;
  v8 = [(_NUPipeline *)self _inputPortForChannel:v6];
  if (v8)
  {
    v9 = [(_NUPipeline *)self _resetInputPort:v8 error:a4];
  }

  else
  {
    [NUError notFoundError:@"No matching input port" object:v7];
    *a4 = v9 = 0;
  }

  return v9;
}

- (BOOL)_resetInputPort:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 channel];
  v8 = [(_NUPipeline *)self inputPortForChannel:v7];

  if (v8 == v6)
  {
    v12 = [v6 resetData:a4];

    return v12;
  }

  else
  {
    v9 = [NUError invalidError:@"Unknown input port" object:v6];

    v10 = v9;
    *a4 = v9;
    return 0;
  }
}

- (BOOL)resetInputPort:(id)a3 error:(id *)a4
{
  v67 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
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
        v37 = [v35 callStackSymbols];
        v38 = [v37 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v34;
        v65 = 2114;
        v66 = v38;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline resetInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1662, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "inputPort != nil");
  }

  v7 = v6;
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
        v46 = [v44 callStackSymbols];
        v47 = [v46 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v43;
        v65 = 2114;
        v66 = v47;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v48 = objc_opt_class();
    v49 = NSStringFromClass(v48);
    _NUAssertFailHandler("[_NUPipeline resetInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1663, @"Invalid parameter not kind of %@", v50, v51, v52, v53, v49);
  }

  if (!a4)
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
        v57 = [v55 callStackSymbols];
        v58 = [v57 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v54;
        v65 = 2114;
        v66 = v58;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      v32 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [v32 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline resetInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1664, @"Invalid parameter not satisfying: %s", v59, v60, v61, v62, "error != NULL");
  }

  v8 = [(_NUPipeline *)self _resetInputPort:v7 error:a4];

  return v8;
}

- (BOOL)bind:(id)a3 to:(id)a4 error:(id *)a5
{
  v66 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v8)
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
        v38 = [v36 callStackSymbols];
        v39 = [v38 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v63 = v35;
        v64 = 2114;
        v65 = v39;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      v19 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v63 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline bind:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1648, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "inputMatching != nil");
  }

  v10 = v9;
  if (!v9)
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
        v47 = [v45 callStackSymbols];
        v48 = [v47 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v63 = v44;
        v64 = 2114;
        v65 = v48;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      v26 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [v26 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v63 = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline bind:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1649, @"Invalid parameter not satisfying: %s", v49, v50, v51, v52, "data != nil");
  }

  if (!a5)
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
        v56 = [v54 callStackSymbols];
        v57 = [v56 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v63 = v53;
        v64 = 2114;
        v65 = v57;
        _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      v33 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [v33 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v63 = v34;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline bind:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1650, @"Invalid parameter not satisfying: %s", v58, v59, v60, v61, "error != NULL");
  }

  v11 = [(_NUPipeline *)self _inputPortMatching:v8];
  if (v11)
  {
    v12 = [(_NUPipeline *)self _bind:v11 to:v10 error:a5];
  }

  else
  {
    [NUError notFoundError:@"No matching input port" object:v8];
    *a5 = v12 = 0;
  }

  return v12;
}

- (BOOL)bindInputChannel:(id)a3 to:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [NUChannelMatching channel:a3];
  LOBYTE(a5) = [(_NUPipeline *)self bind:v9 to:v8 error:a5];

  return a5;
}

- (BOOL)_bind:(id)a3 to:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [v9 channel];
  v11 = [(_NUPipeline *)self inputPortForChannel:v10];

  if (v11 == v9)
  {
    v14 = [v9 bindData:v8 error:a5];
  }

  else
  {
    v12 = [NUError invalidError:@"Unknown input port" object:v9];

    v13 = v12;
    v14 = 0;
    *a5 = v12;
  }

  return v14;
}

- (BOOL)bindInputPort:(id)a3 to:(id)a4 error:(id *)a5
{
  v86 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v8)
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
        v47 = [v45 callStackSymbols];
        v48 = [v47 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v83 = v44;
        v84 = 2114;
        v85 = v48;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v83 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline bindInputPort:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1625, @"Invalid parameter not satisfying: %s", v49, v50, v51, v52, "port != nil");
  }

  v10 = v9;
  if (!v9)
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
        v56 = [v54 callStackSymbols];
        v57 = [v56 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v83 = v53;
        v84 = 2114;
        v85 = v57;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v83 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline bindInputPort:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1626, @"Invalid parameter not satisfying: %s", v58, v59, v60, v61, "data != nil");
  }

  if (!a5)
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
        v65 = [v63 callStackSymbols];
        v66 = [v65 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v83 = v62;
        v84 = 2114;
        v85 = v66;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      v32 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [v32 componentsJoinedByString:@"\n"];
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
        v74 = [v72 callStackSymbols];
        v75 = [v74 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v83 = v71;
        v84 = 2114;
        v85 = v75;
        _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v41)
    {
      v42 = [MEMORY[0x1E696AF00] callStackSymbols];
      v43 = [v42 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v83 = v43;
      _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v76 = objc_opt_class();
    v77 = NSStringFromClass(v76);
    _NUAssertFailHandler("[_NUPipeline bindInputPort:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1628, @"Invalid parameter not kind of %@", v78, v79, v80, v81, v77);
  }

  v11 = [(_NUPipeline *)self _bind:v8 to:v10 error:a5];

  return v11;
}

- (BOOL)disconnect:(id)a3 subport:(id)a4 error:(id *)a5
{
  v7 = [NUChannelPortRef input:a3 subport:a4];
  LOBYTE(a5) = [(_NUPipeline *)self disconnect:v7 error:a5];

  return a5;
}

- (BOOL)disconnect:(id)a3 input:(id)a4 error:(id *)a5
{
  v7 = [NUChannelPortRef pipeline:a3 input:a4];
  LOBYTE(a5) = [(_NUPipeline *)self disconnect:v7 error:a5];

  return a5;
}

- (BOOL)connect:(id)a3 subport:(id)a4 to:(id)a5 subport:(id)a6 error:(id *)a7
{
  v12 = a6;
  v13 = a5;
  v14 = [NUChannelPortRef input:a3 subport:a4];
  v15 = [NUChannelPortRef output:v13 subport:v12];

  LOBYTE(a7) = [(_NUPipeline *)self connect:v14 to:v15 error:a7];
  return a7;
}

- (BOOL)connect:(id)a3 subport:(id)a4 to:(id)a5 output:(id)a6 error:(id *)a7
{
  v12 = a6;
  v13 = a5;
  v14 = [NUChannelPortRef input:a3 subport:a4];
  v15 = [NUChannelPortRef pipeline:v13 output:v12];

  LOBYTE(a7) = [(_NUPipeline *)self connect:v14 to:v15 error:a7];
  return a7;
}

- (BOOL)connect:(id)a3 to:(id)a4 output:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = [NUChannelPortRef input:a3];
  v13 = [NUChannelPortRef pipeline:v11 output:v10];

  LOBYTE(a6) = [(_NUPipeline *)self connect:v12 to:v13 error:a6];
  return a6;
}

- (BOOL)connect:(id)a3 input:(id)a4 to:(id)a5 subport:(id)a6 error:(id *)a7
{
  v12 = a6;
  v13 = a5;
  v14 = [NUChannelPortRef pipeline:a3 input:a4];
  v15 = [NUChannelPortRef output:v13 subport:v12];

  LOBYTE(a7) = [(_NUPipeline *)self connect:v14 to:v15 error:a7];
  return a7;
}

- (BOOL)connect:(id)a3 input:(id)a4 to:(id)a5 key:(id)a6 error:(id *)a7
{
  v40 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!v15)
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
        v30 = [v28 callStackSymbols];
        v31 = [v30 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v37 = v27;
        v38 = 2114;
        v39 = v31;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v37 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline connect:input:to:key:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1584, @"Invalid parameter not satisfying: %s", v32, v33, v34, v35, "key != nil");
  }

  v16 = v15;
  v17 = [NUChannelMatching name:v15];
  v18 = [(_NUPipeline *)self connect:v12 input:v13 to:v14 subport:v17 error:a7];

  return v18;
}

- (BOOL)connect:(id)a3 input:(id)a4 to:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = [NUChannelPortRef pipeline:a3 input:a4];
  v12 = [NUChannelPortRef output:v10];

  LOBYTE(a6) = [(_NUPipeline *)self connect:v11 to:v12 error:a6];
  return a6;
}

- (BOOL)connect:(id)a3 input:(id)a4 to:(id)a5 output:(id)a6 error:(id *)a7
{
  v12 = a6;
  v13 = a5;
  v14 = [NUChannelPortRef pipeline:a3 input:a4];
  v15 = [NUChannelPortRef pipeline:v13 output:v12];

  LOBYTE(a7) = [(_NUPipeline *)self connect:v14 to:v15 error:a7];
  return a7;
}

- (BOOL)_disconnect:(id)a3 error:(id *)a4
{
  v12 = 0;
  v6 = a3;
  v7 = [(_NUPipeline *)self _canDisconnectInputPort:v6 error:&v12];
  v8 = v12;
  if (v7)
  {
    [v6 disconnect];
  }

  else
  {
    v9 = [NUError errorWithCode:1 reason:@"Cannot disconnect input port" object:v6 underlyingError:v8];

    v10 = v9;
    *a4 = v9;
  }

  return v7;
}

- (BOOL)disconnect:(id)a3 error:(id *)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
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
        v32 = [v30 callStackSymbols];
        v33 = [v32 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v52 = v29;
        v53 = 2114;
        v54 = v33;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      v20 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [v20 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v52 = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline disconnect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1536, @"Invalid parameter not satisfying: %s", v34, v35, v36, v37, "portRef != nil");
  }

  if (!a4)
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
        v41 = [v39 callStackSymbols];
        v42 = [v41 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v52 = v38;
        v53 = 2114;
        v54 = v42;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      v27 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [v27 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v52 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline disconnect:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1537, @"Invalid parameter not satisfying: %s", v43, v44, v45, v46, "error != NULL");
  }

  v7 = v6;
  v48 = 0;
  v8 = [v6 resolvePortWithPipeline:self error:&v48];
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
      *a4 = [NUError errorWithCode:1 reason:@"Failed to disconnect port ref" object:v13 underlyingError:v11];

      v12 = 0;
    }

    v9 = v11;
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to resolve port ref" object:v7 underlyingError:v9];
    *a4 = v12 = 0;
  }

  return v12;
}

- (BOOL)disconnectInputPort:(id)a3 error:(id *)a4
{
  v67 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
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
        v37 = [v35 callStackSymbols];
        v38 = [v37 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v34;
        v65 = 2114;
        v66 = v38;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline disconnectInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1528, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "inputPort != nil");
  }

  if (!a4)
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
        v46 = [v44 callStackSymbols];
        v47 = [v46 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v43;
        v65 = 2114;
        v66 = v47;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline disconnectInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1529, @"Invalid parameter not satisfying: %s", v48, v49, v50, v51, "error != NULL");
  }

  v7 = v6;
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
        v55 = [v53 callStackSymbols];
        v56 = [v55 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v52;
        v65 = 2114;
        v66 = v56;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      v32 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [v32 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v57 = objc_opt_class();
    v58 = NSStringFromClass(v57);
    _NUAssertFailHandler("[_NUPipeline disconnectInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1530, @"Invalid parameter not kind of %@", v59, v60, v61, v62, v58);
  }

  v8 = [(_NUPipeline *)self _disconnect:v7 error:a4];

  return v8;
}

- (BOOL)_canDisconnectInputPort:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(_NUPipeline *)self _validateInputPort:v6 error:a4])
  {
    if ([v6 isConnected])
    {
      v7 = 1;
    }

    else
    {
      [NUError invalidError:@"Port is not connected" object:v6];
      *a4 = v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)canDisconnectInputPort:(id)a3 error:(id *)a4
{
  v67 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
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
        v37 = [v35 callStackSymbols];
        v38 = [v37 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v34;
        v65 = 2114;
        v66 = v38;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline canDisconnectInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1503, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "inputPort != nil");
  }

  if (!a4)
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
        v46 = [v44 callStackSymbols];
        v47 = [v46 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v43;
        v65 = 2114;
        v66 = v47;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline canDisconnectInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1504, @"Invalid parameter not satisfying: %s", v48, v49, v50, v51, "error != NULL");
  }

  v7 = v6;
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
        v55 = [v53 callStackSymbols];
        v56 = [v55 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v64 = v52;
        v65 = 2114;
        v66 = v56;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      v32 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [v32 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v64 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v57 = objc_opt_class();
    v58 = NSStringFromClass(v57);
    _NUAssertFailHandler("[_NUPipeline canDisconnectInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1505, @"Invalid parameter not kind of %@", v59, v60, v61, v62, v58);
  }

  v8 = [(_NUPipeline *)self _canDisconnectInputPort:v7 error:a4];

  return v8;
}

- (BOOL)_connect:(id)a3 to:(id)a4 error:(id *)a5
{
  v19[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v17 = 0;
  v10 = [(_NUPipeline *)self _canConnect:v8 to:v9 error:&v17];
  if (v10)
  {
    v11 = v17;
    [v8 connectToPort:v9];
  }

  else
  {
    v18[0] = @"input";
    v18[1] = @"output";
    v19[0] = v8;
    v19[1] = v9;
    v12 = MEMORY[0x1E695DF20];
    v13 = v17;
    v11 = [v12 dictionaryWithObjects:v19 forKeys:v18 count:2];
    v14 = [NUError errorWithCode:1 reason:@"Cannot connect input port to output port" object:v11 underlyingError:v13];
    v15 = v14;

    *a5 = v14;
  }

  return v10;
}

- (BOOL)connect:(id)a3 to:(id)a4 error:(id *)a5
{
  v77 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v8)
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
        v44 = [v42 callStackSymbols];
        v45 = [v44 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v74 = v41;
        v75 = 2114;
        v76 = v45;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v74 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline connect:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1459, @"Invalid parameter not satisfying: %s", v46, v47, v48, v49, "srcPortRef != nil");
  }

  v10 = v9;
  if (!v9)
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
        v53 = [v51 callStackSymbols];
        v54 = [v53 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v74 = v50;
        v75 = 2114;
        v76 = v54;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      v32 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [v32 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v74 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline connect:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1460, @"Invalid parameter not satisfying: %s", v55, v56, v57, v58, "dstPortRef != nil");
  }

  if (!a5)
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
        v62 = [v60 callStackSymbols];
        v63 = [v62 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v74 = v59;
        v75 = 2114;
        v76 = v63;
        _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v38)
    {
      v39 = [MEMORY[0x1E696AF00] callStackSymbols];
      v40 = [v39 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v74 = v40;
      _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline connect:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1461, @"Invalid parameter not satisfying: %s", v64, v65, v66, v67, "error != NULL");
  }

  v70 = 0;
  v11 = [v8 resolvePortWithPipeline:self error:&v70];
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
        v72[0] = v8;
        v72[1] = v10;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:2];
        *a5 = [NUError errorWithCode:1 reason:@"Failed to connect src port ref to dst port ref" object:v18 underlyingError:v16];

        v17 = 0;
      }

      v14 = v16;
    }

    else
    {
      [NUError errorWithCode:1 reason:@"Failed to resolve dst port ref" object:v10 underlyingError:v14];
      *a5 = v17 = 0;
    }

    v12 = v14;
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to resolve src port ref" object:v8 underlyingError:v12];
    *a5 = v17 = 0;
  }

  return v17;
}

- (BOOL)connectInputPort:(id)a3 toOutputPort:(id)a4 error:(id *)a5
{
  v107 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v8)
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
        v57 = [v55 callStackSymbols];
        v58 = [v57 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v104 = v54;
        v105 = 2114;
        v106 = v58;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v104 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline connectInputPort:toOutputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1449, @"Invalid parameter not satisfying: %s", v59, v60, v61, v62, "inputPort != nil");
  }

  v10 = v9;
  if (!v9)
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
        v66 = [v64 callStackSymbols];
        v67 = [v66 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v104 = v63;
        v105 = 2114;
        v106 = v67;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v104 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline connectInputPort:toOutputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1450, @"Invalid parameter not satisfying: %s", v68, v69, v70, v71, "outputPort != nil");
  }

  if (!a5)
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
        v75 = [v73 callStackSymbols];
        v76 = [v75 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v104 = v72;
        v105 = 2114;
        v106 = v76;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      v32 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [v32 componentsJoinedByString:@"\n"];
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
        v84 = [v82 callStackSymbols];
        v85 = [v84 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v104 = v81;
        v105 = 2114;
        v106 = v85;
        _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v41)
    {
      v42 = [MEMORY[0x1E696AF00] callStackSymbols];
      v43 = [v42 componentsJoinedByString:@"\n"];
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
        v95 = [v93 callStackSymbols];
        v96 = [v95 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v104 = v92;
        v105 = 2114;
        v106 = v96;
        _os_log_error_impl(&dword_1C0184000, v50, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v51)
    {
      v52 = [MEMORY[0x1E696AF00] callStackSymbols];
      v53 = [v52 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v104 = v53;
      _os_log_error_impl(&dword_1C0184000, v50, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v97 = objc_opt_class();
    v98 = NSStringFromClass(v97);
    _NUAssertFailHandler("[_NUPipeline connectInputPort:toOutputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1453, @"Invalid parameter not kind of %@", v99, v100, v101, v102, v98);
  }

  v11 = [(_NUPipeline *)self _connect:v8 to:v10 error:a5];

  return v11;
}

- (BOOL)_canConnect:(id)a3 to:(id)a4 error:(id *)a5
{
  v21[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (![(_NUPipeline *)self _validateInputPort:v8 error:a5]|| ![(_NUPipeline *)self _validateOutputPort:v9 error:a5])
  {
    goto LABEL_19;
  }

  if (![v8 isConnected])
  {
    if ([v8 hasConnectedSuperport])
    {
      v10 = @"Already connected at a higher level";
      goto LABEL_9;
    }

    if ([v8 hasConnectedSubport])
    {
      v10 = @"Already connected at a lower level";
      goto LABEL_9;
    }

    if ([v9 hasSuperConnections])
    {
      v10 = @"Already have outgoing connections at a higher level";
LABEL_15:
      v11 = v9;
      goto LABEL_10;
    }

    if ([v9 hasSubConnections])
    {
      v10 = @"Already have outgoing connections at a lower level";
      goto LABEL_15;
    }

    v13 = [v8 effectiveFormat];
    v14 = [v9 effectiveFormat];
    v15 = [v13 isCompatibleWithChannelFormat:v14];

    if (v15)
    {
      v12 = 1;
      goto LABEL_20;
    }

    v20[0] = @"from";
    v16 = [v8 effectiveFormat];
    v20[1] = @"to";
    v21[0] = v16;
    v17 = [v9 effectiveFormat];
    v21[1] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
    *a5 = [NUError invalidError:@"Incompatible channel format" object:v18];

LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  v10 = @"Already connected";
LABEL_9:
  v11 = v8;
LABEL_10:
  [NUError invalidError:v10 object:v11];
  *a5 = v12 = 0;
LABEL_20:

  return v12;
}

- (BOOL)canConnect:(id)a3 to:(id)a4 error:(id *)a5
{
  v77 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v8)
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
        v44 = [v42 callStackSymbols];
        v45 = [v44 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v74 = v41;
        v75 = 2114;
        v76 = v45;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v74 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline canConnect:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1370, @"Invalid parameter not satisfying: %s", v46, v47, v48, v49, "srcPortRef != nil");
  }

  v10 = v9;
  if (!v9)
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
        v53 = [v51 callStackSymbols];
        v54 = [v53 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v74 = v50;
        v75 = 2114;
        v76 = v54;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      v32 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [v32 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v74 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline canConnect:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1371, @"Invalid parameter not satisfying: %s", v55, v56, v57, v58, "dstPortRef != nil");
  }

  if (!a5)
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
        v62 = [v60 callStackSymbols];
        v63 = [v62 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v74 = v59;
        v75 = 2114;
        v76 = v63;
        _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v38)
    {
      v39 = [MEMORY[0x1E696AF00] callStackSymbols];
      v40 = [v39 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v74 = v40;
      _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline canConnect:to:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1372, @"Invalid parameter not satisfying: %s", v64, v65, v66, v67, "error != NULL");
  }

  v70 = 0;
  v11 = [v8 resolvePortWithPipeline:self error:&v70];
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
        v72[0] = v8;
        v72[1] = v10;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:2];
        *a5 = [NUError errorWithCode:1 reason:@"Cannot connect src port ref to dst port ref" object:v18 underlyingError:v16];

        v17 = 0;
      }

      v14 = v16;
    }

    else
    {
      [NUError errorWithCode:1 reason:@"Failed to resolve dst port ref" object:v10 underlyingError:v14];
      *a5 = v17 = 0;
    }

    v12 = v14;
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to resolve src port ref" object:v8 underlyingError:v12];
    *a5 = v17 = 0;
  }

  return v17;
}

- (BOOL)canConnectInputPort:(id)a3 toOutputPort:(id)a4 error:(id *)a5
{
  v107 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v8)
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
        v57 = [v55 callStackSymbols];
        v58 = [v57 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v104 = v54;
        v105 = 2114;
        v106 = v58;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v104 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline canConnectInputPort:toOutputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1360, @"Invalid parameter not satisfying: %s", v59, v60, v61, v62, "inputPort != nil");
  }

  v10 = v9;
  if (!v9)
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
        v66 = [v64 callStackSymbols];
        v67 = [v66 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v104 = v63;
        v105 = 2114;
        v106 = v67;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v104 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline canConnectInputPort:toOutputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1361, @"Invalid parameter not satisfying: %s", v68, v69, v70, v71, "outputPort != nil");
  }

  if (!a5)
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
        v75 = [v73 callStackSymbols];
        v76 = [v75 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v104 = v72;
        v105 = 2114;
        v106 = v76;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      v32 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [v32 componentsJoinedByString:@"\n"];
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
        v84 = [v82 callStackSymbols];
        v85 = [v84 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v104 = v81;
        v105 = 2114;
        v106 = v85;
        _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v41)
    {
      v42 = [MEMORY[0x1E696AF00] callStackSymbols];
      v43 = [v42 componentsJoinedByString:@"\n"];
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
        v95 = [v93 callStackSymbols];
        v96 = [v95 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v104 = v92;
        v105 = 2114;
        v106 = v96;
        _os_log_error_impl(&dword_1C0184000, v50, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v51)
    {
      v52 = [MEMORY[0x1E696AF00] callStackSymbols];
      v53 = [v52 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v104 = v53;
      _os_log_error_impl(&dword_1C0184000, v50, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v97 = objc_opt_class();
    v98 = NSStringFromClass(v97);
    _NUAssertFailHandler("[_NUPipeline canConnectInputPort:toOutputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1364, @"Invalid parameter not kind of %@", v99, v100, v101, v102, v98);
  }

  v11 = [(_NUPipeline *)self _canConnect:v8 to:v10 error:a5];

  return v11;
}

- (BOOL)_validateOutputPort:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 pipeline];
  if (![(_NUPipeline *)self isReachableOuterPipeline:v7])
  {
    if (![(_NUPipeline *)self isReachableInnerPipeline:v7])
    {
      [NUError invalidError:@"Output port is out of scope" object:v6];
      *a4 = v14 = 0;
      goto LABEL_10;
    }

    v8 = [v6 rootPort];
    v12 = [v8 channel];
    v13 = [v7 outputPortForChannel:v12];

    if (v13 != v8)
    {
      v11 = @"Unknown subpipeline output port";
      goto LABEL_7;
    }

LABEL_8:

    v14 = 1;
    goto LABEL_10;
  }

  v8 = [v6 rootPort];
  v9 = [v8 channel];
  v10 = [v7 inputPortForChannel:v9];

  if (v10 == v8)
  {
    goto LABEL_8;
  }

  v11 = @"Unknown pipeline output port";
LABEL_7:
  *a4 = [NUError invalidError:v11 object:v6];

  v14 = 0;
LABEL_10:

  return v14;
}

- (BOOL)_validateInputPort:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 pipeline];
  if (![(_NUPipeline *)self isReachableOuterPipeline:v7])
  {
    if (![(_NUPipeline *)self isReachableInnerPipeline:v7])
    {
      [NUError invalidError:@"Input port is out of scope" object:v6];
      *a4 = v14 = 0;
      goto LABEL_10;
    }

    v8 = [v6 rootPort];
    v12 = [v8 channel];
    v13 = [v7 inputPortForChannel:v12];

    if (v13 != v8)
    {
      v11 = @"Unknown subpipeline input port";
      goto LABEL_7;
    }

LABEL_8:

    v14 = 1;
    goto LABEL_10;
  }

  v8 = [v6 rootPort];
  v9 = [v8 channel];
  v10 = [v7 outputPortForChannel:v9];

  if (v10 == v8)
  {
    goto LABEL_8;
  }

  v11 = @"Unknown pipeline input port";
LABEL_7:
  *a4 = [NUError invalidError:v11 object:v6];

  v14 = 0;
LABEL_10:

  return v14;
}

- (BOOL)isReachableInnerPipeline:(id)a3
{
  v4 = a3;
  v5 = [v4 superpipeline];
  v6 = [v5 isReachableOuterPipeline:self];

  if (v6)
  {
    v7 = 1;
  }

  else if ([(_NUPipeline *)self isInline])
  {
    v8 = [(_NUPipeline *)self superpipeline];
    v7 = [v8 isReachableInnerPipeline:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isReachableOuterPipeline:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else if ([(_NUPipeline *)self isInline])
  {
    v5 = [(_NUPipeline *)self superpipeline];
    v6 = [v5 isReachableOuterPipeline:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_outputPortMatching:(id)a3
{
  v4 = a3;
  v5 = [(_NUPipeline *)self outputChannelMatching:v4];
  if (v5)
  {
    v6 = [(_NUPipeline *)self _outputPortForChannel:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 subsequentMatching];
  v8 = [v6 _subportMatching:v7];

  return v8;
}

- (id)outputPortMatching:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
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
        v18 = [v16 callStackSymbols];
        v19 = [v18 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v15;
        v26 = 2114;
        v27 = v19;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      v13 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [v13 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline outputPortMatching:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1249, @"Invalid parameter not satisfying: %s", v20, v21, v22, v23, "matching != nil");
  }

  v5 = v4;
  v6 = [(_NUPipeline *)self _outputPortMatching:v4];

  return v6;
}

- (id)_inputPortMatching:(id)a3
{
  v4 = a3;
  v5 = [(_NUPipeline *)self inputChannelMatching:v4];
  if (v5)
  {
    v6 = [(_NUPipeline *)self _inputPortForChannel:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 subsequentMatching];
  v8 = [v6 _subportMatching:v7];

  return v8;
}

- (id)inputPortMatching:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
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
        v18 = [v16 callStackSymbols];
        v19 = [v18 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v15;
        v26 = 2114;
        v27 = v19;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      v13 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [v13 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline inputPortMatching:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1236, @"Invalid parameter not satisfying: %s", v20, v21, v22, v23, "matching != nil");
  }

  v5 = v4;
  v6 = [(_NUPipeline *)self _inputPortMatching:v4];

  return v6;
}

- (id)outputChannelMatching:(id)a3
{
  v6 = a3;
  v3 = v6;
  v4 = PFFind();

  return v4;
}

- (id)inputChannelMatching:(id)a3
{
  v6 = a3;
  v3 = v6;
  v4 = PFFind();

  return v4;
}

- (BOOL)_removeOutputPort:(id)a3 error:(id *)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 pipeline];

  if (v7 != self)
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
        v27 = [v25 callStackSymbols];
        v28 = [v27 componentsJoinedByString:@"\n"];
        *v49 = 138543618;
        *&v49[4] = v24;
        v50 = 2114;
        v51 = v28;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v49, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *v49 = 138543362;
      *&v49[4] = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v49, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline _removeOutputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1199, @"Port is not attached", v29, v30, v31, v32, *v49);
  }

  v8 = [v6 superport];

  if (v8)
  {
    v9 = [v6 address];
    v10 = @"Cannot remove output subport";
LABEL_7:
    [NUError invalidError:v10 object:v9];
    *a4 = v11 = 0;
    goto LABEL_8;
  }

  if (([v6 hasConnections] & 1) != 0 || objc_msgSend(v6, "hasSubConnections"))
  {
    v9 = [v6 fullName];
    v10 = @"Cannot remove connected output port";
    goto LABEL_7;
  }

  [v6 disconnectAll];
  [v6 setPipeline:0];
  outputChannels = self->_outputChannels;
  v14 = [v6 channel];
  v15 = [(NSMutableArray *)outputChannels indexOfObject:v14];

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
        v43 = [v41 callStackSymbols];
        v44 = [v43 componentsJoinedByString:@"\n"];
        *v49 = 138543618;
        *&v49[4] = v40;
        v50 = 2114;
        v51 = v44;
        _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v49, 0x16u);
      }
    }

    else if (v37)
    {
      v38 = [MEMORY[0x1E696AF00] callStackSymbols];
      v39 = [v38 componentsJoinedByString:@"\n"];
      *v49 = 138543362;
      *&v49[4] = v39;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v49, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline _removeOutputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1217, @"Output channel not found", v45, v46, v47, v48, *v49);
  }

  [(NSMutableArray *)self->_outputChannels removeObjectAtIndex:v15];
  outputPorts = self->_outputPorts;
  v9 = [v6 fullName];
  [(NSMutableDictionary *)outputPorts removeObjectForKey:v9];
  v11 = 1;
LABEL_8:

  return v11;
}

- (BOOL)removeOutputPort:(id)a3 error:(id *)a4
{
  v69 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
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
        v39 = [v37 callStackSymbols];
        v40 = [v39 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v36;
        v67 = 2114;
        v68 = v40;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeOutputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1186, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "port != nil");
  }

  if (!a4)
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
        v48 = [v46 callStackSymbols];
        v49 = [v48 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v45;
        v67 = 2114;
        v68 = v49;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeOutputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1187, @"Invalid parameter not satisfying: %s", v50, v51, v52, v53, "error != NULL");
  }

  v7 = v6;
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
        v57 = [v55 callStackSymbols];
        v58 = [v57 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v54;
        v67 = 2114;
        v68 = v58;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      v34 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [v34 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v59 = objc_opt_class();
    v60 = NSStringFromClass(v59);
    _NUAssertFailHandler("[_NUPipeline removeOutputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1188, @"Invalid parameter not kind of %@", v61, v62, v63, v64, v60);
  }

  v8 = [v7 channel];
  v9 = [(_NUPipeline *)self _outputPortForChannel:v8];

  if (v9 == v7)
  {
    v10 = [(_NUPipeline *)self _removeOutputPort:v7 error:a4];
  }

  else
  {
    [NUError unknownError:@"Unknown output port" object:v7];
    *a4 = v10 = 0;
  }

  return v10;
}

- (BOOL)removeOutputNamed:(id)a3 error:(id *)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
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
        v29 = [v27 callStackSymbols];
        v30 = [v29 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v26;
        v46 = 2114;
        v47 = v30;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeOutputNamed:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1173, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "name != nil");
  }

  if (!a4)
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
        v38 = [v36 callStackSymbols];
        v39 = [v38 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v35;
        v46 = 2114;
        v47 = v39;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeOutputNamed:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1174, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "error != NULL");
  }

  v7 = v6;
  v8 = [NUChannelMatching name:v6];
  v9 = [(_NUPipeline *)self _outputPortMatching:v8];

  if (v9)
  {
    v10 = [(_NUPipeline *)self _removeOutputPort:v9 error:a4];
  }

  else
  {
    [NUError notFoundError:@"No such output port" object:v7];
    *a4 = v10 = 0;
  }

  return v10;
}

- (BOOL)removeOutputChannel:(id)a3 error:(id *)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
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
        v29 = [v27 callStackSymbols];
        v30 = [v29 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v26;
        v46 = 2114;
        v47 = v30;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeOutputChannel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1160, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "channel != nil");
  }

  if (!a4)
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
        v38 = [v36 callStackSymbols];
        v39 = [v38 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v35;
        v46 = 2114;
        v47 = v39;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeOutputChannel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1161, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "error != NULL");
  }

  v7 = v6;
  v8 = [(_NUPipeline *)self _outputPortForChannel:v6];
  if (v8)
  {
    v9 = [(_NUPipeline *)self _removeOutputPort:v8 error:a4];
  }

  else
  {
    v10 = [v7 name];
    *a4 = [NUError notFoundError:@"No such output channel" object:v10];

    v9 = 0;
  }

  return v9;
}

- (BOOL)_removeInputPort:(id)a3 error:(id *)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 pipeline];

  if (v7 != self)
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
        v27 = [v25 callStackSymbols];
        v28 = [v27 componentsJoinedByString:@"\n"];
        *v49 = 138543618;
        *&v49[4] = v24;
        v50 = 2114;
        v51 = v28;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v49, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *v49 = 138543362;
      *&v49[4] = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v49, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline _removeInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1135, @"Port is not attached", v29, v30, v31, v32, *v49);
  }

  v8 = [v6 superport];

  if (v8)
  {
    v9 = [v6 address];
    v10 = @"Cannot remove input subport";
LABEL_7:
    [NUError invalidError:v10 object:v9];
    *a4 = v11 = 0;
    goto LABEL_8;
  }

  if (([v6 isConnected] & 1) != 0 || objc_msgSend(v6, "hasConnectedSubport"))
  {
    v9 = [v6 fullName];
    v10 = @"Cannot remove connected input port";
    goto LABEL_7;
  }

  [v6 deleteAllConnections];
  [v6 setPipeline:0];
  inputChannels = self->_inputChannels;
  v14 = [v6 channel];
  v15 = [(NSMutableArray *)inputChannels indexOfObject:v14];

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
        v43 = [v41 callStackSymbols];
        v44 = [v43 componentsJoinedByString:@"\n"];
        *v49 = 138543618;
        *&v49[4] = v40;
        v50 = 2114;
        v51 = v44;
        _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v49, 0x16u);
      }
    }

    else if (v37)
    {
      v38 = [MEMORY[0x1E696AF00] callStackSymbols];
      v39 = [v38 componentsJoinedByString:@"\n"];
      *v49 = 138543362;
      *&v49[4] = v39;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v49, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline _removeInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1153, @"Input channel not found", v45, v46, v47, v48, *v49);
  }

  [(NSMutableArray *)self->_inputChannels removeObjectAtIndex:v15];
  inputPorts = self->_inputPorts;
  v9 = [v6 fullName];
  [(NSMutableDictionary *)inputPorts removeObjectForKey:v9];
  v11 = 1;
LABEL_8:

  return v11;
}

- (BOOL)removeInputPort:(id)a3 error:(id *)a4
{
  v69 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
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
        v39 = [v37 callStackSymbols];
        v40 = [v39 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v36;
        v67 = 2114;
        v68 = v40;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1121, @"Invalid parameter not satisfying: %s", v41, v42, v43, v44, "port != nil");
  }

  if (!a4)
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
        v48 = [v46 callStackSymbols];
        v49 = [v48 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v45;
        v67 = 2114;
        v68 = v49;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1122, @"Invalid parameter not satisfying: %s", v50, v51, v52, v53, "error != NULL");
  }

  v7 = v6;
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
        v57 = [v55 callStackSymbols];
        v58 = [v57 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v54;
        v67 = 2114;
        v68 = v58;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      v34 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [v34 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v35;
      _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v59 = objc_opt_class();
    v60 = NSStringFromClass(v59);
    _NUAssertFailHandler("[_NUPipeline removeInputPort:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1123, @"Invalid parameter not kind of %@", v61, v62, v63, v64, v60);
  }

  v8 = [v7 channel];
  v9 = [(_NUPipeline *)self _inputPortForChannel:v8];

  if (v9 == v7)
  {
    v10 = [(_NUPipeline *)self _removeInputPort:v7 error:a4];
  }

  else
  {
    [NUError unknownError:@"Unknown input port" object:v7];
    *a4 = v10 = 0;
  }

  return v10;
}

- (BOOL)removeInputNamed:(id)a3 error:(id *)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
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
        v29 = [v27 callStackSymbols];
        v30 = [v29 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v26;
        v46 = 2114;
        v47 = v30;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeInputNamed:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1108, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "name != nil");
  }

  if (!a4)
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
        v38 = [v36 callStackSymbols];
        v39 = [v38 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v35;
        v46 = 2114;
        v47 = v39;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeInputNamed:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1109, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "error != NULL");
  }

  v7 = v6;
  v8 = [NUChannelMatching name:v6];
  v9 = [(_NUPipeline *)self _inputPortMatching:v8];

  if (v9)
  {
    v10 = [(_NUPipeline *)self _removeInputPort:v9 error:a4];
  }

  else
  {
    [NUError notFoundError:@"No such input port" object:v7];
    *a4 = v10 = 0;
  }

  return v10;
}

- (BOOL)removeInputChannel:(id)a3 error:(id *)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
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
        v29 = [v27 callStackSymbols];
        v30 = [v29 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v26;
        v46 = 2114;
        v47 = v30;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeInputChannel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1095, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "channel != nil");
  }

  if (!a4)
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
        v38 = [v36 callStackSymbols];
        v39 = [v38 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v35;
        v46 = 2114;
        v47 = v39;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline removeInputChannel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1096, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "error != NULL");
  }

  v7 = v6;
  v8 = [(_NUPipeline *)self _inputPortForChannel:v6];
  if (v8)
  {
    v9 = [(_NUPipeline *)self _removeInputPort:v8 error:a4];
  }

  else
  {
    v10 = [v7 name];
    *a4 = [NUError notFoundError:@"No such input channel" object:v10];

    v9 = 0;
  }

  return v9;
}

- (id)_addOutputChannel:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  outputPorts = self->_outputPorts;
  v6 = [v4 name];
  v7 = [(NSMutableDictionary *)outputPorts objectForKeyedSubscript:v6];

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
        v22 = [v20 callStackSymbols];
        v23 = [v22 componentsJoinedByString:@"\n"];
        *v28 = 138543618;
        *&v28[4] = v19;
        v29 = 2114;
        v30 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v28, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *v28 = 138543362;
      *&v28[4] = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v28, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline _addOutputChannel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1086, @"Output port already exists", v24, v25, v26, v27, *v28);
  }

  v8 = [[_NUChannelPort alloc] initWithChannel:v4];
  [(NSMutableArray *)self->_outputChannels addObject:v4];
  v9 = self->_outputPorts;
  v10 = [v4 name];
  [(NSMutableDictionary *)v9 setObject:v8 forKey:v10];

  [(_NUChannelPort *)v8 setPipeline:self];

  return v8;
}

- (id)addOutputChannel:(id)a3 error:(id *)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
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
        v29 = [v27 callStackSymbols];
        v30 = [v29 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v26;
        v46 = 2114;
        v47 = v30;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline addOutputChannel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1073, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "channel != nil");
  }

  if (!a4)
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
        v38 = [v36 callStackSymbols];
        v39 = [v38 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v35;
        v46 = 2114;
        v47 = v39;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline addOutputChannel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1074, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "error != NULL");
  }

  v7 = v6;
  v8 = [(_NUPipeline *)self _outputPortForChannel:v6];
  if (v8)
  {
    v9 = [v7 name];
    *a4 = [NUError duplicateError:@"Output channel already exists" object:v9];

    v10 = 0;
  }

  else
  {
    v10 = [(_NUPipeline *)self _addOutputChannel:v7];
  }

  return v10;
}

- (id)_addInputChannel:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  inputPorts = self->_inputPorts;
  v6 = [v4 name];
  v7 = [(NSMutableDictionary *)inputPorts objectForKeyedSubscript:v6];

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
        v22 = [v20 callStackSymbols];
        v23 = [v22 componentsJoinedByString:@"\n"];
        *v28 = 138543618;
        *&v28[4] = v19;
        v29 = 2114;
        v30 = v23;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v28, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *v28 = 138543362;
      *&v28[4] = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v28, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline _addInputChannel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1064, @"Input port already exists", v24, v25, v26, v27, *v28);
  }

  v8 = [[_NUChannelPort alloc] initWithChannel:v4];
  [(_NUChannelPort *)v8 setPipeline:self];
  [(NSMutableArray *)self->_inputChannels addObject:v4];
  v9 = self->_inputPorts;
  v10 = [v4 name];
  [(NSMutableDictionary *)v9 setObject:v8 forKey:v10];

  return v8;
}

- (id)addInputChannel:(id)a3 error:(id *)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
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
        v29 = [v27 callStackSymbols];
        v30 = [v29 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v26;
        v46 = 2114;
        v47 = v30;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline addInputChannel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1051, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "channel != nil");
  }

  if (!a4)
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
        v38 = [v36 callStackSymbols];
        v39 = [v38 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v35;
        v46 = 2114;
        v47 = v39;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline addInputChannel:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1052, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "error != NULL");
  }

  v7 = v6;
  v8 = [(_NUPipeline *)self _inputPortForChannel:v6];
  if (v8)
  {
    v9 = [v7 name];
    *a4 = [NUError duplicateError:@"Input channel already exists" object:v9];

    v10 = 0;
  }

  else
  {
    v10 = [(_NUPipeline *)self _addInputChannel:v7];
  }

  return v10;
}

- (id)outputPortNamed:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
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
        v18 = [v16 callStackSymbols];
        v19 = [v18 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v15;
        v26 = 2114;
        v27 = v19;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      v13 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [v13 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline outputPortNamed:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1042, @"Invalid parameter not satisfying: %s", v20, v21, v22, v23, "name != nil");
  }

  v5 = v4;
  v6 = [(_NUPipeline *)self _outputPortNamed:v4];

  return v6;
}

- (id)_outputPortForChannel:(id)a3
{
  outputPorts = self->_outputPorts;
  v4 = [a3 name];
  v5 = [(NSMutableDictionary *)outputPorts objectForKey:v4];

  return v5;
}

- (id)outputPortForChannel:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
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
        v18 = [v16 callStackSymbols];
        v19 = [v18 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v15;
        v26 = 2114;
        v27 = v19;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      v13 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [v13 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline outputPortForChannel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1033, @"Invalid parameter not satisfying: %s", v20, v21, v22, v23, "channel != nil");
  }

  v5 = v4;
  v6 = [(_NUPipeline *)self _outputPortForChannel:v4];

  return v6;
}

- (id)inputPortNamed:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
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
        v18 = [v16 callStackSymbols];
        v19 = [v18 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v15;
        v26 = 2114;
        v27 = v19;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      v13 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [v13 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline inputPortNamed:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1024, @"Invalid parameter not satisfying: %s", v20, v21, v22, v23, "name != nil");
  }

  v5 = v4;
  v6 = [(_NUPipeline *)self _inputPortNamed:v4];

  return v6;
}

- (id)_inputPortForChannel:(id)a3
{
  v4 = [a3 name];
  v5 = [(_NUPipeline *)self _inputPortNamed:v4];

  return v5;
}

- (id)inputPortForChannel:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
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
        v18 = [v16 callStackSymbols];
        v19 = [v18 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v15;
        v26 = 2114;
        v27 = v19;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      v13 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [v13 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline inputPortForChannel:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 1015, @"Invalid parameter not satisfying: %s", v20, v21, v22, v23, "channel != nil");
  }

  v5 = v4;
  v6 = [(_NUPipeline *)self _inputPortForChannel:v4];

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
  v2 = self;
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(_NUPipeline *)v2 superpipeline];

  if (v4)
  {
    do
    {
      v5 = [(_NUPipeline *)v2 name];
      v6 = [NUPipelinePathComponent componentWithName:v5];

      [v3 insertObject:v6 atIndex:0];
      v7 = [(_NUPipeline *)v2 superpipeline];

      v8 = [(_NUPipeline *)v7 superpipeline];

      v2 = v7;
    }

    while (v8);
  }

  else
  {
    v7 = v2;
  }

  v9 = +[NUPipelinePathComponent rootComponent];
  [v3 insertObject:v9 atIndex:0];

  v10 = [[NUPipelinePath alloc] initWithPathComponents:v3];

  return v10;
}

- (_NUPipeline)initWithIdentifier:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
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
        v32 = [v30 callStackSymbols];
        v33 = [v32 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v40 = v29;
        v41 = 2114;
        v42 = v33;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      v27 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [v27 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v40 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUPipeline initWithIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUPipeline.m", 954, @"Invalid parameter not satisfying: %s", v34, v35, v36, v37, "identifier != nil");
  }

  v5 = v4;
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