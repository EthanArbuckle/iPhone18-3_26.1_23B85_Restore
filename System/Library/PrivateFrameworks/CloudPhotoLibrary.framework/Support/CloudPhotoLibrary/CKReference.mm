@interface CKReference
- (CKReference)initWithCPLArchiver:(id)archiver;
@end

@implementation CKReference

- (CKReference)initWithCPLArchiver:(id)archiver
{
  archiverCopy = archiver;
  v5 = [archiverCopy decodeObjectOfClass:objc_opt_class() forKey:@"recordID"];
  v6 = [archiverCopy decodeIntegerForKey:@"referenceAction"];

  v7 = [(CKReference *)self initWithRecordID:v5 action:v6];
  return v7;
}

@end