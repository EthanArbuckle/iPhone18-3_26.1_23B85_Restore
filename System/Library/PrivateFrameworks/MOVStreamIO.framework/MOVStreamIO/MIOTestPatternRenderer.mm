@interface MIOTestPatternRenderer
- (Area_renderer)areaRendererFromTestPattern:(Area_renderer *__return_ptr)retstr;
- (BOOL)renderToPixelBuffer:(__CVBuffer *)buffer;
- (MIOTestPatternRenderer)initWithTestPattern:(id)pattern numberOfFrames:(int)frames startOffset:(int)offset;
- (id).cxx_construct;
- (id)originalColorAttachmentsOfPixelBuffer:(__CVBuffer *)buffer;
- (void)addMetadataToPixelBuffer:(__CVBuffer *)buffer metadata:(id)metadata frameNumber:(int)number;
- (void)dealloc;
- (void)setRendererParamsFromDict:(id)dict;
@end

@implementation MIOTestPatternRenderer

- (MIOTestPatternRenderer)initWithTestPattern:(id)pattern numberOfFrames:(int)frames startOffset:(int)offset
{
  patternCopy = pattern;
  v18.receiver = self;
  v18.super_class = MIOTestPatternRenderer;
  v9 = [(MIOTestPatternRenderer *)&v18 init];
  v10 = v9;
  if (v9)
  {
    v9->_numberOfFrames = frames;
    v9->_startOffset = offset;
    parameters = [patternCopy parameters];
    [(MIOTestPatternRenderer *)v10 setRendererParamsFromDict:parameters];

    v15 = 0;
    v16 = 0;
    v17 = 0;
    [(MIOTestPatternRenderer *)v10 areaRendererFromTestPattern:patternCopy];
    v16 = std::vector<Area_renderer>::__emplace_back_slow_path<Area_renderer>(&v15, &__p);
    if (v14 < 0)
    {
      operator delete(__p);
    }

    operator new();
  }

  return 0;
}

- (void)dealloc
{
  multiRenderer = self->_multiRenderer;
  if (multiRenderer)
  {

    v5 = multiRenderer + 3;
    std::vector<std::unique_ptr<PixelBuffer_renderer>>::__destroy_vector::operator()[abi:ne200100](&v5);
    v5 = multiRenderer;
    std::vector<Area_renderer>::__destroy_vector::operator()[abi:ne200100](&v5);
    MEMORY[0x259C68350](multiRenderer, 0xA0C403EA4F732);
  }

  v4.receiver = self;
  v4.super_class = MIOTestPatternRenderer;
  [(MIOTestPatternRenderer *)&v4 dealloc];
}

- (BOOL)renderToPixelBuffer:(__CVBuffer *)buffer
{
  v13[1] = *MEMORY[0x277D85DE8];
  startOffset = self->_startOffset;
  frameNumber = self->_frameNumber;
  self->_frameNumber = frameNumber + 1;
  v5 = (frameNumber - startOffset);
  if (frameNumber - startOffset < 0 || v5 >= self->_numberOfFrames)
  {
    goto LABEL_5;
  }

  v8 = MultiRenderer::render(self->_multiRenderer, v5, buffer);
  if (v8)
  {
    v12 = @"content";
    v9 = *(self->_multiRenderer + 6);
    v13[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

    [(MIOTestPatternRenderer *)self addMetadataToPixelBuffer:buffer metadata:v10 frameNumber:v5];
LABEL_5:
    LOBYTE(v8) = 1;
  }

  return v8;
}

- (id)originalColorAttachmentsOfPixelBuffer:(__CVBuffer *)buffer
{
  v21[5] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CC4CC0];
  v21[0] = *MEMORY[0x277CC4C00];
  v21[1] = v4;
  v5 = *MEMORY[0x277CC4B88];
  v21[2] = *MEMORY[0x277CC4D10];
  v21[3] = v5;
  v21[4] = *MEMORY[0x277CC4B80];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:5];
  v7 = [v6 mutableCopy];

  [v7 addObject:*MEMORY[0x277CC4C90]];
  v8 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v14 = CVBufferCopyAttachment(buffer, v13, 0);
        if (v14)
        {
          [v8 setObject:v14 forKey:{v13, v16}];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  return v8;
}

- (void)addMetadataToPixelBuffer:(__CVBuffer *)buffer metadata:(id)metadata frameNumber:(int)number
{
  v5 = *&number;
  v14[1] = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  if (metadataCopy)
  {
    v9 = [(MIOTestPatternRenderer *)self originalColorAttachmentsOfPixelBuffer:buffer];
    v10 = objc_opt_new();
    [v10 addEntriesFromDictionary:metadataCopy];
    [v10 addEntriesFromDictionary:v9];
    v11 = [MEMORY[0x277CCABB0] numberWithInt:v5];
    [v10 setObject:v11 forKeyedSubscript:@"frame"];

    v13 = @"RendererInfo";
    v14[0] = v10;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    CVBufferSetAttachments(buffer, v12, kCVAttachmentMode_ShouldPropagate);
  }
}

- (Area_renderer)areaRendererFromTestPattern:(Area_renderer *__return_ptr)retstr
{
  v17 = v1;
  [v17 area];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  name = [v17 name];
  uTF8String = [name UTF8String];
  v13 = strlen(uTF8String);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v19) = v13;
  if (v13)
  {
    memmove(&__dst, uTF8String, v13);
  }

  *(&__dst + v14) = 0;
  if (SHIBYTE(v19) < 0)
  {
    v15 = __dst;
    std::string::__init_copy_ctor_external(retstr, __dst, *(&__dst + 1));
    retstr[1].var0.var0.var1.var0 = v4;
    retstr[1].var0.var0.var1.var1 = v6;
    *(&retstr[1].var0.var0.var1 + 2) = v8;
    retstr[2].var0.var0.var1.var0 = v10;
    operator delete(v15);
  }

  else
  {
    *retstr->var0.var0.var0.var0 = __dst;
    *(&retstr->var0.var0.var1 + 2) = v19;
    retstr[1].var0.var0.var1.var0 = v4;
    retstr[1].var0.var0.var1.var1 = v6;
    *(&retstr[1].var0.var0.var1 + 2) = v8;
    retstr[2].var0.var0.var1.var0 = v10;
  }

  return result;
}

- (void)setRendererParamsFromDict:(id)dict
{
  dictCopy = dict;
  v4 = [dictCopy objectForKey:@"kR"];

  if (v4)
  {
    v5 = [dictCopy objectForKeyedSubscript:@"kR"];
    [v5 doubleValue];
    self->_params.kR = v6;
  }

  v7 = [dictCopy objectForKey:@"kB"];

  if (v7)
  {
    v8 = [dictCopy objectForKeyedSubscript:@"kB"];
    [v8 doubleValue];
    self->_params.kB = v9;
  }

  v10 = [dictCopy objectForKey:@"amplitude"];

  if (v10)
  {
    v11 = [dictCopy objectForKeyedSubscript:@"amplitude"];
    [v11 doubleValue];
    self->_params.amplitude = v12;
  }
}

- (id).cxx_construct
{
  *(self + 1) = xmmword_25792B4C0;
  *(self + 4) = 0x3FF0000000000000;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 84) = 0u;
  __asm { FMOV            V0.2D, #-1.0 }

  *(self + 104) = _Q0;
  *(self + 30) = 45;
  __asm { FMOV            V0.2D, #2.0 }

  *(self + 8) = _Q0;
  *(self + 36) = 60;
  *(self + 19) = 0;
  *(self + 40) = 90;
  *(self + 21) = 0x3FF0000000000000;
  *(self + 11) = xmmword_25792B4D0;
  *(self + 12) = xmmword_25792B4E0;
  *(self + 26) = 0x300000002;
  return self;
}

@end