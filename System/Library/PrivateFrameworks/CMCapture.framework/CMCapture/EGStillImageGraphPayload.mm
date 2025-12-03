@interface EGStillImageGraphPayload
- (BWStillImageInferences)stillImageInferences;
- (BWStillImageProcessorController)processorController;
- (EGStillImageGraphPayload)initWithDictionary:(id)dictionary;
- (EGStillImageGraphPayload)initWithEmptyPayload;
- (EGStillImageGraphPayload)initWithNumber:(id)number;
- (EGStillImageGraphPayload)initWithProcessorController:(id)controller;
- (EGStillImageGraphPayload)initWithSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (EGStillImageGraphPayload)initWithStillImageInferences:(id)inferences;
- (NSDictionary)dictionary;
- (NSNumber)number;
- (id)debugDescription;
- (id)description;
- (opaqueCMSampleBuffer)sampleBuffer;
- (void)dealloc;
@end

@implementation EGStillImageGraphPayload

- (EGStillImageGraphPayload)initWithEmptyPayload
{
  v3.receiver = self;
  v3.super_class = EGStillImageGraphPayload;
  result = [(EGStillImageGraphPayload *)&v3 init];
  if (result)
  {
    result->_type = 0;
  }

  return result;
}

- (EGStillImageGraphPayload)initWithSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v7.receiver = self;
  v7.super_class = EGStillImageGraphPayload;
  v4 = [(EGStillImageGraphPayload *)&v7 init];
  if (v4)
  {
    if (buffer)
    {
      v5 = CFRetain(buffer);
    }

    else
    {
      v5 = 0;
    }

    v4->_payload = v5;
    v4->_type = 1;
  }

  return v4;
}

- (EGStillImageGraphPayload)initWithProcessorController:(id)controller
{
  v6.receiver = self;
  v6.super_class = EGStillImageGraphPayload;
  v4 = [(EGStillImageGraphPayload *)&v6 init];
  if (v4)
  {
    v4->_payload = controller;
    v4->_type = 2;
  }

  return v4;
}

- (EGStillImageGraphPayload)initWithStillImageInferences:(id)inferences
{
  v6.receiver = self;
  v6.super_class = EGStillImageGraphPayload;
  v4 = [(EGStillImageGraphPayload *)&v6 init];
  if (v4)
  {
    v4->_payload = inferences;
    v4->_type = 3;
  }

  return v4;
}

- (EGStillImageGraphPayload)initWithNumber:(id)number
{
  v6.receiver = self;
  v6.super_class = EGStillImageGraphPayload;
  v4 = [(EGStillImageGraphPayload *)&v6 init];
  if (v4)
  {
    v4->_payload = number;
    v4->_type = 4;
  }

  return v4;
}

- (EGStillImageGraphPayload)initWithDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = EGStillImageGraphPayload;
  v4 = [(EGStillImageGraphPayload *)&v6 init];
  if (v4)
  {
    v4->_payload = dictionary;
    v4->_type = 5;
  }

  return v4;
}

- (id)debugDescription
{
  type = self->_type;
  if (!type)
  {
    return @"Empty";
  }

  if (type == 1)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", @"SampleBuffer", BWStillImageSampleBufferToDisplayString(self->_payload)];
  }

  v4 = type - 2;
  if (v4 > 3)
  {
    v5 = @"Empty";
  }

  else
  {
    v5 = off_1E799A020[v4];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", v5, self->_payload];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[EGStillImageGraphPayload debugDescription](self, "debugDescription")];
}

- (void)dealloc
{
  type = self->_type;
  payload = self->_payload;
  if (type == 1)
  {
    if (payload)
    {
      CFRelease(payload);
    }
  }

  else
  {
  }

  v5.receiver = self;
  v5.super_class = EGStillImageGraphPayload;
  [(EGStillImageGraphPayload *)&v5 dealloc];
}

- (opaqueCMSampleBuffer)sampleBuffer
{
  if (self)
  {
    if (*(self + 4) == 1)
    {
      return *(self + 1);
    }

    else
    {
      return OUTLINED_FUNCTION_0_90();
    }
  }

  return self;
}

- (BWStillImageProcessorController)processorController
{
  if (self)
  {
    if (LODWORD(self->_type) == 2)
    {
      return self->_name;
    }

    else
    {
      return OUTLINED_FUNCTION_0_90();
    }
  }

  return self;
}

- (BWStillImageInferences)stillImageInferences
{
  if (self)
  {
    if (LODWORD(self->_metadataByAttachedMediaKey) == 3)
    {
      return self->_inferenceBufferByAttachedMediaKey;
    }

    else
    {
      return OUTLINED_FUNCTION_0_90();
    }
  }

  return self;
}

- (NSNumber)number
{
  if (self)
  {
    if (LODWORD(self[2].super.super.isa) == 4)
    {
      return self[1].super.super.isa;
    }

    else
    {
      return OUTLINED_FUNCTION_0_90();
    }
  }

  return self;
}

- (NSDictionary)dictionary
{
  if (self)
  {
    if (LODWORD(self[2].super.isa) == 5)
    {
      return self[1].super.isa;
    }

    else
    {
      return OUTLINED_FUNCTION_0_90();
    }
  }

  return self;
}

@end