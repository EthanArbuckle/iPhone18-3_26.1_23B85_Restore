@interface GTMTLFXTracingDelegate
- (GTMTLFXTracingDelegate)init;
- (NSData)mtlfxTracingInfo;
- (void)scaler:(id)scaler didCreateBlitCommandEncoder:(id)encoder forEncode:(unint64_t)encode;
- (void)scaler:(id)scaler didCreateComputeCommandEncoder:(id)encoder forEncode:(unint64_t)encode;
- (void)scaler:(id)scaler didCreateRenderCommandEncoder:(id)encoder forEncode:(unint64_t)encode;
@end

@implementation GTMTLFXTracingDelegate

- (void)scaler:(id)scaler didCreateComputeCommandEncoder:(id)encoder forEncode:(unint64_t)encode
{
  encoderCopy = encoder;
  -[GTMTLFXTracingDelegate _addEncoderInfo:](self, "_addEncoderInfo:", [encoderCopy globalTraceObjectID]);
}

- (void)scaler:(id)scaler didCreateBlitCommandEncoder:(id)encoder forEncode:(unint64_t)encode
{
  encoderCopy = encoder;
  -[GTMTLFXTracingDelegate _addEncoderInfo:](self, "_addEncoderInfo:", [encoderCopy globalTraceObjectID]);
}

- (void)scaler:(id)scaler didCreateRenderCommandEncoder:(id)encoder forEncode:(unint64_t)encode
{
  encoderCopy = encoder;
  -[GTMTLFXTracingDelegate _addEncoderInfo:](self, "_addEncoderInfo:", [encoderCopy globalTraceObjectID]);
}

- (NSData)mtlfxTracingInfo
{
  mtlfxTracingDictionary = self->_mtlfxTracingDictionary;
  v5 = 0;
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:mtlfxTracingDictionary requiringSecureCoding:1 error:&v5];

  return v3;
}

- (GTMTLFXTracingDelegate)init
{
  v6.receiver = self;
  v6.super_class = GTMTLFXTracingDelegate;
  v2 = [(GTMTLFXTracingDelegate *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    mtlfxTracingDictionary = v2->_mtlfxTracingDictionary;
    v2->_mtlfxTracingDictionary = v3;
  }

  return v2;
}

@end