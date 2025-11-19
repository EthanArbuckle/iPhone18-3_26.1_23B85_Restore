@interface PDFamilyCircleMembersRequest
- (PDFamilyCircleMembersRequest)init;
@end

@implementation PDFamilyCircleMembersRequest

- (PDFamilyCircleMembersRequest)init
{
  v6.receiver = self;
  v6.super_class = PDFamilyCircleMembersRequest;
  v2 = [(PDFamilyCircleMembersRequest *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    completionHandlers = v2->_completionHandlers;
    v2->_completionHandlers = v3;
  }

  return v2;
}

@end