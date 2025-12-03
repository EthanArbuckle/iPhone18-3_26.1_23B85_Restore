@interface GTShaderProfilerStreamDataForMetadata
- (GTShaderProfilerStreamDataForMetadata)initWithCoder:(id)coder;
@end

@implementation GTShaderProfilerStreamDataForMetadata

- (GTShaderProfilerStreamDataForMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = GTShaderProfilerStreamDataForMetadata;
  v5 = [(GTShaderProfilerStreamData *)&v21 init];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = [coderCopy decodeIntForKey:@"version"];
  v5->super._version = v6;
  if (v6 != 1 || (v7 = [coderCopy decodeIntegerForKey:@"gpuCommandInfoSize"], v8 = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"encoderInfoSize"), v9 = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"pipelineStateInfoSize"), v10 = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"commandBufferInfoSize"), v11 = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"functionInfoSize"), v12 = 0, v7 == 32) && v8 == 40 && v9 == 40 && v10 == 32 && v11 == 48)
  {
    v5->super._supportsFileFormatV2 = [coderCopy decodeBoolForKey:@"supportsSeparateAPSData"];
    v5->super._gpuGeneration = [coderCopy decodeInt32ForKey:@"gpuGeneration"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metalPluginName"];
    [(GTShaderProfilerStreamData *)v5 setMetalPluginName:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"traceName"];
    traceName = v5->super._traceName;
    v5->super._traceName = v14;

    v5->super._unixTimestamp = [coderCopy decodeInt64ForKey:@"unixTimestamp"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceInfo"];
    deviceInfo = v5->super._deviceInfo;
    v5->super._deviceInfo = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metalDeviceName"];
    metalDeviceName = v5->super._metalDeviceName;
    v5->super._metalDeviceName = v18;

LABEL_9:
    v12 = v5;
  }

  return v12;
}

@end