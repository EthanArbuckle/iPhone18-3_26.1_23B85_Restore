@interface NURenderPipelineVideoMetadataSample
- (NURenderPipelineVideoMetadataSample)initWithFrameTime:(id *)a3 metadataGroup:(id)a4;
- (id)description;
@end

@implementation NURenderPipelineVideoMetadataSample

- (NURenderPipelineVideoMetadataSample)initWithFrameTime:(id *)a3 metadataGroup:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = NURenderPipelineVideoMetadataSample;
  v8 = [(NURenderPipelineVideoMetadataSample *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v10 = *&a3->var0;
    v8->_frameTime.epoch = a3->var3;
    *&v8->_frameTime.value = v10;
    objc_storeStrong(&v8->_metadataGroup, a4);
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