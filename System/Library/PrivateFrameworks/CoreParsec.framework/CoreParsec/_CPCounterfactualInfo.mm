@interface _CPCounterfactualInfo
- (BOOL)isEqual:(id)equal;
- (void)writeTo:(id)to;
@end

@implementation _CPCounterfactualInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (cfDiffered = self->_cfDiffered, cfDiffered == objc_msgSend(equalCopy, "cfDiffered")) && (cfUsed = self->_cfUsed, cfUsed == objc_msgSend(equalCopy, "cfUsed")))
  {
    cfError = self->_cfError;
    v8 = cfError == [equalCopy cfError];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)writeTo:(id)to
{
  to;
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