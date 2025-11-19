@interface DNDSMutableIDSRecordMetadata
- (id)copyWithZone:(_NSZone *)a3;
- (void)setLastModified:(id)a3;
- (void)setRecordID:(id)a3;
@end

@implementation DNDSMutableIDSRecordMetadata

- (void)setRecordID:(id)a3
{
  v4 = [a3 copy];
  recordID = self->super._recordID;
  self->super._recordID = v4;

  MEMORY[0x2821F96F8](v4, recordID);
}

- (void)setLastModified:(id)a3
{
  v4 = [a3 copy];
  lastModified = self->super._lastModified;
  self->super._lastModified = v4;

  MEMORY[0x2821F96F8](v4, lastModified);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DNDSIDSRecordMetadata alloc];

  return [(DNDSIDSRecordMetadata *)v4 _initWithRecordMetadata:self];
}

@end