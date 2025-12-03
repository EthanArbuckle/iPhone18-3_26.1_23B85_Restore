@interface SYDeletedObject
- (SYDeletedObject)initWithObjectID:(id)d sequencer:(id)sequencer;
- (SYDeletedObject)initWithSyncId:(id)id;
@end

@implementation SYDeletedObject

- (SYDeletedObject)initWithSyncId:(id)id
{
  idCopy = id;
  v9.receiver = self;
  v9.super_class = SYDeletedObject;
  v5 = [(SYDeletedObject *)&v9 init];
  if (v5)
  {
    v6 = [idCopy copy];
    syncId = v5->_syncId;
    v5->_syncId = v6;
  }

  return v5;
}

- (SYDeletedObject)initWithObjectID:(id)d sequencer:(id)sequencer
{
  sequencerCopy = sequencer;
  v7 = [(SYDeletedObject *)self initWithSyncId:d];
  if (v7)
  {
    v8 = [sequencerCopy copy];
    sequencer = v7->_sequencer;
    v7->_sequencer = v8;

    v10 = v7;
  }

  return v7;
}

@end