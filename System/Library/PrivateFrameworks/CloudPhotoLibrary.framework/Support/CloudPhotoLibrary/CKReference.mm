@interface CKReference
- (CKReference)initWithCPLArchiver:(id)a3;
@end

@implementation CKReference

- (CKReference)initWithCPLArchiver:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recordID"];
  v6 = [v4 decodeIntegerForKey:@"referenceAction"];

  v7 = [(CKReference *)self initWithRecordID:v5 action:v6];
  return v7;
}

@end