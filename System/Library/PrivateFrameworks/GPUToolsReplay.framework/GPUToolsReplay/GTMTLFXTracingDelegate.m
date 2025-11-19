@interface GTMTLFXTracingDelegate
- (GTMTLFXTracingDelegate)init;
- (NSData)mtlfxTracingInfo;
- (void)scaler:(id)a3 didCreateBlitCommandEncoder:(id)a4 forEncode:(unint64_t)a5;
- (void)scaler:(id)a3 didCreateComputeCommandEncoder:(id)a4 forEncode:(unint64_t)a5;
- (void)scaler:(id)a3 didCreateRenderCommandEncoder:(id)a4 forEncode:(unint64_t)a5;
@end

@implementation GTMTLFXTracingDelegate

- (void)scaler:(id)a3 didCreateComputeCommandEncoder:(id)a4 forEncode:(unint64_t)a5
{
  v6 = a4;
  -[GTMTLFXTracingDelegate _addEncoderInfo:](self, "_addEncoderInfo:", [v6 globalTraceObjectID]);
}

- (void)scaler:(id)a3 didCreateBlitCommandEncoder:(id)a4 forEncode:(unint64_t)a5
{
  v6 = a4;
  -[GTMTLFXTracingDelegate _addEncoderInfo:](self, "_addEncoderInfo:", [v6 globalTraceObjectID]);
}

- (void)scaler:(id)a3 didCreateRenderCommandEncoder:(id)a4 forEncode:(unint64_t)a5
{
  v6 = a4;
  -[GTMTLFXTracingDelegate _addEncoderInfo:](self, "_addEncoderInfo:", [v6 globalTraceObjectID]);
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