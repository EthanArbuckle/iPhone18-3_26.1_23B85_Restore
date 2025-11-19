@interface SYDeletedObject
- (SYDeletedObject)initWithObjectID:(id)a3 sequencer:(id)a4;
- (SYDeletedObject)initWithSyncId:(id)a3;
@end

@implementation SYDeletedObject

- (SYDeletedObject)initWithSyncId:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SYDeletedObject;
  v5 = [(SYDeletedObject *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    syncId = v5->_syncId;
    v5->_syncId = v6;
  }

  return v5;
}

- (SYDeletedObject)initWithObjectID:(id)a3 sequencer:(id)a4
{
  v6 = a4;
  v7 = [(SYDeletedObject *)self initWithSyncId:a3];
  if (v7)
  {
    v8 = [v6 copy];
    sequencer = v7->_sequencer;
    v7->_sequencer = v8;

    v10 = v7;
  }

  return v7;
}

@end