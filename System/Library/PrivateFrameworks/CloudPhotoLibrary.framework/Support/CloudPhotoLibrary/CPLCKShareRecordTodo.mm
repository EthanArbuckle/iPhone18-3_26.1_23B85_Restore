@interface CPLCKShareRecordTodo
- (id)description;
@end

@implementation CPLCKShareRecordTodo

- (id)description
{
  v3 = [NSString alloc];
  scopedIdentifier = self->_scopedIdentifier;
  recordClass = self->_recordClass;
  recordName = [(CKRecordID *)self->_privateRecordID recordName];
  recordName2 = [(CKRecordID *)self->_sharedRecordID recordName];
  v8 = [v3 initWithFormat:@"<%@ %@ [%@->%@]>", recordClass, scopedIdentifier, recordName, recordName2];

  return v8;
}

@end