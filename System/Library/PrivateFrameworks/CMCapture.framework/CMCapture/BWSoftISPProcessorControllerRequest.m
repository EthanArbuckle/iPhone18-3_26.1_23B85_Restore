@interface BWSoftISPProcessorControllerRequest
- (BWSoftISPProcessorControllerRequest)initWithInput:(id)a3 delegate:(id)a4;
- (id)description;
- (void)dealloc;
@end

@implementation BWSoftISPProcessorControllerRequest

- (BWSoftISPProcessorControllerRequest)initWithInput:(id)a3 delegate:(id)a4
{
  v6.receiver = self;
  v6.super_class = BWSoftISPProcessorControllerRequest;
  v4 = [(BWStillImageProcessorControllerRequest *)&v6 initWithInput:a3 delegate:a4];
  if (v4)
  {
    objc_opt_self();
    v4->_uniqueID = ++uniqueID_sCurrentUniqueID;
  }

  return v4;
}

- (void)dealloc
{
  outputFrame = self->_outputFrame;
  if (outputFrame)
  {
    CFRelease(outputFrame);
  }

  v4.receiver = self;
  v4.super_class = BWSoftISPProcessorControllerRequest;
  [(BWStillImageProcessorControllerRequest *)&v4 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = BWSoftISPProcessorControllerRequest;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, UniqueID:%llu", -[BWStillImageProcessorControllerRequest description](&v3, sel_description), self->_uniqueID];
}

@end