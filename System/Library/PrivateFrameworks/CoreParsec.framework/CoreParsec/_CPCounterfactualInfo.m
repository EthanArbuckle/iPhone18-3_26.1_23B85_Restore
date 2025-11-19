@interface _CPCounterfactualInfo
- (BOOL)isEqual:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPCounterfactualInfo

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (cfDiffered = self->_cfDiffered, cfDiffered == objc_msgSend(v4, "cfDiffered")) && (cfUsed = self->_cfUsed, cfUsed == objc_msgSend(v4, "cfUsed")))
  {
    cfError = self->_cfError;
    v8 = cfError == [v4 cfError];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)writeTo:(id)a3
{
  a3;
  if ([(_CPCounterfactualInfo *)self cfDiffered])
  {
    cfDiffered = self->_cfDiffered;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPCounterfactualInfo *)self cfUsed])
  {
    cfUsed = self->_cfUsed;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPCounterfactualInfo *)self cfError])
  {
    cfError = self->_cfError;
    PBDataWriterWriteInt32Field();
  }

  MEMORY[0x1EEE66BE0]();
}

@end