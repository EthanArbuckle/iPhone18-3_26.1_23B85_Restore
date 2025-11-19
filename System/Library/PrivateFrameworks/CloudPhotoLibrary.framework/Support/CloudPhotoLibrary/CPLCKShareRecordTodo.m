@interface CPLCKShareRecordTodo
- (id)description;
@end

@implementation CPLCKShareRecordTodo

- (id)description
{
  v3 = [NSString alloc];
  scopedIdentifier = self->_scopedIdentifier;
  recordClass = self->_recordClass;
  v6 = [(CKRecordID *)self->_privateRecordID recordName];
  v7 = [(CKRecordID *)self->_sharedRecordID recordName];
  v8 = [v3 initWithFormat:@"<%@ %@ [%@->%@]>", recordClass, scopedIdentifier, v6, v7];

  return v8;
}

@end