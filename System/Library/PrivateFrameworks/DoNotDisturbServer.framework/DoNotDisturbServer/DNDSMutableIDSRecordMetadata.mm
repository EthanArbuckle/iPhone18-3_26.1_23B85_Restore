@interface DNDSMutableIDSRecordMetadata
- (id)copyWithZone:(_NSZone *)zone;
- (void)setLastModified:(id)modified;
- (void)setRecordID:(id)d;
@end

@implementation DNDSMutableIDSRecordMetadata

- (void)setRecordID:(id)d
{
  v4 = [d copy];
  recordID = self->super._recordID;
  self->super._recordID = v4;

  MEMORY[0x2821F96F8](v4, recordID);
}

- (void)setLastModified:(id)modified
{
  v4 = [modified copy];
  lastModified = self->super._lastModified;
  self->super._lastModified = v4;

  MEMORY[0x2821F96F8](v4, lastModified);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDSIDSRecordMetadata alloc];

  return [(DNDSIDSRecordMetadata *)v4 _initWithRecordMetadata:self];
}

@end