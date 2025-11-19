@interface CSUresNodeRequestContext
- (CSUresNodeRequestContext)init;
- (id)description;
@end

@implementation CSUresNodeRequestContext

- (id)description
{
  mhId = self->_mhId;
  v3 = [CSAudioRecordContext recordTypeString:[(CSAudioRecordContext *)self->_recordCtx type]];
  v4 = [NSString stringWithFormat:@"MHId %@ recordType %@", mhId, v3];

  return v4;
}

- (CSUresNodeRequestContext)init
{
  v3.receiver = self;
  v3.super_class = CSUresNodeRequestContext;
  return [(CSUresNodeRequestContext *)&v3 init];
}

@end