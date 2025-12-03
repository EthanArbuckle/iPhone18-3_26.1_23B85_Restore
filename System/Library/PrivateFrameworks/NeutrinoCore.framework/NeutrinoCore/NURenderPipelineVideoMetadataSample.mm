@interface NURenderPipelineVideoMetadataSample
- (NURenderPipelineVideoMetadataSample)initWithFrameTime:(id *)time metadataGroup:(id)group;
- (id)description;
@end

@implementation NURenderPipelineVideoMetadataSample

- (NURenderPipelineVideoMetadataSample)initWithFrameTime:(id *)time metadataGroup:(id)group
{
  groupCopy = group;
  v12.receiver = self;
  v12.super_class = NURenderPipelineVideoMetadataSample;
  v8 = [(NURenderPipelineVideoMetadataSample *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v10 = *&time->var0;
    v8->_frameTime.epoch = time->var3;
    *&v8->_frameTime.value = v10;
    objc_storeStrong(&v8->_metadataGroup, group);
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  time = self->_frameTime;
  v5 = CMTimeCopyDescription(*MEMORY[0x1E695E480], &time);
  v6 = [v3 stringWithFormat:@"<%@:%p frameTime: %@, Metadata Group: %p>", v4, self, v5, self->_metadataGroup];

  return v6;
}

@end