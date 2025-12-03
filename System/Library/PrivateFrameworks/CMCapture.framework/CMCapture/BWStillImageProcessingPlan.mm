@interface BWStillImageProcessingPlan
- (BWStillImageProcessingPlan)initWithSettings:(id)settings;
- (id)description;
- (id)lastAddedInputForSequenceNumber:(unsigned int)number portType:(id)type bufferType:(unint64_t)bufferType;
- (void)addInput:(id)input sequenceNumber:(unsigned int)number portType:(id)type bufferType:(unint64_t)bufferType;
- (void)addInput:(id)input sequenceNumber:(unsigned int)number portType:(id)type bufferTypes:(id)types;
- (void)dealloc;
@end

@implementation BWStillImageProcessingPlan

- (BWStillImageProcessingPlan)initWithSettings:(id)settings
{
  v6.receiver = self;
  v6.super_class = BWStillImageProcessingPlan;
  v4 = [(BWStillImageProcessingPlan *)&v6 init];
  if (v4)
  {
    v4->_settings = settings;
    v4->_inputsByBufferTypeByPortTypeBySequenceNumber = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStillImageProcessingPlan;
  [(BWStillImageProcessingPlan *)&v3 dealloc];
}

- (void)addInput:(id)input sequenceNumber:(unsigned int)number portType:(id)type bufferTypes:(id)types
{
  v8 = *&number;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = [types countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(types);
        }

        -[BWStillImageProcessingPlan addInput:sequenceNumber:portType:bufferType:](self, "addInput:sequenceNumber:portType:bufferType:", input, v8, type, [*(*(&v16 + 1) + 8 * v14++) intValue]);
      }

      while (v12 != v14);
      v12 = [types countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v12);
  }
}

- (id)lastAddedInputForSequenceNumber:(unsigned int)number portType:(id)type bufferType:(unint64_t)bufferType
{
  v6 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_inputsByBufferTypeByPortTypeBySequenceNumber objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *&number)), "objectForKeyedSubscript:", type}];
  v7 = [v6 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", bufferType)}];

  return [v7 lastObject];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  settingsID = [(BWStillImageCaptureSettings *)[(BWStillImageSettings *)self->_settings captureSettings] settingsID];
  v6 = BWPhotoEncoderStringFromEncodingScheme([(BWStillImageCaptureSettings *)[(BWStillImageSettings *)self->_settings captureSettings] captureType]);
  v7 = [(NSMutableDictionary *)self->_inputsByBufferTypeByPortTypeBySequenceNumber count];
  v8 = &stru_1F216A3D0;
  if (!v7)
  {
    v8 = @" Empty plan (processing on-demand)";
  }

  v9 = [v3 stringWithFormat:@"<%@ %p>: captureID:%lld, captureType=%@%@", v4, self, settingsID, v6, v8];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = self->_inputsByBufferTypeByPortTypeBySequenceNumber;
  v29 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v53 objects:v52 count:16];
  if (v29)
  {
    v27 = *v54;
    selfCopy = self;
    do
    {
      v10 = 0;
      do
      {
        if (*v54 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v10;
        v11 = *(*(&v53 + 1) + 8 * v10);
        if ([(NSMutableDictionary *)self->_inputsByBufferTypeByPortTypeBySequenceNumber count]>= 2)
        {
          [v9 appendFormat:@"\n[SeqNo %d]", objc_msgSend(v11, "intValue")];
        }

        v12 = [(NSMutableDictionary *)self->_inputsByBufferTypeByPortTypeBySequenceNumber objectForKeyedSubscript:v11];
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v33 = v12;
        v32 = [v12 countByEnumeratingWithState:&v48 objects:v47 count:16];
        if (v32)
        {
          v31 = *v49;
          do
          {
            v13 = 0;
            do
            {
              if (*v49 != v31)
              {
                objc_enumerationMutation(v33);
              }

              v34 = v13;
              v14 = *(*(&v48 + 1) + 8 * v13);
              [v9 appendFormat:@"\n\t[%@]", v14];
              v15 = [v33 objectForKeyedSubscript:v14];
              v43 = 0u;
              v44 = 0u;
              v45 = 0u;
              v46 = 0u;
              v36 = [v15 countByEnumeratingWithState:&v43 objects:v42 count:16];
              if (v36)
              {
                v35 = *v44;
                do
                {
                  for (i = 0; i != v36; ++i)
                  {
                    if (*v44 != v35)
                    {
                      objc_enumerationMutation(v15);
                    }

                    intValue = [*(*(&v43 + 1) + 8 * i) intValue];
                    [v9 appendFormat:@"\n\t\t[%@]", BWStillImageBufferTypeToShortString(intValue)];
                    v18 = [v15 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", intValue)}];
                    v38 = 0u;
                    v39 = 0u;
                    v40 = 0u;
                    v41 = 0u;
                    v19 = [v18 countByEnumeratingWithState:&v38 objects:v37 count:16];
                    if (v19)
                    {
                      v20 = v19;
                      v21 = *v39;
                      v22 = 1;
                      do
                      {
                        v23 = 0;
                        v24 = v22;
                        do
                        {
                          if (*v39 != v21)
                          {
                            objc_enumerationMutation(v18);
                          }

                          v22 = (v24 + 1);
                          [v9 appendFormat:@"\n\t\t\t[%u] %@", v24, *(*(&v38 + 1) + 8 * v23++)];
                          v24 = v22;
                        }

                        while (v20 != v23);
                        v20 = [v18 countByEnumeratingWithState:&v38 objects:v37 count:16];
                      }

                      while (v20);
                    }
                  }

                  v36 = [v15 countByEnumeratingWithState:&v43 objects:v42 count:16];
                }

                while (v36);
              }

              v13 = v34 + 1;
            }

            while (v34 + 1 != v32);
            v32 = [v33 countByEnumeratingWithState:&v48 objects:v47 count:16];
          }

          while (v32);
        }

        v10 = v30 + 1;
        self = selfCopy;
      }

      while (v30 + 1 != v29);
      v29 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v53 objects:v52 count:16];
    }

    while (v29);
  }

  return [v9 copy];
}

- (void)addInput:(id)input sequenceNumber:(unsigned int)number portType:(id)type bufferType:(unint64_t)bufferType
{
  if (input && type)
  {
    v8 = *&number;
    dictionary = -[NSMutableDictionary objectForKeyedSubscript:](self->_inputsByBufferTypeByPortTypeBySequenceNumber, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&number]);
    if (!dictionary)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->_inputsByBufferTypeByPortTypeBySequenceNumber, "setObject:forKeyedSubscript:", dictionary, [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8]);
    }

    dictionary2 = [dictionary objectForKeyedSubscript:type];
    if (!dictionary2)
    {
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      [dictionary setObject:dictionary2 forKeyedSubscript:type];
    }

    array = [dictionary2 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", bufferType)}];
    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
      [dictionary2 setObject:array forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", bufferType)}];
    }

    [array addObject:input];
  }
}

@end