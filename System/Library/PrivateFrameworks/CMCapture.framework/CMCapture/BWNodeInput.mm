@interface BWNodeInput
+ (opaqueCMSampleBuffer)newSampleDataToBeDroppedMarkerBufferFromSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (BWNodeInput)initWithMediaType:(unsigned int)a3 node:(id)a4 index:(unint64_t)a5;
- (NSString)description;
- (id)mediaConfigurationForAttachedMediaKey:(id)a3;
- (id)mediaPropertiesByAttachedMediaKey;
- (id)mediaPropertiesForAttachedMediaKey:(id)a3;
- (id)osStatePropertyList;
- (int)_passthroughModeForAttachedMediaKey:(id)a3;
- (int)_passthroughModeForUnspecifiedAttachedMedia;
- (uint64_t)_handleConfigurationLiveMessage:(uint64_t)result;
- (void)_clearAllMediaProperties;
- (void)_setMediaProperties:(id)a3 forAttachedMediaKey:(id)a4;
- (void)dealloc;
- (void)handleMessage:(id)a3;
- (void)setMediaConfiguration:(id)a3 forAttachedMediaKey:(id)a4;
@end

@implementation BWNodeInput

- (int)_passthroughModeForUnspecifiedAttachedMedia
{
  unspecifiedAttachedMediaConfiguration = self->_unspecifiedAttachedMediaConfiguration;
  if (unspecifiedAttachedMediaConfiguration)
  {
    return [(BWNodeInputMediaConfiguration *)unspecifiedAttachedMediaConfiguration passthroughMode];
  }

  else
  {
    return 1;
  }
}

- (id)mediaPropertiesByAttachedMediaKey
{
  v2 = [(NSMutableDictionary *)self->_attachedMediaProperties copy];

  return v2;
}

+ (opaqueCMSampleBuffer)newSampleDataToBeDroppedMarkerBufferFromSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v13 = 0;
  v4 = CMGetAttachment(a3, @"SampleDataToBeDropped", 0);
  v5 = *MEMORY[0x1E695E4D0];
  if (v4 == *MEMORY[0x1E695E4D0])
  {
    FormatDescription = CMSampleBufferGetFormatDescription(a3);
    v7 = *(MEMORY[0x1E6960CF0] + 48);
    *&sampleTimingArray.presentationTimeStamp.timescale = *(MEMORY[0x1E6960CF0] + 32);
    *&sampleTimingArray.decodeTimeStamp.value = v7;
    sampleTimingArray.decodeTimeStamp.epoch = *(MEMORY[0x1E6960CF0] + 64);
    v8 = *(MEMORY[0x1E6960CF0] + 16);
    *&sampleTimingArray.duration.value = *MEMORY[0x1E6960CF0];
    *&sampleTimingArray.duration.epoch = v8;
    CMSampleBufferGetPresentationTimeStamp(&sampleTimingArray.presentationTimeStamp, a3);
    v9 = CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, FormatDescription, 1, 1, &sampleTimingArray, 0, 0, &v13);
    result = v13;
    if (!v9 && v13)
    {
      CMSetAttachment(v13, @"SampleDataToBeDropped", v5, 1u);
      v11 = CMGetAttachment(a3, @"SampleDataToBeDroppedEmitSampleBufferSemaphores", 0);
      result = v13;
      if (v11)
      {
        CMSetAttachment(v13, @"SampleDataToBeDroppedEmitSampleBufferSemaphores", v11, 1u);
        return v13;
      }
    }
  }

  else
  {
    +[BWNodeInput newSampleDataToBeDroppedMarkerBufferFromSampleBuffer:];
    return 0;
  }

  return result;
}

- (BWNodeInput)initWithMediaType:(unsigned int)a3 node:(id)a4 index:(unint64_t)a5
{
  v13.receiver = self;
  v13.super_class = BWNodeInput;
  v8 = [(BWNodeInput *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_mediaType = a3;
    v8->_mediaTypeIsVideo = a3 == 1986618469;
    v8->_mediaTypeIsPointCloud = a3 == 1885564004;
    v8->_node = a4;
    v8->_enabled = 1;
    v8->_index = a5;
    v10 = objc_alloc_init(BWNodeInputMediaConfiguration);
    v9->_primaryMediaConfiguration = v10;
    [(BWNodeInputMediaConfiguration *)v10 _setAssociatedAttachedMediaKey:@"PrimaryFormat"];
    v11 = objc_alloc_init(BWNodeInputMediaProperties);
    [(BWNodeInputMediaProperties *)v11 _setOwningNodeInput:v9 associatedAttachedMediaKey:@"PrimaryFormat"];
    v9->_primaryMediaProperties = v11;
  }

  return v9;
}

- (void)dealloc
{
  [(BWNodeInput *)self _clearAllMediaProperties];
  v3.receiver = self;
  v3.super_class = BWNodeInput;
  [(BWNodeInput *)&v3 dealloc];
}

- (NSString)description
{
  v3 = [(NSArray *)[[(BWNodeInput *)self node] inputs] indexOfObject:self];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  return [v4 stringWithFormat:@"<%@ %p> '%@' (idx: %u, owner: %@)", v5, self, BWStringForOSType(), v3, -[BWNodeInput node](self, "node")];
}

- (void)setMediaConfiguration:(id)a3 forAttachedMediaKey:(id)a4
{
  if (!a4)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = @"Cannot set media configuration for nil attachedMediaKey";
    goto LABEL_14;
  }

  if ([a4 isEqualToString:@"PrimaryFormat"])
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = @"Cannot set media configuration for BWAttachedMediaKey_PrimaryFormat";
LABEL_14:
    objc_exception_throw([v9 exceptionWithName:v10 reason:v11 userInfo:0]);
  }

  attachedMediaConfigurations = self->_attachedMediaConfigurations;
  if (a3)
  {
    if (!attachedMediaConfigurations)
    {
      self->_attachedMediaConfigurations = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [a3 _setAssociatedAttachedMediaKey:a4];
    v8 = self->_attachedMediaConfigurations;

    [(NSMutableDictionary *)v8 setObject:a3 forKeyedSubscript:a4];
  }

  else
  {

    [(NSMutableDictionary *)attachedMediaConfigurations removeObjectForKey:a4];
  }
}

- (id)mediaConfigurationForAttachedMediaKey:(id)a3
{
  if (!a3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot set media configuration for nil attachedMediaKey" userInfo:0]);
  }

  if ([a3 isEqualToString:@"PrimaryFormat"])
  {
    return self->_primaryMediaConfiguration;
  }

  attachedMediaConfigurations = self->_attachedMediaConfigurations;

  return [(NSMutableDictionary *)attachedMediaConfigurations objectForKeyedSubscript:a3];
}

- (void)_clearAllMediaProperties
{
  self->_primaryMediaProperties = 0;

  self->_attachedMediaProperties = 0;
}

- (id)mediaPropertiesForAttachedMediaKey:(id)a3
{
  if (!a3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot set media configuration for nil attachedMediaKey" userInfo:0]);
  }

  if ([a3 isEqualToString:@"PrimaryFormat"])
  {
    return self->_primaryMediaProperties;
  }

  attachedMediaProperties = self->_attachedMediaProperties;

  return [(NSMutableDictionary *)attachedMediaProperties objectForKeyedSubscript:a3];
}

- (void)handleMessage:(id)a3
{
  v5 = *(a3 + 2);
  v6 = *(a3 + 3);
  if (v5 == 1)
  {
    if (v6 == 4)
    {
      v8 = 96;
    }

    else
    {
      if (v6 != 9)
      {
        if (v6 == 3)
        {
          v9 = [(BWNodeInput *)self _handleConfigurationLiveMessage:a3];
          ++self->_numberOfConfigurationDidBecomeLiveMessagesReceived;
          if ((v9 & 1) == 0)
          {
            return;
          }
        }

        goto LABEL_25;
      }

      v8 = 92;
    }

    [(BWNodeInputMediaProperties *)[(BWNodeInput *)self primaryMediaProperties] setLiveFormat:0];
    goto LABEL_24;
  }

  if (v5 != 2)
  {
    goto LABEL_25;
  }

  if (!self->_enabled)
  {
    goto LABEL_35;
  }

  if (self->_discardsSampleDataTaggedToBeDropped && v6 == 1)
  {
    v10 = [a3 sampleBuffer];
    if (!v10)
    {
      goto LABEL_23;
    }

    v11 = v10;
    if (CMSampleBufferGetImageBuffer(v10) || CMSampleBufferGetDataBuffer(v11) || CMGetAttachment(v11, @"SampleDataToBeDropped", 0) != *MEMORY[0x1E695E4D0])
    {
      goto LABEL_23;
    }

    v13 = CMGetAttachment(v11, @"SampleDataToBeDroppedEmitSampleBufferSemaphores", 0);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dispatch_semaphore_signal(*(*(&v19 + 1) + 8 * i));
        }

        v15 = [v13 countByEnumeratingWithState:&v19 objects:v18 count:16];
      }

      while (v15);
    }

LABEL_35:
    ++self->_numberOfBuffersDropped;
    return;
  }

  if (v6 == 1)
  {
LABEL_23:
    v8 = 80;
    goto LABEL_24;
  }

  if (v6 == 2)
  {
    v8 = 100;
LABEL_24:
    ++*(&self->super.isa + v8);
  }

LABEL_25:
  node = self->_node;

  [(BWNode *)node _handleMessage:a3 fromInput:self];
}

- (void)_setMediaProperties:(id)a3 forAttachedMediaKey:(id)a4
{
  if (!a4)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = @"Cannot set media properties for nil attachedMediaKey";
    goto LABEL_14;
  }

  if ([a4 isEqualToString:@"PrimaryFormat"])
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = @"Cannot set media properties for primary media";
    goto LABEL_14;
  }

  if (!a3)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = @"Cannot set media properties to nil -- call _clearAllMediaProperties to clear all media property state";
LABEL_14:
    objc_exception_throw([v8 exceptionWithName:v9 reason:v10 userInfo:0]);
  }

  attachedMediaProperties = self->_attachedMediaProperties;
  if (attachedMediaProperties)
  {
    if ([(NSMutableDictionary *)attachedMediaProperties objectForKeyedSubscript:a4])
    {
      v8 = MEMORY[0x1E695DF30];
      v9 = *MEMORY[0x1E695D940];
      v10 = @"Can only set media properties once -- call _clearAllMediaProperties to clear all media property state";
      goto LABEL_14;
    }
  }

  else
  {
    self->_attachedMediaProperties = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  [a3 _setOwningNodeInput:self associatedAttachedMediaKey:a4];
  v11 = self->_attachedMediaProperties;

  [(NSMutableDictionary *)v11 setObject:a3 forKeyedSubscript:a4];
}

- (int)_passthroughModeForAttachedMediaKey:(id)a3
{
  if (!a3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot get passthrough mode for nil attachedMediaKey" userInfo:0]);
  }

  if ([a3 isEqualToString:@"PrimaryFormat"])
  {
    primaryMediaConfiguration = self->_primaryMediaConfiguration;
LABEL_5:

    return [(BWNodeInputMediaConfiguration *)primaryMediaConfiguration passthroughMode];
  }

  primaryMediaConfiguration = [(NSMutableDictionary *)self->_attachedMediaConfigurations objectForKeyedSubscript:a3];
  if (primaryMediaConfiguration)
  {
    goto LABEL_5;
  }

  return [(BWNodeInput *)self _passthroughModeForUnspecifiedAttachedMedia];
}

- (id)osStatePropertyList
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:self->_name forKeyedSubscript:@"name"];
  [v3 setObject:BWStringForOSType() forKeyedSubscript:@"mediaType"];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", self->_requestedConfigurationID), @"requestedConfigurationID"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", self->_liveConfigurationID), @"liveConfigurationID"}];
  [v3 setObject:-[BWFormat description](-[BWNodeInput liveFormat](self forKeyedSubscript:{"liveFormat"), "description"), @"liveFormat"}];
  [v3 setObject:-[BWNode osStatePropertyListWithVerbose:](-[BWNodeOutput node](-[BWNodeConnection output](-[BWNodeInput connection](self forKeyedSubscript:{"connection"), "output"), "node"), "osStatePropertyListWithVerbose:", 0), @"node"}];
  return v3;
}

- (uint64_t)_handleConfigurationLiveMessage:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = [a2 updatedFormat];
    if (v4)
    {
      v5 = v4;
      if ([objc_msgSend(v3 "primaryMediaProperties")] && (objc_msgSend(v5, "isEqual:", objc_msgSend(objc_msgSend(v3, "primaryMediaProperties"), "liveFormat")) & 1) != 0)
      {
        return 0;
      }

      if (*(v3 + 32) == 1936684398)
      {
        [v3 setFormat:v5];
      }

      else
      {
        [v5 isEqual:{objc_msgSend(v3, "format")}];
      }

      [objc_msgSend(v3 "primaryMediaProperties")];
    }

    *(v3 + 72) = [a2 configurationID];
    [*(v3 + 128) liveFormat];
    return 1;
  }

  return result;
}

@end