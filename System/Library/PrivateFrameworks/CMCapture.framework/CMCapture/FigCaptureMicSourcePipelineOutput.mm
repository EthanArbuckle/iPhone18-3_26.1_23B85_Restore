@interface FigCaptureMicSourcePipelineOutput
- (id)description;
- (id)initWithOutput:(int)output forAudioChannelLayoutTag:;
@end

@implementation FigCaptureMicSourcePipelineOutput

- (id)description
{
  memset(&v6[4], 0, 28);
  *v6 = self->_audioChannelLayoutTag;
  v2 = MEMORY[0x1E696AEC0];
  v3 = [objc_loadWeak(&self->_output) description];
  v4 = BWStringFromAudioChannelLayout(v6);
  return [v2 stringWithFormat:@"Pipeline output: %@, audioChannelLayout: %@", v3, v4, *v6, *&v6[16]];
}

- (id)initWithOutput:(int)output forAudioChannelLayoutTag:
{
  if (!self)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = FigCaptureMicSourcePipelineOutput;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(v5 + 1, a2);
    *(v6 + 4) = output;
  }

  return v6;
}

@end