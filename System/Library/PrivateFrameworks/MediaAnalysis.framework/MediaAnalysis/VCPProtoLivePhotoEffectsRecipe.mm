@interface VCPProtoLivePhotoEffectsRecipe
+ (id)resultFromLegacyDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (id)exportToLegacyDictionaryFromFrameInstruction:(id)instruction;
- (id)exportToLegacyDictionaryFromParam:(id)param withLoopFlavor:(id)flavor;
- (unint64_t)hash;
- (void)addFrameInstructions:(id)instructions;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasFlags:(BOOL)flags;
- (void)writeTo:(id)to;
@end

@implementation VCPProtoLivePhotoEffectsRecipe

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  v38 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v4 = dictionaryCopy;
  if (dictionaryCopy)
  {
    v27 = [dictionaryCopy objectForKeyedSubscript:@"AutoLoop"];
    v26 = [v4 objectForKeyedSubscript:@"Bounce"];
    v25 = [v4 objectForKeyedSubscript:@"LongExposure"];
    v24 = [v4 objectForKeyedSubscript:@"Stabilize"];
    v5 = [v4 objectForKeyedSubscript:@"NormStabilizeInstructions"];
    v31 = [VCPProtoLivePhotoVariationParams resultFromLegacyDictionary:v27];
    v30 = [VCPProtoLivePhotoVariationParams resultFromLegacyDictionary:v26];
    v29 = [VCPProtoLivePhotoVariationParams resultFromLegacyDictionary:v25];
    v6 = [VCPProtoLivePhotoVariationParams resultFromLegacyDictionary:v24];
    v7 = v6;
    v8 = 0;
    if (v31 && v30 && v29 && v6)
    {
      v28 = [v5 objectForKeyedSubscript:@"stabCropRect"];
      memset(&v36, 0, sizeof(v36));
      v9 = [v5 objectForKeyedSubscript:@"outputFrameDur"];
      CMTimeMakeFromDictionary(&v36, v9);

      v23 = [v5 objectForKeyedSubscript:@"frameInstructions"];
      v8 = objc_alloc_init(VCPProtoLivePhotoEffectsRecipe);
      v10 = [v4 objectForKeyedSubscript:@"Version"];
      -[VCPProtoLivePhotoEffectsRecipe setVersion:](v8, "setVersion:", [v10 intValue]);

      v11 = [v4 objectForKeyedSubscript:@"MinVersion"];
      -[VCPProtoLivePhotoEffectsRecipe setMinVersion:](v8, "setMinVersion:", [v11 intValue]);

      [(VCPProtoLivePhotoEffectsRecipe *)v8 setAutoloop:v31];
      [(VCPProtoLivePhotoEffectsRecipe *)v8 setBounce:v30];
      [(VCPProtoLivePhotoEffectsRecipe *)v8 setLongexposure:v29];
      [(VCPProtoLivePhotoEffectsRecipe *)v8 setStabilize:v7];
      v12 = [v28 objectForKeyedSubscript:@"X"];
      -[VCPProtoLivePhotoEffectsRecipe setCropRectX:](v8, "setCropRectX:", [v12 intValue]);

      v13 = [v28 objectForKeyedSubscript:@"Y"];
      -[VCPProtoLivePhotoEffectsRecipe setCropRectY:](v8, "setCropRectY:", [v13 intValue]);

      v14 = [v28 objectForKeyedSubscript:@"Width"];
      -[VCPProtoLivePhotoEffectsRecipe setCropRectWidth:](v8, "setCropRectWidth:", [v14 intValue]);

      v15 = [v28 objectForKeyedSubscript:@"Height"];
      -[VCPProtoLivePhotoEffectsRecipe setCropRectHeight:](v8, "setCropRectHeight:", [v15 intValue]);

      v16 = [v5 objectForKeyedSubscript:@"stabilizeResult"];
      -[VCPProtoLivePhotoEffectsRecipe setStabilizeResult:](v8, "setStabilizeResult:", [v16 intValue]);

      [(VCPProtoLivePhotoEffectsRecipe *)v8 setOutputFrameDurValue:v36.value];
      [(VCPProtoLivePhotoEffectsRecipe *)v8 setTimeScale:v36.timescale];
      [(VCPProtoLivePhotoEffectsRecipe *)v8 setEpoch:v36.epoch];
      [(VCPProtoLivePhotoEffectsRecipe *)v8 setFlags:v36.flags];
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v17 = v23;
      v18 = [v17 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v18)
      {
        v19 = *v33;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v33 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = [VCPProtoLivePhotoFrameInstruction resultFromLegacyDictionary:*(*(&v32 + 1) + 8 * i)];
            [(VCPProtoLivePhotoEffectsRecipe *)v8 addFrameInstructions:v21];
          }

          v18 = [v17 countByEnumeratingWithState:&v32 objects:v37 count:16];
        }

        while (v18);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)exportToLegacyDictionary
{
  v31[4] = *MEMORY[0x1E69E9840];
  memset(&v28, 0, sizeof(v28));
  CMTimeMakeWithEpoch(&v28, [(VCPProtoLivePhotoEffectsRecipe *)self outputFrameDurValue], [(VCPProtoLivePhotoEffectsRecipe *)self timeScale], [(VCPProtoLivePhotoEffectsRecipe *)self epoch]);
  v28.flags = [(VCPProtoLivePhotoEffectsRecipe *)self flags];
  v30[0] = @"X";
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[VCPProtoLivePhotoEffectsRecipe cropRectX](self, "cropRectX")}];
  v31[0] = v3;
  v30[1] = @"Y";
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[VCPProtoLivePhotoEffectsRecipe cropRectY](self, "cropRectY")}];
  v31[1] = v4;
  v30[2] = @"Width";
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[VCPProtoLivePhotoEffectsRecipe cropRectWidth](self, "cropRectWidth")}];
  v31[2] = v5;
  v30[3] = @"Height";
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[VCPProtoLivePhotoEffectsRecipe cropRectHeight](self, "cropRectHeight")}];
  v31[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:4];

  array = [MEMORY[0x1E695DF70] array];
  for (i = 0; [(VCPProtoLivePhotoEffectsRecipe *)self frameInstructionsCount]> i; ++i)
  {
    frameInstructions = [(VCPProtoLivePhotoEffectsRecipe *)self frameInstructions];
    v11 = [frameInstructions objectAtIndex:i];

    v12 = [(VCPProtoLivePhotoEffectsRecipe *)self exportToLegacyDictionaryFromFrameInstruction:v11];
    [array addObject:v12];
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  time = v28;
  v14 = CMTimeCopyAsDictionary(&time, 0);
  [dictionary setObject:v14 forKeyedSubscript:@"outputFrameDur"];

  [dictionary setObject:v7 forKeyedSubscript:@"stabCropRect"];
  v15 = [MEMORY[0x1E696AD98] numberWithInt:{-[VCPProtoLivePhotoEffectsRecipe stabilizeResult](self, "stabilizeResult")}];
  [dictionary setObject:v15 forKeyedSubscript:@"stabilizeResult"];

  [dictionary setObject:array forKeyedSubscript:@"frameInstructions"];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  autoloop = [(VCPProtoLivePhotoEffectsRecipe *)self autoloop];
  v18 = [(VCPProtoLivePhotoEffectsRecipe *)self exportToLegacyDictionaryFromParam:autoloop withLoopFlavor:@"AutoLoop"];
  [dictionary2 setObject:v18 forKeyedSubscript:@"AutoLoop"];

  bounce = [(VCPProtoLivePhotoEffectsRecipe *)self bounce];
  v20 = [(VCPProtoLivePhotoEffectsRecipe *)self exportToLegacyDictionaryFromParam:bounce withLoopFlavor:@"Bounce"];
  [dictionary2 setObject:v20 forKeyedSubscript:@"Bounce"];

  longexposure = [(VCPProtoLivePhotoEffectsRecipe *)self longexposure];
  v22 = [(VCPProtoLivePhotoEffectsRecipe *)self exportToLegacyDictionaryFromParam:longexposure withLoopFlavor:@"LongExposure"];
  [dictionary2 setObject:v22 forKeyedSubscript:@"LongExposure"];

  stabilize = [(VCPProtoLivePhotoEffectsRecipe *)self stabilize];
  v24 = [(VCPProtoLivePhotoEffectsRecipe *)self exportToLegacyDictionaryFromParam:stabilize withLoopFlavor:@"Stabilize"];
  [dictionary2 setObject:v24 forKeyedSubscript:@"Stabilize"];

  v25 = [MEMORY[0x1E696AD98] numberWithInt:{-[VCPProtoLivePhotoEffectsRecipe version](self, "version")}];
  [dictionary2 setObject:v25 forKeyedSubscript:@"Version"];

  v26 = [MEMORY[0x1E696AD98] numberWithInt:{-[VCPProtoLivePhotoEffectsRecipe minVersion](self, "minVersion")}];
  [dictionary2 setObject:v26 forKeyedSubscript:@"MinVersion"];

  [dictionary2 setObject:dictionary forKeyedSubscript:@"NormStabilizeInstructions"];

  return dictionary2;
}

- (id)exportToLegacyDictionaryFromFrameInstruction:(id)instruction
{
  instructionCopy = instruction;
  exportToLegacyDictionary = [instructionCopy exportToLegacyDictionary];
  v5 = [exportToLegacyDictionary mutableCopy];

  memset(&v8, 0, sizeof(v8));
  CMTimeMake(&v8, [instructionCopy timeValue], objc_msgSend(instructionCopy, "timeScale"));
  v8.epoch = [instructionCopy epoch];
  v8.flags = [instructionCopy flags];
  time = v8;
  v6 = CMTimeCopyAsDictionary(&time, 0);
  [v5 setObject:v6 forKeyedSubscript:@"rawTime"];

  return v5;
}

- (id)exportToLegacyDictionaryFromParam:(id)param withLoopFlavor:(id)flavor
{
  flavorCopy = flavor;
  exportToLegacyDictionary = [param exportToLegacyDictionary];
  v7 = [exportToLegacyDictionary mutableCopy];

  v8 = [v7 objectForKeyedSubscript:@"Params"];
  v9 = [v8 mutableCopy];

  [v9 setObject:flavorCopy forKeyedSubscript:@"loopFlavor"];
  [v9 setObject:&unk_1F49BB118 forKeyedSubscript:@"loopEnergy"];
  [v7 setObject:v9 forKeyedSubscript:@"Params"];

  return v7;
}

- (void)setHasFlags:(BOOL)flags
{
  if (flags)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addFrameInstructions:(id)instructions
{
  instructionsCopy = instructions;
  frameInstructions = self->_frameInstructions;
  v8 = instructionsCopy;
  if (!frameInstructions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_frameInstructions;
    self->_frameInstructions = v6;

    instructionsCopy = v8;
    frameInstructions = self->_frameInstructions;
  }

  [(NSMutableArray *)frameInstructions addObject:instructionsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoLivePhotoEffectsRecipe;
  v4 = [(VCPProtoLivePhotoEffectsRecipe *)&v8 description];
  dictionaryRepresentation = [(VCPProtoLivePhotoEffectsRecipe *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v37 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_stabilizeResult];
  [dictionary setObject:v4 forKey:@"stabilizeResult"];

  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_outputFrameDurValue];
  [dictionary setObject:v5 forKey:@"outputFrameDurValue"];

  v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_cropRectX];
  [dictionary setObject:v6 forKey:@"cropRectX"];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_cropRectY];
  [dictionary setObject:v7 forKey:@"cropRectY"];

  v8 = [MEMORY[0x1E696AD98] numberWithInt:self->_cropRectHeight];
  [dictionary setObject:v8 forKey:@"cropRectHeight"];

  v9 = [MEMORY[0x1E696AD98] numberWithInt:self->_cropRectWidth];
  [dictionary setObject:v9 forKey:@"cropRectWidth"];

  v10 = [MEMORY[0x1E696AD98] numberWithInt:self->_timeScale];
  [dictionary setObject:v10 forKey:@"timeScale"];

  has = self->_has;
  if (has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_epoch];
    [dictionary setObject:v12 forKey:@"epoch"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInt:self->_flags];
    [dictionary setObject:v13 forKey:@"flags"];
  }

  if ([(NSMutableArray *)self->_frameInstructions count])
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_frameInstructions, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v15 = self->_frameInstructions;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v33;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v33 != v18)
          {
            objc_enumerationMutation(v15);
          }

          dictionaryRepresentation = [*(*(&v32 + 1) + 8 * i) dictionaryRepresentation];
          [v14 addObject:dictionaryRepresentation];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v17);
    }

    [dictionary setObject:v14 forKey:@"frameInstructions"];
  }

  autoloop = self->_autoloop;
  if (autoloop)
  {
    dictionaryRepresentation2 = [(VCPProtoLivePhotoVariationParams *)autoloop dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"autoloop"];
  }

  bounce = self->_bounce;
  if (bounce)
  {
    dictionaryRepresentation3 = [(VCPProtoLivePhotoVariationParams *)bounce dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"bounce"];
  }

  longexposure = self->_longexposure;
  if (longexposure)
  {
    dictionaryRepresentation4 = [(VCPProtoLivePhotoVariationParams *)longexposure dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"longexposure"];
  }

  stabilize = self->_stabilize;
  if (stabilize)
  {
    dictionaryRepresentation5 = [(VCPProtoLivePhotoVariationParams *)stabilize dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"stabilize"];
  }

  v29 = [MEMORY[0x1E696AD98] numberWithInt:{self->_minVersion, v32}];
  [dictionary setObject:v29 forKey:@"minVersion"];

  v30 = [MEMORY[0x1E696AD98] numberWithInt:self->_version];
  [dictionary setObject:v30 forKey:@"version"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteInt64Field();
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_frameInstructions;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  PBDataWriterWriteSubmessage();
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[24] = self->_stabilizeResult;
  *(toCopy + 2) = self->_outputFrameDurValue;
  toCopy[12] = self->_cropRectX;
  toCopy[13] = self->_cropRectY;
  toCopy[10] = self->_cropRectHeight;
  toCopy[11] = self->_cropRectWidth;
  toCopy[25] = self->_timeScale;
  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = self->_epoch;
    *(toCopy + 108) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[14] = self->_flags;
    *(toCopy + 108) |= 2u;
  }

  v10 = toCopy;
  if ([(VCPProtoLivePhotoEffectsRecipe *)self frameInstructionsCount])
  {
    [v10 clearFrameInstructions];
    frameInstructionsCount = [(VCPProtoLivePhotoEffectsRecipe *)self frameInstructionsCount];
    if (frameInstructionsCount)
    {
      v7 = frameInstructionsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(VCPProtoLivePhotoEffectsRecipe *)self frameInstructionsAtIndex:i];
        [v10 addFrameInstructions:v9];
      }
    }
  }

  [v10 setAutoloop:self->_autoloop];
  [v10 setBounce:self->_bounce];
  [v10 setLongexposure:self->_longexposure];
  [v10 setStabilize:self->_stabilize];
  v10[20] = self->_minVersion;
  v10[26] = self->_version;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  *(v5 + 96) = self->_stabilizeResult;
  *(v5 + 16) = self->_outputFrameDurValue;
  *(v5 + 48) = self->_cropRectX;
  *(v5 + 52) = self->_cropRectY;
  *(v5 + 40) = self->_cropRectHeight;
  *(v5 + 44) = self->_cropRectWidth;
  *(v5 + 100) = self->_timeScale;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_epoch;
    *(v5 + 108) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 56) = self->_flags;
    *(v5 + 108) |= 2u;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = self->_frameInstructions;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v23 + 1) + 8 * i) copyWithZone:{zone, v23}];
        [v6 addFrameInstructions:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v14 = [(VCPProtoLivePhotoVariationParams *)self->_autoloop copyWithZone:zone];
  v15 = *(v6 + 24);
  *(v6 + 24) = v14;

  v16 = [(VCPProtoLivePhotoVariationParams *)self->_bounce copyWithZone:zone];
  v17 = *(v6 + 32);
  *(v6 + 32) = v16;

  v18 = [(VCPProtoLivePhotoVariationParams *)self->_longexposure copyWithZone:zone];
  v19 = *(v6 + 72);
  *(v6 + 72) = v18;

  v20 = [(VCPProtoLivePhotoVariationParams *)self->_stabilize copyWithZone:zone];
  v21 = *(v6 + 88);
  *(v6 + 88) = v20;

  *(v6 + 80) = self->_minVersion;
  *(v6 + 104) = self->_version;
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || self->_stabilizeResult != *(equalCopy + 24) || self->_outputFrameDurValue != *(equalCopy + 2) || self->_cropRectX != *(equalCopy + 12) || self->_cropRectY != *(equalCopy + 13) || self->_cropRectHeight != *(equalCopy + 10) || self->_cropRectWidth != *(equalCopy + 11) || self->_timeScale != *(equalCopy + 25))
  {
    goto LABEL_31;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 108) & 1) == 0 || self->_epoch != *(equalCopy + 1))
    {
      goto LABEL_31;
    }
  }

  else if (*(equalCopy + 108))
  {
LABEL_31:
    v10 = 0;
    goto LABEL_32;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 108) & 2) == 0 || self->_flags != *(equalCopy + 14))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 108) & 2) != 0)
  {
    goto LABEL_31;
  }

  frameInstructions = self->_frameInstructions;
  if (frameInstructions | *(equalCopy + 8) && ![(NSMutableArray *)frameInstructions isEqual:?])
  {
    goto LABEL_31;
  }

  autoloop = self->_autoloop;
  if (autoloop | *(equalCopy + 3))
  {
    if (![(VCPProtoLivePhotoVariationParams *)autoloop isEqual:?])
    {
      goto LABEL_31;
    }
  }

  bounce = self->_bounce;
  if (bounce | *(equalCopy + 4))
  {
    if (![(VCPProtoLivePhotoVariationParams *)bounce isEqual:?])
    {
      goto LABEL_31;
    }
  }

  longexposure = self->_longexposure;
  if (longexposure | *(equalCopy + 9))
  {
    if (![(VCPProtoLivePhotoVariationParams *)longexposure isEqual:?])
    {
      goto LABEL_31;
    }
  }

  stabilize = self->_stabilize;
  if (stabilize | *(equalCopy + 11))
  {
    if (![(VCPProtoLivePhotoVariationParams *)stabilize isEqual:?])
    {
      goto LABEL_31;
    }
  }

  if (self->_minVersion != *(equalCopy + 20))
  {
    goto LABEL_31;
  }

  v10 = self->_version == *(equalCopy + 26);
LABEL_32:

  return v10;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_epoch;
  }

  else
  {
    v3 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_flags;
  }

  else
  {
    v4 = 0;
  }

  v5 = (2654435761 * self->_outputFrameDurValue) ^ (2654435761 * self->_stabilizeResult) ^ (2654435761 * self->_cropRectX) ^ (2654435761 * self->_cropRectY) ^ (2654435761 * self->_cropRectHeight) ^ (2654435761 * self->_cropRectWidth) ^ (2654435761 * self->_timeScale);
  v6 = v3 ^ v4 ^ [(NSMutableArray *)self->_frameInstructions hash];
  v7 = v6 ^ [(VCPProtoLivePhotoVariationParams *)self->_autoloop hash];
  v8 = v7 ^ [(VCPProtoLivePhotoVariationParams *)self->_bounce hash];
  v9 = v8 ^ [(VCPProtoLivePhotoVariationParams *)self->_longexposure hash];
  return v5 ^ v9 ^ [(VCPProtoLivePhotoVariationParams *)self->_stabilize hash]^ (2654435761 * self->_minVersion) ^ (2654435761 * self->_version);
}

- (void)mergeFrom:(id)from
{
  v25 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  self->_stabilizeResult = *(fromCopy + 24);
  self->_outputFrameDurValue = *(fromCopy + 2);
  self->_cropRectX = *(fromCopy + 12);
  self->_cropRectY = *(fromCopy + 13);
  self->_cropRectHeight = *(fromCopy + 10);
  self->_cropRectWidth = *(fromCopy + 11);
  self->_timeScale = *(fromCopy + 25);
  v6 = *(fromCopy + 108);
  if (v6)
  {
    self->_epoch = *(fromCopy + 1);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 108);
  }

  if ((v6 & 2) != 0)
  {
    self->_flags = *(fromCopy + 14);
    *&self->_has |= 2u;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = *(fromCopy + 8);
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(VCPProtoLivePhotoEffectsRecipe *)self addFrameInstructions:*(*(&v20 + 1) + 8 * i), v20];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  autoloop = self->_autoloop;
  v13 = *(v5 + 3);
  if (autoloop)
  {
    if (v13)
    {
      [(VCPProtoLivePhotoVariationParams *)autoloop mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(VCPProtoLivePhotoEffectsRecipe *)self setAutoloop:?];
  }

  bounce = self->_bounce;
  v15 = *(v5 + 4);
  if (bounce)
  {
    if (v15)
    {
      [(VCPProtoLivePhotoVariationParams *)bounce mergeFrom:?];
    }
  }

  else if (v15)
  {
    [(VCPProtoLivePhotoEffectsRecipe *)self setBounce:?];
  }

  longexposure = self->_longexposure;
  v17 = *(v5 + 9);
  if (longexposure)
  {
    if (v17)
    {
      [(VCPProtoLivePhotoVariationParams *)longexposure mergeFrom:?];
    }
  }

  else if (v17)
  {
    [(VCPProtoLivePhotoEffectsRecipe *)self setLongexposure:?];
  }

  stabilize = self->_stabilize;
  v19 = *(v5 + 11);
  if (stabilize)
  {
    if (v19)
    {
      [(VCPProtoLivePhotoVariationParams *)stabilize mergeFrom:?];
    }
  }

  else if (v19)
  {
    [(VCPProtoLivePhotoEffectsRecipe *)self setStabilize:?];
  }

  self->_minVersion = *(v5 + 20);
  self->_version = *(v5 + 26);
}

@end